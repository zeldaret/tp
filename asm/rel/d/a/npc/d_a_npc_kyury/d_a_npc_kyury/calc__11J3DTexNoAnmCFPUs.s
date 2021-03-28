lbl_80A625F8:
/* 80A625F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A625FC  7C 08 02 A6 */	mflr r0
/* 80A62600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62604  7C 66 1B 78 */	mr r6, r3
/* 80A62608  7C 85 23 78 */	mr r5, r4
/* 80A6260C  80 63 00 08 */	lwz r3, 8(r3)
/* 80A62610  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A62614  4B 8C 89 3C */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A62618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6261C  7C 08 03 A6 */	mtlr r0
/* 80A62620  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62624  4E 80 00 20 */	blr 
