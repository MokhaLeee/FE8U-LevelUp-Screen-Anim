#include "gbafe.h"
#include "common.h"
#include "level-up.h"


extern const u8 gGfx_LevelUpBoxFrame[]; // 0x88035B0
extern const u8 gMap_LevelUpBoxFrame[]; // 0x88039E8
extern const u8 gPal_LevelUpBoxFrame[]; // 0x8803B10

s8 MapAnimLevelUp_GetActorStatBase(s16 actor_id, int stat_id);
s8 MapAnimLevelUp_GetActorStatUp(s16 actor_id, int stat_id);
void MapAnimLevelUp_DrawActorStat(int actor_id, int base_x, int base_y,int stat_id,int BoolUp);
void MapAnimLevelUp_InitLevelUpBox(s16 actor_id, u8 x, u8 y);


// ====================
// == PROC FUNCTIONS ==
// ====================

// 0x807F1AD
void MapAnimLevelUpProc_InitLevelUpBox(Proc_MapAnimLevelUp_t* proc){
	
	extern void sub_807EDF8(u16, u16, u16, Proc_MapAnimLevelUp_t*);
	
	Text_ResetTileAllocation();
	BG_Fill(gBG0TilemapBuffer,0);

	MapAnimLevelUp_InitLevelUpBox(proc->actor_id, 1,1);
	
	for(int stat_id = 0; stat_id <= 8; stat_id++)
		// (int actor_id, int base_x, int base_y,int stat_id,int BoolUp)
		MapAnimLevelUp_DrawActorStat(proc->actor_id, 1, 1, stat_id, FALSE);

	BG_EnableSyncByMask(0b01);
	
	proc->stat_cur = 0;
	proc->time_delay = 0;
	proc->yPos = 0xFF70;
	
	gLCDControlBuffer.bg0cnt.priority = 0;
	gLCDControlBuffer.bg1cnt.priority = 1;
	gLCDControlBuffer.bg2cnt.priority = 1;
	gLCDControlBuffer.bg3cnt.priority = 2;
	
	SetDefaultColorEffects();
	
	gLCDControlBuffer.dispcnt.win0_on = 0;
	gLCDControlBuffer.dispcnt.win1_on = 0;
	gLCDControlBuffer.dispcnt.objWin_on = 0;
	
	BG_SetPosition(BG0, 0, proc->yPos);
	BG_SetPosition(BG1, 0, proc->yPos);
	
	// (int faceSlot, int portraitId, int x, int y, int displayType);
	NewFace(
		0,
		gMapAnimData.actors[proc->actor_id].pBattleUnit->unit.pCharacterData->portraitId,
		0xB8,
		0x30 - (s16)proc->yPos,
		0x1042 );
	
	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	sub_807EDF8(0x200, 3, 1, proc);
}


// sub_807F30C
void MapAnimLevelUp_PutWindowOnScreen(Proc_MapAnimLevelUp_t* proc){
	
	proc->yPos += 8;
	BG_SetPosition(BG0, 0, proc->yPos);
	BG_SetPosition(BG1, 0, proc->yPos);
	
	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	
	if( proc->yPos >= 0xFFD0 )	
		Proc_Break((struct Proc*)proc);
	
}



