lbl_806B9D7C:
/* 806B9D7C  38 80 00 00 */	li r4, 0
/* 806B9D80  38 00 00 02 */	li r0, 2
/* 806B9D84  7C 09 03 A6 */	mtctr r0
lbl_806B9D88:
/* 806B9D88  38 A4 08 88 */	addi r5, r4, 0x888
/* 806B9D8C  7C 03 28 2E */	lwzx r0, r3, r5
/* 806B9D90  60 00 00 01 */	ori r0, r0, 1
/* 806B9D94  7C 03 29 2E */	stwx r0, r3, r5
/* 806B9D98  38 84 01 38 */	addi r4, r4, 0x138
/* 806B9D9C  42 00 FF EC */	bdnz lbl_806B9D88
/* 806B9DA0  4E 80 00 20 */	blr 
