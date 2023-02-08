lbl_80B45D7C:
/* 80B45D7C  38 C3 FF FC */	addi r6, r3, -4
/* 80B45D80  38 85 FF FC */	addi r4, r5, -4
/* 80B45D84  38 00 00 03 */	li r0, 3
/* 80B45D88  7C 09 03 A6 */	mtctr r0
lbl_80B45D8C:
/* 80B45D8C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B45D90  84 04 00 08 */	lwzu r0, 8(r4)
/* 80B45D94  90 66 00 04 */	stw r3, 4(r6)
/* 80B45D98  94 06 00 08 */	stwu r0, 8(r6)
/* 80B45D9C  42 00 FF F0 */	bdnz lbl_80B45D8C
/* 80B45DA0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B45DA4  90 06 00 04 */	stw r0, 4(r6)
/* 80B45DA8  4E 80 00 20 */	blr 
