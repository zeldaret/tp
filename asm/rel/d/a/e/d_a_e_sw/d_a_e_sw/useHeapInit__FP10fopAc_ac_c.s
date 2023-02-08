lbl_807AC2FC:
/* 807AC2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC300  7C 08 02 A6 */	mflr r0
/* 807AC304  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC308  4B FF FE FD */	bl CreateHeap__8daE_SW_cFv
/* 807AC30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AC310  7C 08 03 A6 */	mtlr r0
/* 807AC314  38 21 00 10 */	addi r1, r1, 0x10
/* 807AC318  4E 80 00 20 */	blr 
