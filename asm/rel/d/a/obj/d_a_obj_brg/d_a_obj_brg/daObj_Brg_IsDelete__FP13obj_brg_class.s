lbl_80BC0834:
/* 80BC0834  3C 63 00 01 */	addis r3, r3, 1
/* 80BC0838  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC083C  7C 00 07 75 */	extsb. r0, r0
/* 80BC0840  7C 09 03 A6 */	mtctr r0
/* 80BC0844  40 81 00 08 */	ble lbl_80BC084C
lbl_80BC0848:
/* 80BC0848  42 00 00 00 */	bdnz lbl_80BC0848
lbl_80BC084C:
/* 80BC084C  38 60 00 01 */	li r3, 1
/* 80BC0850  4E 80 00 20 */	blr 
