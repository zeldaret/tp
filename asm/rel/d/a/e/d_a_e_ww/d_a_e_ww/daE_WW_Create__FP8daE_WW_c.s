lbl_807EEE54:
/* 807EEE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EEE58  7C 08 02 A6 */	mflr r0
/* 807EEE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EEE60  4B FF F7 DD */	bl create__8daE_WW_cFv
/* 807EEE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EEE68  7C 08 03 A6 */	mtlr r0
/* 807EEE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 807EEE70  4E 80 00 20 */	blr 
