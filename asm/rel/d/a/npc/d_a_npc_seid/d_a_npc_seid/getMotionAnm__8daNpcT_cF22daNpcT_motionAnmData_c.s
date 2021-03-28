lbl_80ACB204:
/* 80ACB204  38 C3 FF FC */	addi r6, r3, -4
/* 80ACB208  38 85 FF FC */	addi r4, r5, -4
/* 80ACB20C  38 00 00 03 */	li r0, 3
/* 80ACB210  7C 09 03 A6 */	mtctr r0
lbl_80ACB214:
/* 80ACB214  80 64 00 04 */	lwz r3, 4(r4)
/* 80ACB218  84 04 00 08 */	lwzu r0, 8(r4)
/* 80ACB21C  90 66 00 04 */	stw r3, 4(r6)
/* 80ACB220  94 06 00 08 */	stwu r0, 8(r6)
/* 80ACB224  42 00 FF F0 */	bdnz lbl_80ACB214
/* 80ACB228  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACB22C  90 06 00 04 */	stw r0, 4(r6)
/* 80ACB230  4E 80 00 20 */	blr 
