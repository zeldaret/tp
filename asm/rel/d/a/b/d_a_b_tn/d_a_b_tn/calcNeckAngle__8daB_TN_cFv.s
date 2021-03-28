lbl_8061ED5C:
/* 8061ED5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061ED60  7C 08 02 A6 */	mflr r0
/* 8061ED64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061ED68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061ED6C  7C 7F 1B 78 */	mr r31, r3
/* 8061ED70  38 80 00 00 */	li r4, 0
/* 8061ED74  88 03 0A 93 */	lbz r0, 0xa93(r3)
/* 8061ED78  28 00 00 00 */	cmplwi r0, 0
/* 8061ED7C  41 82 00 74 */	beq lbl_8061EDF0
/* 8061ED80  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8061ED84  80 63 00 04 */	lwz r3, 4(r3)
/* 8061ED88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8061ED8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8061ED90  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8061ED94  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8061ED98  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8061ED9C  4B D2 77 14 */	b PSMTXCopy
/* 8061EDA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061EDA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061EDA8  38 81 00 08 */	addi r4, r1, 8
/* 8061EDAC  4B 9E DE 54 */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8061EDB0  7F E3 FB 78 */	mr r3, r31
/* 8061EDB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8061EDB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8061EDBC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8061EDC0  4B 9F B9 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8061EDC4  A8 81 00 0A */	lha r4, 0xa(r1)
/* 8061EDC8  38 04 40 00 */	addi r0, r4, 0x4000
/* 8061EDCC  7C 00 18 50 */	subf r0, r0, r3
/* 8061EDD0  7C 04 07 34 */	extsh r4, r0
/* 8061EDD4  2C 04 30 00 */	cmpwi r4, 0x3000
/* 8061EDD8  40 81 00 08 */	ble lbl_8061EDE0
/* 8061EDDC  38 80 30 00 */	li r4, 0x3000
lbl_8061EDE0:
/* 8061EDE0  7C 80 07 34 */	extsh r0, r4
/* 8061EDE4  2C 00 D0 00 */	cmpwi r0, -12288
/* 8061EDE8  40 80 00 08 */	bge lbl_8061EDF0
/* 8061EDEC  38 80 D0 00 */	li r4, -12288
lbl_8061EDF0:
/* 8061EDF0  38 7F 0A 96 */	addi r3, r31, 0xa96
/* 8061EDF4  38 A0 00 04 */	li r5, 4
/* 8061EDF8  38 C0 10 00 */	li r6, 0x1000
/* 8061EDFC  4B C5 18 0C */	b cLib_addCalcAngleS2__FPssss
/* 8061EE00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061EE04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061EE08  7C 08 03 A6 */	mtlr r0
/* 8061EE0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8061EE10  4E 80 00 20 */	blr 
