lbl_80AE3620:
/* 80AE3620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE3624  7C 08 02 A6 */	mflr r0
/* 80AE3628  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE362C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE3630  4B 87 EB AC */	b _savegpr_29
/* 80AE3634  7C 7D 1B 78 */	mr r29, r3
/* 80AE3638  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AE363C  28 1E 00 00 */	cmplwi r30, 0
/* 80AE3640  41 82 00 30 */	beq lbl_80AE3670
/* 80AE3644  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AE3648  80 84 00 04 */	lwz r4, 4(r4)
/* 80AE364C  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AE3650  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AE3654  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AE3658  7D 89 03 A6 */	mtctr r12
/* 80AE365C  4E 80 04 21 */	bctrl 
/* 80AE3660  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AE3664  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AE3668  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AE366C  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AE3670:
/* 80AE3670  7F A3 EB 78 */	mr r3, r29
/* 80AE3674  38 80 00 00 */	li r4, 0
/* 80AE3678  38 A0 00 00 */	li r5, 0
/* 80AE367C  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AE3680  38 C0 00 00 */	li r6, 0
/* 80AE3684  3C E0 80 AE */	lis r7, lit_4380@ha
/* 80AE3688  C0 47 6C 84 */	lfs f2, lit_4380@l(r7)
/* 80AE368C  38 E0 00 00 */	li r7, 0
/* 80AE3690  39 00 00 00 */	li r8, 0
/* 80AE3694  39 20 00 00 */	li r9, 0
/* 80AE3698  4B 66 51 D4 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AE369C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE36A0  4B 87 EB 88 */	b _restgpr_29
/* 80AE36A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE36A8  7C 08 03 A6 */	mtlr r0
/* 80AE36AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE36B0  4E 80 00 20 */	blr 
