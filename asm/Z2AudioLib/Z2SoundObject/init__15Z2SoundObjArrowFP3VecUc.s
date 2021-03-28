lbl_802BEB74:
/* 802BEB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BEB78  7C 08 02 A6 */	mflr r0
/* 802BEB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BEB80  4B FF F4 31 */	bl init__14Z2SoundObjBaseFP3VecUc
/* 802BEB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BEB88  7C 08 03 A6 */	mtlr r0
/* 802BEB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BEB90  4E 80 00 20 */	blr 
