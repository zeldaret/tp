lbl_802C0628:
/* 802C0628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C062C  7C 08 02 A6 */	mflr r0
/* 802C0630  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0634  38 63 00 08 */	addi r3, r3, 8
/* 802C0638  4B FF E5 C5 */	bl initAnime__15Z2SoundObjAnimeFPvbff
/* 802C063C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0640  7C 08 03 A6 */	mtlr r0
/* 802C0644  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0648  4E 80 00 20 */	blr 
