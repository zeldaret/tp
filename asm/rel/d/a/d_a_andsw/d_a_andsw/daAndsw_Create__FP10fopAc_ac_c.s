lbl_80457B04:
/* 80457B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457B08  7C 08 02 A6 */	mflr r0
/* 80457B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457B10  4B FF FE A9 */	bl create__9daAndsw_cFv
/* 80457B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457B18  7C 08 03 A6 */	mtlr r0
/* 80457B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80457B20  4E 80 00 20 */	blr 
