lbl_80AC9094:
/* 80AC9094  38 C3 FF FC */	addi r6, r3, -4
/* 80AC9098  38 85 FF FC */	addi r4, r5, -4
/* 80AC909C  38 00 00 03 */	li r0, 3
/* 80AC90A0  7C 09 03 A6 */	mtctr r0
lbl_80AC90A4:
/* 80AC90A4  80 64 00 04 */	lwz r3, 4(r4)
/* 80AC90A8  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AC90AC  90 66 00 04 */	stw r3, 4(r6)
/* 80AC90B0  94 06 00 08 */	stwu r0, 8(r6)
/* 80AC90B4  42 00 FF F0 */	bdnz lbl_80AC90A4
/* 80AC90B8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC90BC  90 06 00 04 */	stw r0, 4(r6)
/* 80AC90C0  4E 80 00 20 */	blr 
