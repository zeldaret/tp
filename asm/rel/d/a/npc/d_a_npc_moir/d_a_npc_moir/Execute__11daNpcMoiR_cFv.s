lbl_80A7CE7C:
/* 80A7CE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7CE80  7C 08 02 A6 */	mflr r0
/* 80A7CE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7CE88  4B 6D 51 8C */	b execute__8daNpcF_cFv
/* 80A7CE8C  38 60 00 01 */	li r3, 1
/* 80A7CE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7CE94  7C 08 03 A6 */	mtlr r0
/* 80A7CE98  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7CE9C  4E 80 00 20 */	blr 
