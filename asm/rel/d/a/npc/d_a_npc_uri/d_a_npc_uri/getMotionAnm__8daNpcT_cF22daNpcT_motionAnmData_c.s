lbl_80B2CAD8:
/* 80B2CAD8  38 C3 FF FC */	addi r6, r3, -4
/* 80B2CADC  38 85 FF FC */	addi r4, r5, -4
/* 80B2CAE0  38 00 00 03 */	li r0, 3
/* 80B2CAE4  7C 09 03 A6 */	mtctr r0
lbl_80B2CAE8:
/* 80B2CAE8  80 64 00 04 */	lwz r3, 4(r4)
/* 80B2CAEC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80B2CAF0  90 66 00 04 */	stw r3, 4(r6)
/* 80B2CAF4  94 06 00 08 */	stwu r0, 8(r6)
/* 80B2CAF8  42 00 FF F0 */	bdnz lbl_80B2CAE8
/* 80B2CAFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B2CB00  90 06 00 04 */	stw r0, 4(r6)
/* 80B2CB04  4E 80 00 20 */	blr 
