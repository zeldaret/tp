lbl_80C0CF98:
/* 80C0CF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0CF9C  7C 08 02 A6 */	mflr r0
/* 80C0CFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0CFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C0CFA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C0CFAC  7C 7E 1B 78 */	mr r30, r3
/* 80C0CFB0  88 04 0A 7E */	lbz r0, 0xa7e(r4)
/* 80C0CFB4  28 00 00 00 */	cmplwi r0, 0
/* 80C0CFB8  41 82 00 0C */	beq lbl_80C0CFC4
/* 80C0CFBC  38 60 00 00 */	li r3, 0
/* 80C0CFC0  48 00 00 28 */	b lbl_80C0CFE8
lbl_80C0CFC4:
/* 80C0CFC4  7C 83 23 78 */	mr r3, r4
/* 80C0CFC8  4B FF 3E 3D */	bl getTagNo__11daObj_GrA_cFv
/* 80C0CFCC  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80C0CFD0  7F C3 F3 78 */	mr r3, r30
/* 80C0CFD4  4B FF 3E 31 */	bl getTagNo__11daObj_GrA_cFv
/* 80C0CFD8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80C0CFDC  7C 00 F8 50 */	subf r0, r0, r31
/* 80C0CFE0  7C 00 00 34 */	cntlzw r0, r0
/* 80C0CFE4  54 03 D9 7E */	srwi r3, r0, 5
lbl_80C0CFE8:
/* 80C0CFE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0CFEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C0CFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0CFF4  7C 08 03 A6 */	mtlr r0
/* 80C0CFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0CFFC  4E 80 00 20 */	blr 
