lbl_809BE1F8:
/* 809BE1F8  38 C3 FF FC */	addi r6, r3, -4
/* 809BE1FC  38 85 FF FC */	addi r4, r5, -4
/* 809BE200  38 00 00 03 */	li r0, 3
/* 809BE204  7C 09 03 A6 */	mtctr r0
lbl_809BE208:
/* 809BE208  80 64 00 04 */	lwz r3, 4(r4)
/* 809BE20C  84 04 00 08 */	lwzu r0, 8(r4)
/* 809BE210  90 66 00 04 */	stw r3, 4(r6)
/* 809BE214  94 06 00 08 */	stwu r0, 8(r6)
/* 809BE218  42 00 FF F0 */	bdnz lbl_809BE208
/* 809BE21C  80 04 00 04 */	lwz r0, 4(r4)
/* 809BE220  90 06 00 04 */	stw r0, 4(r6)
/* 809BE224  4E 80 00 20 */	blr 
