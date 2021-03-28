lbl_801CEAE0:
/* 801CEAE0  38 A0 00 00 */	li r5, 0
/* 801CEAE4  80 C3 00 E8 */	lwz r6, 0xe8(r3)
/* 801CEAE8  80 03 00 EC */	lwz r0, 0xec(r3)
/* 801CEAEC  7C 09 03 A6 */	mtctr r0
/* 801CEAF0  2C 00 00 00 */	cmpwi r0, 0
/* 801CEAF4  40 81 00 20 */	ble lbl_801CEB14
lbl_801CEAF8:
/* 801CEAF8  88 06 00 00 */	lbz r0, 0(r6)
/* 801CEAFC  7C 00 20 00 */	cmpw r0, r4
/* 801CEB00  40 82 00 0C */	bne lbl_801CEB0C
/* 801CEB04  38 A0 00 01 */	li r5, 1
/* 801CEB08  48 00 00 0C */	b lbl_801CEB14
lbl_801CEB0C:
/* 801CEB0C  38 C6 00 01 */	addi r6, r6, 1
/* 801CEB10  42 00 FF E8 */	bdnz lbl_801CEAF8
lbl_801CEB14:
/* 801CEB14  7C A3 2B 78 */	mr r3, r5
/* 801CEB18  4E 80 00 20 */	blr 
