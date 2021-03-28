lbl_8048DCD4:
/* 8048DCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DCD8  7C 08 02 A6 */	mflr r0
/* 8048DCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DCE0  4B FF FD 45 */	bl draw__12daTag_Howl_cFv
/* 8048DCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DCE8  7C 08 03 A6 */	mtlr r0
/* 8048DCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DCF0  4E 80 00 20 */	blr 
