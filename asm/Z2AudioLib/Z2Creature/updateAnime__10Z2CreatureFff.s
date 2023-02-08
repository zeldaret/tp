lbl_802C06D0:
/* 802C06D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C06D4  7C 08 02 A6 */	mflr r0
/* 802C06D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C06DC  38 63 00 08 */	addi r3, r3, 8
/* 802C06E0  4B FF E7 F5 */	bl updateAnime__15Z2SoundObjAnimeFff
/* 802C06E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C06E8  7C 08 03 A6 */	mtlr r0
/* 802C06EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C06F0  4E 80 00 20 */	blr 
