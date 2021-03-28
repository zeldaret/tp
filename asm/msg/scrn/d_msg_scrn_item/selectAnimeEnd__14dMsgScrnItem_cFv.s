lbl_80240080:
/* 80240080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80240084  7C 08 02 A6 */	mflr r0
/* 80240088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024008C  80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 80240090  4B FF A5 F1 */	bl selAnimeEnd__17dMsgScrn3Select_cFv
/* 80240094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80240098  7C 08 03 A6 */	mtlr r0
/* 8024009C  38 21 00 10 */	addi r1, r1, 0x10
/* 802400A0  4E 80 00 20 */	blr 
