lbl_805379FC:
/* 805379FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537A00  7C 08 02 A6 */	mflr r0
/* 80537A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537A08  4B FF F8 F5 */	bl CreateHeap__12daNpc_Besu_cFv
/* 80537A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537A10  7C 08 03 A6 */	mtlr r0
/* 80537A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80537A18  4E 80 00 20 */	blr 
