lbl_809D6C78:
/* 809D6C78  38 C3 FF FC */	addi r6, r3, -4
/* 809D6C7C  38 85 FF FC */	addi r4, r5, -4
/* 809D6C80  38 00 00 03 */	li r0, 3
/* 809D6C84  7C 09 03 A6 */	mtctr r0
lbl_809D6C88:
/* 809D6C88  80 64 00 04 */	lwz r3, 4(r4)
/* 809D6C8C  84 04 00 08 */	lwzu r0, 8(r4)
/* 809D6C90  90 66 00 04 */	stw r3, 4(r6)
/* 809D6C94  94 06 00 08 */	stwu r0, 8(r6)
/* 809D6C98  42 00 FF F0 */	bdnz lbl_809D6C88
/* 809D6C9C  80 04 00 04 */	lwz r0, 4(r4)
/* 809D6CA0  90 06 00 04 */	stw r0, 4(r6)
/* 809D6CA4  4E 80 00 20 */	blr 
