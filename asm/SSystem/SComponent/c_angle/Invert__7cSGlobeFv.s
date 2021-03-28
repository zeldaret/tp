lbl_80271B7C:
/* 80271B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80271B80  7C 08 02 A6 */	mflr r0
/* 80271B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271B88  C0 03 00 00 */	lfs f0, 0(r3)
/* 80271B8C  FC 00 00 50 */	fneg f0, f0
/* 80271B90  D0 03 00 00 */	stfs f0, 0(r3)
/* 80271B94  4B FF FD 1D */	bl Formal__7cSGlobeFv
/* 80271B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80271B9C  7C 08 03 A6 */	mtlr r0
/* 80271BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80271BA4  4E 80 00 20 */	blr 
