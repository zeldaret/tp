lbl_80294AA4:
/* 80294AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294AA8  7C 08 02 A6 */	mflr r0
/* 80294AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294AB0  7C 83 23 78 */	mr r3, r4
/* 80294AB4  80 05 00 00 */	lwz r0, 0(r5)
/* 80294AB8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80294ABC  4B FF E0 9D */	bl setTempo__8JASTrackFUs
/* 80294AC0  38 60 00 00 */	li r3, 0
/* 80294AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294AC8  7C 08 03 A6 */	mtlr r0
/* 80294ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80294AD0  4E 80 00 20 */	blr 
