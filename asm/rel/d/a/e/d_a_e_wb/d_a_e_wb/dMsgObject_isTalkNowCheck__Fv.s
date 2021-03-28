lbl_807E25BC:
/* 807E25BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E25C0  7C 08 02 A6 */	mflr r0
/* 807E25C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E25C8  4B A5 5C 64 */	b getStatus__12dMsgObject_cFv
/* 807E25CC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 807E25D0  20 60 00 01 */	subfic r3, r0, 1
/* 807E25D4  30 03 FF FF */	addic r0, r3, -1
/* 807E25D8  7C 60 19 10 */	subfe r3, r0, r3
/* 807E25DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E25E0  7C 08 03 A6 */	mtlr r0
/* 807E25E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E25E8  4E 80 00 20 */	blr 
