lbl_8029DA48:
/* 8029DA48  7C A9 03 A6 */	mtctr r5
/* 8029DA4C  28 05 00 00 */	cmplwi r5, 0
/* 8029DA50  4C 81 00 20 */	blelr 
lbl_8029DA54:
/* 8029DA54  A8 04 00 00 */	lha r0, 0(r4)
/* 8029DA58  B0 03 00 00 */	sth r0, 0(r3)
/* 8029DA5C  38 63 00 02 */	addi r3, r3, 2
/* 8029DA60  38 84 00 02 */	addi r4, r4, 2
/* 8029DA64  42 00 FF F0 */	bdnz lbl_8029DA54
/* 8029DA68  4E 80 00 20 */	blr 
