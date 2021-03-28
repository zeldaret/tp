lbl_80292B8C:
/* 80292B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80292B90  7C 08 02 A6 */	mflr r0
/* 80292B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292B98  D0 23 02 1C */	stfs f1, 0x21c(r3)
/* 80292B9C  38 80 00 01 */	li r4, 1
/* 80292BA0  88 03 02 16 */	lbz r0, 0x216(r3)
/* 80292BA4  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80292BA8  98 03 02 16 */	stb r0, 0x216(r3)
/* 80292BAC  4B FF F9 39 */	bl updateTempo__8JASTrackFv
/* 80292BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80292BB4  7C 08 03 A6 */	mtlr r0
/* 80292BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80292BBC  4E 80 00 20 */	blr 
