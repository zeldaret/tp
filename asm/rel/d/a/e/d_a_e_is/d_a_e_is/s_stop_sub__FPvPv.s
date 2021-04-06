lbl_806F5EB4:
/* 806F5EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F5EB8  7C 08 02 A6 */	mflr r0
/* 806F5EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F5EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F5EC4  93 C1 00 08 */	stw r30, 8(r1)
/* 806F5EC8  7C 7E 1B 78 */	mr r30, r3
/* 806F5ECC  7C 9F 23 78 */	mr r31, r4
/* 806F5ED0  4B 92 2E 11 */	bl fopAc_IsActor__FPv
/* 806F5ED4  2C 03 00 00 */	cmpwi r3, 0
/* 806F5ED8  41 82 00 48 */	beq lbl_806F5F20
/* 806F5EDC  A8 1E 00 08 */	lha r0, 8(r30)
/* 806F5EE0  2C 00 01 EE */	cmpwi r0, 0x1ee
/* 806F5EE4  40 82 00 3C */	bne lbl_806F5F20
/* 806F5EE8  7C 1F F0 40 */	cmplw r31, r30
/* 806F5EEC  41 82 00 34 */	beq lbl_806F5F20
/* 806F5EF0  A8 1E 06 92 */	lha r0, 0x692(r30)
/* 806F5EF4  2C 00 00 05 */	cmpwi r0, 5
/* 806F5EF8  40 82 00 28 */	bne lbl_806F5F20
/* 806F5EFC  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 806F5F00  2C 00 00 0A */	cmpwi r0, 0xa
/* 806F5F04  40 82 00 1C */	bne lbl_806F5F20
/* 806F5F08  38 00 00 0B */	li r0, 0xb
/* 806F5F0C  B0 1E 06 92 */	sth r0, 0x692(r30)
/* 806F5F10  38 00 00 00 */	li r0, 0
/* 806F5F14  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F5F18  7F C3 F3 78 */	mr r3, r30
/* 806F5F1C  48 00 00 08 */	b lbl_806F5F24
lbl_806F5F20:
/* 806F5F20  38 60 00 00 */	li r3, 0
lbl_806F5F24:
/* 806F5F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F5F28  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F5F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F5F30  7C 08 03 A6 */	mtlr r0
/* 806F5F34  38 21 00 10 */	addi r1, r1, 0x10
/* 806F5F38  4E 80 00 20 */	blr 
