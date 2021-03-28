lbl_80AE63F8:
/* 80AE63F8  38 C3 FF FC */	addi r6, r3, -4
/* 80AE63FC  38 85 FF FC */	addi r4, r5, -4
/* 80AE6400  38 00 00 03 */	li r0, 3
/* 80AE6404  7C 09 03 A6 */	mtctr r0
lbl_80AE6408:
/* 80AE6408  80 64 00 04 */	lwz r3, 4(r4)
/* 80AE640C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AE6410  90 66 00 04 */	stw r3, 4(r6)
/* 80AE6414  94 06 00 08 */	stwu r0, 8(r6)
/* 80AE6418  42 00 FF F0 */	bdnz lbl_80AE6408
/* 80AE641C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE6420  90 06 00 04 */	stw r0, 4(r6)
/* 80AE6424  4E 80 00 20 */	blr 
