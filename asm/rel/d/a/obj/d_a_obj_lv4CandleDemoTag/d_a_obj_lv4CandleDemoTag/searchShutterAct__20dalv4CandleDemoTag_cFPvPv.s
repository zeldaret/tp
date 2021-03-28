lbl_80C5CF9C:
/* 80C5CF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CFA0  7C 08 02 A6 */	mflr r0
/* 80C5CFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5CFAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5CFB0  41 82 00 24 */	beq lbl_80C5CFD4
/* 80C5CFB4  4B 3B BD 2C */	b fopAc_IsActor__FPv
/* 80C5CFB8  2C 03 00 00 */	cmpwi r3, 0
/* 80C5CFBC  41 82 00 18 */	beq lbl_80C5CFD4
/* 80C5CFC0  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80C5CFC4  2C 00 00 9B */	cmpwi r0, 0x9b
/* 80C5CFC8  40 82 00 0C */	bne lbl_80C5CFD4
/* 80C5CFCC  7F E3 FB 78 */	mr r3, r31
/* 80C5CFD0  48 00 00 08 */	b lbl_80C5CFD8
lbl_80C5CFD4:
/* 80C5CFD4  38 60 00 00 */	li r3, 0
lbl_80C5CFD8:
/* 80C5CFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5CFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CFE0  7C 08 03 A6 */	mtlr r0
/* 80C5CFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CFE8  4E 80 00 20 */	blr 
