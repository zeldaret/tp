lbl_805A693C:
/* 805A693C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6940  7C 08 02 A6 */	mflr r0
/* 805A6944  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6948  4B FF FA B1 */	bl execute__12daTagMstop_cFv
/* 805A694C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6950  7C 08 03 A6 */	mtlr r0
/* 805A6954  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6958  4E 80 00 20 */	blr 
