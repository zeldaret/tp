lbl_8014CCF0:
/* 8014CCF0  38 C3 FF FC */	addi r6, r3, -4
/* 8014CCF4  38 85 FF FC */	addi r4, r5, -4
/* 8014CCF8  38 00 00 03 */	li r0, 3
/* 8014CCFC  7C 09 03 A6 */	mtctr r0
lbl_8014CD00:
/* 8014CD00  80 64 00 04 */	lwz r3, 4(r4)
/* 8014CD04  84 04 00 08 */	lwzu r0, 8(r4)
/* 8014CD08  90 66 00 04 */	stw r3, 4(r6)
/* 8014CD0C  94 06 00 08 */	stwu r0, 8(r6)
/* 8014CD10  42 00 FF F0 */	bdnz lbl_8014CD00
/* 8014CD14  80 04 00 04 */	lwz r0, 4(r4)
/* 8014CD18  90 06 00 04 */	stw r0, 4(r6)
/* 8014CD1C  4E 80 00 20 */	blr 
