lbl_80D1D278:
/* 80D1D278  38 80 00 00 */	li r4, 0
/* 80D1D27C  38 00 00 03 */	li r0, 3
/* 80D1D280  7C 09 03 A6 */	mtctr r0
lbl_80D1D284:
/* 80D1D284  38 04 07 7C */	addi r0, r4, 0x77c
/* 80D1D288  7C A3 00 2E */	lwzx r5, r3, r0
/* 80D1D28C  28 05 00 00 */	cmplwi r5, 0
/* 80D1D290  41 82 00 10 */	beq lbl_80D1D2A0
/* 80D1D294  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80D1D298  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D1D29C  90 05 00 F4 */	stw r0, 0xf4(r5)
lbl_80D1D2A0:
/* 80D1D2A0  38 84 00 04 */	addi r4, r4, 4
/* 80D1D2A4  42 00 FF E0 */	bdnz lbl_80D1D284
/* 80D1D2A8  4E 80 00 20 */	blr 
