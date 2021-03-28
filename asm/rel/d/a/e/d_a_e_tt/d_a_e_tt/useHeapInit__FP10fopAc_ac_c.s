lbl_807C1394:
/* 807C1394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1398  7C 08 02 A6 */	mflr r0
/* 807C139C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C13A0  4B FF FE 7D */	bl CreateHeap__8daE_TT_cFv
/* 807C13A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C13A8  7C 08 03 A6 */	mtlr r0
/* 807C13AC  38 21 00 10 */	addi r1, r1, 0x10
/* 807C13B0  4E 80 00 20 */	blr 
