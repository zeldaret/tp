lbl_80D594B4:
/* 80D594B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D594B8  7C 08 02 A6 */	mflr r0
/* 80D594BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D594C0  4B FF FB E9 */	bl create__13daTag_FWall_cFv
/* 80D594C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D594C8  7C 08 03 A6 */	mtlr r0
/* 80D594CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D594D0  4E 80 00 20 */	blr 
