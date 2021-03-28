lbl_80D511A8:
/* 80D511A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D511AC  7C 08 02 A6 */	mflr r0
/* 80D511B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D511B4  48 00 00 15 */	bl execute__14daTagLv7Gate_cFv
/* 80D511B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D511BC  7C 08 03 A6 */	mtlr r0
/* 80D511C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D511C4  4E 80 00 20 */	blr 
