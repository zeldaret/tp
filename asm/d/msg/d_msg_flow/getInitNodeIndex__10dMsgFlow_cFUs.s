lbl_8024A784:
/* 8024A784  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8024A788  38 E5 FF FF */	addi r7, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8024A78C  80 A3 00 08 */	lwz r5, 8(r3)
/* 8024A790  38 C5 00 10 */	addi r6, r5, 0x10
/* 8024A794  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8024A798  A0 05 00 08 */	lhz r0, 8(r5)
/* 8024A79C  7C 09 03 A6 */	mtctr r0
/* 8024A7A0  2C 00 00 00 */	cmpwi r0, 0
/* 8024A7A4  40 81 00 20 */	ble lbl_8024A7C4
lbl_8024A7A8:
/* 8024A7A8  80 06 00 00 */	lwz r0, 0(r6)
/* 8024A7AC  54 00 84 3E */	srwi r0, r0, 0x10
/* 8024A7B0  7C 00 18 40 */	cmplw r0, r3
/* 8024A7B4  40 82 00 08 */	bne lbl_8024A7BC
/* 8024A7B8  A0 E6 00 04 */	lhz r7, 4(r6)
lbl_8024A7BC:
/* 8024A7BC  38 C6 00 08 */	addi r6, r6, 8
/* 8024A7C0  42 00 FF E8 */	bdnz lbl_8024A7A8
lbl_8024A7C4:
/* 8024A7C4  7C E3 3B 78 */	mr r3, r7
/* 8024A7C8  4E 80 00 20 */	blr 
