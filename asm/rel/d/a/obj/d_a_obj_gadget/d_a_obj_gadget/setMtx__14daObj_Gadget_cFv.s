lbl_80BF424C:
/* 80BF424C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF4250  7C 08 02 A6 */	mflr r0
/* 80BF4254  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF4258  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF425C  4B 76 DF 81 */	bl _savegpr_29
/* 80BF4260  7C 7F 1B 78 */	mr r31, r3
/* 80BF4264  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80BF4268  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80BF426C  7C 03 00 50 */	subf r0, r3, r0
/* 80BF4270  7C 06 07 34 */	extsh r6, r0
/* 80BF4274  A8 1F 0A 14 */	lha r0, 0xa14(r31)
/* 80BF4278  3C 60 80 BF */	lis r3, lit_4370@ha /* 0x80BF4A04@ha */
/* 80BF427C  C8 43 4A 04 */	lfd f2, lit_4370@l(r3)  /* 0x80BF4A04@l */
/* 80BF4280  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80BF4284  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80BF4288  3C 00 43 30 */	lis r0, 0x4330
/* 80BF428C  90 01 00 08 */	stw r0, 8(r1)
/* 80BF4290  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BF4294  EC 20 10 28 */	fsubs f1, f0, f2
/* 80BF4298  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BF429C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BF42A0  54 C6 04 38 */	rlwinm r6, r6, 0, 0x10, 0x1c
/* 80BF42A4  7C 64 32 14 */	add r3, r4, r6
/* 80BF42A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BF42AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF42B0  FC 00 00 1E */	fctiwz f0, f0
/* 80BF42B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BF42B8  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 80BF42BC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80BF42C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BF42C4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BF42C8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80BF42CC  7C 04 34 2E */	lfsx f0, r4, r6
/* 80BF42D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF42D4  FC 00 00 1E */	fctiwz f0, f0
/* 80BF42D8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BF42DC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80BF42E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF42E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF42E8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BF42EC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BF42F0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BF42F4  4B 75 25 F5 */	bl PSMTXTrans
/* 80BF42F8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BF42FC  4B 41 8C 49 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BF4300  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF4304  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF4308  7F C4 F3 78 */	mr r4, r30
/* 80BF430C  4B 41 80 91 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BF4310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF4314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF4318  7F A4 EB 78 */	mr r4, r29
/* 80BF431C  4B 41 81 B1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80BF4320  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80BF4324  4B 41 8B 4D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BF4328  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF432C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF4330  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BF4334  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF4338  4B 75 21 79 */	bl PSMTXCopy
/* 80BF433C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF4340  4B 76 DE E9 */	bl _restgpr_29
/* 80BF4344  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF4348  7C 08 03 A6 */	mtlr r0
/* 80BF434C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF4350  4E 80 00 20 */	blr 
