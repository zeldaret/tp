lbl_806B5130:
/* 806B5130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5134  7C 08 02 A6 */	mflr r0
/* 806B5138  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B513C  4B FF FE 9D */	bl execute__8daE_DT_cFv
/* 806B5140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5144  7C 08 03 A6 */	mtlr r0
/* 806B5148  38 21 00 10 */	addi r1, r1, 0x10
/* 806B514C  4E 80 00 20 */	blr 
