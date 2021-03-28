lbl_802AB80C:
/* 802AB80C  38 80 00 00 */	li r4, 0
/* 802AB810  7C 85 23 78 */	mr r5, r4
/* 802AB814  38 00 00 08 */	li r0, 8
/* 802AB818  7C 09 03 A6 */	mtctr r0
lbl_802AB81C:
/* 802AB81C  38 04 03 A0 */	addi r0, r4, 0x3a0
/* 802AB820  7C A3 01 2E */	stwx r5, r3, r0
/* 802AB824  38 84 00 04 */	addi r4, r4, 4
/* 802AB828  42 00 FF F4 */	bdnz lbl_802AB81C
/* 802AB82C  4E 80 00 20 */	blr 
