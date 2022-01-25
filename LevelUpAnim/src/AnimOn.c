#include "gbafe.h"
#include "common.h"
#include "level-up.h"


static u16* gLevelUpStats = (u16*)0x2020110;
static u16* gLevelUpStatsBase = (u16*)0x2020114;
static u16* gLevelUpStatsAfter= (u16*)0x2020124;

static u16 *ekrlu_class_window_offset = (u16*) 0x2020134;
static u16 *ekrlu_status_window_offset = (u16*) 0x2020136;
// static u16 **ekrlu_class_window_offset_at = (u16**) 0x201FB34;
// static u16 **ekrlu_status_window_offset_at = (u16**) 0x201FDC0;

extern struct BattleUnit* gpUnitLeft_BattleStruct[];
extern struct BattleUnit* gpUnitRight_BattleStruct[];

extern const u16 gAnimsOnLevelUpStatDisplayPositionLookup[];




// ====================
// == PROC FUNCTIONS ==
// ====================

// 0x8073E8C
void EkrLevelUpProc_PutWindowOnScreen(Proc_EkrLevelUp_t* proc){
	extern u16 gUnknown_020165C8[];
	extern void sub_80712B0(void*, int, int, u16);
	extern int Ekr_CommonCalc(u32 cases, int b, int c, int d, int e);
	extern int LocCalc_0(u32 cases, int b, int c, int d, int e);
	
	int unk_44 = proc->unk_44;
	int unk_48 = proc->unk_48;
	int unk_4C = proc->unk_4C;
	int unk_50 = proc->unk_50;
	
	int calc0, calc1; //, calc2, calc3;
	
	if( unk_44 < 0 )
		unk_44 = 0;
	else if( unk_44 > 8 )
		unk_44 = 8;
	
	if( unk_48 < 0 )
		unk_48 = 0;
	else if( unk_48 > 8 )
		unk_48 = 8;
	
	if( unk_4C < 0 )
		unk_4C = 0;
	else if( unk_4C > 8 )
		unk_4C = 8;
	
	if( unk_50 < 0 )
		unk_50 = 0;
	else if( unk_50 > 8 )
		unk_50 = 8;
	
	proc->unk_44++;
	proc->unk_48++;
	proc->unk_4C++;
	proc->unk_50++;
	
	// Ekr_CommonCalc
	calc0 = LocCalc_0(0, -0x50, 0, unk_44, 8);
	calc1 = LocCalc_0(0, 0, 8, unk_48 , 8);
	
	// determin class/lv window location
	// see more on AnimOn-HBlank
	*ekrlu_class_window_offset = LocCalc_0(0, 0x90, 0, unk_4C, 8);
	
	// determin status window location
	*ekrlu_status_window_offset = LocCalc_0(0, 0x90, 0, unk_50, 8);
	
	gpFaceProcs->yPosition = 0x50 - calc0;
	
	// Ensure BackGround Palette
	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	
	sub_80712B0(gPaletteBuffer, 2, 4, calc1);
	sub_80712B0(gPaletteBuffer, 0x13, 0xC, calc1);
	EnablePaletteSync();
	
	if( ++proc->cnt > 0x14 )
	{
		proc->cnt = 0;
		Proc_Break(proc);
	}
}



// 0x80742f9
void EkrLevelUpProc_PutWindowOffScreen(Proc_EkrLevelUp_t *proc){
	
	extern u16 gUnknown_020165C8[];
	extern void sub_80712B0(void*, int, int, u16);
	int Ekr_CommonCalc(u32 cases, int b, int c, int d, int e);
	int LocCalc_0(u32 cases, int b, int c, int d, int e);
	
	int calc2, calc3;
	
	// Ekr_CommonCalc
	*ekrlu_class_window_offset = LocCalc_0(0,0,0x90, proc->cnt, 8);
	*ekrlu_status_window_offset = LocCalc_0(0,0,0x90, proc->cnt, 8);
	calc2 = LocCalc_0(0,0, -0x50, proc->cnt, 8);
	calc3 = LocCalc_0(0,8,0,proc->cnt,8);
	
	gpFaceProcs->yPosition = 0x50 - calc2;
	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	sub_80712B0(gPaletteBuffer, 2, 4, calc3);
	sub_80712B0(gPaletteBuffer, 0x13, 0xC, calc3);
	EnablePaletteSync();
	
	if( ++proc->cnt > 0x8 )
	{
		proc->cnt = 0;
		Proc_Break(proc);
	}
}






