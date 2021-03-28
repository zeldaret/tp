lbl_80BFA528:
/* 80BFA528  38 63 00 04 */	addi r3, r3, 4
/* 80BFA52C  38 00 00 78 */	li r0, 0x78
/* 80BFA530  7C 09 03 A6 */	mtctr r0
lbl_80BFA534:
/* 80BFA534  80 03 00 00 */	lwz r0, 0(r3)
/* 80BFA538  7C 04 00 40 */	cmplw r4, r0
/* 80BFA53C  40 82 00 14 */	bne lbl_80BFA550
/* 80BFA540  38 00 00 00 */	li r0, 0
/* 80BFA544  90 03 00 00 */	stw r0, 0(r3)
/* 80BFA548  98 03 00 04 */	stb r0, 4(r3)
/* 80BFA54C  4E 80 00 20 */	blr 
lbl_80BFA550:
/* 80BFA550  38 63 00 08 */	addi r3, r3, 8
/* 80BFA554  42 00 FF E0 */	bdnz lbl_80BFA534
/* 80BFA558  4E 80 00 20 */	blr 
