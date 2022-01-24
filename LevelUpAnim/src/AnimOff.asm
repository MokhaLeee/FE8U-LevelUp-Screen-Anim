	.cpu arm7tdmi
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"AnimOff.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	LevelUp_GetLvUp
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetLvUp, %function
LevelUp_GetLvUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:190: s8 LevelUp_GetLvUp (struct BattleUnit* bu){ return 1;}
	movs	r0, #1	@,
	@ sp needed	@
	bx	lr
	.size	LevelUp_GetLvUp, .-LevelUp_GetLvUp
	.align	1
	.global	LevelUp_GetHpUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetHpUp, %function
LevelUp_GetHpUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:191: s8 LevelUp_GetHpUp (struct BattleUnit* bu){ return bu->changeHP; }
	adds	r0, r0, #115	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:191: s8 LevelUp_GetHpUp (struct BattleUnit* bu){ return bu->changeHP; }
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:191: s8 LevelUp_GetHpUp (struct BattleUnit* bu){ return bu->changeHP; }
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:191: s8 LevelUp_GetHpUp (struct BattleUnit* bu){ return bu->changeHP; }
	bx	lr
	.size	LevelUp_GetHpUp, .-LevelUp_GetHpUp
	.align	1
	.global	LevelUp_GetPowUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetPowUp, %function
LevelUp_GetPowUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:192: s8 LevelUp_GetPowUp(struct BattleUnit* bu){ return bu->changePow;}
	adds	r0, r0, #116	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:192: s8 LevelUp_GetPowUp(struct BattleUnit* bu){ return bu->changePow;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:192: s8 LevelUp_GetPowUp(struct BattleUnit* bu){ return bu->changePow;}
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:192: s8 LevelUp_GetPowUp(struct BattleUnit* bu){ return bu->changePow;}
	bx	lr
	.size	LevelUp_GetPowUp, .-LevelUp_GetPowUp
	.align	1
	.global	LevelUp_GetSklUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetSklUp, %function
LevelUp_GetSklUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:193: s8 LevelUp_GetSklUp(struct BattleUnit* bu){ return bu->changeSkl;}
	adds	r0, r0, #117	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:193: s8 LevelUp_GetSklUp(struct BattleUnit* bu){ return bu->changeSkl;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:193: s8 LevelUp_GetSklUp(struct BattleUnit* bu){ return bu->changeSkl;}
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:193: s8 LevelUp_GetSklUp(struct BattleUnit* bu){ return bu->changeSkl;}
	bx	lr
	.size	LevelUp_GetSklUp, .-LevelUp_GetSklUp
	.align	1
	.global	LevelUp_GetSpdUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetSpdUp, %function
LevelUp_GetSpdUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:194: s8 LevelUp_GetSpdUp(struct BattleUnit* bu){ return bu->changeSpd;}
	adds	r0, r0, #118	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:194: s8 LevelUp_GetSpdUp(struct BattleUnit* bu){ return bu->changeSpd;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:194: s8 LevelUp_GetSpdUp(struct BattleUnit* bu){ return bu->changeSpd;}
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:194: s8 LevelUp_GetSpdUp(struct BattleUnit* bu){ return bu->changeSpd;}
	bx	lr
	.size	LevelUp_GetSpdUp, .-LevelUp_GetSpdUp
	.align	1
	.global	LevelUp_GetLckUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetLckUp, %function
LevelUp_GetLckUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:195: s8 LevelUp_GetLckUp(struct BattleUnit* bu){ return bu->changeLck;}
	adds	r0, r0, #121	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:195: s8 LevelUp_GetLckUp(struct BattleUnit* bu){ return bu->changeLck;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:195: s8 LevelUp_GetLckUp(struct BattleUnit* bu){ return bu->changeLck;}
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:195: s8 LevelUp_GetLckUp(struct BattleUnit* bu){ return bu->changeLck;}
	bx	lr
	.size	LevelUp_GetLckUp, .-LevelUp_GetLckUp
	.align	1
	.global	LevelUp_GetDefUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetDefUp, %function
LevelUp_GetDefUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:196: s8 LevelUp_GetDefUp(struct BattleUnit* bu){ return bu->changeDef;}
	adds	r0, r0, #119	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:196: s8 LevelUp_GetDefUp(struct BattleUnit* bu){ return bu->changeDef;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:196: s8 LevelUp_GetDefUp(struct BattleUnit* bu){ return bu->changeDef;}
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:196: s8 LevelUp_GetDefUp(struct BattleUnit* bu){ return bu->changeDef;}
	bx	lr
	.size	LevelUp_GetDefUp, .-LevelUp_GetDefUp
	.align	1
	.global	LevelUp_GetResUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetResUp, %function
LevelUp_GetResUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:197: s8 LevelUp_GetResUp(struct BattleUnit* bu){ return bu->changeRes;}
	adds	r0, r0, #120	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:197: s8 LevelUp_GetResUp(struct BattleUnit* bu){ return bu->changeRes;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:197: s8 LevelUp_GetResUp(struct BattleUnit* bu){ return bu->changeRes;}
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:197: s8 LevelUp_GetResUp(struct BattleUnit* bu){ return bu->changeRes;}
	bx	lr
	.size	LevelUp_GetResUp, .-LevelUp_GetResUp
	.align	1
	.global	LevelUp_GetConUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetConUp, %function
LevelUp_GetConUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:198: s8 LevelUp_GetConUp(struct BattleUnit* bu){ return bu->changeCon;}
	adds	r0, r0, #122	@ tmp118,
	ldrb	r0, [r0]	@ tmp120,
