lbl_8099DCE8:
/* 8099DCE8  38 A0 00 00 */	li r5, 0
/* 8099DCEC  38 00 00 05 */	li r0, 5
/* 8099DCF0  7C 09 03 A6 */	mtctr r0
lbl_8099DCF4:
/* 8099DCF4  38 05 24 7C */	addi r0, r5, 0x247c
/* 8099DCF8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8099DCFC  7C 00 20 40 */	cmplw r0, r4
/* 8099DD00  40 82 00 18 */	bne lbl_8099DD18
/* 8099DD04  38 00 FF FF */	li r0, -1
/* 8099DD08  7C 63 2A 14 */	add r3, r3, r5
/* 8099DD0C  90 03 24 7C */	stw r0, 0x247c(r3)
/* 8099DD10  38 60 00 01 */	li r3, 1
/* 8099DD14  4E 80 00 20 */	blr 
lbl_8099DD18:
/* 8099DD18  38 A5 00 04 */	addi r5, r5, 4
/* 8099DD1C  42 00 FF D8 */	bdnz lbl_8099DCF4
/* 8099DD20  38 60 00 00 */	li r3, 0
/* 8099DD24  4E 80 00 20 */	blr 
