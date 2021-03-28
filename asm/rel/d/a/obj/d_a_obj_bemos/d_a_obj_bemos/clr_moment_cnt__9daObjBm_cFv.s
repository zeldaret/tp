lbl_80BB0DE8:
/* 80BB0DE8  38 80 00 00 */	li r4, 0
/* 80BB0DEC  7C 85 23 78 */	mr r5, r4
/* 80BB0DF0  38 00 00 04 */	li r0, 4
/* 80BB0DF4  7C 09 03 A6 */	mtctr r0
lbl_80BB0DF8:
/* 80BB0DF8  38 04 10 C4 */	addi r0, r4, 0x10c4
/* 80BB0DFC  7C A3 03 2E */	sthx r5, r3, r0
/* 80BB0E00  38 84 00 02 */	addi r4, r4, 2
/* 80BB0E04  42 00 FF F4 */	bdnz lbl_80BB0DF8
/* 80BB0E08  4E 80 00 20 */	blr 
