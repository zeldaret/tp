lbl_8076EB4C:
/* 8076EB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076EB50  7C 08 02 A6 */	mflr r0
/* 8076EB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076EB58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076EB5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8076EB60  7C 7E 1B 78 */	mr r30, r3
/* 8076EB64  7C 9F 23 78 */	mr r31, r4
/* 8076EB68  4B 8A A1 79 */	bl fopAc_IsActor__FPv
/* 8076EB6C  2C 03 00 00 */	cmpwi r3, 0
/* 8076EB70  41 82 00 2C */	beq lbl_8076EB9C
/* 8076EB74  A8 1E 00 08 */	lha r0, 8(r30)
/* 8076EB78  2C 00 01 D6 */	cmpwi r0, 0x1d6
/* 8076EB7C  40 82 00 20 */	bne lbl_8076EB9C
/* 8076EB80  7C 1E F8 40 */	cmplw r30, r31
/* 8076EB84  41 82 00 18 */	beq lbl_8076EB9C
/* 8076EB88  A8 1E 0A 42 */	lha r0, 0xa42(r30)
/* 8076EB8C  2C 00 00 19 */	cmpwi r0, 0x19
/* 8076EB90  40 82 00 0C */	bne lbl_8076EB9C
/* 8076EB94  7F C3 F3 78 */	mr r3, r30
/* 8076EB98  48 00 00 08 */	b lbl_8076EBA0
lbl_8076EB9C:
/* 8076EB9C  38 60 00 00 */	li r3, 0
lbl_8076EBA0:
/* 8076EBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076EBA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8076EBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076EBAC  7C 08 03 A6 */	mtlr r0
/* 8076EBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8076EBB4  4E 80 00 20 */	blr 
