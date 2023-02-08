lbl_80599B3C:
/* 80599B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599B40  7C 08 02 A6 */	mflr r0
/* 80599B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599B48  4B FF FD 41 */	bl CreateHeap__13daObj_Stick_cFv
/* 80599B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599B50  7C 08 03 A6 */	mtlr r0
/* 80599B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80599B58  4E 80 00 20 */	blr 
