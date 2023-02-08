lbl_8060F868:
/* 8060F868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F86C  7C 08 02 A6 */	mflr r0
/* 8060F870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F874  4B FF F8 5D */	bl create__9daB_MGN_cFv
/* 8060F878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F87C  7C 08 03 A6 */	mtlr r0
/* 8060F880  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F884  4E 80 00 20 */	blr 
