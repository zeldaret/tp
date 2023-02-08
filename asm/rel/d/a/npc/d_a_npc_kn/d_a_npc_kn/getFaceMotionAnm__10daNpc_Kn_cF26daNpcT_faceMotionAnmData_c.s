lbl_80A3B7CC:
/* 80A3B7CC  38 C3 FF FC */	addi r6, r3, -4
/* 80A3B7D0  38 85 FF FC */	addi r4, r5, -4
/* 80A3B7D4  38 00 00 03 */	li r0, 3
/* 80A3B7D8  7C 09 03 A6 */	mtctr r0
lbl_80A3B7DC:
/* 80A3B7DC  80 64 00 04 */	lwz r3, 4(r4)
/* 80A3B7E0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A3B7E4  90 66 00 04 */	stw r3, 4(r6)
/* 80A3B7E8  94 06 00 08 */	stwu r0, 8(r6)
/* 80A3B7EC  42 00 FF F0 */	bdnz lbl_80A3B7DC
/* 80A3B7F0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A3B7F4  90 06 00 04 */	stw r0, 4(r6)
/* 80A3B7F8  4E 80 00 20 */	blr 
