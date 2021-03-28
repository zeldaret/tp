lbl_8099CEC4:
/* 8099CEC4  38 C3 FF FC */	addi r6, r3, -4
/* 8099CEC8  38 85 FF FC */	addi r4, r5, -4
/* 8099CECC  38 00 00 03 */	li r0, 3
/* 8099CED0  7C 09 03 A6 */	mtctr r0
lbl_8099CED4:
/* 8099CED4  80 64 00 04 */	lwz r3, 4(r4)
/* 8099CED8  84 04 00 08 */	lwzu r0, 8(r4)
/* 8099CEDC  90 66 00 04 */	stw r3, 4(r6)
/* 8099CEE0  94 06 00 08 */	stwu r0, 8(r6)
/* 8099CEE4  42 00 FF F0 */	bdnz lbl_8099CED4
/* 8099CEE8  80 04 00 04 */	lwz r0, 4(r4)
/* 8099CEEC  90 06 00 04 */	stw r0, 4(r6)
/* 8099CEF0  4E 80 00 20 */	blr 
