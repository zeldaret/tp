lbl_8054D978:
/* 8054D978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D97C  7C 08 02 A6 */	mflr r0
/* 8054D980  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D984  4B FF DB 65 */	bl create__15daNpc_Kakashi_cFv
/* 8054D988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D98C  7C 08 03 A6 */	mtlr r0
/* 8054D990  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D994  4E 80 00 20 */	blr 
