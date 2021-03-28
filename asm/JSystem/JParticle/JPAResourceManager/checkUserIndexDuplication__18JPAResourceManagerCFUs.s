lbl_80273EA8:
/* 80273EA8  38 A0 00 00 */	li r5, 0
/* 80273EAC  A0 E3 00 0E */	lhz r7, 0xe(r3)
/* 80273EB0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80273EB4  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80273EB8  7C E9 03 A6 */	mtctr r7
/* 80273EBC  2C 07 00 00 */	cmpwi r7, 0
/* 80273EC0  40 81 00 24 */	ble lbl_80273EE4
lbl_80273EC4:
/* 80273EC4  7C 66 28 2E */	lwzx r3, r6, r5
/* 80273EC8  A0 63 00 3C */	lhz r3, 0x3c(r3)
/* 80273ECC  7C 00 18 40 */	cmplw r0, r3
/* 80273ED0  40 82 00 0C */	bne lbl_80273EDC
/* 80273ED4  38 60 00 01 */	li r3, 1
/* 80273ED8  4E 80 00 20 */	blr 
lbl_80273EDC:
/* 80273EDC  38 A5 00 04 */	addi r5, r5, 4
/* 80273EE0  42 00 FF E4 */	bdnz lbl_80273EC4
lbl_80273EE4:
/* 80273EE4  38 60 00 00 */	li r3, 0
/* 80273EE8  4E 80 00 20 */	blr 
