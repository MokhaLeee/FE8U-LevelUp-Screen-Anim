#include "gbafe.h"
#include "common.h"
#include "level-up.h"

static u16 *ekrlu_class_window_offset = (u16*) 0x2020134;
static u16 *ekrlu_status_window_offset = (u16*) 0x2020136;
static u16 **ekrlu_class_window_offset_at = (u16**) 0x201FB34;
static u16 **ekrlu_status_window_offset_at = (u16**) 0x201FDC0;


// 0x8074834
void EkrLevelUp_HBlankCallBack(void){
	
	extern u16 GeneralLCDStatus_STAT_LYC_; // 0x4000004
	
	extern u16 BG1X_Offset; // 0x4000014
	extern u16 BG2X_Offset; // 0x4000018

	
	if( 1 & GeneralLCDStatus_STAT_LYC_ )
		return;
	
	BG2X_Offset = **ekrlu_class_window_offset_at;
	(*ekrlu_class_window_offset_at)++;
	
	BG1X_Offset = **ekrlu_status_window_offset_at;
	(*ekrlu_status_window_offset_at)++;
}


// 0x8074598
void EkrLevelUp_UpdateHBlankRule(void){
	
	extern u32 gUnknown_0201FDB8;
	extern u16 gUnknown_0201FB38[]; // maybe for class/lv windows
	extern u16 gUnknown_0201FC78[]; // maybe for status windows
	
	extern u16 gUnknown_0201FDC4[];
	extern u16 gUnknown_0201FF04[];
	
	u16 *_r1, *_r2;
	
	if( 0 != gUnknown_0201FDB8 ){
		_r2 = gUnknown_0201FB38;
		_r1 = gUnknown_0201FDC4;
	}
	else{
		_r2 = gUnknown_0201FC78;
		_r1 = gUnknown_0201FF04;
	}
	
	
	for(int i = 0; i < 0x9F; i++ )
	{
		if( i <= 0x37 ){
			*(_r2++) = 0;
			*(_r1++) = 0;
			continue;
		}
		
		else if( i <= 0x47 ){
			*(_r2++) = *ekrlu_class_window_offset;
			*(_r1++) = *ekrlu_class_window_offset;
		}
		
		else if( i < 0x9F ){
			*(_r2++) = *ekrlu_status_window_offset;
			*(_r1++) = *ekrlu_status_window_offset;
		}	
	}
}