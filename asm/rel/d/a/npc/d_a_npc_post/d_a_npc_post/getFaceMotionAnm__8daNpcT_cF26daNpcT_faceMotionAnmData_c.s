lbl_80AACEA0:
/* 80AACEA0  38 C3 FF FC */	addi r6, r3, -4
/* 80AACEA4  38 85 FF FC */	addi r4, r5, -4
/* 80AACEA8  38 00 00 03 */	li r0, 3
/* 80AACEAC  7C 09 03 A6 */	mtctr r0
lbl_80AACEB0:
/* 80AACEB0  80 64 00 04 */	lwz r3, 4(r4)
/* 80AACEB4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AACEB8  90 66 00 04 */	stw r3, 4(r6)
/* 80AACEBC  94 06 00 08 */	stwu r0, 8(r6)
/* 80AACEC0  42 00 FF F0 */	bdnz lbl_80AACEB0
/* 80AACEC4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AACEC8  90 06 00 04 */	stw r0, 4(r6)
/* 80AACECC  4E 80 00 20 */	blr 
