lbl_8058F0AC:
/* 8058F0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F0B0  7C 08 02 A6 */	mflr r0
/* 8058F0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F0B8  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058F0BC  38 63 F2 AC */	addi r3, r3, l_HIO@l
/* 8058F0C0  4B FF EF 8D */	bl __ct__17daLv2Candle_HIO_cFv
/* 8058F0C4  3C 80 80 59 */	lis r4, __dt__17daLv2Candle_HIO_cFv@ha
/* 8058F0C8  38 84 F0 50 */	addi r4, r4, __dt__17daLv2Candle_HIO_cFv@l
/* 8058F0CC  3C A0 80 59 */	lis r5, lit_3631@ha
/* 8058F0D0  38 A5 F2 A0 */	addi r5, r5, lit_3631@l
/* 8058F0D4  4B FF EF 05 */	bl __register_global_object
/* 8058F0D8  3C 60 80 59 */	lis r3, mCcDCyl__13daLv2Candle_c@ha
/* 8058F0DC  38 63 F1 C8 */	addi r3, r3, mCcDCyl__13daLv2Candle_c@l
/* 8058F0E0  38 A3 FF FC */	addi r5, r3, -4
/* 8058F0E4  3C 60 80 59 */	lis r3, mCcDObjInfo__13daLv2Candle_c@ha
/* 8058F0E8  38 63 F1 44 */	addi r3, r3, mCcDObjInfo__13daLv2Candle_c@l
/* 8058F0EC  38 83 FF FC */	addi r4, r3, -4
/* 8058F0F0  38 00 00 06 */	li r0, 6
/* 8058F0F4  7C 09 03 A6 */	mtctr r0
lbl_8058F0F8:
/* 8058F0F8  80 64 00 04 */	lwz r3, 4(r4)
/* 8058F0FC  84 04 00 08 */	lwzu r0, 8(r4)
/* 8058F100  90 65 00 04 */	stw r3, 4(r5)
/* 8058F104  94 05 00 08 */	stwu r0, 8(r5)
/* 8058F108  42 00 FF F0 */	bdnz lbl_8058F0F8
/* 8058F10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F110  7C 08 03 A6 */	mtlr r0
/* 8058F114  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F118  4E 80 00 20 */	blr 