@ LevelUpAnim/src/AnimOff.c:198: s8 LevelUp_GetConUp(struct BattleUnit* bu){ return bu->changeCon;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:198: s8 LevelUp_GetConUp(struct BattleUnit* bu){ return bu->changeCon;}
	lsls	r0, r0, #24	@ tmp122, tmp120,
	asrs	r0, r0, #24	@ tmp121, tmp122,
@ LevelUpAnim/src/AnimOff.c:198: s8 LevelUp_GetConUp(struct BattleUnit* bu){ return bu->changeCon;}
	bx	lr
	.size	LevelUp_GetConUp, .-LevelUp_GetConUp
	.align	1
	.global	LevelUp_GetLvBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetLvBase, %function
LevelUp_GetLvBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:226: s8 LevelUp_GetLvBase (struct BattleUnit* bu){ return bu->levelPrevious;}
	adds	r0, r0, #112	@ tmp119,
	ldrb	r0, [r0]	@ tmp121,
@ LevelUpAnim/src/AnimOff.c:226: s8 LevelUp_GetLvBase (struct BattleUnit* bu){ return bu->levelPrevious;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:226: s8 LevelUp_GetLvBase (struct BattleUnit* bu){ return bu->levelPrevious;}
	lsls	r0, r0, #24	@ tmp123, tmp121,
	asrs	r0, r0, #24	@ tmp122, tmp123,
@ LevelUpAnim/src/AnimOff.c:226: s8 LevelUp_GetLvBase (struct BattleUnit* bu){ return bu->levelPrevious;}
	bx	lr
	.size	LevelUp_GetLvBase, .-LevelUp_GetLvBase
	.align	1
	.global	LevelUp_GetHpBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetHpBase, %function
LevelUp_GetHpBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:227: s8 LevelUp_GetHpBase (struct BattleUnit* bu){ return bu->unit.maxHP;}
	ldrb	r0, [r0, #18]	@ tmp117,
@ LevelUpAnim/src/AnimOff.c:227: s8 LevelUp_GetHpBase (struct BattleUnit* bu){ return bu->unit.maxHP;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:227: s8 LevelUp_GetHpBase (struct BattleUnit* bu){ return bu->unit.maxHP;}
	lsls	r0, r0, #24	@ tmp119, tmp117,
	asrs	r0, r0, #24	@ tmp118, tmp119,
@ LevelUpAnim/src/AnimOff.c:227: s8 LevelUp_GetHpBase (struct BattleUnit* bu){ return bu->unit.maxHP;}
	bx	lr
	.size	LevelUp_GetHpBase, .-LevelUp_GetHpBase
	.align	1
	.global	LevelUp_GetPowBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetPowBase, %function
LevelUp_GetPowBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:228: s8 LevelUp_GetPowBase(struct BattleUnit* bu){ return bu->unit.pow;}
	ldrb	r0, [r0, #20]	@ tmp117,
@ LevelUpAnim/src/AnimOff.c:228: s8 LevelUp_GetPowBase(struct BattleUnit* bu){ return bu->unit.pow;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:228: s8 LevelUp_GetPowBase(struct BattleUnit* bu){ return bu->unit.pow;}
	lsls	r0, r0, #24	@ tmp119, tmp117,
	asrs	r0, r0, #24	@ tmp118, tmp119,
@ LevelUpAnim/src/AnimOff.c:228: s8 LevelUp_GetPowBase(struct BattleUnit* bu){ return bu->unit.pow;}
	bx	lr
	.size	LevelUp_GetPowBase, .-LevelUp_GetPowBase
	.align	1
	.global	LevelUp_GetSklBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetSklBase, %function
LevelUp_GetSklBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:229: s8 LevelUp_GetSklBase(struct BattleUnit* bu){ return bu->unit.skl;}
	ldrb	r0, [r0, #21]	@ tmp117,
@ LevelUpAnim/src/AnimOff.c:229: s8 LevelUp_GetSklBase(struct BattleUnit* bu){ return bu->unit.skl;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:229: s8 LevelUp_GetSklBase(struct BattleUnit* bu){ return bu->unit.skl;}
	lsls	r0, r0, #24	@ tmp119, tmp117,
	asrs	r0, r0, #24	@ tmp118, tmp119,
@ LevelUpAnim/src/AnimOff.c:229: s8 LevelUp_GetSklBase(struct BattleUnit* bu){ return bu->unit.skl;}
	bx	lr
	.size	LevelUp_GetSklBase, .-LevelUp_GetSklBase
	.align	1
	.global	LevelUp_GetSpdBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetSpdBase, %function
LevelUp_GetSpdBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:230: s8 LevelUp_GetSpdBase(struct BattleUnit* bu){ return bu->unit.spd;}
	ldrb	r0, [r0, #22]	@ tmp117,
@ LevelUpAnim/src/AnimOff.c:230: s8 LevelUp_GetSpdBase(struct BattleUnit* bu){ return bu->unit.spd;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:230: s8 LevelUp_GetSpdBase(struct BattleUnit* bu){ return bu->unit.spd;}
	lsls	r0, r0, #24	@ tmp119, tmp117,
	asrs	r0, r0, #24	@ tmp118, tmp119,
@ LevelUpAnim/src/AnimOff.c:230: s8 LevelUp_GetSpdBase(struct BattleUnit* bu){ return bu->unit.spd;}
	bx	lr
	.size	LevelUp_GetSpdBase, .-LevelUp_GetSpdBase
	.align	1
	.global	LevelUp_GetLckBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetLckBase, %function
LevelUp_GetLckBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:231: s8 LevelUp_GetLckBase(struct BattleUnit* bu){ return bu->unit.lck;}
	ldrb	r0, [r0, #25]	@ tmp117,
@ LevelUpAnim/src/AnimOff.c:231: s8 LevelUp_GetLckBase(struct BattleUnit* bu){ return bu->unit.lck;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:231: s8 LevelUp_GetLckBase(struct BattleUnit* bu){ return bu->unit.lck;}
	lsls	r0, r0, #24	@ tmp119, tmp117,
	asrs	r0, r0, #24	@ tmp118, tmp119,
@ LevelUpAnim/src/AnimOff.c:231: s8 LevelUp_GetLckBase(struct BattleUnit* bu){ return bu->unit.lck;}
	bx	lr
	.size	LevelUp_GetLckBase, .-LevelUp_GetLckBase
	.align	1
	.global	LevelUp_GetDefBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetDefBase, %function
LevelUp_GetDefBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:232: s8 LevelUp_GetDefBase(struct BattleUnit* bu){ return bu->unit.def;}
	ldrb	r0, [r0, #23]	@ tmp117,
@ LevelUpAnim/src/AnimOff.c:232: s8 LevelUp_GetDefBase(struct BattleUnit* bu){ return bu->unit.def;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:232: s8 LevelUp_GetDefBase(struct BattleUnit* bu){ return bu->unit.def;}
	lsls	r0, r0, #24	@ tmp119, tmp117,
	asrs	r0, r0, #24	@ tmp118, tmp119,
@ LevelUpAnim/src/AnimOff.c:232: s8 LevelUp_GetDefBase(struct BattleUnit* bu){ return bu->unit.def;}
	bx	lr
	.size	LevelUp_GetDefBase, .-LevelUp_GetDefBase
	.align	1
	.global	LevelUp_GetResBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetResBase, %function
LevelUp_GetResBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:233: s8 LevelUp_GetResBase(struct BattleUnit* bu){ return bu->unit.res;}
	ldrb	r0, [r0, #24]	@ tmp117,
@ LevelUpAnim/src/AnimOff.c:233: s8 LevelUp_GetResBase(struct BattleUnit* bu){ return bu->unit.res;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:233: s8 LevelUp_GetResBase(struct BattleUnit* bu){ return bu->unit.res;}
	lsls	r0, r0, #24	@ tmp119, tmp117,
	asrs	r0, r0, #24	@ tmp118, tmp119,
@ LevelUpAnim/src/AnimOff.c:233: s8 LevelUp_GetResBase(struct BattleUnit* bu){ return bu->unit.res;}
	bx	lr
	.size	LevelUp_GetResBase, .-LevelUp_GetResBase
	.align	1
	.global	LevelUp_GetConBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_GetConBase, %function
LevelUp_GetConBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOff.c:234: s8 LevelUp_GetConBase(struct BattleUnit* bu){ return bu->unit.pCharacterData->baseCon + bu->unit.pClassData->baseCon;}
	ldmia	r0!, {r2, r3}	@,,
@ LevelUpAnim/src/AnimOff.c:234: s8 LevelUp_GetConBase(struct BattleUnit* bu){ return bu->unit.pCharacterData->baseCon + bu->unit.pClassData->baseCon;}
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:234: s8 LevelUp_GetConBase(struct BattleUnit* bu){ return bu->unit.pCharacterData->baseCon + bu->unit.pClassData->baseCon;}
	ldrb	r0, [r2, #19]	@ tmp126,
	ldrb	r3, [r3, #17]	@ tmp128,
	adds	r0, r0, r3	@ tmp129, tmp126, tmp128
	lsls	r0, r0, #24	@ tmp131, tmp129,
	asrs	r0, r0, #24	@ tmp130, tmp131,
@ LevelUpAnim/src/AnimOff.c:234: s8 LevelUp_GetConBase(struct BattleUnit* bu){ return bu->unit.pCharacterData->baseCon + bu->unit.pClassData->baseCon;}
	bx	lr
	.size	LevelUp_GetConBase, .-LevelUp_GetConBase
	.align	1
	.global	MapAnimLevelUp_PutWindowOnScreen
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUp_PutWindowOnScreen, %function
MapAnimLevelUp_PutWindowOnScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOff.c:63: 	BG_SetPosition(BG0, 0, proc->yPos);
	movs	r1, #0	@,
@ LevelUpAnim/src/AnimOff.c:60: void MapAnimLevelUp_PutWindowOnScreen(Proc_MapAnimLevelUp_t* proc){
	push	{r4, r5, r6, lr}	@
@ LevelUpAnim/src/AnimOff.c:60: void MapAnimLevelUp_PutWindowOnScreen(Proc_MapAnimLevelUp_t* proc){
	movs	r4, r0	@ proc, tmp139
@ LevelUpAnim/src/AnimOff.c:62: 	proc->yPos += 8;
	ldrh	r2, [r0, #50]	@ tmp122,
	adds	r2, r2, #8	@ tmp123,
	lsls	r2, r2, #16	@ _2, tmp123,
	lsrs	r2, r2, #16	@ _2, _2,
	strh	r2, [r0, #50]	@ _2, proc_10(D)->yPos
@ LevelUpAnim/src/AnimOff.c:63: 	BG_SetPosition(BG0, 0, proc->yPos);
	ldr	r5, .L21	@ tmp126,
	movs	r0, r1	@,
	bl	.L23		@
@ LevelUpAnim/src/AnimOff.c:64: 	BG_SetPosition(BG1, 0, proc->yPos);
	movs	r1, #0	@,
	ldrh	r2, [r4, #50]	@ tmp127,
	movs	r0, #1	@,
	bl	.L23		@
@ LevelUpAnim/src/AnimOff.c:66: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	ldr	r3, .L21+4	@ tmp130,
	ldr	r1, [r3]	@ gpFaceProcs, gpFaceProcs
@ LevelUpAnim/src/AnimOff.c:66: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	movs	r3, #32	@ tmp132,
@ LevelUpAnim/src/AnimOff.c:66: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	ldrh	r2, [r4, #50]	@ _4,
@ LevelUpAnim/src/AnimOff.c:66: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	subs	r3, r3, r2	@ tmp133, tmp132, _4
@ LevelUpAnim/src/AnimOff.c:66: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	strh	r3, [r1, #54]	@ tmp133, gpFaceProcs.1_6->yPosition
@ LevelUpAnim/src/AnimOff.c:68: 	if( proc->yPos >= 0xFFD0 )	
	ldr	r3, .L21+8	@ tmp137,
	cmp	r2, r3	@ _4, tmp137
	bls	.L19		@,
@ LevelUpAnim/src/AnimOff.c:69: 		Proc_Break((struct Proc*)proc);
	movs	r0, r4	@, proc
	ldr	r3, .L21+12	@ tmp138,
	bl	.L24		@
.L19:
@ LevelUpAnim/src/AnimOff.c:71: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L22:
	.align	2
.L21:
	.word	BG_SetPosition
	.word	gpFaceProcs
	.word	65487
	.word	Proc_Break
	.size	MapAnimLevelUp_PutWindowOnScreen, .-MapAnimLevelUp_PutWindowOnScreen
	.align	1
	.global	MapAnimLevelUp_PutWindowOffScreen
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUp_PutWindowOffScreen, %function
MapAnimLevelUp_PutWindowOffScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOff.c:130: 	BG_SetPosition(BG0, 0, proc->yPos);
	movs	r1, #0	@,
@ LevelUpAnim/src/AnimOff.c:127: void MapAnimLevelUp_PutWindowOffScreen(Proc_MapAnimLevelUp_t* proc){
	push	{r4, r5, r6, lr}	@
@ LevelUpAnim/src/AnimOff.c:127: void MapAnimLevelUp_PutWindowOffScreen(Proc_MapAnimLevelUp_t* proc){
	movs	r4, r0	@ proc, tmp139
@ LevelUpAnim/src/AnimOff.c:129: 	proc->yPos -= 8;
	ldrh	r2, [r0, #50]	@ tmp122,
	subs	r2, r2, #8	@ tmp123,
	lsls	r2, r2, #16	@ _2, tmp123,
	lsrs	r2, r2, #16	@ _2, _2,
	strh	r2, [r0, #50]	@ _2, proc_10(D)->yPos
@ LevelUpAnim/src/AnimOff.c:130: 	BG_SetPosition(BG0, 0, proc->yPos);
	ldr	r5, .L27	@ tmp126,
	movs	r0, r1	@,
	bl	.L23		@
@ LevelUpAnim/src/AnimOff.c:131: 	BG_SetPosition(BG1, 0, proc->yPos);
	movs	r1, #0	@,
	ldrh	r2, [r4, #50]	@ tmp127,
	movs	r0, #1	@,
	bl	.L23		@
@ LevelUpAnim/src/AnimOff.c:133: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	ldr	r3, .L27+4	@ tmp130,
	ldr	r1, [r3]	@ gpFaceProcs, gpFaceProcs
@ LevelUpAnim/src/AnimOff.c:133: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	movs	r3, #32	@ tmp132,
@ LevelUpAnim/src/AnimOff.c:133: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	ldrh	r2, [r4, #50]	@ _4,
@ LevelUpAnim/src/AnimOff.c:133: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	subs	r3, r3, r2	@ tmp133, tmp132, _4
@ LevelUpAnim/src/AnimOff.c:133: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	strh	r3, [r1, #54]	@ tmp133, gpFaceProcs.2_6->yPosition
@ LevelUpAnim/src/AnimOff.c:135: 	if( proc->yPos <= 0xFF70 )
	ldr	r3, .L27+8	@ tmp137,
	cmp	r2, r3	@ _4, tmp137
	bhi	.L25		@,
@ LevelUpAnim/src/AnimOff.c:136: 		Proc_Break((struct Proc*)proc);
	movs	r0, r4	@, proc
	ldr	r3, .L27+12	@ tmp138,
	bl	.L24		@
.L25:
@ LevelUpAnim/src/AnimOff.c:137: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L28:
	.align	2
.L27:
	.word	BG_SetPosition
	.word	gpFaceProcs
	.word	65392
	.word	Proc_Break
	.size	MapAnimLevelUp_PutWindowOffScreen, .-MapAnimLevelUp_PutWindowOffScreen
	.align	1
	.global	MapAnimLevelUp_InitLevelUpBox
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUp_InitLevelUpBox, %function
MapAnimLevelUp_InitLevelUpBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ LevelUpAnim/src/AnimOff.c:150: 	BG_Fill(gBG1TilemapBuffer,0);
	ldr	r5, .L32	@ tmp155,
@ LevelUpAnim/src/AnimOff.c:146: void MapAnimLevelUp_InitLevelUpBox(s16 actor_id, u8 x, u8 y){
	movs	r6, r0	@ actor_id, tmp204
	str	r1, [sp]	@ tmp205, %sfp
@ LevelUpAnim/src/AnimOff.c:150: 	BG_Fill(gBG1TilemapBuffer,0);
	movs	r0, r5	@, tmp155
	movs	r1, #0	@,
	ldr	r3, .L32+4	@ tmp156,
@ LevelUpAnim/src/AnimOff.c:146: void MapAnimLevelUp_InitLevelUpBox(s16 actor_id, u8 x, u8 y){
	str	r2, [sp, #4]	@ tmp206, %sfp
@ LevelUpAnim/src/AnimOff.c:150: 	BG_Fill(gBG1TilemapBuffer,0);
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:154: 		BG_CHAR_ADDR(BG1) + GetBackgroundTileDataOffset(BG1) );
	ldr	r3, .L32+8	@ tmp157,
	movs	r0, #1	@,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:152: 	CopyDataWithPossibleUncomp( // Decompress
	ldr	r3, .L32+12	@ tmp220,
	adds	r1, r0, r3	@ tmp158, tmp207, tmp220
	ldr	r3, .L32+16	@ tmp159,
	ldr	r7, .L32+20	@ tmp160,
	movs	r0, r3	@ tmp159, tmp159
	bl	.L34		@
@ LevelUpAnim/src/AnimOff.c:156: 	CopyDataWithPossibleUncomp(
	ldr	r4, .L32+24	@ tmp161,
	ldr	r0, .L32+28	@ tmp162,
	movs	r1, r4	@, tmp161
	bl	.L34		@
@ LevelUpAnim/src/AnimOff.c:160: 	sub_80149F0(gGenericBuffer, gBG1TilemapBuffer, 0x380, 0x5200);
	movs	r3, #164	@,
	movs	r2, #224	@,
	movs	r1, r5	@, tmp155
	movs	r0, r4	@, tmp161
	lsls	r3, r3, #7	@,,
	ldr	r4, .L32+32	@ tmp168,
	lsls	r2, r2, #2	@,,
	bl	.L35		@
@ LevelUpAnim/src/AnimOff.c:161: 	ApplyPalettes(gPal_LevelUpBoxFrame, 5, 1); // (aSrc, aPalId, aPalCount)
	movs	r1, #160	@,
	movs	r2, #32	@,
	ldr	r0, .L32+36	@ tmp169,
	ldr	r3, .L32+40	@ tmp170,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:164: 	bu = gMapAnimData.actors[actor_id].pBattleUnit;
	movs	r2, #20	@ tmp172,
	muls	r2, r6	@ tmp173, actor_id
	ldr	r3, .L32+44	@ tmp171,
	adds	r3, r3, r2	@ tmp174, tmp171, tmp173
	ldr	r4, [r3, #4]	@ bu, gUnknown_0203E1F0.actors[_11].pBattleUnit
@ LevelUpAnim/src/AnimOff.c:169: 		GetStringFromIndex(bu->unit.pClassData->nameTextId) );
	ldr	r3, [r4, #4]	@ bu_47->unit.pClassData, bu_47->unit.pClassData
@ LevelUpAnim/src/AnimOff.c:166: 	SomeDrawTextInlineAutoWidth(
	ldrh	r0, [r3]	@ *_12, *_12
	ldr	r3, .L32+48	@ tmp178,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:163: 	tm_loc = TILEMAP_LOCATED(gBG0TilemapBuffer, x+2, y);
	ldr	r3, [sp, #4]	@ y, %sfp
@ LevelUpAnim/src/AnimOff.c:166: 	SomeDrawTextInlineAutoWidth(
	movs	r2, r0	@ _15, tmp208
@ LevelUpAnim/src/AnimOff.c:163: 	tm_loc = TILEMAP_LOCATED(gBG0TilemapBuffer, x+2, y);
	lsls	r0, r3, #5	@ tmp179, y,
	ldr	r3, [sp]	@ x, %sfp
	adds	r3, r3, #2	@ tmp180,
	adds	r0, r0, r3	@ tmp181, tmp179, tmp180
@ LevelUpAnim/src/AnimOff.c:163: 	tm_loc = TILEMAP_LOCATED(gBG0TilemapBuffer, x+2, y);
	ldr	r3, .L32+52	@ tmp184,
@ LevelUpAnim/src/AnimOff.c:163: 	tm_loc = TILEMAP_LOCATED(gBG0TilemapBuffer, x+2, y);
	lsls	r0, r0, #1	@ tmp182, tmp181,
@ LevelUpAnim/src/AnimOff.c:163: 	tm_loc = TILEMAP_LOCATED(gBG0TilemapBuffer, x+2, y);
	adds	r0, r0, r3	@ tm_loc, tmp182, tmp184
@ LevelUpAnim/src/AnimOff.c:166: 	SomeDrawTextInlineAutoWidth(
	movs	r1, #0	@,
	ldr	r3, .L32+56	@ tmp185,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:173: 	int str_style = UnitHasMagicRank(&bu->unit)? 1:0;
	ldr	r3, .L32+60	@ tmp186,
	movs	r0, r4	@, bu
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:173: 	int str_style = UnitHasMagicRank(&bu->unit)? 1:0;
	subs	r3, r0, #1	@ tmp191, tmp209
	sbcs	r0, r0, r3	@ tmp190, tmp209, tmp191
@ LevelUpAnim/src/AnimOff.c:172: 	const struct WindowSet_AnimOff* it = &gMapAnimLevelUpStatLabelLocationTable[0];
	ldr	r5, .L32+64	@ it,
	adds	r0, r0, #1	@ tmp192,
	lsls	r6, r0, #2	@ _58, tmp192,
.L30:
@ LevelUpAnim/src/AnimOff.c:175: 	while( it->x != 0xFF ){
	ldrb	r3, [r5]	@ _33, MEM[(unsigned char *)it_34]
@ LevelUpAnim/src/AnimOff.c:175: 	while( it->x != 0xFF ){
	cmp	r3, #255	@ _33,
	bne	.L31		@,
@ LevelUpAnim/src/AnimOff.c:187: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:186: 	BG_EnableSyncByMask(0b11);
	movs	r0, #3	@,
	ldr	r3, .L32+68	@ tmp203,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:187: }
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L31:
@ LevelUpAnim/src/AnimOff.c:177: 			TILEMAP_LOCATED(gBG0TilemapBuffer, x+it->x, y+it->y),
	ldrb	r4, [r5, #1]	@ MEM[(unsigned char *)it_34 + 1B], MEM[(unsigned char *)it_34 + 1B]
	ldr	r2, [sp, #4]	@ y, %sfp
	adds	r4, r4, r2	@ tmp194, MEM[(unsigned char *)it_34 + 1B], y
	ldr	r2, [sp]	@ x, %sfp
	lsls	r4, r4, #5	@ tmp195, tmp194,
	adds	r3, r3, r2	@ tmp196, _33, x
	adds	r4, r4, r3	@ tmp197, tmp195, tmp196
@ LevelUpAnim/src/AnimOff.c:176: 		SomeDrawTextCentered(
	ldr	r3, .L32+52	@ tmp199,
@ LevelUpAnim/src/AnimOff.c:177: 			TILEMAP_LOCATED(gBG0TilemapBuffer, x+it->x, y+it->y),
	lsls	r4, r4, #1	@ tmp198, tmp197,
@ LevelUpAnim/src/AnimOff.c:176: 		SomeDrawTextCentered(
	adds	r4, r4, r3	@ _28, tmp198, tmp199
@ LevelUpAnim/src/AnimOff.c:180: 			GetStringFromIndex( *( it->str_id[str_style] ) ) 
	ldr	r3, [r5, r6]	@ MEM[(u32 * *)it_34 + _58 * 1], MEM[(u32 * *)it_34 + _58 * 1]
@ LevelUpAnim/src/AnimOff.c:176: 		SomeDrawTextCentered(
	ldr	r0, [r3]	@, *_29
	ldr	r3, .L32+48	@ tmp201,
	bl	.L24		@
	movs	r2, #3	@,
	movs	r3, r0	@ _32, tmp210
	movs	r1, r2	@,
	movs	r0, r4	@, _28
	ldr	r4, .L32+72	@ tmp202,
	bl	.L35		@
@ LevelUpAnim/src/AnimOff.c:183: 		it++;
	adds	r5, r5, #12	@ it,
	b	.L30		@
.L33:
	.align	2
.L32:
	.word	gBG1TilemapBuffer
	.word	BG_Fill
	.word	GetBackgroundTileDataOffset
	.word	100679680
	.word	gGfx_LevelUpBoxFrame
	.word	CopyDataWithPossibleUncomp
	.word	gUnknown_02020188
	.word	gMap_LevelUpBoxFrame
	.word	sub_80149F0
	.word	gPal_LevelUpBoxFrame
	.word	CopyToPaletteBuffer
	.word	gUnknown_0203E1F0
	.word	GetStringFromIndex
	.word	gBG0TilemapBuffer
	.word	SomeDrawTextInlineAutoWidth
	.word	UnitHasMagicRank
	.word	gMapAnimLevelUpStatLabelLocationTable
	.word	BG_EnableSyncByMask
	.word	SomeDrawTextCentered
	.size	MapAnimLevelUp_InitLevelUpBox, .-MapAnimLevelUp_InitLevelUpBox
	.align	1
	.global	MapAnimLevelUp_GetActorStatUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUp_GetActorStatUp, %function
MapAnimLevelUp_GetActorStatUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOff.c:216: 	Get it = GetBuChangeList[stat_id];
	ldr	r3, .L39	@ tmp119,
	lsls	r1, r1, #2	@ tmp120, tmp130,
	ldr	r2, [r1, r3]	@ it, GetBuChangeList[stat_id_6(D)]
@ LevelUpAnim/src/AnimOff.c:214: s8 MapAnimLevelUp_GetActorStatUp(s16 actor_id, int stat_id){
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOff.c:214: s8 MapAnimLevelUp_GetActorStatUp(s16 actor_id, int stat_id){
	movs	r4, r0	@ actor_id, tmp129
@ LevelUpAnim/src/AnimOff.c:220: 		return 0;
	subs	r0, r2, #0	@ <retval>, it,
@ LevelUpAnim/src/AnimOff.c:217: 	if( it )
	beq	.L37		@,
@ LevelUpAnim/src/AnimOff.c:218: 		return it(gMapAnimData.actors[actor_id].pBattleUnit);
	movs	r1, #20	@ tmp122,
	muls	r1, r4	@ tmp123, actor_id
	ldr	r3, .L39+4	@ tmp121,
	adds	r3, r3, r1	@ tmp124, tmp121, tmp123
	ldr	r0, [r3, #4]	@, gUnknown_0203E1F0.actors[_1].pBattleUnit
	bl	.L41		@
.L37:
@ LevelUpAnim/src/AnimOff.c:222: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	gUnknown_0203E1F0
	.size	MapAnimLevelUp_GetActorStatUp, .-MapAnimLevelUp_GetActorStatUp
	.align	1
	.global	MapAnimLevelUp_GetActorStatBase
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUp_GetActorStatBase, %function
MapAnimLevelUp_GetActorStatBase:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOff.c:251: 	Get it = GetBuBaseList[stat_id];
	ldr	r3, .L45	@ tmp119,
	lsls	r1, r1, #2	@ tmp120, tmp132,
	adds	r3, r3, r1	@ tmp121, tmp119, tmp120
	ldr	r2, [r3, #52]	@ it, GetBuBaseList[stat_id_6(D)]
@ LevelUpAnim/src/AnimOff.c:250: s8 MapAnimLevelUp_GetActorStatBase(s16 actor_id, int stat_id){
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOff.c:250: s8 MapAnimLevelUp_GetActorStatBase(s16 actor_id, int stat_id){
	movs	r4, r0	@ actor_id, tmp131
@ LevelUpAnim/src/AnimOff.c:255: 		return 0;
	subs	r0, r2, #0	@ <retval>, it,
@ LevelUpAnim/src/AnimOff.c:252: 	if( it )
	beq	.L43		@,
@ LevelUpAnim/src/AnimOff.c:253: 		return it(gMapAnimData.actors[actor_id].pBattleUnit);
	movs	r1, #20	@ tmp124,
	muls	r1, r4	@ tmp125, actor_id
	ldr	r3, .L45+4	@ tmp123,
	adds	r3, r3, r1	@ tmp126, tmp123, tmp125
	ldr	r0, [r3, #4]	@, gUnknown_0203E1F0.actors[_1].pBattleUnit
	bl	.L41		@
.L43:
@ LevelUpAnim/src/AnimOff.c:256: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.word	gUnknown_0203E1F0
	.size	MapAnimLevelUp_GetActorStatBase, .-MapAnimLevelUp_GetActorStatBase
	.align	1
	.global	MapAnimLevelUp_DrawActorStat
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUp_DrawActorStat, %function
MapAnimLevelUp_DrawActorStat:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ LevelUpAnim/src/AnimOff.c:261: void MapAnimLevelUp_DrawActorStat(int actor_id, int base_x, int base_y,int stat_id,int BoolUp){
	movs	r5, r3	@ stat_id, tmp167
@ LevelUpAnim/src/AnimOff.c:263: 	u16* tm_loc = TILEMAP_LOCATED(
	movs	r6, #12	@ tmp138,
	muls	r6, r5	@ tmp139, stat_id
	ldr	r3, .L52	@ tmp137,
	adds	r4, r3, r6	@ tmp140, tmp137, tmp139
	ldrb	r4, [r4, #1]	@ tmp142, gMapAnimLevelUpStatLabelLocationTable
	ldrb	r3, [r6, r3]	@ tmp148, gMapAnimLevelUpStatLabelLocationTable
	adds	r4, r4, r2	@ tmp143, tmp142, tmp166
	adds	r3, r3, r1	@ tmp149, tmp148, tmp165
	adds	r3, r3, #4	@ tmp150,
@ LevelUpAnim/src/AnimOff.c:268: 	s8 stat = MapAnimLevelUp_GetActorStatBase(actor_id, stat_id);
	lsls	r7, r0, #16	@ _12, tmp164,
@ LevelUpAnim/src/AnimOff.c:263: 	u16* tm_loc = TILEMAP_LOCATED(
	lsls	r4, r4, #5	@ tmp144, tmp143,
	adds	r4, r4, r3	@ tmp151, tmp144, tmp150
@ LevelUpAnim/src/AnimOff.c:268: 	s8 stat = MapAnimLevelUp_GetActorStatBase(actor_id, stat_id);
	asrs	r7, r7, #16	@ _12, _12,
@ LevelUpAnim/src/AnimOff.c:263: 	u16* tm_loc = TILEMAP_LOCATED(
	ldr	r3, .L52+4	@ tmp153,
@ LevelUpAnim/src/AnimOff.c:268: 	s8 stat = MapAnimLevelUp_GetActorStatBase(actor_id, stat_id);
	movs	r1, r5	@, stat_id
	movs	r0, r7	@, _12
@ LevelUpAnim/src/AnimOff.c:263: 	u16* tm_loc = TILEMAP_LOCATED(
	lsls	r4, r4, #1	@ tmp152, tmp151,
@ LevelUpAnim/src/AnimOff.c:263: 	u16* tm_loc = TILEMAP_LOCATED(
	adds	r4, r4, r3	@ tm_loc, tmp152, tmp153
@ LevelUpAnim/src/AnimOff.c:268: 	s8 stat = MapAnimLevelUp_GetActorStatBase(actor_id, stat_id);
	bl	MapAnimLevelUp_GetActorStatBase		@
@ LevelUpAnim/src/AnimOff.c:270: 	if( BoolUp )
	ldr	r3, [sp, #24]	@ tmp173, BoolUp
@ LevelUpAnim/src/AnimOff.c:268: 	s8 stat = MapAnimLevelUp_GetActorStatBase(actor_id, stat_id);
	movs	r6, r0	@ stat, tmp168
@ LevelUpAnim/src/AnimOff.c:270: 	if( BoolUp )
	cmp	r3, #0	@ tmp173,
	beq	.L48		@,
@ LevelUpAnim/src/AnimOff.c:271: 		stat += MapAnimLevelUp_GetActorStatUp(actor_id, stat_id);
	movs	r1, r5	@, stat_id
	movs	r0, r7	@, _12
	bl	MapAnimLevelUp_GetActorStatUp		@
@ LevelUpAnim/src/AnimOff.c:271: 		stat += MapAnimLevelUp_GetActorStatUp(actor_id, stat_id);
	adds	r0, r0, r6	@ tmp160, tmp169, stat
	lsls	r0, r0, #24	@ tmp162, tmp160,
	asrs	r6, r0, #24	@ stat, tmp162,
.L48:
@ LevelUpAnim/src/AnimOff.c:273: 	DrawDecNumber(tm_loc, 2, stat);
	movs	r2, r6	@, stat
@ LevelUpAnim/src/AnimOff.c:274: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:273: 	DrawDecNumber(tm_loc, 2, stat);
	movs	r1, #2	@,
	movs	r0, r4	@, tm_loc
	ldr	r3, .L52+8	@ tmp163,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:274: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L53:
	.align	2
.L52:
	.word	gMapAnimLevelUpStatLabelLocationTable
	.word	gBG0TilemapBuffer
	.word	DrawDecNumber
	.size	MapAnimLevelUp_DrawActorStat, .-MapAnimLevelUp_DrawActorStat
	.align	1
	.global	MapAnimLevelUpProc_InitLevelUpBox
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUpProc_InitLevelUpBox, %function
MapAnimLevelUpProc_InitLevelUpBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ LevelUpAnim/src/AnimOff.c:17: 	Text_ResetTileAllocation();
	ldr	r3, .L57	@ tmp137,
@ LevelUpAnim/src/AnimOff.c:15: void MapAnimLevelUpProc_InitLevelUpBox(Proc_MapAnimLevelUp_t* proc){
	movs	r4, r0	@ proc, tmp226
@ LevelUpAnim/src/AnimOff.c:17: 	Text_ResetTileAllocation();
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:18: 	BG_Fill(gBG0TilemapBuffer,0);
	ldr	r3, .L57+4	@ tmp139,
	movs	r1, #0	@,
	ldr	r0, .L57+8	@ tmp138,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:20: 	MapAnimLevelUp_InitLevelUpBox(proc->actor_id, 1,1);
	movs	r2, #1	@,
	movs	r3, #46	@ tmp231,
	ldrsh	r0, [r4, r3]	@ tmp140, proc, tmp231
	movs	r1, r2	@,
	bl	MapAnimLevelUp_InitLevelUpBox		@
@ LevelUpAnim/src/AnimOff.c:22: 	for(int stat_id = 0; stat_id <= 8; stat_id++)
	movs	r5, #0	@ stat_id,
@ LevelUpAnim/src/AnimOff.c:24: 		MapAnimLevelUp_DrawActorStat(proc->actor_id, 1, 1, stat_id, FALSE);
	movs	r6, #1	@ tmp225,
.L55:
@ LevelUpAnim/src/AnimOff.c:24: 		MapAnimLevelUp_DrawActorStat(proc->actor_id, 1, 1, stat_id, FALSE);
	movs	r7, #0	@ tmp142,
	movs	r3, #46	@ tmp232,
	ldrsh	r0, [r4, r3]	@ tmp141, proc, tmp232
	movs	r2, r6	@, tmp225
	movs	r3, r5	@, stat_id
	movs	r1, r6	@, tmp225
	str	r7, [sp]	@ tmp142,
@ LevelUpAnim/src/AnimOff.c:22: 	for(int stat_id = 0; stat_id <= 8; stat_id++)
	adds	r5, r5, #1	@ stat_id,
@ LevelUpAnim/src/AnimOff.c:24: 		MapAnimLevelUp_DrawActorStat(proc->actor_id, 1, 1, stat_id, FALSE);
	bl	MapAnimLevelUp_DrawActorStat		@
@ LevelUpAnim/src/AnimOff.c:22: 	for(int stat_id = 0; stat_id <= 8; stat_id++)
	cmp	r5, #9	@ stat_id,
	bne	.L55		@,
@ LevelUpAnim/src/AnimOff.c:56: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOff.c:32: 	gLCDControlBuffer.bg0cnt.priority = 0;
	movs	r6, #3	@ tmp151,
@ LevelUpAnim/src/AnimOff.c:26: 	BG_EnableSyncByMask(0b01);
	movs	r0, #1	@,
	ldr	r3, .L57+12	@ tmp143,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:33: 	gLCDControlBuffer.bg1cnt.priority = 1;
	movs	r2, #1	@ tmp235,
@ LevelUpAnim/src/AnimOff.c:32: 	gLCDControlBuffer.bg0cnt.priority = 0;
	ldr	r5, .L57+16	@ tmp145,
@ LevelUpAnim/src/AnimOff.c:28: 	proc->stat_cur = 0;
	ldr	r3, .L57+20	@ tmp144,
	str	r3, [r4, #48]	@ tmp144, MEM <unsigned int> [(void *)proc_25(D) + 48B]
@ LevelUpAnim/src/AnimOff.c:32: 	gLCDControlBuffer.bg0cnt.priority = 0;
	ldrb	r3, [r5, #12]	@ gLCDControlBuffer.bg0cnt.priority, gLCDControlBuffer.bg0cnt.priority
	bics	r3, r6	@ tmp150, tmp151
	strb	r3, [r5, #12]	@ tmp150, gLCDControlBuffer.bg0cnt.priority
@ LevelUpAnim/src/AnimOff.c:33: 	gLCDControlBuffer.bg1cnt.priority = 1;
	ldrb	r3, [r5, #16]	@ gLCDControlBuffer.bg1cnt.priority, gLCDControlBuffer.bg1cnt.priority
	bics	r3, r6	@ tmp158, tmp151
	orrs	r3, r2	@ tmp161, tmp235
	strb	r3, [r5, #16]	@ tmp161, gLCDControlBuffer.bg1cnt.priority
@ LevelUpAnim/src/AnimOff.c:34: 	gLCDControlBuffer.bg2cnt.priority = 1;
	ldrb	r3, [r5, #20]	@ gLCDControlBuffer.bg2cnt.priority, gLCDControlBuffer.bg2cnt.priority
	bics	r3, r6	@ tmp169, tmp151
	orrs	r3, r2	@ tmp172, tmp236
	strb	r3, [r5, #20]	@ tmp172, gLCDControlBuffer.bg2cnt.priority
@ LevelUpAnim/src/AnimOff.c:35: 	gLCDControlBuffer.bg3cnt.priority = 2;
	movs	r3, #2	@ tmp184,
	ldrb	r2, [r5, #24]	@ gLCDControlBuffer.bg3cnt.priority, gLCDControlBuffer.bg3cnt.priority
	bics	r2, r6	@ tmp180, tmp151
	orrs	r3, r2	@ tmp183, tmp180
	strb	r3, [r5, #24]	@ tmp183, gLCDControlBuffer.bg3cnt.priority
@ LevelUpAnim/src/AnimOff.c:37: 	SetDefaultColorEffects();
	ldr	r3, .L57+24	@ tmp186,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:39: 	gLCDControlBuffer.dispcnt.win0_on = 0;
	movs	r2, #31	@ tmp192,
	ldrb	r3, [r5, #1]	@ MEM <unsigned char> [(struct DispCnt *)&gLCDControlBuffer + 1B], MEM <unsigned char> [(struct DispCnt *)&gLCDControlBuffer + 1B]
	ands	r3, r2	@ tmp191, tmp192
	strb	r3, [r5, #1]	@ tmp191, MEM <unsigned char> [(struct DispCnt *)&gLCDControlBuffer + 1B]
@ LevelUpAnim/src/AnimOff.c:43: 	BG_SetPosition(BG0, 0, proc->yPos);
	movs	r1, r7	@, tmp142
	movs	r0, r7	@, tmp142
	ldrh	r2, [r4, #50]	@ tmp197,
	ldr	r5, .L57+28	@ tmp198,
	bl	.L23		@
@ LevelUpAnim/src/AnimOff.c:44: 	BG_SetPosition(BG1, 0, proc->yPos);
	movs	r1, r7	@, tmp142
	ldrh	r2, [r4, #50]	@ tmp199,
	movs	r0, #1	@,
	bl	.L23		@
@ LevelUpAnim/src/AnimOff.c:49: 		gMapAnimData.actors[proc->actor_id].pBattleUnit->unit.pCharacterData->portraitId,
	movs	r1, #46	@ tmp234,
	ldrsh	r0, [r4, r1]	@ tmp205, proc, tmp234
@ LevelUpAnim/src/AnimOff.c:49: 		gMapAnimData.actors[proc->actor_id].pBattleUnit->unit.pCharacterData->portraitId,
	movs	r1, #20	@ tmp206,
@ LevelUpAnim/src/AnimOff.c:51: 		0x30 - (s16)proc->yPos,
	movs	r3, #50	@ tmp233,
	ldrsh	r2, [r4, r3]	@ tmp201, proc, tmp233
@ LevelUpAnim/src/AnimOff.c:47: 	NewFace(
	movs	r3, #48	@ tmp202,
@ LevelUpAnim/src/AnimOff.c:49: 		gMapAnimData.actors[proc->actor_id].pBattleUnit->unit.pCharacterData->portraitId,
	muls	r1, r0	@ tmp207, tmp205
@ LevelUpAnim/src/AnimOff.c:47: 	NewFace(
	subs	r3, r3, r2	@ tmp203, tmp202, tmp201
@ LevelUpAnim/src/AnimOff.c:49: 		gMapAnimData.actors[proc->actor_id].pBattleUnit->unit.pCharacterData->portraitId,
	ldr	r2, .L57+32	@ tmp204,
	adds	r2, r2, r1	@ tmp208, tmp204, tmp207
@ LevelUpAnim/src/AnimOff.c:49: 		gMapAnimData.actors[proc->actor_id].pBattleUnit->unit.pCharacterData->portraitId,
	ldr	r2, [r2, #4]	@ gUnknown_0203E1F0.actors[_7].pBattleUnit, gUnknown_0203E1F0.actors[_7].pBattleUnit
@ LevelUpAnim/src/AnimOff.c:49: 		gMapAnimData.actors[proc->actor_id].pBattleUnit->unit.pCharacterData->portraitId,
	ldr	r2, [r2]	@ _8->unit.pCharacterData, _8->unit.pCharacterData
@ LevelUpAnim/src/AnimOff.c:47: 	NewFace(
	ldrh	r1, [r2, #6]	@ tmp212,
	ldr	r2, .L57+36	@ tmp213,
	movs	r0, r7	@, tmp142
	str	r2, [sp]	@ tmp213,
	ldr	r5, .L57+40	@ tmp214,
	movs	r2, #184	@,
	bl	.L23		@
@ LevelUpAnim/src/AnimOff.c:54: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	ldr	r3, .L57+44	@ tmp216,
	ldr	r2, [r3]	@ gpFaceProcs, gpFaceProcs
@ LevelUpAnim/src/AnimOff.c:54: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	movs	r3, #32	@ tmp218,
@ LevelUpAnim/src/AnimOff.c:55: 	sub_807EDF8(0x200, 3, 1, proc);
	movs	r0, #128	@,
@ LevelUpAnim/src/AnimOff.c:54: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	ldrh	r1, [r4, #50]	@ tmp220,
	subs	r3, r3, r1	@ tmp221, tmp218, tmp220
@ LevelUpAnim/src/AnimOff.c:54: 	gpFaceProcs->yPosition = 0x20 - proc->yPos;
	strh	r3, [r2, #54]	@ tmp221, gpFaceProcs.0_18->yPosition
@ LevelUpAnim/src/AnimOff.c:55: 	sub_807EDF8(0x200, 3, 1, proc);
	movs	r1, r6	@, tmp151
	movs	r3, r4	@, proc
	movs	r2, #1	@,
	ldr	r4, .L57+48	@ tmp224,
	lsls	r0, r0, #2	@,,
	bl	.L35		@
@ LevelUpAnim/src/AnimOff.c:56: }
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L58:
	.align	2
.L57:
	.word	sub_8003D20
	.word	BG_Fill
	.word	gBG0TilemapBuffer
	.word	BG_EnableSyncByMask
	.word	gLCDControlBuffer
	.word	-9437184
	.word	SetDefaultColorEffects
	.word	BG_SetPosition
	.word	gUnknown_0203E1F0
	.word	4162
	.word	NewFace
	.word	gpFaceProcs
	.word	sub_807EDF8
	.size	MapAnimLevelUpProc_InitLevelUpBox, .-MapAnimLevelUpProc_InitLevelUpBox
	.align	1
	.global	MapAnimLevelUp_MainAnime
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MapAnimLevelUp_MainAnime, %function
MapAnimLevelUp_MainAnime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOff.c:80: 	if( 0 != proc->time_delay )
	movs	r3, r0	@ tmp142, proc
@ LevelUpAnim/src/AnimOff.c:76: void MapAnimLevelUp_MainAnime(Proc_MapAnimLevelUp_t* proc){
	push	{r4, r5, r6, r7, lr}	@
@ LevelUpAnim/src/AnimOff.c:80: 	if( 0 != proc->time_delay )
	adds	r3, r3, #49	@ tmp142,
@ LevelUpAnim/src/AnimOff.c:76: void MapAnimLevelUp_MainAnime(Proc_MapAnimLevelUp_t* proc){
	sub	sp, sp, #20	@,,
@ LevelUpAnim/src/AnimOff.c:80: 	if( 0 != proc->time_delay )
	str	r3, [sp, #8]	@ tmp142, %sfp
	ldrb	r3, [r3]	@ _1,
@ LevelUpAnim/src/AnimOff.c:76: void MapAnimLevelUp_MainAnime(Proc_MapAnimLevelUp_t* proc){
	movs	r4, r0	@ proc, tmp213
@ LevelUpAnim/src/AnimOff.c:80: 	if( 0 != proc->time_delay )
	cmp	r3, #0	@ _1,
	beq	.L60		@,
@ LevelUpAnim/src/AnimOff.c:82: 		proc->time_delay--;
	subs	r3, r3, #1	@ tmp143,
.L68:
@ LevelUpAnim/src/AnimOff.c:119: 	proc->time_delay = 0x14;
	ldr	r2, [sp, #8]	@ tmp142, %sfp
	strb	r3, [r2]	@ tmp209, proc_5(D)->time_delay
@ LevelUpAnim/src/AnimOff.c:120: 	return;
	b	.L59		@
.L60:
@ LevelUpAnim/src/AnimOff.c:88: 	for(stat_id = proc->stat_cur; 1; stat_id++)
	movs	r3, r0	@ tmp150, proc
	adds	r3, r3, #48	@ tmp150,
@ LevelUpAnim/src/AnimOff.c:88: 	for(stat_id = proc->stat_cur; 1; stat_id++)
	ldrb	r5, [r3]	@ stat_id,
.L64:
@ LevelUpAnim/src/AnimOff.c:90: 		if( stat_id > 8 )
	cmp	r5, #8	@ stat_id,
	ble	.L62		@,
@ LevelUpAnim/src/AnimOff.c:92: 			Proc_Break((struct Proc*)proc);
	movs	r0, r4	@, proc
	ldr	r3, .L69	@ tmp151,
	bl	.L24		@
.L59:
@ LevelUpAnim/src/AnimOff.c:122: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L62:
@ LevelUpAnim/src/AnimOff.c:96: 		if( 0 != MapAnimLevelUp_GetActorStatUp(proc->actor_id, stat_id) )
	movs	r1, r5	@, stat_id
	movs	r3, #46	@ tmp218,
	ldrsh	r0, [r4, r3]	@ tmp152, proc, tmp218
	bl	MapAnimLevelUp_GetActorStatUp		@
@ LevelUpAnim/src/AnimOff.c:96: 		if( 0 != MapAnimLevelUp_GetActorStatUp(proc->actor_id, stat_id) )
	cmp	r0, #0	@ tmp214,
	bne	.L63		@,
@ LevelUpAnim/src/AnimOff.c:88: 	for(stat_id = proc->stat_cur; 1; stat_id++)
	adds	r5, r5, #1	@ stat_id,
@ LevelUpAnim/src/AnimOff.c:90: 		if( stat_id > 8 )
	b	.L64		@
.L63:
@ LevelUpAnim/src/AnimOff.c:101: 	MapAnimLevelUp_DrawActorStat(proc->actor_id,1,1,stat_id,1);
	movs	r7, #1	@ tmp156,
	movs	r3, #46	@ tmp219,
	ldrsh	r0, [r4, r3]	@ tmp155, proc, tmp219
	movs	r2, r7	@, tmp156
	movs	r1, r7	@, tmp156
	movs	r3, r5	@, stat_id
	str	r7, [sp]	@ tmp156,
	bl	MapAnimLevelUp_DrawActorStat		@
@ LevelUpAnim/src/AnimOff.c:102: 	BG_EnableSyncByMask(0b01);
	movs	r0, r7	@, tmp156
	ldr	r3, .L69+4	@ tmp157,
	bl	.L24		@
@ LevelUpAnim/src/AnimOff.c:106: 		gMapAnimLevelUpStatLabelLocationTable[stat_id].x * 8 + 0x3E,
	movs	r2, #12	@ tmp159,
	muls	r2, r5	@ tmp160, stat_id
	ldr	r3, .L69+8	@ tmp158,
@ LevelUpAnim/src/AnimOff.c:106: 		gMapAnimLevelUpStatLabelLocationTable[stat_id].x * 8 + 0x3E,
	ldrb	r1, [r2, r3]	@ tmp162, gMapAnimLevelUpStatLabelLocationTable
	lsls	r1, r1, #3	@ tmp163, tmp162,
@ LevelUpAnim/src/AnimOff.c:105: 	sub_807EE84(
	adds	r1, r1, #62	@ tmp163,
	str	r1, [sp, #12]	@ tmp163, %sfp
@ LevelUpAnim/src/AnimOff.c:107: 		gMapAnimLevelUpStatLabelLocationTable[stat_id].y * 8 - (proc->yPos-0x17),
	adds	r3, r3, r2	@ tmp169, tmp158, tmp160
@ LevelUpAnim/src/AnimOff.c:107: 		gMapAnimLevelUpStatLabelLocationTable[stat_id].y * 8 - (proc->yPos-0x17),
	ldrb	r6, [r3, #1]	@ tmp172, gMapAnimLevelUpStatLabelLocationTable
	ldrh	r3, [r4, #50]	@ tmp177,
	lsls	r6, r6, #3	@ tmp173, tmp172,
	subs	r6, r6, r3	@ tmp178, tmp173, tmp177
@ LevelUpAnim/src/AnimOff.c:105: 	sub_807EE84(
	movs	r1, r5	@, stat_id
	movs	r3, #46	@ tmp220,
	ldrsh	r0, [r4, r3]	@ tmp182, proc, tmp220
	bl	MapAnimLevelUp_GetActorStatUp		@
@ LevelUpAnim/src/AnimOff.c:107: 		gMapAnimLevelUpStatLabelLocationTable[stat_id].y * 8 - (proc->yPos-0x17),
	adds	r6, r6, #23	@ tmp181,
@ LevelUpAnim/src/AnimOff.c:105: 	sub_807EE84(
	lsls	r6, r6, #16	@ _28, tmp181,
	asrs	r6, r6, #16	@ _28, _28,
	movs	r3, r0	@ tmp183, tmp215
	movs	r1, r6	@, _28
	movs	r2, r5	@, stat_id
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r6, .L69+12	@ tmp185,
	bl	.L71		@
@ LevelUpAnim/src/AnimOff.c:111: 	if( !gChapterData.unk41_1 ){
	ldr	r3, .L69+16	@ tmp186,
	adds	r3, r3, #65	@ tmp189,
	ldrb	r3, [r3]	@ gChapterData, gChapterData
@ LevelUpAnim/src/AnimOff.c:111: 	if( !gChapterData.unk41_1 ){
	tst	r3, r7	@ gChapterData, tmp156
	bne	.L65		@,
@ LevelUpAnim/src/AnimOff.c:115: 			m4aSongNumStart(0x76);
	movs	r0, #118	@,
	ldr	r3, .L69+20	@ tmp212,
@ LevelUpAnim/src/AnimOff.c:112: 		if( 0 == stat_id )
	cmp	r5, #0	@ stat_id,
	bne	.L67		@,
@ LevelUpAnim/src/AnimOff.c:113: 			m4aSongNumStart(0x2CD);
	ldr	r0, .L69+24	@,
.L67:
@ LevelUpAnim/src/AnimOff.c:115: 			m4aSongNumStart(0x76);
	bl	.L24		@
.L65:
@ LevelUpAnim/src/AnimOff.c:118: 	proc->stat_cur = stat_id+1;
	adds	r5, r5, #1	@ tmp201,
@ LevelUpAnim/src/AnimOff.c:118: 	proc->stat_cur = stat_id+1;
	adds	r4, r4, #48	@ tmp204,
@ LevelUpAnim/src/AnimOff.c:119: 	proc->time_delay = 0x14;
	movs	r3, #20	@ tmp209,
@ LevelUpAnim/src/AnimOff.c:118: 	proc->stat_cur = stat_id+1;
	strb	r5, [r4]	@ tmp201, proc_5(D)->stat_cur
	b	.L68		@
.L70:
	.align	2
.L69:
	.word	Proc_Break
	.word	BG_EnableSyncByMask
	.word	gMapAnimLevelUpStatLabelLocationTable
	.word	sub_807EE84
	.word	gChapterData
	.word	m4aSongNumStart
	.word	717
	.size	MapAnimLevelUp_MainAnime, .-MapAnimLevelUp_MainAnime
	.align	1
	.global	sub_807F30C
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_807F30C, %function
sub_807F30C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOff.c:286: 	MapAnimLevelUp_PutWindowOnScreen(proc);
	bl	MapAnimLevelUp_PutWindowOnScreen		@
@ LevelUpAnim/src/AnimOff.c:287: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_807F30C, .-sub_807F30C
	.align	1
	.global	sub_807F39C
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_807F39C, %function
sub_807F39C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOff.c:289: 	MapAnimLevelUp_MainAnime(proc);
	bl	MapAnimLevelUp_MainAnime		@
@ LevelUpAnim/src/AnimOff.c:290: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_807F39C, .-sub_807F39C
	.align	1
	.global	sub_807F354
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_807F354, %function
sub_807F354:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOff.c:292: 	MapAnimLevelUp_PutWindowOffScreen(proc);
	bl	MapAnimLevelUp_PutWindowOffScreen		@
@ LevelUpAnim/src/AnimOff.c:293: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_807F354, .-sub_807F354
	.global	GetBuBaseList
	.global	GetBuChangeList
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	GetBuChangeList, %object
	.size	GetBuChangeList, 52
GetBuChangeList:
	.word	LevelUp_GetLvUp
	.word	LevelUp_GetHpUp
	.word	LevelUp_GetPowUp
	.word	LevelUp_GetSklUp
	.word	LevelUp_GetSpdUp
	.word	LevelUp_GetLckUp
	.word	LevelUp_GetDefUp
	.word	LevelUp_GetResUp
	.word	LevelUp_GetConUp
	.word	0
	.word	0
	.word	0
	.word	0
	.type	GetBuBaseList, %object
	.size	GetBuBaseList, 52
GetBuBaseList:
	.word	LevelUp_GetLvBase
	.word	LevelUp_GetHpBase
	.word	LevelUp_GetPowBase
	.word	LevelUp_GetSklBase
	.word	LevelUp_GetSpdBase
	.word	LevelUp_GetLckBase
	.word	LevelUp_GetDefBase
	.word	LevelUp_GetResBase
	.word	LevelUp_GetConBase
	.word	0
	.word	0
	.word	0
	.word	0
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.text
	.code 16
	.align	1
.L41:
	bx	r2
.L24:
	bx	r3
.L35:
	bx	r4
.L23:
	bx	r5
.L71:
	bx	r6
.L34:
	bx	r7
