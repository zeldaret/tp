lbl_807CD648:
/* 807CD648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CD64C  7C 08 02 A6 */	mflr r0
/* 807CD650  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CD654  4B FF F9 F5 */	bl CreateHeap__8daE_VA_cFv
/* 807CD658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CD65C  7C 08 03 A6 */	mtlr r0
/* 807CD660  38 21 00 10 */	addi r1, r1, 0x10
/* 807CD664  4E 80 00 20 */	blr 
