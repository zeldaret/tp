lbl_80D1D2AC:
/* 80D1D2AC  38 80 00 00 */	li r4, 0
/* 80D1D2B0  38 00 00 03 */	li r0, 3
/* 80D1D2B4  7C 09 03 A6 */	mtctr r0
lbl_80D1D2B8:
/* 80D1D2B8  38 04 07 7C */	addi r0, r4, 0x77c
/* 80D1D2BC  7C A3 00 2E */	lwzx r5, r3, r0
/* 80D1D2C0  28 05 00 00 */	cmplwi r5, 0
/* 80D1D2C4  41 82 00 10 */	beq lbl_80D1D2D4
/* 80D1D2C8  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80D1D2CC  60 00 00 01 */	ori r0, r0, 1
/* 80D1D2D0  90 05 00 F4 */	stw r0, 0xf4(r5)
lbl_80D1D2D4:
/* 80D1D2D4  38 84 00 04 */	addi r4, r4, 4
/* 80D1D2D8  42 00 FF E0 */	bdnz lbl_80D1D2B8
/* 80D1D2DC  4E 80 00 20 */	blr 