// 0x80741CC
void EkrLevelUpProc_MainAnime(Proc_EkrLevelUp_t* proc){
	extern void EkrLevelUp_DrawNewStat(Proc_EkrLevelUp_t*, s16);
	extern void SomePlaySound_8071990(int ,int);
	static void (*sub_8071AB0)(int,int,int) = (const void*)0x8071AB1;
	static void (*EkrLevelUp_SomeAPs)(int,int,int,int,int,int) = (const void*)(0x8074D58+1);
	static u16 *short_203E1B0 = (u16*)0x203E1B0;
	
	
	
	if( ++proc->cnt < 0x14 )
		goto breakP_return;
	
	while( proc->stat_id < 8 )
	{
		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
			goto draw_stat;
		
		proc->stat_id++;
	}
	goto breakP_return;	
	
	
	// <!> goto
	draw_stat:
	
	s16 stat_id = proc->stat_id;
	s16 diff = gLevelUpStatsAfter[stat_id] - gLevelUpStatsBase[stat_id];
	
	// draw Stat Core
	gLevelUpStatsBase[stat_id] = gLevelUpStatsAfter[stat_id];
	EkrLevelUp_DrawNewStat(proc, stat_id);
	
	// SomeSound
	SomePlaySound_8071990(0x76, 0x100);
	sub_8071AB0(0x76, 0x38, 0);
	
	// draw APs
	u16 pos = gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
	
	EkrLevelUp_SomeAPs(
		0xA0,
		1,
		0x35 + (pos & 0x1F)*8,
		6 + (pos & 0x7E0)/4,
		stat_id + 1,
		diff
		);
	
	if( 0 != proc->stat_id )
	{
		short_203E1B0[1] = gLevelUpStatsBase[stat_id];
		short_203E1B0[3] = 0xFFFF;
	} // if( 0 != proc->stat_id )
	
	// reset counter
	proc->cnt = 0;
	
	// <!> goto
	breakP_return:{
		if( proc->stat_id < 8 )
			return;
		
		proc->cnt = 0;
		Proc_Break(proc);
		return;
	} // breakP_return
	
}







// ======================
// == STATIC FUNCTIONS ==
// ======================

