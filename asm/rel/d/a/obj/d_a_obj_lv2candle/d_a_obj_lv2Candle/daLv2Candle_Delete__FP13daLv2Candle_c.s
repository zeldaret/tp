lbl_8058F010:
/* 8058F010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F014  7C 08 02 A6 */	mflr r0
/* 8058F018  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F01C  4B FF FF 51 */	bl Delete__13daLv2Candle_cFv
/* 8058F020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F024  7C 08 03 A6 */	mtlr r0
/* 8058F028  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F02C  4E 80 00 20 */	blr 
