lbl_802928D0:
/* 802928D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802928D4  7C 08 02 A6 */	mflr r0
/* 802928D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802928DC  38 63 00 5C */	addi r3, r3, 0x5c
/* 802928E0  48 00 0C 9D */	bl readImport__12JASTrackPortFUl
/* 802928E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802928E8  7C 08 03 A6 */	mtlr r0
/* 802928EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802928F0  4E 80 00 20 */	blr 
