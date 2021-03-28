lbl_80AB1D9C:
/* 80AB1D9C  38 C3 FF FC */	addi r6, r3, -4
/* 80AB1DA0  38 85 FF FC */	addi r4, r5, -4
/* 80AB1DA4  38 00 00 03 */	li r0, 3
/* 80AB1DA8  7C 09 03 A6 */	mtctr r0
lbl_80AB1DAC:
/* 80AB1DAC  80 64 00 04 */	lwz r3, 4(r4)
/* 80AB1DB0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AB1DB4  90 66 00 04 */	stw r3, 4(r6)
/* 80AB1DB8  94 06 00 08 */	stwu r0, 8(r6)
/* 80AB1DBC  42 00 FF F0 */	bdnz lbl_80AB1DAC
/* 80AB1DC0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB1DC4  90 06 00 04 */	stw r0, 4(r6)
/* 80AB1DC8  4E 80 00 20 */	blr 
