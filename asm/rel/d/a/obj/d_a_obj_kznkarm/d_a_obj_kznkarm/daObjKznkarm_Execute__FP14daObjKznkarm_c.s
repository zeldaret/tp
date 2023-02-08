lbl_80C50984:
/* 80C50984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C50988  7C 08 02 A6 */	mflr r0
/* 80C5098C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50990  4B FF EF 25 */	bl callExecute__14daObjKznkarm_cFv
/* 80C50994  38 60 00 01 */	li r3, 1
/* 80C50998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5099C  7C 08 03 A6 */	mtlr r0
/* 80C509A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C509A4  4E 80 00 20 */	blr 
