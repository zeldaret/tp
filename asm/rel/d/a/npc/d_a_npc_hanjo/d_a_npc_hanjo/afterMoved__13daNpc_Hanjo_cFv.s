lbl_809FAABC:
/* 809FAABC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809FAAC0  7C 08 02 A6 */	mflr r0
/* 809FAAC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809FAAC8  39 61 00 40 */	addi r11, r1, 0x40
/* 809FAACC  4B 96 77 09 */	bl _savegpr_27
/* 809FAAD0  7C 7D 1B 78 */	mr r29, r3
/* 809FAAD4  3B C0 00 00 */	li r30, 0
/* 809FAAD8  3B 80 00 00 */	li r28, 0
/* 809FAADC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809FAAE0  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_809FAAE4:
/* 809FAAE4  7F FD E2 14 */	add r31, r29, r28
/* 809FAAE8  80 1F 11 10 */	lwz r0, 0x1110(r31)
/* 809FAAEC  28 00 00 00 */	cmplwi r0, 0
/* 809FAAF0  41 82 00 18 */	beq lbl_809FAB08
/* 809FAAF4  80 7F 12 80 */	lwz r3, 0x1280(r31)
/* 809FAAF8  30 03 FF FF */	addic r0, r3, -1
/* 809FAAFC  7C 00 19 10 */	subfe r0, r0, r3
/* 809FAB00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809FAB04  48 00 00 08 */	b lbl_809FAB0C
lbl_809FAB08:
/* 809FAB08  38 00 00 00 */	li r0, 0
lbl_809FAB0C:
/* 809FAB0C  2C 00 00 00 */	cmpwi r0, 0
/* 809FAB10  41 82 00 80 */	beq lbl_809FAB90
/* 809FAB14  C0 1F 12 78 */	lfs f0, 0x1278(r31)
/* 809FAB18  FC 00 02 10 */	fabs f0, f0
/* 809FAB1C  FC 20 00 18 */	frsp f1, f0
/* 809FAB20  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 809FAB24  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 809FAB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FAB2C  40 80 00 58 */	bge lbl_809FAB84
/* 809FAB30  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809FAB34  80 63 00 04 */	lwz r3, 4(r3)
/* 809FAB38  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809FAB3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809FAB40  38 63 03 60 */	addi r3, r3, 0x360
/* 809FAB44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809FAB48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809FAB4C  4B 94 B9 65 */	bl PSMTXCopy
/* 809FAB50  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 809FAB54  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 809FAB58  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 809FAB5C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 809FAB60  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 809FAB64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FAB68  D0 41 00 08 */	stfs f2, 8(r1)
/* 809FAB6C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809FAB70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FAB74  38 7F 11 10 */	addi r3, r31, 0x1110
/* 809FAB78  38 81 00 08 */	addi r4, r1, 8
/* 809FAB7C  48 00 59 2D */	bl setPos__18daNpc_HanjoStone_cF4cXyz
/* 809FAB80  48 00 00 10 */	b lbl_809FAB90
lbl_809FAB84:
/* 809FAB84  38 7F 11 10 */	addi r3, r31, 0x1110
/* 809FAB88  7F A4 EB 78 */	mr r4, r29
/* 809FAB8C  48 00 57 E9 */	bl posMoveF__18daNpc_HanjoStone_cFP10fopAc_ac_c
lbl_809FAB90:
/* 809FAB90  3B DE 00 01 */	addi r30, r30, 1
/* 809FAB94  2C 1E 00 04 */	cmpwi r30, 4
/* 809FAB98  3B 9C 01 74 */	addi r28, r28, 0x174
/* 809FAB9C  41 80 FF 48 */	blt lbl_809FAAE4
/* 809FABA0  39 61 00 40 */	addi r11, r1, 0x40
/* 809FABA4  4B 96 76 7D */	bl _restgpr_27
/* 809FABA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809FABAC  7C 08 03 A6 */	mtlr r0
/* 809FABB0  38 21 00 40 */	addi r1, r1, 0x40
/* 809FABB4  4E 80 00 20 */	blr 
