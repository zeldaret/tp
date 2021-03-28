lbl_80B4CB40:
/* 80B4CB40  38 C3 FF FC */	addi r6, r3, -4
/* 80B4CB44  38 85 FF FC */	addi r4, r5, -4
/* 80B4CB48  38 00 00 03 */	li r0, 3
/* 80B4CB4C  7C 09 03 A6 */	mtctr r0
lbl_80B4CB50:
/* 80B4CB50  80 64 00 04 */	lwz r3, 4(r4)
/* 80B4CB54  84 04 00 08 */	lwzu r0, 8(r4)
/* 80B4CB58  90 66 00 04 */	stw r3, 4(r6)
/* 80B4CB5C  94 06 00 08 */	stwu r0, 8(r6)
/* 80B4CB60  42 00 FF F0 */	bdnz lbl_80B4CB50
/* 80B4CB64  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4CB68  90 06 00 04 */	stw r0, 4(r6)
/* 80B4CB6C  4E 80 00 20 */	blr 
