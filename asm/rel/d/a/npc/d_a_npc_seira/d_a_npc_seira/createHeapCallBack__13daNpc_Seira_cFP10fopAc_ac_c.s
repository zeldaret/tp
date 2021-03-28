lbl_80ACC2B0:
/* 80ACC2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC2B4  7C 08 02 A6 */	mflr r0
/* 80ACC2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC2BC  4B FF F9 19 */	bl CreateHeap__13daNpc_Seira_cFv
/* 80ACC2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC2C4  7C 08 03 A6 */	mtlr r0
/* 80ACC2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC2CC  4E 80 00 20 */	blr 
