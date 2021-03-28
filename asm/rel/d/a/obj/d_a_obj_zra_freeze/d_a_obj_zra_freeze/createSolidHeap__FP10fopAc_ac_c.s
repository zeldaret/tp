lbl_80D4429C:
/* 80D4429C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D442A0  7C 08 02 A6 */	mflr r0
/* 80D442A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D442A8  48 00 01 95 */	bl CreateHeap__13daZraFreeze_cFv
/* 80D442AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D442B0  7C 08 03 A6 */	mtlr r0
/* 80D442B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D442B8  4E 80 00 20 */	blr 
