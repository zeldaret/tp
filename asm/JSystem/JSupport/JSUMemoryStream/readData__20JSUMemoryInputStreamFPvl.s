lbl_802DC534:
/* 802DC534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC538  7C 08 02 A6 */	mflr r0
/* 802DC53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC544  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC548  7C 7E 1B 78 */	mr r30, r3
/* 802DC54C  7C BF 2B 78 */	mr r31, r5
/* 802DC550  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 802DC554  7C 05 FA 14 */	add r0, r5, r31
/* 802DC558  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802DC55C  7C 00 18 00 */	cmpw r0, r3
/* 802DC560  40 81 00 08 */	ble lbl_802DC568
/* 802DC564  7F E5 18 50 */	subf r31, r5, r3
lbl_802DC568:
/* 802DC568  2C 1F 00 00 */	cmpwi r31, 0
/* 802DC56C  40 81 00 24 */	ble lbl_802DC590
/* 802DC570  7C 83 23 78 */	mr r3, r4
/* 802DC574  80 1E 00 08 */	lwz r0, 8(r30)
/* 802DC578  7C 80 2A 14 */	add r4, r0, r5
/* 802DC57C  7F E5 FB 78 */	mr r5, r31
/* 802DC580  4B D2 6F C1 */	bl memcpy
/* 802DC584  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 802DC588  7C 00 FA 14 */	add r0, r0, r31
/* 802DC58C  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_802DC590:
/* 802DC590  7F E3 FB 78 */	mr r3, r31
/* 802DC594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC598  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC5A0  7C 08 03 A6 */	mtlr r0
/* 802DC5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC5A8  4E 80 00 20 */	blr 
