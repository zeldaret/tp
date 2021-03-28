lbl_809BA564:
/* 809BA564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BA568  7C 08 02 A6 */	mflr r0
/* 809BA56C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BA570  48 00 00 15 */	bl create__10daNpcFgd_cFv
/* 809BA574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BA578  7C 08 03 A6 */	mtlr r0
/* 809BA57C  38 21 00 10 */	addi r1, r1, 0x10
/* 809BA580  4E 80 00 20 */	blr 
