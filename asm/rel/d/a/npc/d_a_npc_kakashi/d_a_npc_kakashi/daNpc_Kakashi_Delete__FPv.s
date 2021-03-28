lbl_8054D998:
/* 8054D998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D99C  7C 08 02 A6 */	mflr r0
/* 8054D9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D9A4  4B FF DF 65 */	bl Delete__15daNpc_Kakashi_cFv
/* 8054D9A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D9AC  7C 08 03 A6 */	mtlr r0
/* 8054D9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D9B4  4E 80 00 20 */	blr 
