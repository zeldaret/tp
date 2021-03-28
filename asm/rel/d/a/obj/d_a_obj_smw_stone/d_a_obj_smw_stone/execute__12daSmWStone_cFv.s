lbl_80CDE8D8:
/* 80CDE8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE8DC  7C 08 02 A6 */	mflr r0
/* 80CDE8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE8E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDE8E8  7C 7F 1B 78 */	mr r31, r3
/* 80CDE8EC  88 03 05 C4 */	lbz r0, 0x5c4(r3)
/* 80CDE8F0  2C 00 00 01 */	cmpwi r0, 1
/* 80CDE8F4  41 82 00 18 */	beq lbl_80CDE90C
/* 80CDE8F8  40 80 00 14 */	bge lbl_80CDE90C
/* 80CDE8FC  2C 00 00 00 */	cmpwi r0, 0
/* 80CDE900  40 80 00 08 */	bge lbl_80CDE908
/* 80CDE904  48 00 00 08 */	b lbl_80CDE90C
lbl_80CDE908:
/* 80CDE908  48 00 01 9D */	bl exeModeHowl__12daSmWStone_cFv
lbl_80CDE90C:
/* 80CDE90C  7F E3 FB 78 */	mr r3, r31
/* 80CDE910  48 00 02 91 */	bl setModelMtx__12daSmWStone_cFv
/* 80CDE914  38 60 00 01 */	li r3, 1
/* 80CDE918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDE91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE920  7C 08 03 A6 */	mtlr r0
/* 80CDE924  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE928  4E 80 00 20 */	blr 
