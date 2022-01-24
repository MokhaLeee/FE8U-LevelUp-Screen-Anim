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
	.file	"AnimOn.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.global	__aeabi_idiv
	.align	1
	.global	LocCalc_0
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LocCalc_0, %function
LocCalc_0:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ LevelUpAnim/src/AnimOn.c:381: 	return b + (c-b)* d /e;
	subs	r2, r2, r1	@ tmp123, tmp131, b
@ LevelUpAnim/src/AnimOn.c:380: int LocCalc_0(int a,int b,int c,int d,int e){ 
	movs	r4, r1	@ b, tmp130
@ LevelUpAnim/src/AnimOn.c:382: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:381: 	return b + (c-b)* d /e;
	ldr	r5, .L2	@ tmp128,
@ LevelUpAnim/src/AnimOn.c:381: 	return b + (c-b)* d /e;
	movs	r0, r3	@ tmp124, tmp132
	muls	r0, r2	@ tmp124, tmp123
@ LevelUpAnim/src/AnimOn.c:381: 	return b + (c-b)* d /e;
	ldr	r1, [sp, #16]	@, e
	bl	.L4		@
@ LevelUpAnim/src/AnimOn.c:381: 	return b + (c-b)* d /e;
	adds	r0, r0, r4	@ tmp122, tmp133, b
@ LevelUpAnim/src/AnimOn.c:382: }
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	__aeabi_idiv
	.size	LocCalc_0, .-LocCalc_0
	.align	1
	.global	LocCalc_1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LocCalc_1, %function
LocCalc_1:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOn.c:384: 	return b + d*d*(c-b) / (e*e);
	movs	r0, r3	@ tmp125, tmp136
	muls	r0, r3	@ tmp125, tmp136
@ LevelUpAnim/src/AnimOn.c:383: int LocCalc_1(int a,int b,int c,int d,int e){ 
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:383: int LocCalc_1(int a,int b,int c,int d,int e){ 
	movs	r4, r1	@ b, tmp134
@ LevelUpAnim/src/AnimOn.c:385: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:384: 	return b + d*d*(c-b) / (e*e);
	movs	r3, r0	@ tmp125, tmp125
@ LevelUpAnim/src/AnimOn.c:383: int LocCalc_1(int a,int b,int c,int d,int e){ 
	ldr	r1, [sp, #8]	@ e, e
@ LevelUpAnim/src/AnimOn.c:384: 	return b + d*d*(c-b) / (e*e);
	subs	r2, r2, r4	@ tmp126, tmp135, b
@ LevelUpAnim/src/AnimOn.c:384: 	return b + d*d*(c-b) / (e*e);
	movs	r0, r2	@ tmp127, tmp126
	muls	r0, r3	@ tmp127, tmp125
@ LevelUpAnim/src/AnimOn.c:384: 	return b + d*d*(c-b) / (e*e);
	movs	r3, r1	@ tmp128, e
	muls	r3, r1	@ tmp128, e
	movs	r1, r3	@ tmp128, tmp128
@ LevelUpAnim/src/AnimOn.c:384: 	return b + d*d*(c-b) / (e*e);
	ldr	r3, .L6	@ tmp132,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:384: 	return b + d*d*(c-b) / (e*e);
	adds	r0, r0, r4	@ tmp124, tmp137, b
@ LevelUpAnim/src/AnimOn.c:385: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L7:
	.align	2
.L6:
	.word	__aeabi_idiv
	.size	LocCalc_1, .-LocCalc_1
	.align	1
	.global	LocCalc_2
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LocCalc_2, %function
LocCalc_2:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:386: int LocCalc_2(int a,int b,int c,int d,int e){ 
	movs	r4, r1	@ b, tmp138
@ LevelUpAnim/src/AnimOn.c:388: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	movs	r0, r3	@ tmp127, tmp140
	muls	r0, r3	@ tmp127, tmp140
@ LevelUpAnim/src/AnimOn.c:386: int LocCalc_2(int a,int b,int c,int d,int e){ 
	ldr	r1, [sp, #8]	@ e, e
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	muls	r0, r3	@ tmp128, tmp140
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	movs	r3, r1	@ tmp131, e
	muls	r3, r1	@ tmp131, e
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	subs	r2, r2, r4	@ tmp129, tmp139, b
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	muls	r1, r3	@ tmp132, tmp131
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	muls	r0, r2	@ tmp130, tmp129
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	ldr	r3, .L10	@ tmp136,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:387: 	return b + d*d*d*(c-b) / (e*e*e);
	adds	r0, r0, r4	@ tmp126, tmp141, b
@ LevelUpAnim/src/AnimOn.c:388: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L11:
	.align	2
.L10:
	.word	__aeabi_idiv
	.size	LocCalc_2, .-LocCalc_2
	.align	1
	.global	LocCalc_3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LocCalc_3, %function
LocCalc_3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	movs	r0, r3	@ tmp129, tmp142
	muls	r0, r3	@ tmp129, tmp142
	movs	r3, r0	@ tmp129, tmp129
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	movs	r0, r3	@ tmp130, tmp129
	muls	r0, r3	@ tmp130, tmp129
@ LevelUpAnim/src/AnimOn.c:389: int LocCalc_3(int a,int b,int c,int d,int e){ 
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:389: int LocCalc_3(int a,int b,int c,int d,int e){ 
	movs	r4, r1	@ b, tmp140
@ LevelUpAnim/src/AnimOn.c:391: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	movs	r3, r0	@ tmp130, tmp130
@ LevelUpAnim/src/AnimOn.c:389: int LocCalc_3(int a,int b,int c,int d,int e){ 
	ldr	r1, [sp, #8]	@ e, e
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	subs	r0, r2, r4	@ tmp131, tmp141, b
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	muls	r0, r3	@ tmp132, tmp130
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	movs	r3, r1	@ tmp133, e
	muls	r3, r1	@ tmp133, e
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	muls	r1, r3	@ tmp134, tmp133
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	ldr	r3, .L13	@ tmp138,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:390: 	return b + d*d*d*d*(c-b)/(e*e*e);
	adds	r0, r0, r4	@ tmp127, tmp143, b
@ LevelUpAnim/src/AnimOn.c:391: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L14:
	.align	2
.L13:
	.word	__aeabi_idiv
	.size	LocCalc_3, .-LocCalc_3
	.align	1
	.global	LocCalc_4
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LocCalc_4, %function
LocCalc_4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:392: int LocCalc_4(int a,int b,int c,int d,int e){
	movs	r4, r2	@ c, tmp136
@ LevelUpAnim/src/AnimOn.c:394: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:392: int LocCalc_4(int a,int b,int c,int d,int e){
	ldr	r2, [sp, #8]	@ e, e
@ LevelUpAnim/src/AnimOn.c:393: 	return c - (e-d)*(e-d)*(c-b)/ (e*e);
	subs	r3, r2, r3	@ _1, e, tmp137
@ LevelUpAnim/src/AnimOn.c:393: 	return c - (e-d)*(e-d)*(c-b)/ (e*e);
	movs	r0, r3	@ tmp126, _1
	muls	r0, r3	@ tmp126, _1
	movs	r3, r0	@ tmp126, tmp126
@ LevelUpAnim/src/AnimOn.c:393: 	return c - (e-d)*(e-d)*(c-b)/ (e*e);
	subs	r0, r4, r1	@ tmp127, c, tmp135
@ LevelUpAnim/src/AnimOn.c:393: 	return c - (e-d)*(e-d)*(c-b)/ (e*e);
	muls	r0, r3	@ tmp128, tmp126
@ LevelUpAnim/src/AnimOn.c:393: 	return c - (e-d)*(e-d)*(c-b)/ (e*e);
	movs	r1, r2	@ tmp129, e
	muls	r1, r2	@ tmp129, e
@ LevelUpAnim/src/AnimOn.c:393: 	return c - (e-d)*(e-d)*(c-b)/ (e*e);
	ldr	r3, .L16	@ tmp133,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:393: 	return c - (e-d)*(e-d)*(c-b)/ (e*e);
	subs	r0, r4, r0	@ tmp125, c, tmp138
@ LevelUpAnim/src/AnimOn.c:394: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L17:
	.align	2
.L16:
	.word	__aeabi_idiv
	.size	LocCalc_4, .-LocCalc_4
	.align	1
	.global	LocCalc_5
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LocCalc_5, %function
LocCalc_5:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:395: int LocCalc_5(int a,int b,int c,int d,int e){
	movs	r4, r2	@ c, tmp138
@ LevelUpAnim/src/AnimOn.c:397: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:395: int LocCalc_5(int a,int b,int c,int d,int e){
	ldr	r2, [sp, #8]	@ e, e
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	subs	r3, r2, r3	@ _1, e, tmp139
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	movs	r0, r3	@ tmp127, _1
	muls	r0, r3	@ tmp127, _1
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	muls	r3, r0	@ tmp128, tmp127
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	subs	r0, r4, r1	@ tmp129, c, tmp137
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	muls	r0, r3	@ tmp130, tmp128
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	movs	r1, r2	@ tmp131, e
	muls	r1, r2	@ tmp131, e
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	ldr	r3, .L19	@ tmp135,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:396: 	return c - (e-d)*(e-d)*(e-d)*(c-b)/ (e*e);
	subs	r0, r4, r0	@ tmp126, c, tmp140
@ LevelUpAnim/src/AnimOn.c:397: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L20:
	.align	2
.L19:
	.word	__aeabi_idiv
	.size	LocCalc_5, .-LocCalc_5
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Ekr_LocCalc.part.0, %function
Ekr_LocCalc.part.0:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}	@
@ LevelUpAnim/src/AnimOn.c:417: 		return LocCalcTable[cases](cases,b,c,d,e);
	ldr	r6, [sp, #24]	@ tmp131, e
@ LevelUpAnim/src/AnimOn.c:418: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:417: 		return LocCalcTable[cases](cases,b,c,d,e);
	ldr	r4, .L22	@ tmp120,
	lsls	r5, r0, #2	@ tmp121, cases,
@ LevelUpAnim/src/AnimOn.c:417: 		return LocCalcTable[cases](cases,b,c,d,e);
	str	r6, [sp]	@ tmp131,
	ldr	r4, [r5, r4]	@ LocCalcTable[cases_1(D)], LocCalcTable[cases_1(D)]
	bl	.L24		@
@ LevelUpAnim/src/AnimOn.c:418: }
	pop	{r1, r2, r4, r5, r6}
	pop	{r1}
	bx	r1
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.size	Ekr_LocCalc.part.0, .-Ekr_LocCalc.part.0
	.align	1
	.global	EkrLevelUpProc_PutWindowOnScreen
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	EkrLevelUpProc_PutWindowOnScreen, %function
EkrLevelUpProc_PutWindowOnScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #8	@ tmp188,
@ LevelUpAnim/src/AnimOn.c:31: 	int unk_44 = proc->unk_44;
	ldr	r3, [r0, #68]	@ unk_44, proc_26(D)->unk_44
@ LevelUpAnim/src/AnimOn.c:25: void EkrLevelUpProc_PutWindowOnScreen(Proc_EkrLevelUp_t* proc){
	push	{r4, r5, r6, r7, lr}	@
@ LevelUpAnim/src/AnimOn.c:32: 	int unk_48 = proc->unk_48;
	ldr	r7, [r0, #72]	@ unk_48, proc_26(D)->unk_48
@ LevelUpAnim/src/AnimOn.c:33: 	int unk_4C = proc->unk_4C;
	ldr	r6, [r0, #76]	@ unk_4C, proc_26(D)->unk_4C
@ LevelUpAnim/src/AnimOn.c:58: 	proc->unk_44++;
	adds	r2, r3, #1	@ tmp145, unk_44,
@ LevelUpAnim/src/AnimOn.c:34: 	int unk_50 = proc->unk_50;
	ldr	r5, [r0, #80]	@ unk_50, proc_26(D)->unk_50
@ LevelUpAnim/src/AnimOn.c:58: 	proc->unk_44++;
	str	r2, [r0, #68]	@ tmp145, proc_26(D)->unk_44
@ LevelUpAnim/src/AnimOn.c:59: 	proc->unk_48++;
	adds	r2, r7, #1	@ tmp146, unk_48,
	str	r2, [r0, #72]	@ tmp146, proc_26(D)->unk_48
@ LevelUpAnim/src/AnimOn.c:60: 	proc->unk_4C++;
	adds	r2, r6, #1	@ tmp147, unk_4C,
	str	r2, [r0, #76]	@ tmp147, proc_26(D)->unk_4C
@ LevelUpAnim/src/AnimOn.c:61: 	proc->unk_50++;
	adds	r2, r5, #1	@ tmp148, unk_50,
@ LevelUpAnim/src/AnimOn.c:25: void EkrLevelUpProc_PutWindowOnScreen(Proc_EkrLevelUp_t* proc){
	movs	r4, r0	@ proc, tmp200
@ LevelUpAnim/src/AnimOn.c:61: 	proc->unk_50++;
	str	r2, [r0, #80]	@ tmp148, proc_26(D)->unk_50
@ LevelUpAnim/src/AnimOn.c:25: void EkrLevelUpProc_PutWindowOnScreen(Proc_EkrLevelUp_t* proc){
	sub	sp, sp, #20	@,,
	cmp	r3, r1	@ unk_44,
	ble	.L26		@,
	movs	r3, r1	@ unk_44, tmp188
.L27:
	movs	r2, #0	@,
	str	r1, [sp]	@ tmp188,
	movs	r1, #80	@,
	movs	r0, r2	@,
	rsbs	r1, r1, #0	@,
	bl	Ekr_LocCalc.part.0		@
	movs	r2, #8	@ tmp189,
	str	r0, [sp, #12]	@ tmp201, %sfp
	movs	r3, r2	@ unk_48, tmp189
	cmp	r7, r2	@ unk_48,
	bgt	.L29		@,
	mvns	r3, r7	@ tmp195, unk_48
	asrs	r3, r3, #31	@ tmp194, tmp195,
	ands	r3, r7	@ unk_48, unk_48
.L29:
	movs	r1, #0	@,
	str	r2, [sp]	@ tmp189,
	movs	r0, r1	@,
	movs	r2, #8	@,
	bl	Ekr_LocCalc.part.0		@
	movs	r2, #8	@ tmp190,
	movs	r7, r0	@ _49, tmp202
	movs	r3, r2	@ unk_4C, tmp190
	cmp	r6, r2	@ unk_4C,
	bgt	.L31		@,
	mvns	r3, r6	@ tmp197, unk_4C
	asrs	r3, r3, #31	@ tmp196, tmp197,
	ands	r3, r6	@ unk_4C, unk_4C
.L31:
	str	r2, [sp]	@ tmp190,
	movs	r2, #0	@,
	movs	r1, #144	@,
	movs	r0, r2	@,
	bl	Ekr_LocCalc.part.0		@
	movs	r2, #8	@ tmp191,
@ LevelUpAnim/src/AnimOn.c:66: 	*short_2020134 = Ekr_LocCalc(0, 0x90, 0, unk_4C, 8);
	ldr	r3, .L36	@ tmp156,
	strh	r0, [r3]	@ tmp203, MEM[(u16 *)33685812B]
	movs	r3, r2	@ unk_50, tmp191
	cmp	r5, r2	@ unk_50,
	bgt	.L33		@,
	mvns	r3, r5	@ tmp199, unk_50
	asrs	r3, r3, #31	@ tmp198, tmp199,
	ands	r3, r5	@ unk_50, unk_50
.L33:
	str	r2, [sp]	@ tmp191,
	movs	r2, #0	@,
	movs	r1, #144	@,
	movs	r0, r2	@,
	bl	Ekr_LocCalc.part.0		@
@ LevelUpAnim/src/AnimOn.c:67: 	*short_2020136 = Ekr_LocCalc(0, 0x90, 0, unk_50, 8);
	ldr	r3, .L36+4	@ tmp160,
	strh	r0, [r3]	@ tmp204, MEM[(u16 *)33685814B]
@ LevelUpAnim/src/AnimOn.c:69: 	gpFaceProcs->yPosition = 0x50 - calc0;
	ldr	r3, .L36+8	@ tmp163,
	ldr	r2, [r3]	@ gpFaceProcs, gpFaceProcs
@ LevelUpAnim/src/AnimOn.c:69: 	gpFaceProcs->yPosition = 0x50 - calc0;
	movs	r3, #80	@ tmp165,
	ldr	r1, [sp, #12]	@ _50, %sfp
	subs	r3, r3, r1	@ tmp167, tmp165, _50
@ LevelUpAnim/src/AnimOn.c:69: 	gpFaceProcs->yPosition = 0x50 - calc0;
	strh	r3, [r2, #54]	@ tmp167, gpFaceProcs.2_15->yPosition
@ LevelUpAnim/src/AnimOn.c:70: 	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	movs	r2, #128	@,
	ldr	r5, .L36+12	@ tmp170,
@ LevelUpAnim/src/AnimOn.c:71: 	sub_80712B0(gPaletteBuffer, 2, 4, calc1);
	lsls	r7, r7, #16	@ _17, _49,
@ LevelUpAnim/src/AnimOn.c:70: 	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	movs	r1, r5	@, tmp170
	ldr	r0, .L36+16	@ tmp171,
	ldr	r3, .L36+20	@ tmp172,
	lsls	r2, r2, #1	@,,
@ LevelUpAnim/src/AnimOn.c:71: 	sub_80712B0(gPaletteBuffer, 2, 4, calc1);
	lsrs	r7, r7, #16	@ _17, _17,
@ LevelUpAnim/src/AnimOn.c:70: 	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:71: 	sub_80712B0(gPaletteBuffer, 2, 4, calc1);
	movs	r3, r7	@, _17
	movs	r2, #4	@,
	movs	r1, #2	@,
	movs	r0, r5	@, tmp170
	ldr	r6, .L36+24	@ tmp175,
	bl	.L38		@
@ LevelUpAnim/src/AnimOn.c:72: 	sub_80712B0(gPaletteBuffer, 0x13, 0xC, calc1);
	movs	r3, r7	@, _17
	movs	r2, #12	@,
	movs	r1, #19	@,
	movs	r0, r5	@, tmp170
	bl	.L38		@
@ LevelUpAnim/src/AnimOn.c:73: 	EnablePaletteSync();
	ldr	r3, .L36+28	@ tmp178,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:75: 	if( ++proc->cnt > 0x14 )
	ldrh	r3, [r4, #44]	@ tmp180,
	adds	r3, r3, #1	@ tmp181,
	lsls	r3, r3, #16	@ _22, tmp181,
	asrs	r3, r3, #16	@ _22, _22,
@ LevelUpAnim/src/AnimOn.c:75: 	if( ++proc->cnt > 0x14 )
	cmp	r3, #20	@ _22,
	bgt	.L34		@,
	strh	r3, [r4, #44]	@ _22, proc_26(D)->cnt
.L25:
@ LevelUpAnim/src/AnimOn.c:80: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L26:
	mvns	r2, r3	@ tmp193, unk_44
	asrs	r2, r2, #31	@ tmp192, tmp193,
	ands	r3, r2	@ unk_44, tmp192
	b	.L27		@
.L34:
@ LevelUpAnim/src/AnimOn.c:77: 		proc->cnt = 0;
	movs	r3, #0	@ tmp185,
@ LevelUpAnim/src/AnimOn.c:78: 		Proc_Break(proc);
	movs	r0, r4	@, proc
@ LevelUpAnim/src/AnimOn.c:77: 		proc->cnt = 0;
	strh	r3, [r4, #44]	@ tmp185, proc_26(D)->cnt
@ LevelUpAnim/src/AnimOn.c:78: 		Proc_Break(proc);
	ldr	r3, .L36+32	@ tmp187,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:80: }
	b	.L25		@
.L37:
	.align	2
.L36:
	.word	33685812
	.word	33685814
	.word	gpFaceProcs
	.word	gPaletteBuffer
	.word	gUnknown_020165C8
	.word	CpuFastSet
	.word	sub_80712B0
	.word	EnablePaletteSync
	.word	Proc_Break
	.size	EkrLevelUpProc_PutWindowOnScreen, .-EkrLevelUpProc_PutWindowOnScreen
	.align	1
	.global	EkrLevelUpProc_PutWindowOffScreen
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	EkrLevelUpProc_PutWindowOffScreen, %function
EkrLevelUpProc_PutWindowOffScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
	movs	r5, #8	@ tmp138,
	movs	r1, #0	@,
@ LevelUpAnim/src/AnimOn.c:85: void EkrLevelUpProc_PutWindowOffScreen(Proc_EkrLevelUp_t *proc){
	movs	r4, r0	@ proc, tmp176
@ LevelUpAnim/src/AnimOn.c:94: 	*short_2020134 = Ekr_LocCalc(0,0,0x90, proc->cnt, 8);
	movs	r2, #44	@ tmp186,
	ldrsh	r3, [r0, r2]	@ tmp137, proc, tmp186
	movs	r2, #144	@,
	movs	r0, r1	@,
	str	r5, [sp]	@ tmp138,
	bl	Ekr_LocCalc.part.0		@
	movs	r1, #0	@,
@ LevelUpAnim/src/AnimOn.c:94: 	*short_2020134 = Ekr_LocCalc(0,0,0x90, proc->cnt, 8);
	ldr	r3, .L42	@ tmp139,
	strh	r0, [r3]	@ tmp177, MEM[(u16 *)33685812B]
	movs	r0, r1	@,
@ LevelUpAnim/src/AnimOn.c:95: 	*short_2020136 = Ekr_LocCalc(0,0,0x90, proc->cnt, 8);
	movs	r2, #44	@ tmp187,
	ldrsh	r3, [r4, r2]	@ tmp141, proc, tmp187
	str	r5, [sp]	@ tmp138,
	movs	r2, #144	@,
	bl	Ekr_LocCalc.part.0		@
@ LevelUpAnim/src/AnimOn.c:95: 	*short_2020136 = Ekr_LocCalc(0,0,0x90, proc->cnt, 8);
	ldr	r3, .L42+4	@ tmp143,
	strh	r0, [r3]	@ tmp178, MEM[(u16 *)33685814B]
	movs	r1, #0	@,
@ LevelUpAnim/src/AnimOn.c:96: 	calc2 = Ekr_LocCalc(0,0, -0x50, proc->cnt, 8);
	movs	r2, #44	@ tmp188,
	ldrsh	r3, [r4, r2]	@ tmp145, proc, tmp188
	movs	r2, #80	@,
	movs	r0, r1	@,
	rsbs	r2, r2, #0	@,
	str	r5, [sp]	@ tmp138,
	bl	Ekr_LocCalc.part.0		@
@ LevelUpAnim/src/AnimOn.c:97: 	calc3 = Ekr_LocCalc(0,8,0,proc->cnt,8);
	movs	r2, #44	@ tmp189,
	ldrsh	r3, [r4, r2]	@ tmp148, proc, tmp189
	movs	r2, #0	@,
	movs	r6, r0	@ _36, tmp179
	movs	r1, r5	@, tmp138
	movs	r0, r2	@,
	str	r5, [sp]	@ tmp138,
	bl	Ekr_LocCalc.part.0		@
	movs	r5, r0	@ _35, tmp180
@ LevelUpAnim/src/AnimOn.c:99: 	gpFaceProcs->yPosition = 0x50 - calc2;
	movs	r0, #80	@ tmp153,
@ LevelUpAnim/src/AnimOn.c:100: 	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	movs	r2, #128	@,
@ LevelUpAnim/src/AnimOn.c:99: 	gpFaceProcs->yPosition = 0x50 - calc2;
	ldr	r3, .L42+8	@ tmp151,
@ LevelUpAnim/src/AnimOn.c:99: 	gpFaceProcs->yPosition = 0x50 - calc2;
	subs	r0, r0, r6	@ tmp155, tmp153, _36
@ LevelUpAnim/src/AnimOn.c:99: 	gpFaceProcs->yPosition = 0x50 - calc2;
	ldr	r3, [r3]	@ gpFaceProcs, gpFaceProcs
@ LevelUpAnim/src/AnimOn.c:100: 	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	ldr	r6, .L42+12	@ tmp158,
@ LevelUpAnim/src/AnimOn.c:101: 	sub_80712B0(gPaletteBuffer, 2, 4, calc3);
	lsls	r5, r5, #16	@ _17, _35,
@ LevelUpAnim/src/AnimOn.c:99: 	gpFaceProcs->yPosition = 0x50 - calc2;
	strh	r0, [r3, #54]	@ tmp155, gpFaceProcs.5_15->yPosition
@ LevelUpAnim/src/AnimOn.c:100: 	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	movs	r1, r6	@, tmp158
	ldr	r0, .L42+16	@ tmp159,
	ldr	r3, .L42+20	@ tmp160,
	lsls	r2, r2, #1	@,,
@ LevelUpAnim/src/AnimOn.c:101: 	sub_80712B0(gPaletteBuffer, 2, 4, calc3);
	lsrs	r5, r5, #16	@ _17, _17,
@ LevelUpAnim/src/AnimOn.c:100: 	CpuFastSet(gUnknown_020165C8, gPaletteBuffer, 0x100);
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:101: 	sub_80712B0(gPaletteBuffer, 2, 4, calc3);
	movs	r3, r5	@, _17
	movs	r2, #4	@,
	movs	r1, #2	@,
	movs	r0, r6	@, tmp158
	ldr	r7, .L42+24	@ tmp163,
	bl	.L44		@
@ LevelUpAnim/src/AnimOn.c:102: 	sub_80712B0(gPaletteBuffer, 0x13, 0xC, calc3);
	movs	r3, r5	@, _17
	movs	r2, #12	@,
	movs	r1, #19	@,
	movs	r0, r6	@, tmp158
	bl	.L44		@
@ LevelUpAnim/src/AnimOn.c:103: 	EnablePaletteSync();
	ldr	r3, .L42+28	@ tmp166,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:105: 	if( ++proc->cnt > 0x8 )
	ldrh	r3, [r4, #44]	@ tmp168,
	adds	r3, r3, #1	@ tmp169,
	lsls	r3, r3, #16	@ _21, tmp169,
	asrs	r3, r3, #16	@ _21, _21,
@ LevelUpAnim/src/AnimOn.c:105: 	if( ++proc->cnt > 0x8 )
	cmp	r3, #8	@ _21,
	bgt	.L40		@,
	strh	r3, [r4, #44]	@ _21, proc_24(D)->cnt
.L39:
@ LevelUpAnim/src/AnimOn.c:110: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L40:
@ LevelUpAnim/src/AnimOn.c:107: 		proc->cnt = 0;
	movs	r3, #0	@ tmp173,
@ LevelUpAnim/src/AnimOn.c:108: 		Proc_Break(proc);
	movs	r0, r4	@, proc
@ LevelUpAnim/src/AnimOn.c:107: 		proc->cnt = 0;
	strh	r3, [r4, #44]	@ tmp173, proc_24(D)->cnt
@ LevelUpAnim/src/AnimOn.c:108: 		Proc_Break(proc);
	ldr	r3, .L42+32	@ tmp175,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:110: }
	b	.L39		@
.L43:
	.align	2
.L42:
	.word	33685812
	.word	33685814
	.word	gpFaceProcs
	.word	gPaletteBuffer
	.word	gUnknown_020165C8
	.word	CpuFastSet
	.word	sub_80712B0
	.word	EnablePaletteSync
	.word	Proc_Break
	.size	EkrLevelUpProc_PutWindowOffScreen, .-EkrLevelUpProc_PutWindowOffScreen
	.align	1
	.global	EkrLevelUp_InitStatsAndPutText
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	EkrLevelUp_InitStatsAndPutText, %function
EkrLevelUp_InitStatsAndPutText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
@ LevelUpAnim/src/AnimOn.c:215: 		bu2 = *gpUnitLeft_BattleStruct;
	ldr	r3, .L59	@ tmp276,
@ LevelUpAnim/src/AnimOn.c:198: void EkrLevelUp_InitStatsAndPutText(Proc_EkrLevelUp_t *proc){
	push	{r4, r5, r6, r7, lr}	@
@ LevelUpAnim/src/AnimOn.c:215: 		bu2 = *gpUnitLeft_BattleStruct;
	ldr	r7, [r3]	@ bu1, gpUnitLeft_BattleStruct[0]
@ LevelUpAnim/src/AnimOn.c:214: 		bu1 = *gpUnitRight_BattleStruct;
	ldr	r3, .L59+4	@ tmp277,
	ldr	r2, [r3]	@ bu2, gpUnitRight_BattleStruct[0]
@ LevelUpAnim/src/AnimOn.c:213: 	if ( proc->gAISMain ){
	ldr	r3, [r0, #92]	@ proc_157(D)->gAISMain, proc_157(D)->gAISMain
@ LevelUpAnim/src/AnimOn.c:198: void EkrLevelUp_InitStatsAndPutText(Proc_EkrLevelUp_t *proc){
	sub	sp, sp, #20	@,,
@ LevelUpAnim/src/AnimOn.c:213: 	if ( proc->gAISMain ){
	cmp	r3, #0	@ proc_157(D)->gAISMain,
	beq	.L46		@,
	movs	r3, r7	@ bu1, bu1
@ LevelUpAnim/src/AnimOn.c:214: 		bu1 = *gpUnitRight_BattleStruct;
	movs	r7, r2	@ bu1, bu2
@ LevelUpAnim/src/AnimOn.c:215: 		bu2 = *gpUnitLeft_BattleStruct;
	movs	r2, r3	@ bu2, bu1
.L46:
@ LevelUpAnim/src/AnimOn.c:222: 	*gpSomeBuStruct = bu1;
	ldr	r3, .L59+8	@ tmp279,
	str	r7, [r3]	@ bu1, MEM[(struct BattleUnit * *)33685768B]
@ LevelUpAnim/src/AnimOn.c:223: 	*gpSomeUnitStruct2 = bu2;
	ldr	r3, .L59+12	@ tmp281,
	ldr	r3, [r3]	@ gpSomeUnitStruct2, gpSomeUnitStruct2
	str	r2, [r3]	@ bu2, *gpSomeUnitStruct2.10_3
@ LevelUpAnim/src/AnimOn.c:225: 	if( FALSE == proc->promo )
	adds	r0, r0, #42	@ tmp284,
@ LevelUpAnim/src/AnimOn.c:225: 	if( FALSE == proc->promo )
	ldrb	r3, [r0]	@ tmp285,
	cmp	r3, #0	@ tmp285,
	beq	.LCB515	@
	b	.L47	@long jump	@
.LCB515:
@ LevelUpAnim/src/AnimOn.c:228: 		struct Unit* unit = GetUnit(bu1->unit.index);
	movs	r0, #11	@ tmp286,
	ldr	r3, .L59+16	@ tmp287,
	ldrsb	r0, [r7, r0]	@ tmp286,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:230: 		gLevelUpStats[0] = bu1->levelPrevious;
	movs	r3, r7	@ tmp291, bu1
@ LevelUpAnim/src/AnimOn.c:231: 		gLevelUpStatsBase[0] = unit->maxHP;
	movs	r6, #18	@ _10,
@ LevelUpAnim/src/AnimOn.c:232: 		gLevelUpStatsBase[1] = unit->pow;
	movs	r5, #20	@ _12,
@ LevelUpAnim/src/AnimOn.c:233: 		gLevelUpStatsBase[2] = unit->skl;
	movs	r4, #21	@ _14,
@ LevelUpAnim/src/AnimOn.c:230: 		gLevelUpStats[0] = bu1->levelPrevious;
	adds	r3, r3, #112	@ tmp291,
	ldrb	r3, [r3]	@ tmp292,
	ldr	r2, .L59+20	@ tmp559,
	strh	r3, [r2]	@ tmp292, MEM[(u16 *)33685776B]
@ LevelUpAnim/src/AnimOn.c:234: 		gLevelUpStatsBase[3] = unit->spd;
	movs	r3, #22	@ _16,
@ LevelUpAnim/src/AnimOn.c:231: 		gLevelUpStatsBase[0] = unit->maxHP;
	ldrsb	r6, [r0, r6]	@ _10,* _10
@ LevelUpAnim/src/AnimOn.c:231: 		gLevelUpStatsBase[0] = unit->maxHP;
	ldr	r2, .L59+24	@ tmp294,
	strh	r6, [r2]	@ _10, gLevelUpStatsBase[0]
@ LevelUpAnim/src/AnimOn.c:232: 		gLevelUpStatsBase[1] = unit->pow;
	ldrsb	r5, [r0, r5]	@ _12,* _12
@ LevelUpAnim/src/AnimOn.c:232: 		gLevelUpStatsBase[1] = unit->pow;
	strh	r5, [r2, #2]	@ _12, gLevelUpStatsBase[1]
@ LevelUpAnim/src/AnimOn.c:233: 		gLevelUpStatsBase[2] = unit->skl;
	ldrsb	r4, [r0, r4]	@ _14,* _14
@ LevelUpAnim/src/AnimOn.c:233: 		gLevelUpStatsBase[2] = unit->skl;
	strh	r4, [r2, #4]	@ _14, gLevelUpStatsBase[2]
@ LevelUpAnim/src/AnimOn.c:234: 		gLevelUpStatsBase[3] = unit->spd;
	ldrsb	r3, [r0, r3]	@ _16,* _16
	str	r3, [sp]	@ _16, %sfp
@ LevelUpAnim/src/AnimOn.c:234: 		gLevelUpStatsBase[3] = unit->spd;
	strh	r3, [r2, #6]	@ _16, gLevelUpStatsBase[3]
@ LevelUpAnim/src/AnimOn.c:235: 		gLevelUpStatsBase[4] = unit->lck;
	movs	r3, #25	@ _18,
	ldrsb	r3, [r0, r3]	@ _18,* _18
@ LevelUpAnim/src/AnimOn.c:235: 		gLevelUpStatsBase[4] = unit->lck;
	strh	r3, [r2, #8]	@ _18, gLevelUpStatsBase[4]
@ LevelUpAnim/src/AnimOn.c:235: 		gLevelUpStatsBase[4] = unit->lck;
	mov	ip, r3	@ _18, _18
@ LevelUpAnim/src/AnimOn.c:236: 		gLevelUpStatsBase[5] = unit->def;
	movs	r3, #23	@ _20,
@ LevelUpAnim/src/AnimOn.c:237: 		gLevelUpStatsBase[6] = unit->res;
	movs	r1, #24	@ _22,
@ LevelUpAnim/src/AnimOn.c:236: 		gLevelUpStatsBase[5] = unit->def;
	ldrsb	r3, [r0, r3]	@ _20,* _20
	str	r3, [sp, #4]	@ _20, %sfp
@ LevelUpAnim/src/AnimOn.c:236: 		gLevelUpStatsBase[5] = unit->def;
	strh	r3, [r2, #10]	@ _20, gLevelUpStatsBase[5]
@ LevelUpAnim/src/AnimOn.c:237: 		gLevelUpStatsBase[6] = unit->res;
	ldrsb	r1, [r0, r1]	@ _22,* _22
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	ldr	r3, [r0]	@ unit_183->pCharacterData, unit_183->pCharacterData
@ LevelUpAnim/src/AnimOn.c:237: 		gLevelUpStatsBase[6] = unit->res;
	strh	r1, [r2, #12]	@ _22, gLevelUpStatsBase[6]
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	ldr	r0, [r0, #4]	@ unit_183->pClassData, unit_183->pClassData
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	ldrb	r3, [r3, #19]	@ tmp310,
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	ldrb	r0, [r0, #17]	@ tmp313,
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	lsls	r3, r3, #24	@ tmp310, tmp310,
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	lsls	r0, r0, #24	@ tmp313, tmp313,
	asrs	r0, r0, #24	@ tmp313, tmp313,
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	asrs	r3, r3, #24	@ tmp310, tmp310,
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	adds	r3, r3, r0	@ tmp314, tmp310, tmp313
	lsls	r3, r3, #16	@ _31, tmp314,
	lsrs	r3, r3, #16	@ _31, _31,
@ LevelUpAnim/src/AnimOn.c:238: 		gLevelUpStatsBase[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon;
	strh	r3, [r2, #14]	@ _31, gLevelUpStatsBase[7]
@ LevelUpAnim/src/AnimOn.c:239: 		gLevelUpStats[1] = gLevelUpStats[0]+1;
	ldr	r0, .L59+20	@ tmp566,
	ldrh	r2, [r0]	@ MEM[(u16 *)33685776B], MEM[(u16 *)33685776B]
	adds	r2, r2, #1	@ tmp322,
@ LevelUpAnim/src/AnimOn.c:239: 		gLevelUpStats[1] = gLevelUpStats[0]+1;
	strh	r2, [r0, #2]	@ tmp322, MEM[(u16 *)33685776B + 2B]
@ LevelUpAnim/src/AnimOn.c:241: 		gLevelUpStatsAfter[0] = unit->maxHP + bu1->changeHP;
	movs	r0, r7	@ tmp327, bu1
	adds	r0, r0, #115	@ tmp327,
	ldrb	r0, [r0]	@ tmp329,
	lsls	r0, r0, #24	@ tmp329, tmp329,
@ LevelUpAnim/src/AnimOn.c:241: 		gLevelUpStatsAfter[0] = unit->maxHP + bu1->changeHP;
	ldr	r2, .L59+28	@ tmp324,
@ LevelUpAnim/src/AnimOn.c:241: 		gLevelUpStatsAfter[0] = unit->maxHP + bu1->changeHP;
	asrs	r0, r0, #24	@ tmp329, tmp329,
@ LevelUpAnim/src/AnimOn.c:241: 		gLevelUpStatsAfter[0] = unit->maxHP + bu1->changeHP;
	adds	r0, r6, r0	@ tmp331, _10, tmp329
@ LevelUpAnim/src/AnimOn.c:241: 		gLevelUpStatsAfter[0] = unit->maxHP + bu1->changeHP;
	strh	r0, [r2]	@ tmp331, gLevelUpStatsAfter[0]
@ LevelUpAnim/src/AnimOn.c:242: 		gLevelUpStatsAfter[1] = unit->pow + bu1->changePow;
	movs	r0, r7	@ tmp336, bu1
	adds	r0, r0, #116	@ tmp336,
	ldrb	r0, [r0]	@ tmp338,
	lsls	r0, r0, #24	@ tmp338, tmp338,
	asrs	r0, r0, #24	@ tmp338, tmp338,
@ LevelUpAnim/src/AnimOn.c:242: 		gLevelUpStatsAfter[1] = unit->pow + bu1->changePow;
	adds	r5, r5, r0	@ tmp340, _12, tmp338
@ LevelUpAnim/src/AnimOn.c:243: 		gLevelUpStatsAfter[2] = unit->skl + bu1->changeSkl;
	movs	r0, r7	@ tmp345, bu1
@ LevelUpAnim/src/AnimOn.c:242: 		gLevelUpStatsAfter[1] = unit->pow + bu1->changePow;
	strh	r5, [r2, #2]	@ tmp340, gLevelUpStatsAfter[1]
@ LevelUpAnim/src/AnimOn.c:243: 		gLevelUpStatsAfter[2] = unit->skl + bu1->changeSkl;
	adds	r0, r0, #117	@ tmp345,
	ldrb	r0, [r0]	@ tmp347,
	lsls	r0, r0, #24	@ tmp347, tmp347,
	asrs	r0, r0, #24	@ tmp347, tmp347,
@ LevelUpAnim/src/AnimOn.c:243: 		gLevelUpStatsAfter[2] = unit->skl + bu1->changeSkl;
	adds	r4, r4, r0	@ tmp349, _14, tmp347
@ LevelUpAnim/src/AnimOn.c:244: 		gLevelUpStatsAfter[3] = unit->spd + bu1->changeSpd;
	movs	r0, r7	@ tmp354, bu1
	adds	r0, r0, #118	@ tmp354,
@ LevelUpAnim/src/AnimOn.c:243: 		gLevelUpStatsAfter[2] = unit->skl + bu1->changeSkl;
	strh	r4, [r2, #4]	@ tmp349, gLevelUpStatsAfter[2]
@ LevelUpAnim/src/AnimOn.c:244: 		gLevelUpStatsAfter[3] = unit->spd + bu1->changeSpd;
	ldrb	r0, [r0]	@ tmp356,
@ LevelUpAnim/src/AnimOn.c:244: 		gLevelUpStatsAfter[3] = unit->spd + bu1->changeSpd;
	ldr	r4, [sp]	@ _16, %sfp
@ LevelUpAnim/src/AnimOn.c:244: 		gLevelUpStatsAfter[3] = unit->spd + bu1->changeSpd;
	lsls	r0, r0, #24	@ tmp356, tmp356,
	asrs	r0, r0, #24	@ tmp356, tmp356,
@ LevelUpAnim/src/AnimOn.c:244: 		gLevelUpStatsAfter[3] = unit->spd + bu1->changeSpd;
	adds	r0, r4, r0	@ tmp358, _16, tmp356
@ LevelUpAnim/src/AnimOn.c:244: 		gLevelUpStatsAfter[3] = unit->spd + bu1->changeSpd;
	strh	r0, [r2, #6]	@ tmp358, gLevelUpStatsAfter[3]
@ LevelUpAnim/src/AnimOn.c:245: 		gLevelUpStatsAfter[4] = unit->lck + bu1->changeDef;
	movs	r0, r7	@ tmp363, bu1
	adds	r0, r0, #119	@ tmp363,
	ldrb	r0, [r0]	@ tmp365,
	lsls	r0, r0, #24	@ tmp365, tmp365,
	asrs	r0, r0, #24	@ tmp365, tmp365,
@ LevelUpAnim/src/AnimOn.c:245: 		gLevelUpStatsAfter[4] = unit->lck + bu1->changeDef;
	add	r0, r0, ip	@ tmp367, _18
@ LevelUpAnim/src/AnimOn.c:245: 		gLevelUpStatsAfter[4] = unit->lck + bu1->changeDef;
	strh	r0, [r2, #8]	@ tmp367, gLevelUpStatsAfter[4]
@ LevelUpAnim/src/AnimOn.c:246: 		gLevelUpStatsAfter[5] = unit->def + bu1->changeRes;
	movs	r0, r7	@ tmp372, bu1
	adds	r0, r0, #120	@ tmp372,
	ldrb	r0, [r0]	@ tmp374,
@ LevelUpAnim/src/AnimOn.c:246: 		gLevelUpStatsAfter[5] = unit->def + bu1->changeRes;
	ldr	r4, [sp, #4]	@ _20, %sfp
@ LevelUpAnim/src/AnimOn.c:246: 		gLevelUpStatsAfter[5] = unit->def + bu1->changeRes;
	lsls	r0, r0, #24	@ tmp374, tmp374,
	asrs	r0, r0, #24	@ tmp374, tmp374,
@ LevelUpAnim/src/AnimOn.c:246: 		gLevelUpStatsAfter[5] = unit->def + bu1->changeRes;
	adds	r0, r4, r0	@ tmp376, _20, tmp374
@ LevelUpAnim/src/AnimOn.c:246: 		gLevelUpStatsAfter[5] = unit->def + bu1->changeRes;
	strh	r0, [r2, #10]	@ tmp376, gLevelUpStatsAfter[5]
@ LevelUpAnim/src/AnimOn.c:247: 		gLevelUpStatsAfter[6] = unit->res + bu1->changeLck;
	movs	r0, r7	@ tmp381, bu1
	adds	r0, r0, #121	@ tmp381,
	ldrb	r0, [r0]	@ tmp383,
	lsls	r0, r0, #24	@ tmp383, tmp383,
	asrs	r0, r0, #24	@ tmp383, tmp383,
@ LevelUpAnim/src/AnimOn.c:247: 		gLevelUpStatsAfter[6] = unit->res + bu1->changeLck;
	adds	r1, r1, r0	@ tmp385, _22, tmp383
@ LevelUpAnim/src/AnimOn.c:247: 		gLevelUpStatsAfter[6] = unit->res + bu1->changeLck;
	strh	r1, [r2, #12]	@ tmp385, gLevelUpStatsAfter[6]
@ LevelUpAnim/src/AnimOn.c:248: 		gLevelUpStatsAfter[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon + bu1->changeCon;
	movs	r2, r7	@ tmp389, bu1
	adds	r2, r2, #122	@ tmp389,
	ldrb	r2, [r2]	@ tmp391,
.L58:
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	lsls	r2, r2, #24	@ tmp463, tmp463,
	asrs	r2, r2, #24	@ tmp463, tmp463,
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	adds	r3, r3, r2	@ tmp464, tmp460, tmp463
	lsls	r3, r3, #16	@ _248, tmp464,
@ LevelUpAnim/src/AnimOn.c:248: 		gLevelUpStatsAfter[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon + bu1->changeCon;
	ldr	r2, .L59+28	@ tmp466,
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	lsrs	r3, r3, #16	@ _248, _248,
@ LevelUpAnim/src/AnimOn.c:248: 		gLevelUpStatsAfter[7] = unit->pCharacterData->baseCon + unit->pClassData->baseCon + bu1->changeCon;
	strh	r3, [r2, #14]	@ _248, gLevelUpStatsAfter[7]
@ LevelUpAnim/src/AnimOn.c:274: 	Font_InitForUI(&gSomeFontStruct, (void*) 0x60028C0, 0x146, 0);
	movs	r2, #163	@,
	movs	r5, #0	@ ivtmp.81,
@ LevelUpAnim/src/AnimOn.c:290: 		Text_Init(th, 3);
	movs	r6, #3	@ tmp541,
@ LevelUpAnim/src/AnimOn.c:274: 	Font_InitForUI(&gSomeFontStruct, (void*) 0x60028C0, 0x146, 0);
	movs	r3, #0	@,
	ldr	r0, .L59+32	@ tmp470,
	ldr	r1, .L59+36	@,
	ldr	r4, .L59+40	@ tmp471,
	lsls	r2, r2, #1	@,,
	bl	.L24		@
	ldr	r3, .L59+44	@ ivtmp.83,
	str	r3, [sp]	@ ivtmp.83, %sfp
.L50:
@ LevelUpAnim/src/AnimOn.c:282: 		if ( UnitHasMagicRank(&bu1->unit) )
	ldr	r3, .L59+48	@ tmp472,
	movs	r0, r7	@, bu1
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:283: 			stat_name_table = gUnknown_087592EC;
	ldr	r3, .L59+52	@ stat_name_table,
@ LevelUpAnim/src/AnimOn.c:282: 		if ( UnitHasMagicRank(&bu1->unit) )
	cmp	r0, #0	@ tmp544,
	bne	.L49		@,
@ LevelUpAnim/src/AnimOn.c:285: 			stat_name_table = gUnknown_0875930C;
	ldr	r3, .L59+56	@ stat_name_table,
.L49:
@ LevelUpAnim/src/AnimOn.c:287: 		str = GetStringFromIndex( *stat_name_table[stat_id] );
	ldr	r3, [r3, r5]	@ *_127, *_127
@ LevelUpAnim/src/AnimOn.c:287: 		str = GetStringFromIndex( *stat_name_table[stat_id] );
	ldrh	r0, [r3]	@ *_128, *_128
	ldr	r3, .L59+60	@ tmp477,
	bl	.L8		@
	ldr	r3, .L59+64	@ tmp479,
	lsls	r4, r5, #1	@ tmp478, ivtmp.81,
	adds	r4, r4, r3	@ _252, tmp478, tmp479
@ LevelUpAnim/src/AnimOn.c:290: 		Text_Init(th, 3);
	movs	r1, r6	@, tmp541
@ LevelUpAnim/src/AnimOn.c:287: 		str = GetStringFromIndex( *stat_name_table[stat_id] );
	str	r0, [sp, #4]	@ tmp545, %sfp
@ LevelUpAnim/src/AnimOn.c:290: 		Text_Init(th, 3);
	ldr	r3, .L59+68	@ tmp480,
	movs	r0, r4	@, _252
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:291: 		Text_SetXCursor(th, 0);
	movs	r1, #0	@,
	movs	r0, r4	@, _252
	ldr	r3, .L59+72	@ tmp481,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:292: 		Text_SetColorId(th, TEXT_COLOR_GOLD);
	movs	r1, r6	@, tmp541
	movs	r0, r4	@, _252
	ldr	r3, .L59+76	@ tmp482,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:293: 		Text_AppendString(th, str);
	movs	r0, r4	@, _252
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r3, .L59+80	@ tmp483,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:297: 			gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
	ldr	r3, [sp]	@ ivtmp.83, %sfp
	ldrh	r1, [r3]	@ MEM[(short unsigned int *)_253], MEM[(short unsigned int *)_253]
@ LevelUpAnim/src/AnimOn.c:295: 		map = 
	ldr	r3, .L59+84	@ tmp487,
@ LevelUpAnim/src/AnimOn.c:296: 			gBG2TilemapBuffer+
	lsls	r1, r1, #1	@ tmp485, MEM[(short unsigned int *)_253],
@ LevelUpAnim/src/AnimOn.c:295: 		map = 
	adds	r1, r1, r3	@ map, tmp485, tmp487
@ LevelUpAnim/src/AnimOn.c:299: 		Text_Draw(th, map);
	movs	r0, r4	@, _252
	ldr	r3, .L59+88	@ tmp488,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:277: 	for(int stat_id = 0; stat_id<8; stat_id++)
	ldr	r3, [sp]	@ ivtmp.83, %sfp
	adds	r5, r5, #4	@ ivtmp.81,
	adds	r3, r3, #2	@ ivtmp.83,
	str	r3, [sp]	@ ivtmp.83, %sfp
	cmp	r5, #32	@ ivtmp.81,
	bne	.L50		@,
	movs	r5, #0	@ ivtmp.74,
@ LevelUpAnim/src/AnimOn.c:306: 		Text_Init(th, 2);
	movs	r6, #2	@ tmp540,
.L51:
	ldr	r3, .L59+92	@ tmp490,
	lsls	r4, r5, #2	@ tmp489, ivtmp.74,
	adds	r4, r4, r3	@ _73, tmp489, tmp490
@ LevelUpAnim/src/AnimOn.c:306: 		Text_Init(th, 2);
	ldr	r3, .L59+68	@ tmp491,
	movs	r0, r4	@, _73
	movs	r1, r6	@, tmp540
	str	r3, [sp]	@ tmp491, %sfp
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:307: 		Text_SetXCursor(th, 8);
	ldr	r3, .L59+72	@ tmp492,
	movs	r0, r4	@, _73
	movs	r1, #8	@,
	str	r3, [sp, #4]	@ tmp492, %sfp
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:308: 		Text_SetColorId(th, TEXT_COLOR_BLUE);
	ldr	r3, .L59+76	@ tmp493,
	movs	r0, r4	@, _73
	movs	r1, r6	@, tmp540
	str	r3, [sp, #8]	@ tmp493, %sfp
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:309: 		Text_AppendDecNumber(th, gLevelUpStatsBase[stat_id]);
	ldr	r3, .L59+24	@ tmp495,
@ LevelUpAnim/src/AnimOn.c:309: 		Text_AppendDecNumber(th, gLevelUpStatsBase[stat_id]);
	ldrh	r1, [r3, r5]	@ MEM[(short unsigned int *)&gLevelUpStatsBase + ivtmp.74_238 * 1], MEM[(short unsigned int *)&gLevelUpStatsBase + ivtmp.74_238 * 1]
	ldr	r3, .L59+96	@ tmp497,
	movs	r0, r4	@, _73
	str	r3, [sp, #12]	@ tmp497, %sfp
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:314: 			gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
	ldr	r3, .L59+44	@ tmp499,
@ LevelUpAnim/src/AnimOn.c:313: 			gBG2TilemapBuffer+
	ldrh	r1, [r3, r5]	@ MEM[(short unsigned int *)&gAnimsOnLevelUpStatDisplayPositionLookup + ivtmp.74_238 * 1], MEM[(short unsigned int *)&gAnimsOnLevelUpStatDisplayPositionLookup + ivtmp.74_238 * 1]
@ LevelUpAnim/src/AnimOn.c:311: 		map = 
	ldr	r3, .L59+84	@ tmp504,
@ LevelUpAnim/src/AnimOn.c:313: 			gBG2TilemapBuffer+
	adds	r1, r1, #3	@ tmp501,
	lsls	r1, r1, #1	@ tmp502, tmp501,
@ LevelUpAnim/src/AnimOn.c:316: 		Text_Draw(th, map);
	movs	r0, r4	@, _73
@ LevelUpAnim/src/AnimOn.c:311: 		map = 
	adds	r1, r1, r3	@ map, tmp502, tmp504
@ LevelUpAnim/src/AnimOn.c:316: 		Text_Draw(th, map);
	ldr	r4, .L59+88	@ tmp505,
@ LevelUpAnim/src/AnimOn.c:303: 	for(int stat_id = 0; stat_id<8; stat_id++)
	adds	r5, r5, #2	@ ivtmp.74,
@ LevelUpAnim/src/AnimOn.c:316: 		Text_Draw(th, map);
	bl	.L24		@
@ LevelUpAnim/src/AnimOn.c:303: 	for(int stat_id = 0; stat_id<8; stat_id++)
	cmp	r5, #16	@ ivtmp.74,
	bne	.L51		@,
@ LevelUpAnim/src/AnimOn.c:321: 	str = GetStringFromIndex(bu1->unit.pClassData->nameTextId);
	ldr	r3, [r7, #4]	@ bu1_148->unit.pClassData, bu1_148->unit.pClassData
@ LevelUpAnim/src/AnimOn.c:321: 	str = GetStringFromIndex(bu1->unit.pClassData->nameTextId);
	ldr	r7, .L59+60	@ tmp508,
	ldrh	r0, [r3]	@ *_140, *_140
	bl	.L44		@
	movs	r6, r0	@ str, tmp546
@ LevelUpAnim/src/AnimOn.c:324: 	Text_Init(th, 8);
	ldr	r5, .L59+100	@ tmp509,
	ldr	r3, [sp]	@ tmp491, %sfp
	movs	r0, r5	@, tmp509
	movs	r1, #8	@,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:325: 	Text_AppendString(th, str);
	movs	r1, r6	@, str
	movs	r0, r5	@, tmp509
	ldr	r6, .L59+80	@ tmp512,
	bl	.L38		@
@ LevelUpAnim/src/AnimOn.c:326: 	Text_Draw(th, map);
	movs	r0, r5	@, tmp509
	ldr	r1, .L59+104	@ tmp513,
	bl	.L24		@
@ LevelUpAnim/src/AnimOn.c:331: 	str = GetStringFromIndex(StatNames[STAT_NAME_LV]);
	ldr	r3, .L59+108	@ tmp516,
@ LevelUpAnim/src/AnimOn.c:331: 	str = GetStringFromIndex(StatNames[STAT_NAME_LV]);
	ldrh	r0, [r3]	@ StatNames, StatNames
	bl	.L44		@
	movs	r7, r0	@ str, tmp547
@ LevelUpAnim/src/AnimOn.c:334: 	Text_Init(th, 3);
	ldr	r5, .L59+112	@ tmp519,
	ldr	r3, [sp]	@ tmp491, %sfp
	movs	r0, r5	@, tmp519
	movs	r1, #3	@,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:335: 	Text_AppendString(th, str);
	movs	r1, r7	@, str
	movs	r0, r5	@, tmp519
	bl	.L38		@
@ LevelUpAnim/src/AnimOn.c:336: 	Text_Draw(th, map);
	movs	r0, r5	@, tmp519
	ldr	r1, .L59+116	@ tmp523,
	bl	.L24		@
@ LevelUpAnim/src/AnimOn.c:343: 	Text_Init(th, 2);
	ldr	r5, .L59+120	@ tmp526,
	ldr	r3, [sp]	@ tmp491, %sfp
	movs	r0, r5	@, tmp526
	movs	r1, #2	@,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:344: 	Text_SetXCursor(th, 8);
	movs	r0, r5	@, tmp526
	ldr	r3, [sp, #4]	@ tmp492, %sfp
	movs	r1, #8	@,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:345: 	Text_SetColorId(th, TEXT_COLOR_BLUE);
	movs	r0, r5	@, tmp526
	ldr	r3, [sp, #8]	@ tmp493, %sfp
	movs	r1, #2	@,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:346: 	Text_AppendDecNumber(th, gLevelUpStats[0]);
	ldr	r3, .L59+20	@ tmp598,
	movs	r0, r5	@, tmp526
	ldrh	r1, [r3]	@ MEM[(u16 *)33685776B], MEM[(u16 *)33685776B]
	ldr	r3, [sp, #12]	@ tmp497, %sfp
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:347: 	Text_Draw(th, map);
	movs	r0, r5	@, tmp526
	ldr	r1, .L59+124	@ tmp536,
	bl	.L24		@
@ LevelUpAnim/src/AnimOn.c:348: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L47:
@ LevelUpAnim/src/AnimOn.c:253: 		gLevelUpStats[0] = bu1->unit.level;
	movs	r3, #8	@ tmp395,
@ LevelUpAnim/src/AnimOn.c:254: 		gLevelUpStatsBase[0] = bu1->unit.maxHP;
	movs	r1, #18	@ tmp399,
@ LevelUpAnim/src/AnimOn.c:253: 		gLevelUpStats[0] = bu1->unit.level;
	ldrsb	r3, [r7, r3]	@ tmp395,
	ldr	r4, .L59+20	@ tmp578,
	strh	r3, [r4]	@ tmp395, MEM[(u16 *)33685776B]
@ LevelUpAnim/src/AnimOn.c:254: 		gLevelUpStatsBase[0] = bu1->unit.maxHP;
	ldr	r3, .L59+24	@ tmp397,
@ LevelUpAnim/src/AnimOn.c:254: 		gLevelUpStatsBase[0] = bu1->unit.maxHP;
	ldrsb	r1, [r7, r1]	@ tmp399,
@ LevelUpAnim/src/AnimOn.c:254: 		gLevelUpStatsBase[0] = bu1->unit.maxHP;
	strh	r1, [r3]	@ tmp399, gLevelUpStatsBase[0]
@ LevelUpAnim/src/AnimOn.c:255: 		gLevelUpStatsBase[1] = bu1->unit.pow;
	movs	r1, #20	@ tmp402,
	ldrsb	r1, [r7, r1]	@ tmp402,
@ LevelUpAnim/src/AnimOn.c:255: 		gLevelUpStatsBase[1] = bu1->unit.pow;
	strh	r1, [r3, #2]	@ tmp402, gLevelUpStatsBase[1]
@ LevelUpAnim/src/AnimOn.c:256: 		gLevelUpStatsBase[2] = bu1->unit.skl;
	movs	r1, #21	@ tmp405,
	ldrsb	r1, [r7, r1]	@ tmp405,
@ LevelUpAnim/src/AnimOn.c:256: 		gLevelUpStatsBase[2] = bu1->unit.skl;
	strh	r1, [r3, #4]	@ tmp405, gLevelUpStatsBase[2]
@ LevelUpAnim/src/AnimOn.c:257: 		gLevelUpStatsBase[3] = bu1->unit.spd;
	movs	r1, #22	@ tmp408,
	ldrsb	r1, [r7, r1]	@ tmp408,
@ LevelUpAnim/src/AnimOn.c:257: 		gLevelUpStatsBase[3] = bu1->unit.spd;
	strh	r1, [r3, #6]	@ tmp408, gLevelUpStatsBase[3]
@ LevelUpAnim/src/AnimOn.c:258: 		gLevelUpStatsBase[4] = bu1->unit.lck;
	movs	r1, #25	@ tmp411,
	ldrsb	r1, [r7, r1]	@ tmp411,
@ LevelUpAnim/src/AnimOn.c:258: 		gLevelUpStatsBase[4] = bu1->unit.lck;
	strh	r1, [r3, #8]	@ tmp411, gLevelUpStatsBase[4]
@ LevelUpAnim/src/AnimOn.c:259: 		gLevelUpStatsBase[5] = bu1->unit.def;
	movs	r1, #23	@ tmp414,
	ldrsb	r1, [r7, r1]	@ tmp414,
@ LevelUpAnim/src/AnimOn.c:259: 		gLevelUpStatsBase[5] = bu1->unit.def;
	strh	r1, [r3, #10]	@ tmp414, gLevelUpStatsBase[5]
@ LevelUpAnim/src/AnimOn.c:260: 		gLevelUpStatsBase[6] = bu1->unit.res;
	movs	r1, #24	@ tmp417,
	ldrsb	r1, [r7, r1]	@ tmp417,
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	ldr	r0, [r7, #4]	@ bu1_148->unit.pClassData, bu1_148->unit.pClassData
@ LevelUpAnim/src/AnimOn.c:260: 		gLevelUpStatsBase[6] = bu1->unit.res;
	strh	r1, [r3, #12]	@ tmp417, gLevelUpStatsBase[6]
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	ldr	r1, [r7]	@ bu1_148->unit.pCharacterData, bu1_148->unit.pCharacterData
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	ldrb	r0, [r0, #17]	@ tmp424,
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	ldrb	r1, [r1, #19]	@ tmp421,
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	lsls	r0, r0, #24	@ tmp424, tmp424,
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	lsls	r1, r1, #24	@ tmp421, tmp421,
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	asrs	r0, r0, #24	@ tmp424, tmp424,
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	asrs	r1, r1, #24	@ tmp421, tmp421,
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	adds	r1, r1, r0	@ tmp425, tmp421, tmp424
@ LevelUpAnim/src/AnimOn.c:261: 		gLevelUpStatsBase[7] = bu1->unit.pCharacterData->baseCon + bu1->unit.pClassData->baseCon;
	strh	r1, [r3, #14]	@ tmp425, gLevelUpStatsBase[7]
@ LevelUpAnim/src/AnimOn.c:262: 		gLevelUpStats[1] = 1;
	movs	r3, #1	@ tmp428,
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	movs	r0, r7	@ tmp435, bu1
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	movs	r1, #18	@ tmp432,
@ LevelUpAnim/src/AnimOn.c:262: 		gLevelUpStats[1] = 1;
	strh	r3, [r4, #2]	@ tmp428, MEM[(u16 *)33685776B + 2B]
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	adds	r0, r0, #115	@ tmp435,
	ldrb	r0, [r0]	@ tmp437,
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	ldrsb	r1, [r2, r1]	@ tmp432,
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	lsls	r0, r0, #24	@ tmp437, tmp437,
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	ldr	r3, .L59+28	@ tmp430,
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	asrs	r0, r0, #24	@ tmp437, tmp437,
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	adds	r1, r1, r0	@ tmp438, tmp432, tmp437
@ LevelUpAnim/src/AnimOn.c:264: 		gLevelUpStatsAfter[0] = bu2->unit.maxHP + bu1->changeHP;
	strh	r1, [r3]	@ tmp438, gLevelUpStatsAfter[0]
@ LevelUpAnim/src/AnimOn.c:265: 		gLevelUpStatsAfter[1] = bu2->unit.pow;
	movs	r1, #20	@ tmp442,
	ldrsb	r1, [r2, r1]	@ tmp442,
@ LevelUpAnim/src/AnimOn.c:265: 		gLevelUpStatsAfter[1] = bu2->unit.pow;
	strh	r1, [r3, #2]	@ tmp442, gLevelUpStatsAfter[1]
@ LevelUpAnim/src/AnimOn.c:266: 		gLevelUpStatsAfter[2] = bu2->unit.skl;
	movs	r1, #21	@ tmp445,
	ldrsb	r1, [r2, r1]	@ tmp445,
@ LevelUpAnim/src/AnimOn.c:266: 		gLevelUpStatsAfter[2] = bu2->unit.skl;
	strh	r1, [r3, #4]	@ tmp445, gLevelUpStatsAfter[2]
@ LevelUpAnim/src/AnimOn.c:267: 		gLevelUpStatsAfter[3] = bu2->unit.spd;
	movs	r1, #22	@ tmp448,
	ldrsb	r1, [r2, r1]	@ tmp448,
@ LevelUpAnim/src/AnimOn.c:267: 		gLevelUpStatsAfter[3] = bu2->unit.spd;
	strh	r1, [r3, #6]	@ tmp448, gLevelUpStatsAfter[3]
@ LevelUpAnim/src/AnimOn.c:268: 		gLevelUpStatsAfter[4] = bu2->unit.lck;
	movs	r1, #25	@ tmp451,
	ldrsb	r1, [r2, r1]	@ tmp451,
@ LevelUpAnim/src/AnimOn.c:268: 		gLevelUpStatsAfter[4] = bu2->unit.lck;
	strh	r1, [r3, #8]	@ tmp451, gLevelUpStatsAfter[4]
@ LevelUpAnim/src/AnimOn.c:269: 		gLevelUpStatsAfter[5] = bu2->unit.def;
	movs	r1, #23	@ tmp454,
	ldrsb	r1, [r2, r1]	@ tmp454,
@ LevelUpAnim/src/AnimOn.c:269: 		gLevelUpStatsAfter[5] = bu2->unit.def;
	strh	r1, [r3, #10]	@ tmp454, gLevelUpStatsAfter[5]
@ LevelUpAnim/src/AnimOn.c:270: 		gLevelUpStatsAfter[6] = bu2->unit.res;
	movs	r1, #24	@ tmp457,
	ldrsb	r1, [r2, r1]	@ tmp457,
@ LevelUpAnim/src/AnimOn.c:270: 		gLevelUpStatsAfter[6] = bu2->unit.res;
	strh	r1, [r3, #12]	@ tmp457, gLevelUpStatsAfter[6]
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	ldr	r3, [r2]	@ bu2_149->unit.pCharacterData, bu2_149->unit.pCharacterData
	ldrb	r3, [r3, #19]	@ tmp460,
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	ldr	r2, [r2, #4]	@ bu2_149->unit.pClassData, bu2_149->unit.pClassData
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	lsls	r3, r3, #24	@ tmp460, tmp460,
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	ldrb	r2, [r2, #17]	@ tmp463,
@ LevelUpAnim/src/AnimOn.c:271: 		gLevelUpStatsAfter[7] = bu2->unit.pCharacterData->baseCon + bu2->unit.pClassData->baseCon;
	asrs	r3, r3, #24	@ tmp460, tmp460,
	b	.L58		@
.L60:
	.align	2
.L59:
	.word	gpUnitLeft_BattleStruct
	.word	gpUnitRight_BattleStruct
	.word	33685768
	.word	gpSomeUnitStruct2
	.word	GetUnit
	.word	33685776
	.word	gLevelUpStatsBase
	.word	gLevelUpStatsAfter
	.word	gSomeFontStruct
	.word	100673728
	.word	Font_InitForUI
	.word	gAnimsOnLevelUpStatDisplayPositionLookup
	.word	UnitHasMagicRank
	.word	gUnknown_087592EC
	.word	gUnknown_0875930C
	.word	GetStringFromIndex
	.word	gSomeTextStruct
	.word	Text_Init
	.word	Text_SetXCursor
	.word	Text_SetColorId
	.word	Text_AppendString
	.word	gBG2TilemapBuffer
	.word	Text_Draw
	.word	gUnknown_020176A0
	.word	Text_AppendDecNumber
	.word	gUnknown_020176A0+64
	.word	gBG2TilemapBuffer+454
	.word	StatNames
	.word	gUnknown_020176A0+72
	.word	gBG2TilemapBuffer+468
	.word	gUnknown_020176A0+80
	.word	gBG2TilemapBuffer+474
	.size	EkrLevelUp_InitStatsAndPutText, .-EkrLevelUp_InitStatsAndPutText
	.align	1
	.global	EkrLevelUp_DrawNewStat
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	EkrLevelUp_DrawNewStat, %function
EkrLevelUp_DrawNewStat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ LevelUpAnim/src/AnimOn.c:353: void EkrLevelUp_DrawNewStat(Proc_EkrLevelUp_t* proc, s16 stat_id){
	movs	r5, r1	@ stat_id, tmp143
@ LevelUpAnim/src/AnimOn.c:370: } 
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:356: 	struct TextHandle* th = &gUnknown_020176A0[stat_id];
	ldr	r3, .L62	@ tmp127,
	lsls	r4, r1, #3	@ tmp126, stat_id,
	adds	r4, r4, r3	@ th, tmp126, tmp127
@ LevelUpAnim/src/AnimOn.c:359: 	Text_Clear(th);
	movs	r0, r4	@, th
	ldr	r3, .L62+4	@ tmp128,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:360: 	Text_SetXCursor(th, 8);
	movs	r0, r4	@, th
	movs	r1, #8	@,
	ldr	r3, .L62+8	@ tmp129,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:361: 	Text_SetColorId(th, TEXT_COLOR_BLUE);
	movs	r0, r4	@, th
	movs	r1, #2	@,
	ldr	r3, .L62+12	@ tmp130,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:362: 	Text_AppendDecNumber(th, gLevelUpStatsBase[stat_id]);
	ldr	r3, .L62+16	@ tmp131,
	lsls	r5, r5, #1	@ tmp132, stat_id,
@ LevelUpAnim/src/AnimOn.c:362: 	Text_AppendDecNumber(th, gLevelUpStatsBase[stat_id]);
	ldrh	r1, [r5, r3]	@ tmp133, gLevelUpStatsBase
	movs	r0, r4	@, th
	ldr	r3, .L62+20	@ tmp134,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:367: 		gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
	ldr	r3, .L62+24	@ tmp135,
@ LevelUpAnim/src/AnimOn.c:366: 		gBG2TilemapBuffer + 
	ldrh	r1, [r5, r3]	@ tmp137, gAnimsOnLevelUpStatDisplayPositionLookup
@ LevelUpAnim/src/AnimOn.c:364: 	map = 
	ldr	r3, .L62+28	@ tmp141,
@ LevelUpAnim/src/AnimOn.c:366: 		gBG2TilemapBuffer + 
	adds	r1, r1, #3	@ tmp138,
	lsls	r1, r1, #1	@ tmp139, tmp138,
@ LevelUpAnim/src/AnimOn.c:364: 	map = 
	adds	r1, r1, r3	@ map, tmp139, tmp141
@ LevelUpAnim/src/AnimOn.c:369: 	Text_Draw(th, map);
	movs	r0, r4	@, th
	ldr	r3, .L62+32	@ tmp142,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:370: } 
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L63:
	.align	2
.L62:
	.word	gUnknown_020176A0
	.word	Text_Clear
	.word	Text_SetXCursor
	.word	Text_SetColorId
	.word	gLevelUpStatsBase
	.word	Text_AppendDecNumber
	.word	gAnimsOnLevelUpStatDisplayPositionLookup
	.word	gBG2TilemapBuffer
	.word	Text_Draw
	.size	EkrLevelUp_DrawNewStat, .-EkrLevelUp_DrawNewStat
	.align	1
	.global	EkrLevelUpProc_MainAnime
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	EkrLevelUpProc_MainAnime, %function
EkrLevelUpProc_MainAnime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ LevelUpAnim/src/AnimOn.c:127: 	if( ++proc->cnt < 0x14 )
	ldrh	r3, [r0, #44]	@ tmp142,
	adds	r3, r3, #1	@ tmp143,
	lsls	r3, r3, #16	@ _4, tmp143,
	asrs	r3, r3, #16	@ _4, _4,
@ LevelUpAnim/src/AnimOn.c:118: void EkrLevelUpProc_MainAnime(Proc_EkrLevelUp_t* proc){
	movs	r4, r0	@ proc, tmp198
@ LevelUpAnim/src/AnimOn.c:127: 	if( ++proc->cnt < 0x14 )
	strh	r3, [r0, #44]	@ _4, proc_36(D)->cnt
@ LevelUpAnim/src/AnimOn.c:118: void EkrLevelUpProc_MainAnime(Proc_EkrLevelUp_t* proc){
	sub	sp, sp, #20	@,,
@ LevelUpAnim/src/AnimOn.c:127: 	if( ++proc->cnt < 0x14 )
	cmp	r3, #19	@ _4,
	ble	.L66		@,
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	ldr	r2, .L74	@ tmp197,
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	ldr	r3, .L74+4	@ tmp196,
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	str	r2, [sp, #8]	@ tmp197, %sfp
.L65:
@ LevelUpAnim/src/AnimOn.c:130: 	while( proc->stat_id < 8 )
	movs	r2, #46	@ tmp204,
	ldrsh	r5, [r4, r2]	@ _16, proc, tmp204
@ LevelUpAnim/src/AnimOn.c:130: 	while( proc->stat_id < 8 )
	cmp	r5, #7	@ _16,
	ble	.L70		@,
.L66:
@ LevelUpAnim/src/AnimOn.c:177: 		if( proc->stat_id < 8 )
	movs	r2, #46	@ tmp205,
	ldrsh	r3, [r4, r2]	@ tmp192, proc, tmp205
	cmp	r3, #7	@ tmp192,
	ble	.L64		@,
@ LevelUpAnim/src/AnimOn.c:180: 		proc->cnt = 0;
	movs	r3, #0	@ tmp193,
@ LevelUpAnim/src/AnimOn.c:181: 		Proc_Break(proc);
	movs	r0, r4	@, proc
@ LevelUpAnim/src/AnimOn.c:180: 		proc->cnt = 0;
	strh	r3, [r4, #44]	@ tmp193, proc_36(D)->cnt
@ LevelUpAnim/src/AnimOn.c:181: 		Proc_Break(proc);
	ldr	r3, .L74+8	@ tmp195,
	bl	.L8		@
.L64:
@ LevelUpAnim/src/AnimOn.c:185: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L70:
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	ldr	r2, [sp, #8]	@ tmp197, %sfp
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	lsls	r7, r5, #1	@ tmp148, _16,
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	ldrh	r2, [r7, r2]	@ _11, gLevelUpStatsBase
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	ldrh	r6, [r7, r3]	@ _8, gLevelUpStatsAfter
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	str	r2, [sp, #12]	@ _11, %sfp
@ LevelUpAnim/src/AnimOn.c:132: 		if( gLevelUpStatsAfter[proc->stat_id] != gLevelUpStatsBase[proc->stat_id] )
	cmp	r6, r2	@ _8, _11
	beq	.L67		@,
@ LevelUpAnim/src/AnimOn.c:147: 	gLevelUpStatsBase[stat_id] = gLevelUpStatsAfter[stat_id];
	ldr	r3, [sp, #8]	@ tmp197, %sfp
@ LevelUpAnim/src/AnimOn.c:452: 	EkrLevelUp_DrawNewStat(proc, stat_id);
	movs	r1, r5	@, _16
@ LevelUpAnim/src/AnimOn.c:147: 	gLevelUpStatsBase[stat_id] = gLevelUpStatsAfter[stat_id];
	strh	r6, [r3, r7]	@ _8, gLevelUpStatsBase[_7]
@ LevelUpAnim/src/AnimOn.c:452: 	EkrLevelUp_DrawNewStat(proc, stat_id);
	movs	r0, r4	@, proc
	bl	EkrLevelUp_DrawNewStat		@
@ LevelUpAnim/src/AnimOn.c:151: 	SomePlaySound_8071990(0x76, 0x100);
	movs	r1, #128	@,
	movs	r0, #118	@,
	ldr	r3, .L74+12	@ tmp155,
	lsls	r1, r1, #1	@,,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:152: 	sub_8071AB0(0x76, 0x38, 0);
	movs	r2, #0	@,
	movs	r1, #56	@,
	movs	r0, #118	@,
	ldr	r3, .L74+16	@ tmp156,
	bl	.L8		@
@ LevelUpAnim/src/AnimOn.c:155: 	u16 pos = gAnimsOnLevelUpStatDisplayPositionLookup[stat_id];
	ldr	r3, .L74+20	@ tmp157,
	ldrh	r2, [r7, r3]	@ pos, gAnimsOnLevelUpStatDisplayPositionLookup
@ LevelUpAnim/src/AnimOn.c:161: 		6 + (pos & 0x7E0)/4,
	movs	r3, #252	@ tmp160,
@ LevelUpAnim/src/AnimOn.c:160: 		0x35 + (pos & 0x1F)*8,
	movs	r1, #31	@ tmp166,
@ LevelUpAnim/src/AnimOn.c:161: 		6 + (pos & 0x7E0)/4,
	lsls	r3, r3, #3	@ tmp160, tmp160,
	ands	r3, r2	@ tmp161, pos
@ LevelUpAnim/src/AnimOn.c:160: 		0x35 + (pos & 0x1F)*8,
	ands	r2, r1	@ tmp167, tmp166
@ LevelUpAnim/src/AnimOn.c:144: 	s16 diff = gLevelUpStatsAfter[stat_id] - gLevelUpStatsBase[stat_id];
	ldr	r1, [sp, #12]	@ _11, %sfp
	subs	r6, r6, r1	@ tmp171, _8, _11
@ LevelUpAnim/src/AnimOn.c:157: 	EkrLevelUp_SomeAPs(
	lsls	r6, r6, #16	@ tmp172, tmp171,
	adds	r5, r5, #1	@ tmp173,
@ LevelUpAnim/src/AnimOn.c:161: 		6 + (pos & 0x7E0)/4,
	asrs	r3, r3, #2	@ tmp163, tmp161,
@ LevelUpAnim/src/AnimOn.c:160: 		0x35 + (pos & 0x1F)*8,
	lsls	r2, r2, #3	@ tmp169, tmp167,
@ LevelUpAnim/src/AnimOn.c:157: 	EkrLevelUp_SomeAPs(
	asrs	r6, r6, #16	@ tmp172, tmp172,
	str	r5, [sp]	@ tmp173,
	adds	r3, r3, #6	@ tmp164,
	adds	r2, r2, #53	@ tmp170,
	movs	r1, #1	@,
	movs	r0, #160	@,
	str	r6, [sp, #4]	@ tmp172,
	ldr	r5, .L74+24	@ tmp174,
	bl	.L4		@
@ LevelUpAnim/src/AnimOn.c:166: 	if( 0 != proc->stat_id )
	movs	r2, #46	@ tmp203,
	ldrsh	r3, [r4, r2]	@ tmp175, proc, tmp203
	cmp	r3, #0	@ tmp175,
	bne	.L68		@,
.L69:
@ LevelUpAnim/src/AnimOn.c:173: 	proc->cnt = 0;
	movs	r3, #0	@ tmp188,
	strh	r3, [r4, #44]	@ tmp188, proc_36(D)->cnt
	b	.L66		@
.L67:
@ LevelUpAnim/src/AnimOn.c:135: 		proc->stat_id++;
	adds	r5, r5, #1	@ tmp177,
	strh	r5, [r4, #46]	@ tmp177, proc_36(D)->stat_id
	b	.L65		@
.L68:
@ LevelUpAnim/src/AnimOn.c:168: 		short_203E1B0[1] = gLevelUpStatsBase[stat_id];
	ldr	r3, [sp, #8]	@ tmp197, %sfp
	ldrh	r2, [r3, r7]	@ _29, gLevelUpStatsBase
@ LevelUpAnim/src/AnimOn.c:168: 		short_203E1B0[1] = gLevelUpStatsBase[stat_id];
	ldr	r3, .L74+28	@ tmp183,
	strh	r2, [r3, #2]	@ _29, MEM[(u16 *)33808816B + 2B]
@ LevelUpAnim/src/AnimOn.c:169: 		short_203E1B0[3] = 0xFFFF;
	movs	r2, #1	@ tmp186,
	rsbs	r2, r2, #0	@ tmp186, tmp186
	strh	r2, [r3, #6]	@ tmp186, MEM[(u16 *)33808816B + 6B]
	b	.L69		@
.L75:
	.align	2
.L74:
	.word	gLevelUpStatsBase
	.word	gLevelUpStatsAfter
	.word	Proc_Break
	.word	SomePlaySound_8071990
	.word	sub_8071AB0
	.word	gAnimsOnLevelUpStatDisplayPositionLookup
	.word	134696281
	.word	33808816
	.size	EkrLevelUpProc_MainAnime, .-EkrLevelUpProc_MainAnime
	.align	1
	.global	LocCalc_Default
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LocCalc_Default, %function
LocCalc_Default:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ LevelUpAnim/src/AnimOn.c:379: }
	movs	r0, #0	@,
	@ sp needed	@
	bx	lr
	.size	LocCalc_Default, .-LocCalc_Default
	.align	1
	.global	Ekr_LocCalc
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Ekr_LocCalc, %function
Ekr_LocCalc:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:410: int Ekr_LocCalc(int cases, int b, int c, int d, int e){
	ldr	r4, [sp, #16]	@ e, e
@ LevelUpAnim/src/AnimOn.c:412: 	if( 0 == e )
	cmp	r4, #0	@ e,
	beq	.L78		@,
@ LevelUpAnim/src/AnimOn.c:414: 	else if ( cases > 5 )
	cmp	r0, #5	@ cases,
	bgt	.L79		@,
	str	r4, [sp]	@ e,
	bl	Ekr_LocCalc.part.0		@
	movs	r2, r0	@ c, tmp124
.L78:
@ LevelUpAnim/src/AnimOn.c:418: }
	@ sp needed	@
	movs	r0, r2	@, c
	pop	{r1, r2, r4}
	pop	{r1}
	bx	r1
.L79:
@ LevelUpAnim/src/AnimOn.c:415: 		return 0;
	movs	r2, #0	@ c,
	b	.L78		@
	.size	Ekr_LocCalc, .-Ekr_LocCalc
	.align	1
	.global	sub_8073E8C
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_8073E8C, %function
sub_8073E8C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:431: 	EkrLevelUpProc_PutWindowOnScreen(proc);
	bl	EkrLevelUpProc_PutWindowOnScreen		@
@ LevelUpAnim/src/AnimOn.c:432: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_8073E8C, .-sub_8073E8C
	.align	1
	.global	sub_80742F8
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_80742F8, %function
sub_80742F8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:435: 	EkrLevelUpProc_PutWindowOffScreen(proc);
	bl	EkrLevelUpProc_PutWindowOffScreen		@
@ LevelUpAnim/src/AnimOn.c:436: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_80742F8, .-sub_80742F8
	.align	1
	.global	sub_80741CC
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_80741CC, %function
sub_80741CC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:439: 	EkrLevelUpProc_MainAnime(proc);
	bl	EkrLevelUpProc_MainAnime		@
@ LevelUpAnim/src/AnimOn.c:440: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_80741CC, .-sub_80741CC
	.align	1
	.global	sub_807352C
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_807352C, %function
sub_807352C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:443: 	EkrLevelUp_InitStatsAndPutText(proc);
	bl	EkrLevelUp_InitStatsAndPutText		@
@ LevelUpAnim/src/AnimOn.c:444: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_807352C, .-sub_807352C
	.align	1
	.global	sub_8012DCC
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_8012DCC, %function
sub_8012DCC:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:447: 	return Ekr_LocCalc(cases,b,c,d,e);
	ldr	r4, [sp, #16]	@ tmp126, e
@ LevelUpAnim/src/AnimOn.c:448: }
	@ sp needed	@
@ LevelUpAnim/src/AnimOn.c:447: 	return Ekr_LocCalc(cases,b,c,d,e);
	str	r4, [sp]	@ tmp126,
	bl	Ekr_LocCalc		@
@ LevelUpAnim/src/AnimOn.c:448: }
	pop	{r1, r2, r4}
	pop	{r1}
	bx	r1
	.size	sub_8012DCC, .-sub_8012DCC
	.align	1
	.global	sub_80738B8
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sub_80738B8, %function
sub_80738B8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ LevelUpAnim/src/AnimOn.c:452: 	EkrLevelUp_DrawNewStat(proc, stat_id);
	bl	EkrLevelUp_DrawNewStat		@
@ LevelUpAnim/src/AnimOn.c:453: } 
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	sub_80738B8, .-sub_80738B8
	.global	LocCalcTable
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	LocCalcTable, %object
	.size	LocCalcTable, 24
LocCalcTable:
	.word	LocCalc_0
	.word	LocCalc_1
	.word	LocCalc_2
	.word	LocCalc_3
	.word	LocCalc_4
	.word	LocCalc_5
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.text
	.code 16
	.align	1
.L8:
	bx	r3
.L24:
	bx	r4
.L4:
	bx	r5
.L38:
	bx	r6
.L44:
	bx	r7
