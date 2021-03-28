lbl_80AB8C24:
/* 80AB8C24  38 C3 FF FC */	addi r6, r3, -4
/* 80AB8C28  38 85 FF FC */	addi r4, r5, -4
/* 80AB8C2C  38 00 00 03 */	li r0, 3
/* 80AB8C30  7C 09 03 A6 */	mtctr r0
lbl_80AB8C34:
/* 80AB8C34  80 64 00 04 */	lwz r3, 4(r4)
/* 80AB8C38  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AB8C3C  90 66 00 04 */	stw r3, 4(r6)
/* 80AB8C40  94 06 00 08 */	stwu r0, 8(r6)
/* 80AB8C44  42 00 FF F0 */	bdnz lbl_80AB8C34
/* 80AB8C48  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB8C4C  90 06 00 04 */	stw r0, 4(r6)
/* 80AB8C50  4E 80 00 20 */	blr 
