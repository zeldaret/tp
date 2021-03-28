lbl_80AC0AEC:
/* 80AC0AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0AF0  7C 08 02 A6 */	mflr r0
/* 80AC0AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0AF8  4B FF FD 35 */	bl CreateHeap__12daNpc_Saru_cFv
/* 80AC0AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0B00  7C 08 03 A6 */	mtlr r0
/* 80AC0B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0B08  4E 80 00 20 */	blr 
