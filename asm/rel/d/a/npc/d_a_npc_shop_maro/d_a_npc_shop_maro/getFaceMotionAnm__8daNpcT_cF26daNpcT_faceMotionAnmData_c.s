lbl_80AEC890:
/* 80AEC890  38 C3 FF FC */	addi r6, r3, -4
/* 80AEC894  38 85 FF FC */	addi r4, r5, -4
/* 80AEC898  38 00 00 03 */	li r0, 3
/* 80AEC89C  7C 09 03 A6 */	mtctr r0
lbl_80AEC8A0:
/* 80AEC8A0  80 64 00 04 */	lwz r3, 4(r4)
/* 80AEC8A4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AEC8A8  90 66 00 04 */	stw r3, 4(r6)
/* 80AEC8AC  94 06 00 08 */	stwu r0, 8(r6)
/* 80AEC8B0  42 00 FF F0 */	bdnz lbl_80AEC8A0
/* 80AEC8B4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEC8B8  90 06 00 04 */	stw r0, 4(r6)
/* 80AEC8BC  4E 80 00 20 */	blr 
