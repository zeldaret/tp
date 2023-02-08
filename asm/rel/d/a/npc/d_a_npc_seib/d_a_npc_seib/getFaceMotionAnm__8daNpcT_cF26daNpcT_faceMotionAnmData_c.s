lbl_80AC6E9C:
/* 80AC6E9C  38 C3 FF FC */	addi r6, r3, -4
/* 80AC6EA0  38 85 FF FC */	addi r4, r5, -4
/* 80AC6EA4  38 00 00 03 */	li r0, 3
/* 80AC6EA8  7C 09 03 A6 */	mtctr r0
lbl_80AC6EAC:
/* 80AC6EAC  80 64 00 04 */	lwz r3, 4(r4)
/* 80AC6EB0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AC6EB4  90 66 00 04 */	stw r3, 4(r6)
/* 80AC6EB8  94 06 00 08 */	stwu r0, 8(r6)
/* 80AC6EBC  42 00 FF F0 */	bdnz lbl_80AC6EAC
/* 80AC6EC0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC6EC4  90 06 00 04 */	stw r0, 4(r6)
/* 80AC6EC8  4E 80 00 20 */	blr 
