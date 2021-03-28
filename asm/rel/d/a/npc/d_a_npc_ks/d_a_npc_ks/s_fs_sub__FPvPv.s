lbl_80A4FFD4:
/* 80A4FFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A4FFD8  7C 08 02 A6 */	mflr r0
/* 80A4FFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4FFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4FFE4  7C 7F 1B 78 */	mr r31, r3
/* 80A4FFE8  4B 5C 8C F8 */	b fopAc_IsActor__FPv
/* 80A4FFEC  2C 03 00 00 */	cmpwi r3, 0
/* 80A4FFF0  41 82 00 20 */	beq lbl_80A50010
/* 80A4FFF4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A4FFF8  2C 00 01 D8 */	cmpwi r0, 0x1d8
/* 80A4FFFC  40 82 00 14 */	bne lbl_80A50010
/* 80A50000  38 00 00 0A */	li r0, 0xa
/* 80A50004  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 80A50008  38 00 00 00 */	li r0, 0
/* 80A5000C  B0 1F 06 80 */	sth r0, 0x680(r31)
lbl_80A50010:
/* 80A50010  38 60 00 00 */	li r3, 0
/* 80A50014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A50018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5001C  7C 08 03 A6 */	mtlr r0
/* 80A50020  38 21 00 10 */	addi r1, r1, 0x10
/* 80A50024  4E 80 00 20 */	blr 
