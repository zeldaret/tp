lbl_80AB1D6C:
/* 80AB1D6C  38 C3 FF FC */	addi r6, r3, -4
/* 80AB1D70  38 85 FF FC */	addi r4, r5, -4
/* 80AB1D74  38 00 00 03 */	li r0, 3
/* 80AB1D78  7C 09 03 A6 */	mtctr r0
lbl_80AB1D7C:
/* 80AB1D7C  80 64 00 04 */	lwz r3, 4(r4)
/* 80AB1D80  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AB1D84  90 66 00 04 */	stw r3, 4(r6)
/* 80AB1D88  94 06 00 08 */	stwu r0, 8(r6)
/* 80AB1D8C  42 00 FF F0 */	bdnz lbl_80AB1D7C
/* 80AB1D90  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB1D94  90 06 00 04 */	stw r0, 4(r6)
/* 80AB1D98  4E 80 00 20 */	blr 
