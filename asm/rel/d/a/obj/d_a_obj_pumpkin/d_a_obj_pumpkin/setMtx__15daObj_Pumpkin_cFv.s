lbl_80CB79DC:
/* 80CB79DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CB79E0  7C 08 02 A6 */	mflr r0
/* 80CB79E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CB79E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB79EC  4B 6A A7 F1 */	bl _savegpr_29
/* 80CB79F0  7C 7F 1B 78 */	mr r31, r3
/* 80CB79F4  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80CB79F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80CB79FC  7C 03 00 50 */	subf r0, r3, r0
/* 80CB7A00  7C 06 07 34 */	extsh r6, r0
/* 80CB7A04  A8 1F 0B 7C */	lha r0, 0xb7c(r31)
/* 80CB7A08  3C 60 80 CC */	lis r3, lit_4888@ha /* 0x80CB8448@ha */
/* 80CB7A0C  C8 43 84 48 */	lfd f2, lit_4888@l(r3)  /* 0x80CB8448@l */
/* 80CB7A10  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80CB7A14  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80CB7A18  3C 00 43 30 */	lis r0, 0x4330
/* 80CB7A1C  90 01 00 08 */	stw r0, 8(r1)
/* 80CB7A20  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CB7A24  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CB7A28  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CB7A2C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CB7A30  54 C6 04 38 */	rlwinm r6, r6, 0, 0x10, 0x1c
/* 80CB7A34  7C 64 32 14 */	add r3, r4, r6
/* 80CB7A38  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CB7A3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB7A40  FC 00 00 1E */	fctiwz f0, f0
/* 80CB7A44  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CB7A48  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 80CB7A4C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80CB7A50  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CB7A54  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80CB7A58  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CB7A5C  7C 04 34 2E */	lfsx f0, r4, r6
/* 80CB7A60  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB7A64  FC 00 00 1E */	fctiwz f0, f0
/* 80CB7A68  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80CB7A6C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80CB7A70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB7A74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB7A78  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB7A7C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB7A80  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB7A84  4B 68 EE 65 */	bl PSMTXTrans
/* 80CB7A88  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CB7A8C  4B 35 54 B9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CB7A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB7A94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB7A98  7F C4 F3 78 */	mr r4, r30
/* 80CB7A9C  4B 35 49 01 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CB7AA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB7AA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB7AA8  7F A4 EB 78 */	mr r4, r29
/* 80CB7AAC  4B 35 4A 21 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CB7AB0  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CB7AB4  4B 35 53 BD */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CB7AB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB7ABC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB7AC0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CB7AC4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB7AC8  4B 68 E9 E9 */	bl PSMTXCopy
/* 80CB7ACC  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB7AD0  4B 6A A7 59 */	bl _restgpr_29
/* 80CB7AD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB7AD8  7C 08 03 A6 */	mtlr r0
/* 80CB7ADC  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB7AE0  4E 80 00 20 */	blr 
