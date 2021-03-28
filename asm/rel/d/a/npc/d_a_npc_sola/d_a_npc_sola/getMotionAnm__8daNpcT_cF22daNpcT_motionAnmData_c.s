lbl_80AEEE98:
/* 80AEEE98  38 C3 FF FC */	addi r6, r3, -4
/* 80AEEE9C  38 85 FF FC */	addi r4, r5, -4
/* 80AEEEA0  38 00 00 03 */	li r0, 3
/* 80AEEEA4  7C 09 03 A6 */	mtctr r0
lbl_80AEEEA8:
/* 80AEEEA8  80 64 00 04 */	lwz r3, 4(r4)
/* 80AEEEAC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AEEEB0  90 66 00 04 */	stw r3, 4(r6)
/* 80AEEEB4  94 06 00 08 */	stwu r0, 8(r6)
/* 80AEEEB8  42 00 FF F0 */	bdnz lbl_80AEEEA8
/* 80AEEEBC  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEEEC0  90 06 00 04 */	stw r0, 4(r6)
/* 80AEEEC4  4E 80 00 20 */	blr 
