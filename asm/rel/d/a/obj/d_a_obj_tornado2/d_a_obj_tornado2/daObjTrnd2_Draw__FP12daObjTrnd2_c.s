lbl_80D1D330:
/* 80D1D330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D334  7C 08 02 A6 */	mflr r0
/* 80D1D338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D33C  4B FF FF A5 */	bl draw__12daObjTrnd2_cFv
/* 80D1D340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D344  7C 08 03 A6 */	mtlr r0
/* 80D1D348  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D34C  4E 80 00 20 */	blr 
