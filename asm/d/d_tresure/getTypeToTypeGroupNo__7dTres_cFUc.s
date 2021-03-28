lbl_8009C4B0:
/* 8009C4B0  38 C0 00 11 */	li r6, 0x11
/* 8009C4B4  38 80 00 00 */	li r4, 0
/* 8009C4B8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8009C4BC  3C 60 80 38 */	lis r3, typeToTypeGroup__7dTres_c@ha
/* 8009C4C0  38 63 B0 D8 */	addi r3, r3, typeToTypeGroup__7dTres_c@l
/* 8009C4C4  38 00 00 11 */	li r0, 0x11
/* 8009C4C8  7C 09 03 A6 */	mtctr r0
lbl_8009C4CC:
/* 8009C4CC  7C 03 20 AE */	lbzx r0, r3, r4
/* 8009C4D0  7C 05 00 40 */	cmplw r5, r0
/* 8009C4D4  40 82 00 18 */	bne lbl_8009C4EC
/* 8009C4D8  3C 60 80 38 */	lis r3, typeToTypeGroup__7dTres_c@ha
/* 8009C4DC  38 03 B0 D8 */	addi r0, r3, typeToTypeGroup__7dTres_c@l
/* 8009C4E0  7C 60 22 14 */	add r3, r0, r4
/* 8009C4E4  88 C3 00 01 */	lbz r6, 1(r3)
/* 8009C4E8  48 00 00 0C */	b lbl_8009C4F4
lbl_8009C4EC:
/* 8009C4EC  38 84 00 02 */	addi r4, r4, 2
/* 8009C4F0  42 00 FF DC */	bdnz lbl_8009C4CC
lbl_8009C4F4:
/* 8009C4F4  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 8009C4F8  4E 80 00 20 */	blr 
