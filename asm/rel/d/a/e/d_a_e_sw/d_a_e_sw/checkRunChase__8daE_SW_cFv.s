lbl_807A8290:
/* 807A8290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A8294  7C 08 02 A6 */	mflr r0
/* 807A8298  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A829C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A82A0  A8 03 06 EE */	lha r0, 0x6ee(r3)
/* 807A82A4  2C 00 00 00 */	cmpwi r0, 0
/* 807A82A8  40 82 00 5C */	bne lbl_807A8304
/* 807A82AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A82B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A82B4  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 807A82B8  7F E3 FB 78 */	mr r3, r31
/* 807A82BC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 807A82C0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807A82C4  7D 89 03 A6 */	mtctr r12
/* 807A82C8  4E 80 04 21 */	bctrl 
/* 807A82CC  28 03 00 00 */	cmplwi r3, 0
/* 807A82D0  40 82 00 10 */	bne lbl_807A82E0
/* 807A82D4  3C 60 80 7B */	lis r3, lit_4293@ha
/* 807A82D8  C0 23 FD 8C */	lfs f1, lit_4293@l(r3)
/* 807A82DC  48 00 00 0C */	b lbl_807A82E8
lbl_807A82E0:
/* 807A82E0  3C 60 80 7B */	lis r3, lit_4294@ha
/* 807A82E4  C0 23 FD 90 */	lfs f1, lit_4294@l(r3)
lbl_807A82E8:
/* 807A82E8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 807A82EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807A82F0  40 81 00 0C */	ble lbl_807A82FC
/* 807A82F4  38 60 00 01 */	li r3, 1
/* 807A82F8  48 00 00 10 */	b lbl_807A8308
lbl_807A82FC:
/* 807A82FC  38 60 FF FF */	li r3, -1
/* 807A8300  48 00 00 08 */	b lbl_807A8308
lbl_807A8304:
/* 807A8304  38 60 00 00 */	li r3, 0
lbl_807A8308:
/* 807A8308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A830C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A8310  7C 08 03 A6 */	mtlr r0
/* 807A8314  38 21 00 10 */	addi r1, r1, 0x10
/* 807A8318  4E 80 00 20 */	blr 
