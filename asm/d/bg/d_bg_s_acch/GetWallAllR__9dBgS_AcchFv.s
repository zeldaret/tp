lbl_80076F84:
/* 80076F84  C0 22 8C C0 */	lfs f1, lit_4025(r2)
/* 80076F88  38 80 00 00 */	li r4, 0
/* 80076F8C  80 03 00 88 */	lwz r0, 0x88(r3)
/* 80076F90  7C 09 03 A6 */	mtctr r0
/* 80076F94  2C 00 00 00 */	cmpwi r0, 0
/* 80076F98  4C 81 00 20 */	blelr 
lbl_80076F9C:
/* 80076F9C  80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 80076FA0  38 04 00 34 */	addi r0, r4, 0x34
/* 80076FA4  7C 05 04 2E */	lfsx f0, r5, r0
/* 80076FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80076FAC  40 80 00 08 */	bge lbl_80076FB4
/* 80076FB0  FC 20 00 90 */	fmr f1, f0
lbl_80076FB4:
/* 80076FB4  38 84 00 40 */	addi r4, r4, 0x40
/* 80076FB8  42 00 FF E4 */	bdnz lbl_80076F9C
/* 80076FBC  4E 80 00 20 */	blr 
