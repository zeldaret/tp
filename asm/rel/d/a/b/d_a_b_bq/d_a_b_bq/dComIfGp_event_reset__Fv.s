lbl_805BA094:
/* 805BA094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA098  7C 08 02 A6 */	mflr r0
/* 805BA09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA0A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BA0A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BA0A8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805BA0AC  4B A8 83 BC */	b reset__14dEvt_control_cFv
/* 805BA0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA0B4  7C 08 03 A6 */	mtlr r0
/* 805BA0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA0BC  4E 80 00 20 */	blr 
