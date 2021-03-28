lbl_80BA870C:
/* 80BA870C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8710  7C 08 02 A6 */	mflr r0
/* 80BA8714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8718  4B FF FF B5 */	bl execute__15daObj_Balloon_cFv
/* 80BA871C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8720  7C 08 03 A6 */	mtlr r0
/* 80BA8724  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8728  4E 80 00 20 */	blr 
