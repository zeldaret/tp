lbl_805BCBD0:
/* 805BCBD0  38 80 00 00 */	li r4, 0
/* 805BCBD4  7C 85 23 78 */	mr r5, r4
/* 805BCBD8  38 00 00 04 */	li r0, 4
/* 805BCBDC  7C 09 03 A6 */	mtctr r0
lbl_805BCBE0:
/* 805BCBE0  38 04 07 C0 */	addi r0, r4, 0x7c0
/* 805BCBE4  7C A3 01 2E */	stwx r5, r3, r0
/* 805BCBE8  38 84 00 04 */	addi r4, r4, 4
/* 805BCBEC  42 00 FF F4 */	bdnz lbl_805BCBE0
/* 805BCBF0  4E 80 00 20 */	blr 
