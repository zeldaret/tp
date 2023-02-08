lbl_8054D9D8:
/* 8054D9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D9DC  7C 08 02 A6 */	mflr r0
/* 8054D9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D9E4  4B FF DF B1 */	bl Draw__15daNpc_Kakashi_cFv
/* 8054D9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D9EC  7C 08 03 A6 */	mtlr r0
/* 8054D9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D9F4  4E 80 00 20 */	blr 
