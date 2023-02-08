lbl_80B4CB70:
/* 80B4CB70  38 C3 FF FC */	addi r6, r3, -4
/* 80B4CB74  38 85 FF FC */	addi r4, r5, -4
/* 80B4CB78  38 00 00 03 */	li r0, 3
/* 80B4CB7C  7C 09 03 A6 */	mtctr r0
lbl_80B4CB80:
/* 80B4CB80  80 64 00 04 */	lwz r3, 4(r4)
/* 80B4CB84  84 04 00 08 */	lwzu r0, 8(r4)
/* 80B4CB88  90 66 00 04 */	stw r3, 4(r6)
/* 80B4CB8C  94 06 00 08 */	stwu r0, 8(r6)
/* 80B4CB90  42 00 FF F0 */	bdnz lbl_80B4CB80
/* 80B4CB94  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4CB98  90 06 00 04 */	stw r0, 4(r6)
/* 80B4CB9C  4E 80 00 20 */	blr 
