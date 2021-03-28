lbl_80A01EBC:
/* 80A01EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01EC0  7C 08 02 A6 */	mflr r0
/* 80A01EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A01ECC  7C 7F 1B 78 */	mr r31, r3
/* 80A01ED0  4B 61 6E 10 */	b fopAc_IsActor__FPv
/* 80A01ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80A01ED8  41 82 00 18 */	beq lbl_80A01EF0
/* 80A01EDC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A01EE0  2C 00 03 06 */	cmpwi r0, 0x306
/* 80A01EE4  40 82 00 0C */	bne lbl_80A01EF0
/* 80A01EE8  7F E3 FB 78 */	mr r3, r31
/* 80A01EEC  48 00 00 08 */	b lbl_80A01EF4
lbl_80A01EF0:
/* 80A01EF0  38 60 00 00 */	li r3, 0
lbl_80A01EF4:
/* 80A01EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A01EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01EFC  7C 08 03 A6 */	mtlr r0
/* 80A01F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01F04  4E 80 00 20 */	blr 
