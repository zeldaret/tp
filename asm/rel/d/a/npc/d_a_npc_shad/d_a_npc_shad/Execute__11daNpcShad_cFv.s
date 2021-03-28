lbl_80AD9114:
/* 80AD9114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD9118  7C 08 02 A6 */	mflr r0
/* 80AD911C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD9120  4B 67 8E F4 */	b execute__8daNpcF_cFv
/* 80AD9124  38 60 00 01 */	li r3, 1
/* 80AD9128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD912C  7C 08 03 A6 */	mtlr r0
/* 80AD9130  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD9134  4E 80 00 20 */	blr 
