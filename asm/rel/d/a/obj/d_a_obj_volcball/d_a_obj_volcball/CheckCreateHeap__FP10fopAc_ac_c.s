lbl_80D21B30:
/* 80D21B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21B34  7C 08 02 A6 */	mflr r0
/* 80D21B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21B3C  48 00 02 45 */	bl CreateHeap__15daObjVolcBall_cFv
/* 80D21B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21B44  7C 08 03 A6 */	mtlr r0
/* 80D21B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21B4C  4E 80 00 20 */	blr 
