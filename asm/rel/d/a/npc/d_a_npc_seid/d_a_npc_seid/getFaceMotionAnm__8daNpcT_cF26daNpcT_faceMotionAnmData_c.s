lbl_80ACB1D4:
/* 80ACB1D4  38 C3 FF FC */	addi r6, r3, -4
/* 80ACB1D8  38 85 FF FC */	addi r4, r5, -4
/* 80ACB1DC  38 00 00 03 */	li r0, 3
/* 80ACB1E0  7C 09 03 A6 */	mtctr r0
lbl_80ACB1E4:
/* 80ACB1E4  80 64 00 04 */	lwz r3, 4(r4)
/* 80ACB1E8  84 04 00 08 */	lwzu r0, 8(r4)
/* 80ACB1EC  90 66 00 04 */	stw r3, 4(r6)
/* 80ACB1F0  94 06 00 08 */	stwu r0, 8(r6)
/* 80ACB1F4  42 00 FF F0 */	bdnz lbl_80ACB1E4
/* 80ACB1F8  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACB1FC  90 06 00 04 */	stw r0, 4(r6)
/* 80ACB200  4E 80 00 20 */	blr 
