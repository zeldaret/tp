lbl_805A2440:
/* 805A2440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2444  7C 08 02 A6 */	mflr r0
/* 805A2448  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A244C  4B FF FF AD */	bl Delete__13daTagCstaSw_cFv
/* 805A2450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2454  7C 08 03 A6 */	mtlr r0
/* 805A2458  38 21 00 10 */	addi r1, r1, 0x10
/* 805A245C  4E 80 00 20 */	blr 
