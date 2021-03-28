lbl_8061EE14:
/* 8061EE14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061EE18  7C 08 02 A6 */	mflr r0
/* 8061EE1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061EE20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061EE24  7C 7F 1B 78 */	mr r31, r3
/* 8061EE28  38 80 00 00 */	li r4, 0
/* 8061EE2C  88 03 0A 94 */	lbz r0, 0xa94(r3)
/* 8061EE30  28 00 00 00 */	cmplwi r0, 0
/* 8061EE34  41 82 00 70 */	beq lbl_8061EEA4
/* 8061EE38  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8061EE3C  80 63 00 04 */	lwz r3, 4(r3)
/* 8061EE40  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8061EE44  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8061EE48  38 63 00 30 */	addi r3, r3, 0x30
/* 8061EE4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8061EE50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8061EE54  4B D2 76 5C */	b PSMTXCopy
/* 8061EE58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061EE5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061EE60  38 81 00 08 */	addi r4, r1, 8
/* 8061EE64  4B 9E DD 9C */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8061EE68  7F E3 FB 78 */	mr r3, r31
/* 8061EE6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8061EE70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8061EE74  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8061EE78  4B 9F B8 98 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8061EE7C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8061EE80  7C 00 18 50 */	subf r0, r0, r3
/* 8061EE84  7C 04 07 34 */	extsh r4, r0
/* 8061EE88  2C 04 30 00 */	cmpwi r4, 0x3000
/* 8061EE8C  40 81 00 08 */	ble lbl_8061EE94
/* 8061EE90  38 80 30 00 */	li r4, 0x3000
lbl_8061EE94:
/* 8061EE94  7C 80 07 34 */	extsh r0, r4
/* 8061EE98  2C 00 D0 00 */	cmpwi r0, -12288
/* 8061EE9C  40 80 00 08 */	bge lbl_8061EEA4
/* 8061EEA0  38 80 D0 00 */	li r4, -12288
lbl_8061EEA4:
/* 8061EEA4  38 7F 0A 98 */	addi r3, r31, 0xa98
/* 8061EEA8  38 A0 00 04 */	li r5, 4
/* 8061EEAC  38 C0 10 00 */	li r6, 0x1000
/* 8061EEB0  4B C5 17 58 */	b cLib_addCalcAngleS2__FPssss
/* 8061EEB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061EEB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061EEBC  7C 08 03 A6 */	mtlr r0
/* 8061EEC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8061EEC4  4E 80 00 20 */	blr 
