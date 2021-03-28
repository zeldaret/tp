lbl_805A4134:
/* 805A4134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4138  7C 08 02 A6 */	mflr r0
/* 805A413C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4140  4B FF FD 31 */	bl execute__12daTagHjump_cFv
/* 805A4144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4148  7C 08 03 A6 */	mtlr r0
/* 805A414C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4150  4E 80 00 20 */	blr 