// sub_807F39C
void MapAnimLevelUp_MainAnime(Proc_MapAnimLevelUp_t* proc){
	
	extern void sub_807EE84(s16 x, s16 y,int stat_id,s8 stat_up); // Draw AP
	
	int stat_id;
	
	if( 0 != proc->time_delay )
	{
		proc->time_delay--;
		return;
	}
		
	
	
	for(stat_id = proc->stat_cur; 1; stat_id++)
	{
		if( stat_id > 8 )
		{
			Proc_Break((struct Proc*)proc);
			return;
		}
		
		if( 0 != MapAnimLevelUp_GetActorStatUp(proc->actor_id, stat_id) )
			break;
	}
	
		
	MapAnimLevelUp_DrawActorStat(proc->actor_id,1,1,stat_id,1);
	BG_EnableSyncByMask(0b01);
	
	// Here Draw some APs, which maybe we can ignore
	sub_807EE84(
		gMapAnimLevelUpStatLabelLocationTable[stat_id].x * 8 + 0x3E,
		gMapAnimLevelUpStatLabelLocationTable[stat_id].y * 8 - (proc->yPos-0x17),
		stat_id,
		MapAnimLevelUp_GetActorStatUp(proc->actor_id, stat_id) );
	
	if( !gChapterData.unk41_1 ){
		if( 0 == stat_id )
			m4aSongNumStart(0x2CD);
		else
			m4aSongNumStart(0x76);
	}
	
	proc->stat_cur = stat_id+1;
	proc->time_delay = 0x14;
	return;

}



// sub_807F354
void MapAnimLevelUp_PutWindowOffScreen(Proc_MapAnimLevelUp_t* proc){
	
	proc->yPos -= 8;
	BG_SetPosition(BG0, 0, proc->yPos);
	BG_SetPosition(BG1, 0, proc->yPos);
	
	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	
	if( proc->yPos <= 0xFF70 )
		Proc_Break((struct Proc*)proc);
}



// ======================
// == STATIC FUNCTIONS ==
// ======================

// 0x807EA99
void MapAnimLevelUp_InitLevelUpBox(s16 actor_id, u8 x, u8 y){
	u16* tm_loc;
	struct BattleUnit* bu;
	
	BG_Fill(gBG1TilemapBuffer,0);
	
	CopyDataWithPossibleUncomp( // Decompress
		gGfx_LevelUpBoxFrame, 
		BG_CHAR_ADDR(BG1) + GetBackgroundTileDataOffset(BG1) );
	
	CopyDataWithPossibleUncomp(
		gMap_LevelUpBoxFrame,
		gGenericBuffer );
	
	sub_80149F0(gGenericBuffer, gBG1TilemapBuffer, 0x380, 0x5200);
	ApplyPalettes(gPal_LevelUpBoxFrame, 5, 1); // (aSrc, aPalId, aPalCount)
	
	tm_loc = TILEMAP_LOCATED(gBG0TilemapBuffer, x+2, y);
	bu = gMapAnimData.actors[actor_id].pBattleUnit;
	
	SomeDrawTextInlineAutoWidth(
		tm_loc, 
		TEXT_COLOR_NORMAL,
		GetStringFromIndex(bu->unit.pClassData->nameTextId) );
	
	
	const struct WindowSet_AnimOff* it = &gMapAnimLevelUpStatLabelLocationTable[0];
	int str_style = UnitHasMagicRank(&bu->unit)? 1:0;
	
	while( it->x != 0xFF ){
		SomeDrawTextCentered(
			TILEMAP_LOCATED(gBG0TilemapBuffer, x+it->x, y+it->y),
			TEXT_COLOR_GOLD,
			3,
			GetStringFromIndex( *( it->str_id[str_style] ) ) 
			);
		
		it++;
	}
	
	BG_EnableSyncByMask(0b11);
}

typedef s8 (*Get) (struct BattleUnit*);
s8 LevelUp_GetLvUp (struct BattleUnit* bu){ return 1;}
s8 LevelUp_GetHpUp (struct BattleUnit* bu){ return bu->changeHP; }
s8 LevelUp_GetPowUp(struct BattleUnit* bu){ return bu->changePow;}
s8 LevelUp_GetSklUp(struct BattleUnit* bu){ return bu->changeSkl;}
s8 LevelUp_GetSpdUp(struct BattleUnit* bu){ return bu->changeSpd;}
s8 LevelUp_GetLckUp(struct BattleUnit* bu){ return bu->changeLck;}
s8 LevelUp_GetDefUp(struct BattleUnit* bu){ return bu->changeDef;}
s8 LevelUp_GetResUp(struct BattleUnit* bu){ return bu->changeRes;}
s8 LevelUp_GetConUp(struct BattleUnit* bu){ return bu->changeCon;}

