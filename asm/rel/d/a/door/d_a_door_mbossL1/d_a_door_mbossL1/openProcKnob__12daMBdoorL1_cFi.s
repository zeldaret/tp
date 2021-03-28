lbl_80675678:
/* 80675678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067567C  7C 08 02 A6 */	mflr r0
/* 80675680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80675684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80675688  93 C1 00 08 */	stw r30, 8(r1)
/* 8067568C  7C 7E 1B 78 */	mr r30, r3
/* 80675690  7C 9F 23 78 */	mr r31, r4
/* 80675694  80 63 05 90 */	lwz r3, 0x590(r3)
/* 80675698  4B 99 7D 90 */	b play__14mDoExt_baseAnmFv
/* 8067569C  2C 03 00 00 */	cmpwi r3, 0
/* 806756A0  41 82 00 0C */	beq lbl_806756AC
/* 806756A4  38 60 00 01 */	li r3, 1
/* 806756A8  48 00 00 74 */	b lbl_8067571C
lbl_806756AC:
/* 806756AC  2C 1F 00 0E */	cmpwi r31, 0xe
/* 806756B0  41 82 00 0C */	beq lbl_806756BC
/* 806756B4  2C 1F 00 0F */	cmpwi r31, 0xf
/* 806756B8  40 82 00 60 */	bne lbl_80675718
lbl_806756BC:
/* 806756BC  80 7E 05 90 */	lwz r3, 0x590(r30)
/* 806756C0  3C 80 80 67 */	lis r4, lit_5017@ha
/* 806756C4  C0 24 76 0C */	lfs f1, lit_5017@l(r4)
/* 806756C8  4B CB 2D 64 */	b checkPass__12J3DFrameCtrlFf
/* 806756CC  2C 03 00 00 */	cmpwi r3, 0
/* 806756D0  41 82 00 48 */	beq lbl_80675718
/* 806756D4  7F C3 F3 78 */	mr r3, r30
/* 806756D8  4B 9C 4B 4C */	b getExitNo__13door_param2_cFP10fopAc_ac_c
/* 806756DC  7C 64 1B 78 */	mr r4, r3
/* 806756E0  2C 1F 00 0E */	cmpwi r31, 0xe
/* 806756E4  40 82 00 10 */	bne lbl_806756F4
/* 806756E8  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 806756EC  38 03 00 01 */	addi r0, r3, 1
/* 806756F0  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_806756F4:
/* 806756F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806756F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806756FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80675700  38 A0 00 FF */	li r5, 0xff
/* 80675704  38 C0 00 00 */	li r6, 0
/* 80675708  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8067570C  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 80675710  7D 89 03 A6 */	mtctr r12
/* 80675714  4E 80 04 21 */	bctrl 
lbl_80675718:
/* 80675718  38 60 00 00 */	li r3, 0
lbl_8067571C:
/* 8067571C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80675720  83 C1 00 08 */	lwz r30, 8(r1)
/* 80675724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80675728  7C 08 03 A6 */	mtlr r0
/* 8067572C  38 21 00 10 */	addi r1, r1, 0x10
/* 80675730  4E 80 00 20 */	blr 
