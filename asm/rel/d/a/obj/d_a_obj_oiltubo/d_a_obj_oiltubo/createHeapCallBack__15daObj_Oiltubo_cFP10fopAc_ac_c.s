lbl_80CA6FC8:
/* 80CA6FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6FCC  7C 08 02 A6 */	mflr r0
/* 80CA6FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6FD4  4B FF FB 55 */	bl CreateHeap__15daObj_Oiltubo_cFv
/* 80CA6FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6FDC  7C 08 03 A6 */	mtlr r0
/* 80CA6FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6FE4  4E 80 00 20 */	blr 
