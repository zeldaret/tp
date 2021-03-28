lbl_805BCBF4:
/* 805BCBF4  38 A0 00 00 */	li r5, 0
/* 805BCBF8  38 80 00 00 */	li r4, 0
/* 805BCBFC  38 00 00 04 */	li r0, 4
/* 805BCC00  7C 09 03 A6 */	mtctr r0
lbl_805BCC04:
/* 805BCC04  38 05 07 E4 */	addi r0, r5, 0x7e4
/* 805BCC08  7C 83 01 AE */	stbx r4, r3, r0
/* 805BCC0C  38 A5 00 01 */	addi r5, r5, 1
/* 805BCC10  42 00 FF F4 */	bdnz lbl_805BCC04
/* 805BCC14  4E 80 00 20 */	blr 
