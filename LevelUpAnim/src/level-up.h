#pragma once
// level-up.h
#ifndef gMapAnimData
#define gMapAnimData gUnknown_0203E1F0
#endif // gMapAnimData

enum{
	STAT_UP_LV  = 0,
	STAT_UP_HP  = 1,
	STAT_UP_POW = 2,
	STAT_UP_SKL = 3,
	STAT_UP_SPD = 4,
	STAT_UP_LCK = 5,
	STAT_UP_DEF = 6,
	STAT_UP_RES = 7,
	STAT_UP_CON = 8
};

enum{
	STAT_NAME_LV  = 0,
	STAT_NAME_EXP = 1,
	STAT_NAME_HP  = 2,
	STAT_NAME_STR = 3,
	STAT_NAME_MAG = 4,
	STAT_NAME_SKL = 5,
	STAT_NAME_SPD = 6,
	STAT_NAME_DEF = 7,
	STAT_NAME_RES = 8,
	STAT_NAME_LCK = 9,
	STAT_NAME_CON = 10
};
extern const u16 StatNames[];


// =================
// === ANIME-OFF ===
// =================

struct Proc_MapAnimLevelUp{ // LevelUpScreen
	/* 00 */ PROC_HEADER;
	/* 2A */ u8 pad_2A[0x2E - 0x2A];
	/* 2E */ s16 actor_id;
	/* 30 */ u8 stat_cur;		// stat index
	/* 31 */ u8 time_delay;
	/* 32 */ u16 yPos;
	/* 34 */ u16 pad_34;
	/* 36 */ u16 unk_36;
	/* 38 */ u8 pad_38[0x6C - 0x38];
};

typedef struct Proc_MapAnimLevelUp Proc_MapAnimLevelUp_t;


struct WindowSet_AnimOff{
	/* 00 */ u8 x;
	/* 01 */ u8 y;
	/* 04 */ u32* str_id[2];
	/* Total: 0C */
};

extern const struct WindowSet_AnimOff gMapAnimLevelUpStatLabelLocationTable[];
extern const u8 gGfx_LevelUpBoxFrame[]; // 0x88035B0
extern const u8 gMap_LevelUpBoxFrame[]; // 0x88039E8
extern const u8 gPal_LevelUpBoxFrame[]; // 0x8803B10

s8 MapAnimLevelUp_GetActorStatBase(s16 actor_id, int stat_id);
s8 MapAnimLevelUp_GetActorStatUp(s16 actor_id, int stat_id);
void MapAnimLevelUp_DrawActorStat(int actor_id, int base_x, int base_y,int stat_id,int BoolUp);
void sub_807EE84(s16 x, s16 y,int stat_id,s8 stat_up); // Draw AP
void MapAnimLevelUp_InitLevelUpBox(s16 actor_id, u8 x, u8 y);
void sub_807EDF8(u16, u16, u16, Proc_MapAnimLevelUp_t*);







// ================
// === ANIME-ON ===
// ================
struct Proc_EkrLevelUp{ // LevelUpScreen
	/* 00 */ PROC_HEADER;
	/* 29 */ u8 pad_29;
	/* 2A */ u8 promo; // promo = 1, else = 0
	/* 2B */ u8 pad_2B;
	/* 2C */ s16 cnt;	// init 0, maybe a counter
	/* 2E */ s16 stat_id;
	/* 30 */ u8 pad_30[0x44 - 0x30];
	/* 44 */ int unk_44;
	/* 48 */ int unk_48;
	/* 4C */ int unk_4C;
	/* 50 */ int unk_50;
	/* 54 */ u8 pad_54[0x5C - 0x54];
	/* 5C */ void* gAISMain;
	/* 60 */ void* AIS_struct;
	
};

typedef struct Proc_EkrLevelUp Proc_EkrLevelUp_t;

// Ekr_LocCalc
int sub_8012DCC(int cases, int b, int c, int d, int e);
int Ekr_LocCalc(int cases, int b, int c, int d, int e);
