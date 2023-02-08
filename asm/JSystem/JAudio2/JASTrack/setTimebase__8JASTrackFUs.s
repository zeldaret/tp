lbl_80292BC0:
/* 80292BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80292BC4  7C 08 02 A6 */	mflr r0
/* 80292BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292BCC  B0 83 02 28 */	sth r4, 0x228(r3)
/* 80292BD0  38 80 00 01 */	li r4, 1
/* 80292BD4  88 03 02 16 */	lbz r0, 0x216(r3)
/* 80292BD8  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80292BDC  98 03 02 16 */	stb r0, 0x216(r3)
/* 80292BE0  4B FF F9 05 */	bl updateTempo__8JASTrackFv
/* 80292BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80292BE8  7C 08 03 A6 */	mtlr r0
/* 80292BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80292BF0  4E 80 00 20 */	blr 
