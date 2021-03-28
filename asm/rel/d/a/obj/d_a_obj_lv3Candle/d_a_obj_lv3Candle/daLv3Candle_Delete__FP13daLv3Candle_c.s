lbl_80C58444:
/* 80C58444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58448  7C 08 02 A6 */	mflr r0
/* 80C5844C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58450  4B FF FF 51 */	bl Delete__13daLv3Candle_cFv
/* 80C58454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58458  7C 08 03 A6 */	mtlr r0
/* 80C5845C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58460  4E 80 00 20 */	blr 
