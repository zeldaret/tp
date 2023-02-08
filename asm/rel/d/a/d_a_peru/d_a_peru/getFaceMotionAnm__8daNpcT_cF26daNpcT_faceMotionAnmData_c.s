lbl_80D4BD20:
/* 80D4BD20  38 C3 FF FC */	addi r6, r3, -4
/* 80D4BD24  38 85 FF FC */	addi r4, r5, -4
/* 80D4BD28  38 00 00 03 */	li r0, 3
/* 80D4BD2C  7C 09 03 A6 */	mtctr r0
lbl_80D4BD30:
/* 80D4BD30  80 64 00 04 */	lwz r3, 4(r4)
/* 80D4BD34  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D4BD38  90 66 00 04 */	stw r3, 4(r6)
/* 80D4BD3C  94 06 00 08 */	stwu r0, 8(r6)
/* 80D4BD40  42 00 FF F0 */	bdnz lbl_80D4BD30
/* 80D4BD44  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4BD48  90 06 00 04 */	stw r0, 4(r6)
/* 80D4BD4C  4E 80 00 20 */	blr 
