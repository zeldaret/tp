lbl_80A4BADC:
/* 80A4BADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A4BAE0  7C 08 02 A6 */	mflr r0
/* 80A4BAE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4BAE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4BAEC  7C 7F 1B 78 */	mr r31, r3
/* 80A4BAF0  4B 5C D1 F0 */	b fopAc_IsActor__FPv
/* 80A4BAF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A4BAF8  41 82 00 24 */	beq lbl_80A4BB1C
/* 80A4BAFC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A4BB00  2C 00 00 60 */	cmpwi r0, 0x60
/* 80A4BB04  40 82 00 18 */	bne lbl_80A4BB1C
/* 80A4BB08  A8 1F 05 E8 */	lha r0, 0x5e8(r31)
/* 80A4BB0C  2C 00 00 04 */	cmpwi r0, 4
/* 80A4BB10  40 82 00 0C */	bne lbl_80A4BB1C
/* 80A4BB14  7F E3 FB 78 */	mr r3, r31
/* 80A4BB18  48 00 00 08 */	b lbl_80A4BB20
lbl_80A4BB1C:
/* 80A4BB1C  38 60 00 00 */	li r3, 0
lbl_80A4BB20:
/* 80A4BB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4BB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4BB28  7C 08 03 A6 */	mtlr r0
/* 80A4BB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4BB30  4E 80 00 20 */	blr 