// 0x807352C
void EkrLevelUp_InitStatsAndPutText(Proc_EkrLevelUp_t *proc){
	
	// stat name tables
	static struct BattleUnit** gpSomeBuStruct = (struct BattleUnit**)0x2020108;
	static struct BattleUnit** gpSomeUnitStruct2 = (struct BattleUnit**)0x202010C;
	extern const u16* gUnknown_0875930C[];
	extern const u16* gUnknown_087592EC[];
	
	// text-handle
	extern struct TextHandle gUnknown_020176A0[];
	extern struct TextHandle gSomeTextStruct[];
	
	struct BattleUnit *bu1, *bu2;
	
	if ( proc->gAISMain ){
		bu1 = *gpUnitRight_BattleStruct;
		bu2 = *gpUnitLeft_BattleStruct;
	}
	else{
		bu1 = *gpUnitLeft_BattleStruct;
		bu2 = *gpUnitRight_BattleStruct;
	}
	
	*gpSomeBuStruct = bu1;
	*gpSomeUnitStruct2 = bu2;
	
	if( FALSE == proc->promo )
	{
		// Level Up
		struct Unit* unit = GetUnit(bu1->unit.index);
		
		gLevelUpStats[0] = bu1->levelPrevious;
		gLevelUpStatsBase[0] = unit->maxHP;
		gLevelUpStatsBase[1] = unit->pow;
		gLevelUpStatsBase[2] = unit->skl;
		gLevelUpStatsBase[3] = unit->spd;
		gLevelUpStatsBase[4] = unit->lck;
		gLevelUpStatsBase[5] = unit->def;
		gLevelUpStatsBase[6] = unit->res;
		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
		gLevelUpStats[1] = gLevelUpStats[0]+1;
		
		gLevelUpStatsAfter[0] = unit->maxHP + bu1->changeHP;
		gLevelUpStatsAfter[1] = unit->pow + bu1->changePow;
		gLevelUpStatsAfter[2] = unit->skl + bu1->changeSkl;
		gLevelUpStatsAfter[3] = unit->spd + bu1->changeSpd;
		gLevelUpStatsAfter[4] = unit->lck + bu1->changeDef;
		gLevelUpStatsAfter[5] = unit->def + bu1->changeRes;
		gLevelUpStatsAfter[6] = unit->res + bu1->changeLck;
		gLevelUpStatsAfter[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon + bu1->changeCon;
	}
	else
	{
		// Promotion
		gLevelUpStats[0] = bu1->unit.level;
		gLevelUpStatsBase[0] = bu1->unit.maxHP;
		gLevelUpStatsBase[1] = bu1->unit.pow;
		gLevelUpStatsBase[2] = bu1->unit.skl;
		gLevelUpStatsBase[3] = bu1->unit.spd;
		gLevelUpStatsBase[4] = bu1->unit.lck;
		gLevelUpStatsBase[5] = bu1->unit.def;
		gLevelUpStatsBase[6] = bu1->unit.res;
		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
		gLevelUpStats[1] = 1;
		
		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
		gLevelUpStatsAfter[1] = bu2->unit.pow;
		gLevelUpStatsAfter[2] = bu2->unit.skl;
		gLevelUpStatsAfter[3] = bu2->unit.spd;
		gLevelUpStatsAfter[4] = bu2->unit.lck;
		gLevelUpStatsAfter[5] = bu2->unit.def;
		gLevelUpStatsAfter[6] = bu2->unit.res;
		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	}
	
	Font_InitForUI(&gSomeFontStruct, (void*) 0x60028C0, 0x146, 0);
	
	
	for(int stat_id = 0; stat_id<8; stat_id++)
	{
		const u16** stat_name_table;
		
		
		if ( UnitHasMagicRank(&bu1->unit) )
			stat_name_table = gUnknown_087592EC;
		else
			stat_name_table = gUnknown_0875930C;
		
		const char *str = GetStringFromIndex( *stat_name_table[stat_id] );
		struct TextHandle *th = &gSomeTextStruct[stat_id];
		
		Text_Init(th, 3);
		Text_SetXCursor(th, 0);
		Text_SetColorId(th, TEXT_COLOR_GOLD);
		Text_AppendString(th, str);
		
		u16 *map = 
			gBG2TilemapBuffer+
			gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
			
		Text_Draw(th, map);
	} // for(int stat_id = 0; stat_id<8; stat_id++)
	
	
	for(int stat_id = 0; stat_id<8; stat_id++)
	{
		struct TextHandle *th = &gUnknown_020176A0[stat_id];
		Text_Init(th, 2);
		Text_SetXCursor(th, 8);
		Text_SetColorId(th, TEXT_COLOR_BLUE);
		Text_AppendDecNumber(th, gLevelUpStatsBase[stat_id]);
		
		u16 *map = 
			6/2+
			gBG2TilemapBuffer+
			gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
			
		Text_Draw(th, map);
	} // for(int stat_id = 0; stat_id<8; stat_id++)
	
	// class name
	struct TextHandle *th;
	const char* str;
	u16* map;
	
	th = &gUnknown_020176A0[8];
	str = GetStringFromIndex(bu1->unit.pClassData->nameTextId);
	map = gBG2TilemapBuffer + 0x1C0/2 + 3;
	
	Text_Init(th, 8);
	Text_AppendString(th, str);
	Text_Draw(th, map);
	
	
	// "lv"
	th = &gUnknown_020176A0[9];
	str = GetStringFromIndex(StatNames[STAT_NAME_LV]);
	map = gBG2TilemapBuffer + 0x1CE/2 + 3;
	
	Text_Init(th, 3);
	Text_AppendString(th, str);
	Text_Draw(th, map);
	
	
	// level-pre
	th = &gUnknown_020176A0[10];
	map = gBG2TilemapBuffer + 0x1D4/2 + 3;
	
	Text_Init(th, 2);
	Text_SetXCursor(th, 8);
	Text_SetColorId(th, TEXT_COLOR_BLUE);
	Text_AppendDecNumber(th, gLevelUpStats[0]);
	Text_Draw(th, map);
}



// 0x80738B8
void EkrLevelUp_DrawNewStat(Proc_EkrLevelUp_t* proc, s16 stat_id){
	extern struct TextHandle gUnknown_020176A0[];
	
	struct TextHandle* th = &gUnknown_020176A0[stat_id];
	u16* map;
	
	Text_Clear(th);
	Text_SetXCursor(th, 8);
	Text_SetColorId(th, TEXT_COLOR_BLUE);
	Text_AppendDecNumber(th, gLevelUpStatsBase[stat_id]);
	
	map = 
		3 +
		gBG2TilemapBuffer + 
		gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
	
	Text_Draw(th, map);
} 





typedef int (*Get)(u32,int,int,int,int);
int LocCalc_Default(void) {
	return 0;
}
int LocCalc_0(u32 a,int b,int c,int d,int e){ 
	return b + (c-b)* d/e;
}
int LocCalc_1(u32 a,int b,int c,int d,int e){ 
	return b + (c-b)* (d*d)/(e*e);
}
int LocCalc_2(u32 a,int b,int c,int d,int e){ 
	return b + (c-b)* (d*d*d)/(e*e*e);
}
int LocCalc_3(u32 a,int b,int c,int d,int e){ 
	return b + (c-b)* (d*d*d*d)/(e*e*e*e);
}
int LocCalc_4(u32 a,int b,int c,int d,int e){
	return c - (c-b)* (e-d)*(e-d)/(e*e);
}
int LocCalc_5(u32 a,int b,int c,int d,int e){
	return c - (c-b)* (e-d)*(e-d)*(e-d)/(e*e*e);
}

const Get LocCalcTable[] = {
	LocCalc_0,
	LocCalc_1,
	LocCalc_2,
	LocCalc_3,
	LocCalc_4,
	LocCalc_5
};


// 0x8012DCC
int Ekr_CommonCalc(u32 cases, int b, int c, int d, int e){
	
	// Here, this function cannot compile...
	// "sp  neede :("
	if( 0 == e )
		return c;
	if ( cases > 5 )
		return 0;
	else
		return LocCalcTable[cases](cases,b,c,d,e);
}




