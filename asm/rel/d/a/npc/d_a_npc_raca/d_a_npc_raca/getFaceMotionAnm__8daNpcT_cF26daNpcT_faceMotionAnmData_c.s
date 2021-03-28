lbl_80AB8BF4:
/* 80AB8BF4  38 C3 FF FC */	addi r6, r3, -4
/* 80AB8BF8  38 85 FF FC */	addi r4, r5, -4
/* 80AB8BFC  38 00 00 03 */	li r0, 3
/* 80AB8C00  7C 09 03 A6 */	mtctr r0
lbl_80AB8C04:
/* 80AB8C04  80 64 00 04 */	lwz r3, 4(r4)
/* 80AB8C08  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AB8C0C  90 66 00 04 */	stw r3, 4(r6)
/* 80AB8C10  94 06 00 08 */	stwu r0, 8(r6)
/* 80AB8C14  42 00 FF F0 */	bdnz lbl_80AB8C04
/* 80AB8C18  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB8C1C  90 06 00 04 */	stw r0, 4(r6)
/* 80AB8C20  4E 80 00 20 */	blr 
