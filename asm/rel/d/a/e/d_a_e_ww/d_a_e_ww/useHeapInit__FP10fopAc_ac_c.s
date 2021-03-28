lbl_807EE61C:
/* 807EE61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EE620  7C 08 02 A6 */	mflr r0
/* 807EE624  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EE628  4B FF FE AD */	bl CreateHeap__8daE_WW_cFv
/* 807EE62C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EE630  7C 08 03 A6 */	mtlr r0
/* 807EE634  38 21 00 10 */	addi r1, r1, 0x10
/* 807EE638  4E 80 00 20 */	blr 
