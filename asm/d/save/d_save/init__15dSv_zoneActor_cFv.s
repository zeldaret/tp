lbl_80034EB4:
/* 80034EB4  38 80 00 00 */	li r4, 0
/* 80034EB8  7C 85 23 78 */	mr r5, r4
/* 80034EBC  38 00 00 04 */	li r0, 4
/* 80034EC0  7C 09 03 A6 */	mtctr r0
lbl_80034EC4:
/* 80034EC4  7C A3 21 2E */	stwx r5, r3, r4
/* 80034EC8  38 84 00 04 */	addi r4, r4, 4
/* 80034ECC  42 00 FF F8 */	bdnz lbl_80034EC4
/* 80034ED0  4E 80 00 20 */	blr 
