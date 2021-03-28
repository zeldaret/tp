lbl_8029DCE0:
/* 8029DCE0  38 A0 00 00 */	li r5, 0
/* 8029DCE4  90 A3 01 0C */	stw r5, 0x10c(r3)
/* 8029DCE8  B0 A3 00 60 */	sth r5, 0x60(r3)
/* 8029DCEC  38 00 00 01 */	li r0, 1
/* 8029DCF0  B0 03 00 08 */	sth r0, 8(r3)
/* 8029DCF4  B0 A3 00 66 */	sth r5, 0x66(r3)
/* 8029DCF8  7C A4 2B 78 */	mr r4, r5
/* 8029DCFC  38 00 00 04 */	li r0, 4
/* 8029DD00  7C 09 03 A6 */	mtctr r0
lbl_8029DD04:
/* 8029DD04  7C C3 22 14 */	add r6, r3, r4
/* 8029DD08  B0 A6 00 78 */	sth r5, 0x78(r6)
/* 8029DD0C  B0 A6 00 A8 */	sth r5, 0xa8(r6)
/* 8029DD10  38 84 00 02 */	addi r4, r4, 2
/* 8029DD14  42 00 FF F0 */	bdnz lbl_8029DD04
/* 8029DD18  38 A0 00 00 */	li r5, 0
/* 8029DD1C  38 80 00 00 */	li r4, 0
/* 8029DD20  38 00 00 14 */	li r0, 0x14
/* 8029DD24  7C 09 03 A6 */	mtctr r0
lbl_8029DD28:
/* 8029DD28  38 04 00 80 */	addi r0, r4, 0x80
/* 8029DD2C  7C A3 03 2E */	sthx r5, r3, r0
/* 8029DD30  38 84 00 02 */	addi r4, r4, 2
/* 8029DD34  42 00 FF F4 */	bdnz lbl_8029DD28
/* 8029DD38  38 00 00 01 */	li r0, 1
/* 8029DD3C  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DD40  4E 80 00 20 */	blr 
