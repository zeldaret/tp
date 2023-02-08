lbl_80AC4284:
/* 80AC4284  38 C3 FF FC */	addi r6, r3, -4
/* 80AC4288  38 85 FF FC */	addi r4, r5, -4
/* 80AC428C  38 00 00 03 */	li r0, 3
/* 80AC4290  7C 09 03 A6 */	mtctr r0
lbl_80AC4294:
/* 80AC4294  80 64 00 04 */	lwz r3, 4(r4)
/* 80AC4298  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AC429C  90 66 00 04 */	stw r3, 4(r6)
/* 80AC42A0  94 06 00 08 */	stwu r0, 8(r6)
/* 80AC42A4  42 00 FF F0 */	bdnz lbl_80AC4294
/* 80AC42A8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC42AC  90 06 00 04 */	stw r0, 4(r6)
/* 80AC42B0  4E 80 00 20 */	blr 
