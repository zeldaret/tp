lbl_80AD4678:
/* 80AD4678  38 C3 FF FC */	addi r6, r3, -4
/* 80AD467C  38 85 FF FC */	addi r4, r5, -4
/* 80AD4680  38 00 00 03 */	li r0, 3
/* 80AD4684  7C 09 03 A6 */	mtctr r0
lbl_80AD4688:
/* 80AD4688  80 64 00 04 */	lwz r3, 4(r4)
/* 80AD468C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AD4690  90 66 00 04 */	stw r3, 4(r6)
/* 80AD4694  94 06 00 08 */	stwu r0, 8(r6)
/* 80AD4698  42 00 FF F0 */	bdnz lbl_80AD4688
/* 80AD469C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD46A0  90 06 00 04 */	stw r0, 4(r6)
/* 80AD46A4  4E 80 00 20 */	blr 
