lbl_809AA0B4:
/* 809AA0B4  38 C3 FF FC */	addi r6, r3, -4
/* 809AA0B8  38 85 FF FC */	addi r4, r5, -4
/* 809AA0BC  38 00 00 03 */	li r0, 3
/* 809AA0C0  7C 09 03 A6 */	mtctr r0
lbl_809AA0C4:
/* 809AA0C4  80 64 00 04 */	lwz r3, 4(r4)
/* 809AA0C8  84 04 00 08 */	lwzu r0, 8(r4)
/* 809AA0CC  90 66 00 04 */	stw r3, 4(r6)
/* 809AA0D0  94 06 00 08 */	stwu r0, 8(r6)
/* 809AA0D4  42 00 FF F0 */	bdnz lbl_809AA0C4
/* 809AA0D8  80 04 00 04 */	lwz r0, 4(r4)
/* 809AA0DC  90 06 00 04 */	stw r0, 4(r6)
/* 809AA0E0  4E 80 00 20 */	blr 
