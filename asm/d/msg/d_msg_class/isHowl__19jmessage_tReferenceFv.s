lbl_80228FA4:
/* 80228FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228FA8  7C 08 02 A6 */	mflr r0
/* 80228FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228FB0  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80228FB4  28 03 00 00 */	cmplwi r3, 0
/* 80228FB8  40 82 00 0C */	bne lbl_80228FC4
/* 80228FBC  38 60 00 00 */	li r3, 0
/* 80228FC0  48 00 00 08 */	b lbl_80228FC8
lbl_80228FC4:
/* 80228FC4  48 00 E1 25 */	bl isHowlMessage__12dMsgObject_cFv
lbl_80228FC8:
/* 80228FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228FCC  7C 08 03 A6 */	mtlr r0
/* 80228FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80228FD4  4E 80 00 20 */	blr 
