lbl_80C8E590:
/* 80C8E590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E594  7C 08 02 A6 */	mflr r0
/* 80C8E598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E59C  4B FF F5 F9 */	bl create__11daMagLift_cFv
/* 80C8E5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E5A4  7C 08 03 A6 */	mtlr r0
/* 80C8E5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E5AC  4E 80 00 20 */	blr 
