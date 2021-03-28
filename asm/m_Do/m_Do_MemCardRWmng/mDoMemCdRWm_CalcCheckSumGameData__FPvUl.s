lbl_80017CB4:
/* 80017CB4  38 C0 00 00 */	li r6, 0
/* 80017CB8  38 A0 00 00 */	li r5, 0
/* 80017CBC  7C 89 03 A6 */	mtctr r4
/* 80017CC0  28 04 00 00 */	cmplwi r4, 0
/* 80017CC4  40 81 00 1C */	ble lbl_80017CE0
lbl_80017CC8:
/* 80017CC8  88 03 00 00 */	lbz r0, 0(r3)
/* 80017CCC  7C A5 02 14 */	add r5, r5, r0
/* 80017CD0  7C 00 00 F8 */	nor r0, r0, r0
/* 80017CD4  7C C6 02 14 */	add r6, r6, r0
/* 80017CD8  38 63 00 01 */	addi r3, r3, 1
/* 80017CDC  42 00 FF EC */	bdnz lbl_80017CC8
lbl_80017CE0:
/* 80017CE0  7C C4 33 78 */	mr r4, r6
/* 80017CE4  7C A3 2B 78 */	mr r3, r5
/* 80017CE8  4E 80 00 20 */	blr 
