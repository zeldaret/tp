lbl_80A798F0:
/* 80A798F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A798F4  7C 08 02 A6 */	mflr r0
/* 80A798F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A798FC  4B FF B0 FD */	bl Delete__11daNpc_Moi_cFv
/* 80A79900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79904  7C 08 03 A6 */	mtlr r0
/* 80A79908  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7990C  4E 80 00 20 */	blr 
