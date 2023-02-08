lbl_8029DFB0:
/* 8029DFB0  38 80 00 00 */	li r4, 0
/* 8029DFB4  7C 85 23 78 */	mr r5, r4
/* 8029DFB8  38 00 00 08 */	li r0, 8
/* 8029DFBC  7C 09 03 A6 */	mtctr r0
lbl_8029DFC0:
/* 8029DFC0  38 04 01 20 */	addi r0, r4, 0x120
/* 8029DFC4  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DFC8  38 84 00 02 */	addi r4, r4, 2
/* 8029DFCC  42 00 FF F4 */	bdnz lbl_8029DFC0
/* 8029DFD0  38 00 7F FF */	li r0, 0x7fff
/* 8029DFD4  B0 03 01 20 */	sth r0, 0x120(r3)
/* 8029DFD8  38 A0 00 00 */	li r5, 0
/* 8029DFDC  38 80 00 00 */	li r4, 0
/* 8029DFE0  38 00 00 08 */	li r0, 8
/* 8029DFE4  7C 09 03 A6 */	mtctr r0
lbl_8029DFE8:
/* 8029DFE8  38 04 01 48 */	addi r0, r4, 0x148
/* 8029DFEC  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DFF0  38 84 00 02 */	addi r4, r4, 2
/* 8029DFF4  42 00 FF F4 */	bdnz lbl_8029DFE8
/* 8029DFF8  38 00 7F FF */	li r0, 0x7fff
/* 8029DFFC  B0 03 01 48 */	sth r0, 0x148(r3)
/* 8029E000  38 00 00 00 */	li r0, 0
/* 8029E004  B0 03 01 50 */	sth r0, 0x150(r3)
/* 8029E008  4E 80 00 20 */	blr 
