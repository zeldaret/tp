lbl_80A19FD4:
/* 80A19FD4  38 C3 FF FC */	addi r6, r3, -4
/* 80A19FD8  38 85 FF FC */	addi r4, r5, -4
/* 80A19FDC  38 00 00 03 */	li r0, 3
/* 80A19FE0  7C 09 03 A6 */	mtctr r0
lbl_80A19FE4:
/* 80A19FE4  80 64 00 04 */	lwz r3, 4(r4)
/* 80A19FE8  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A19FEC  90 66 00 04 */	stw r3, 4(r6)
/* 80A19FF0  94 06 00 08 */	stwu r0, 8(r6)
/* 80A19FF4  42 00 FF F0 */	bdnz lbl_80A19FE4
/* 80A19FF8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A19FFC  90 06 00 04 */	stw r0, 4(r6)
/* 80A1A000  4E 80 00 20 */	blr 
