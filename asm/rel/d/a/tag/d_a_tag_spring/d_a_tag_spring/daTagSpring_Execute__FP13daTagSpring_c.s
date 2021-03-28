lbl_805A6E04:
/* 805A6E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6E08  7C 08 02 A6 */	mflr r0
/* 805A6E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6E10  4B FF FD 4D */	bl execute__13daTagSpring_cFv
/* 805A6E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6E18  7C 08 03 A6 */	mtlr r0
/* 805A6E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6E20  4E 80 00 20 */	blr 
