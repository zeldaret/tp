lbl_80661D24:
/* 80661D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80661D28  7C 08 02 A6 */	mflr r0
/* 80661D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80661D30  4B FF FD C1 */	bl CreateHeap__7daCow_cFv
/* 80661D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80661D38  7C 08 03 A6 */	mtlr r0
/* 80661D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80661D40  4E 80 00 20 */	blr 
