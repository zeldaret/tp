lbl_80A4CA70:
/* 80A4CA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A4CA74  7C 08 02 A6 */	mflr r0
/* 80A4CA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4CA7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4CA80  7C 7F 1B 78 */	mr r31, r3
/* 80A4CA84  4B 5C C2 5D */	bl fopAc_IsActor__FPv
/* 80A4CA88  2C 03 00 00 */	cmpwi r3, 0
/* 80A4CA8C  41 82 00 18 */	beq lbl_80A4CAA4
/* 80A4CA90  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A4CA94  2C 00 01 FE */	cmpwi r0, 0x1fe
/* 80A4CA98  40 82 00 0C */	bne lbl_80A4CAA4
/* 80A4CA9C  7F E3 FB 78 */	mr r3, r31
/* 80A4CAA0  48 00 00 08 */	b lbl_80A4CAA8
lbl_80A4CAA4:
/* 80A4CAA4  38 60 00 00 */	li r3, 0
lbl_80A4CAA8:
/* 80A4CAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4CAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4CAB0  7C 08 03 A6 */	mtlr r0
/* 80A4CAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4CAB8  4E 80 00 20 */	blr 