const Get GetBuChangeList[] = {
	[STAT_UP_LV]  = LevelUp_GetLvUp,
	[STAT_UP_HP]  = LevelUp_GetHpUp, 
	[STAT_UP_POW] = LevelUp_GetPowUp,
	[STAT_UP_SKL] = LevelUp_GetSklUp,
	[STAT_UP_SPD] = LevelUp_GetSpdUp,
	[STAT_UP_LCK] = LevelUp_GetLckUp,
	[STAT_UP_DEF] = LevelUp_GetDefUp,
	[STAT_UP_RES] = LevelUp_GetResUp,
	[STAT_UP_CON] = LevelUp_GetConUp,
	0,0,0,0
};

// 0x807EC09
s8 MapAnimLevelUp_GetActorStatUp(s16 actor_id, int stat_id){
	
	Get it = GetBuChangeList[stat_id];
	if( it )
		return it(gMapAnimData.actors[actor_id].pBattleUnit);
	else
		return 0;

}



s8 LevelUp_GetLvBase (struct BattleUnit* bu){ return bu->levelPrevious;}
s8 LevelUp_GetHpBase (struct BattleUnit* bu){ return bu->unit.maxHP;}
s8 LevelUp_GetPowBase(struct BattleUnit* bu){ return bu->unit.pow;}
s8 LevelUp_GetSklBase(struct BattleUnit* bu){ return bu->unit.skl;}
s8 LevelUp_GetSpdBase(struct BattleUnit* bu){ return bu->unit.spd;}
s8 LevelUp_GetLckBase(struct BattleUnit* bu){ return bu->unit.lck;}
s8 LevelUp_GetDefBase(struct BattleUnit* bu){ return bu->unit.def;}
s8 LevelUp_GetResBase(struct BattleUnit* bu){ return bu->unit.res;}
s8 LevelUp_GetConBase(struct BattleUnit* bu){ return bu->unit.pCharacterData->baseCon + bu->unit.pClassData->baseCon;}

const Get GetBuBaseList[] = {
	[STAT_UP_LV]  = LevelUp_GetLvBase,
	[STAT_UP_HP]  = LevelUp_GetHpBase, 
	[STAT_UP_POW] = LevelUp_GetPowBase,
	[STAT_UP_SKL] = LevelUp_GetSklBase,
	[STAT_UP_SPD] = LevelUp_GetSpdBase,
	[STAT_UP_LCK] = LevelUp_GetLckBase,
	[STAT_UP_DEF] = LevelUp_GetDefBase,
	[STAT_UP_RES] = LevelUp_GetResBase,
	[STAT_UP_CON] = LevelUp_GetConBase,
	0,0,0,0
};

// 0x807ED31
s8 MapAnimLevelUp_GetActorStatBase(s16 actor_id, int stat_id){
	Get it = GetBuBaseList[stat_id];
	if( it )
		return it(gMapAnimData.actors[actor_id].pBattleUnit);
	else
		return 0;
}


// 0x807EBA5
// MapAnimLevelUp_DrawActorStat(proc->actor_id,1,1,stat_id,1);
void MapAnimLevelUp_DrawActorStat(int actor_id, int base_x, int base_y,int stat_id,int BoolUp){
	
	u16* tm_loc = TILEMAP_LOCATED(
		gBG0TilemapBuffer, 
		base_x + gMapAnimLevelUpStatLabelLocationTable[stat_id].x + 4,
		base_y + gMapAnimLevelUpStatLabelLocationTable[stat_id].y );
	
	s8 stat = MapAnimLevelUp_GetActorStatBase(actor_id, stat_id);
	
	if( BoolUp )
		stat += MapAnimLevelUp_GetActorStatUp(actor_id, stat_id);
	
	DrawDecNumber(tm_loc, 2, stat);
}


