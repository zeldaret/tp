lbl_802EFCEC:
/* 802EFCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EFCF0  7C 08 02 A6 */	mflr r0
/* 802EFCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EFCF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EFCFC  93 C1 00 08 */	stw r30, 8(r1)
/* 802EFD00  7C 7E 1B 78 */	mr r30, r3
/* 802EFD04  7C 9F 23 79 */	or. r31, r4, r4
/* 802EFD08  40 82 00 0C */	bne lbl_802EFD14
/* 802EFD0C  38 60 00 00 */	li r3, 0
/* 802EFD10  48 00 00 40 */	b lbl_802EFD50
lbl_802EFD14:
/* 802EFD14  88 1E 01 21 */	lbz r0, 0x121(r30)
/* 802EFD18  28 00 00 00 */	cmplwi r0, 0
/* 802EFD1C  41 82 00 24 */	beq lbl_802EFD40
/* 802EFD20  80 7E 01 1C */	lwz r3, 0x11c(r30)
/* 802EFD24  28 03 00 00 */	cmplwi r3, 0
/* 802EFD28  41 82 00 18 */	beq lbl_802EFD40
/* 802EFD2C  38 80 00 01 */	li r4, 1
/* 802EFD30  81 83 00 00 */	lwz r12, 0(r3)
/* 802EFD34  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EFD38  7D 89 03 A6 */	mtctr r12
/* 802EFD3C  4E 80 04 21 */	bctrl 
lbl_802EFD40:
/* 802EFD40  93 FE 01 1C */	stw r31, 0x11c(r30)
/* 802EFD44  38 00 00 00 */	li r0, 0
/* 802EFD48  98 1E 01 21 */	stb r0, 0x121(r30)
/* 802EFD4C  38 60 00 01 */	li r3, 1
lbl_802EFD50:
/* 802EFD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EFD54  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EFD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EFD5C  7C 08 03 A6 */	mtlr r0
/* 802EFD60  38 21 00 10 */	addi r1, r1, 0x10
/* 802EFD64  4E 80 00 20 */	blr 
