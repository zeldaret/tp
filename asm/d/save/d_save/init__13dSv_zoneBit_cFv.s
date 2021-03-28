lbl_80034CA0:
/* 80034CA0  38 80 00 00 */	li r4, 0
/* 80034CA4  7C 85 23 78 */	mr r5, r4
/* 80034CA8  38 00 00 02 */	li r0, 2
/* 80034CAC  7C 09 03 A6 */	mtctr r0
lbl_80034CB0:
/* 80034CB0  7C A3 23 2E */	sthx r5, r3, r4
/* 80034CB4  38 84 00 02 */	addi r4, r4, 2
/* 80034CB8  42 00 FF F8 */	bdnz lbl_80034CB0
/* 80034CBC  38 80 00 00 */	li r4, 0
/* 80034CC0  38 A0 00 00 */	li r5, 0
/* 80034CC4  38 00 00 02 */	li r0, 2
/* 80034CC8  7C 09 03 A6 */	mtctr r0
lbl_80034CCC:
/* 80034CCC  38 04 00 06 */	addi r0, r4, 6
/* 80034CD0  7C A3 03 2E */	sthx r5, r3, r0
/* 80034CD4  38 84 00 02 */	addi r4, r4, 2
/* 80034CD8  42 00 FF F4 */	bdnz lbl_80034CCC
/* 80034CDC  38 00 00 00 */	li r0, 0
/* 80034CE0  B0 03 00 04 */	sth r0, 4(r3)
/* 80034CE4  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80034CE8  4E 80 00 20 */	blr 
