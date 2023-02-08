lbl_80AA12C0:
/* 80AA12C0  38 C3 FF FC */	addi r6, r3, -4
/* 80AA12C4  38 85 FF FC */	addi r4, r5, -4
/* 80AA12C8  38 00 00 03 */	li r0, 3
/* 80AA12CC  7C 09 03 A6 */	mtctr r0
lbl_80AA12D0:
/* 80AA12D0  80 64 00 04 */	lwz r3, 4(r4)
/* 80AA12D4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AA12D8  90 66 00 04 */	stw r3, 4(r6)
/* 80AA12DC  94 06 00 08 */	stwu r0, 8(r6)
/* 80AA12E0  42 00 FF F0 */	bdnz lbl_80AA12D0
/* 80AA12E4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AA12E8  90 06 00 04 */	stw r0, 4(r6)
/* 80AA12EC  4E 80 00 20 */	blr 
