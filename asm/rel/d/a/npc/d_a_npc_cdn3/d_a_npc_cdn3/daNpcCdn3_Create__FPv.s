lbl_8097C8F0:
/* 8097C8F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C8F4  7C 08 02 A6 */	mflr r0
/* 8097C8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C8FC  48 00 00 15 */	bl create__11daNpcCdn3_cFv
/* 8097C900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C904  7C 08 03 A6 */	mtlr r0
/* 8097C908  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C90C  4E 80 00 20 */	blr 
