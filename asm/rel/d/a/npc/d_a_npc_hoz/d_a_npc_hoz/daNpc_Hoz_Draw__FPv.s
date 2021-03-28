lbl_80A05370:
/* 80A05370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05374  7C 08 02 A6 */	mflr r0
/* 80A05378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0537C  4B FF CA 2D */	bl Draw__11daNpc_Hoz_cFv
/* 80A05380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05384  7C 08 03 A6 */	mtlr r0
/* 80A05388  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0538C  4E 80 00 20 */	blr 
