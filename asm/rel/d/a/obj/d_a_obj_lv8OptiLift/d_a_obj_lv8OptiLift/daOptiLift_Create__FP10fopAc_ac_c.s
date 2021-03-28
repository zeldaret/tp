lbl_80C8B8E0:
/* 80C8B8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B8E4  7C 08 02 A6 */	mflr r0
/* 80C8B8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B8EC  4B FF EC 15 */	bl create__12daOptiLift_cFv
/* 80C8B8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B8F4  7C 08 03 A6 */	mtlr r0
/* 80C8B8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B8FC  4E 80 00 20 */	blr 
