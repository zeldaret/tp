lbl_8020CABC:
/* 8020CABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020CAC0  7C 08 02 A6 */	mflr r0
/* 8020CAC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020CAC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8020CACC  48 15 57 09 */	bl _savegpr_27
/* 8020CAD0  7C 7F 1B 78 */	mr r31, r3
/* 8020CAD4  3B 60 00 00 */	li r27, 0
/* 8020CAD8  3B C0 00 00 */	li r30, 0
/* 8020CADC  7F DD F3 78 */	mr r29, r30
lbl_8020CAE0:
/* 8020CAE0  3B 9E 00 14 */	addi r28, r30, 0x14
/* 8020CAE4  7C 7F E0 2E */	lwzx r3, r31, r28
/* 8020CAE8  28 03 00 00 */	cmplwi r3, 0
/* 8020CAEC  41 82 00 18 */	beq lbl_8020CB04
/* 8020CAF0  38 80 00 01 */	li r4, 1
/* 8020CAF4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CAF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020CAFC  7D 89 03 A6 */	mtctr r12
/* 8020CB00  4E 80 04 21 */	bctrl 
lbl_8020CB04:
/* 8020CB04  7F BF E1 2E */	stwx r29, r31, r28
/* 8020CB08  3B 7B 00 01 */	addi r27, r27, 1
/* 8020CB0C  2C 1B 00 06 */	cmpwi r27, 6
/* 8020CB10  3B DE 00 04 */	addi r30, r30, 4
/* 8020CB14  41 80 FF CC */	blt lbl_8020CAE0
/* 8020CB18  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020CB1C  C0 22 AE 00 */	lfs f1, lit_3793(r2)
/* 8020CB20  FC 40 08 90 */	fmr f2, f1
/* 8020CB24  48 04 7A 8D */	bl paneTrans__8CPaneMgrFff
/* 8020CB28  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020CB2C  80 63 00 04 */	lwz r3, 4(r3)
/* 8020CB30  C0 02 AE 08 */	lfs f0, lit_3936(r2)
/* 8020CB34  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020CB38  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020CB3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CB40  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020CB44  7D 89 03 A6 */	mtctr r12
/* 8020CB48  4E 80 04 21 */	bctrl 
/* 8020CB4C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020CB50  28 03 00 00 */	cmplwi r3, 0
/* 8020CB54  41 82 00 18 */	beq lbl_8020CB6C
/* 8020CB58  38 80 00 01 */	li r4, 1
/* 8020CB5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CB60  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020CB64  7D 89 03 A6 */	mtctr r12
/* 8020CB68  4E 80 04 21 */	bctrl 
lbl_8020CB6C:
/* 8020CB6C  38 00 00 00 */	li r0, 0
/* 8020CB70  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8020CB74  80 7F 00 08 */	lwz r3, 8(r31)
/* 8020CB78  28 03 00 00 */	cmplwi r3, 0
/* 8020CB7C  41 82 00 18 */	beq lbl_8020CB94
/* 8020CB80  38 80 00 01 */	li r4, 1
/* 8020CB84  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CB88  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020CB8C  7D 89 03 A6 */	mtctr r12
/* 8020CB90  4E 80 04 21 */	bctrl 
lbl_8020CB94:
/* 8020CB94  38 00 00 00 */	li r0, 0
/* 8020CB98  90 1F 00 08 */	stw r0, 8(r31)
/* 8020CB9C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8020CBA0  28 03 00 00 */	cmplwi r3, 0
/* 8020CBA4  41 82 00 18 */	beq lbl_8020CBBC
/* 8020CBA8  38 80 00 01 */	li r4, 1
/* 8020CBAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CBB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020CBB4  7D 89 03 A6 */	mtctr r12
/* 8020CBB8  4E 80 04 21 */	bctrl 
lbl_8020CBBC:
/* 8020CBBC  38 00 00 00 */	li r0, 0
/* 8020CBC0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8020CBC4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020CBC8  28 03 00 00 */	cmplwi r3, 0
/* 8020CBCC  41 82 00 18 */	beq lbl_8020CBE4
/* 8020CBD0  38 80 00 01 */	li r4, 1
/* 8020CBD4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CBD8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020CBDC  7D 89 03 A6 */	mtctr r12
/* 8020CBE0  4E 80 04 21 */	bctrl 
lbl_8020CBE4:
/* 8020CBE4  38 00 00 00 */	li r0, 0
/* 8020CBE8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8020CBEC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8020CBF0  28 03 00 00 */	cmplwi r3, 0
/* 8020CBF4  41 82 00 18 */	beq lbl_8020CC0C
/* 8020CBF8  38 80 00 01 */	li r4, 1
/* 8020CBFC  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CC00  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020CC04  7D 89 03 A6 */	mtctr r12
/* 8020CC08  4E 80 04 21 */	bctrl 
lbl_8020CC0C:
/* 8020CC0C  38 00 00 00 */	li r0, 0
/* 8020CC10  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8020CC14  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8020CC18  28 03 00 00 */	cmplwi r3, 0
/* 8020CC1C  41 82 00 18 */	beq lbl_8020CC34
/* 8020CC20  38 80 00 01 */	li r4, 1
/* 8020CC24  81 83 00 00 */	lwz r12, 0(r3)
/* 8020CC28  81 8C 00 08 */	lwz r12, 8(r12)
/* 8020CC2C  7D 89 03 A6 */	mtctr r12
/* 8020CC30  4E 80 04 21 */	bctrl 
lbl_8020CC34:
/* 8020CC34  38 00 00 00 */	li r0, 0
/* 8020CC38  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8020CC3C  38 60 00 01 */	li r3, 1
/* 8020CC40  39 61 00 20 */	addi r11, r1, 0x20
/* 8020CC44  48 15 55 DD */	bl _restgpr_27
/* 8020CC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020CC4C  7C 08 03 A6 */	mtlr r0
/* 8020CC50  38 21 00 20 */	addi r1, r1, 0x20
/* 8020CC54  4E 80 00 20 */	blr 
