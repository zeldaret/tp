lbl_80C9F8C4:
/* 80C9F8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F8C8  7C 08 02 A6 */	mflr r0
/* 80C9F8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F8D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9F8D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9F8D8  3B E3 05 B4 */	addi r31, r3, 0x5b4
/* 80C9F8DC  3B C0 00 00 */	li r30, 0
lbl_80C9F8E0:
/* 80C9F8E0  7F E3 FB 78 */	mr r3, r31
/* 80C9F8E4  48 00 06 71 */	bl execute__15daObjIsuChild_cFv
/* 80C9F8E8  3B DE 00 01 */	addi r30, r30, 1
/* 80C9F8EC  2C 1E 00 3C */	cmpwi r30, 0x3c
/* 80C9F8F0  3B FF 02 F4 */	addi r31, r31, 0x2f4
/* 80C9F8F4  41 80 FF EC */	blt lbl_80C9F8E0
/* 80C9F8F8  38 60 00 01 */	li r3, 1
/* 80C9F8FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9F900  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9F904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F908  7C 08 03 A6 */	mtlr r0
/* 80C9F90C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F910  4E 80 00 20 */	blr 
