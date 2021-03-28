lbl_809FFDFC:
/* 809FFDFC  38 C3 FF FC */	addi r6, r3, -4
/* 809FFE00  38 85 FF FC */	addi r4, r5, -4
/* 809FFE04  38 00 00 03 */	li r0, 3
/* 809FFE08  7C 09 03 A6 */	mtctr r0
lbl_809FFE0C:
/* 809FFE0C  80 64 00 04 */	lwz r3, 4(r4)
/* 809FFE10  84 04 00 08 */	lwzu r0, 8(r4)
/* 809FFE14  90 66 00 04 */	stw r3, 4(r6)
/* 809FFE18  94 06 00 08 */	stwu r0, 8(r6)
/* 809FFE1C  42 00 FF F0 */	bdnz lbl_809FFE0C
/* 809FFE20  80 04 00 04 */	lwz r0, 4(r4)
/* 809FFE24  90 06 00 04 */	stw r0, 4(r6)
/* 809FFE28  4E 80 00 20 */	blr 
