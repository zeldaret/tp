lbl_80B2CAA8:
/* 80B2CAA8  38 C3 FF FC */	addi r6, r3, -4
/* 80B2CAAC  38 85 FF FC */	addi r4, r5, -4
/* 80B2CAB0  38 00 00 03 */	li r0, 3
/* 80B2CAB4  7C 09 03 A6 */	mtctr r0
lbl_80B2CAB8:
/* 80B2CAB8  80 64 00 04 */	lwz r3, 4(r4)
/* 80B2CABC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80B2CAC0  90 66 00 04 */	stw r3, 4(r6)
/* 80B2CAC4  94 06 00 08 */	stwu r0, 8(r6)
/* 80B2CAC8  42 00 FF F0 */	bdnz lbl_80B2CAB8
/* 80B2CACC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B2CAD0  90 06 00 04 */	stw r0, 4(r6)
/* 80B2CAD4  4E 80 00 20 */	blr 
