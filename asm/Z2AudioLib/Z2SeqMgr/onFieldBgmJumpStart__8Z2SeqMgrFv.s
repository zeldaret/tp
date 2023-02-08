lbl_802B5750:
/* 802B5750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B5754  7C 08 02 A6 */	mflr r0
/* 802B5758  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B575C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B5760  7C 7F 1B 78 */	mr r31, r3
/* 802B5764  7F E4 FB 78 */	mr r4, r31
/* 802B5768  38 A0 00 05 */	li r5, 5
/* 802B576C  4B FF E7 D5 */	bl getChildTrackVolume__8Z2SeqMgrFP14JAISoundHandlei
/* 802B5770  D0 3F 00 C8 */	stfs f1, 0xc8(r31)
/* 802B5774  7F E3 FB 78 */	mr r3, r31
/* 802B5778  7F E4 FB 78 */	mr r4, r31
/* 802B577C  38 A0 00 0C */	li r5, 0xc
/* 802B5780  4B FF E7 C1 */	bl getChildTrackVolume__8Z2SeqMgrFP14JAISoundHandlei
/* 802B5784  D0 3F 00 CC */	stfs f1, 0xcc(r31)
/* 802B5788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B578C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B5790  7C 08 03 A6 */	mtlr r0
/* 802B5794  38 21 00 10 */	addi r1, r1, 0x10
/* 802B5798  4E 80 00 20 */	blr 
