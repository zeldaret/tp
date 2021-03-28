lbl_80253AB4:
/* 80253AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80253AB8  7C 08 02 A6 */	mflr r0
/* 80253ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80253AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80253AC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80253AC8  7C 7E 1B 78 */	mr r30, r3
/* 80253ACC  7C 9F 23 78 */	mr r31, r4
/* 80253AD0  88 03 00 19 */	lbz r0, 0x19(r3)
/* 80253AD4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80253AD8  41 82 00 24 */	beq lbl_80253AFC
/* 80253ADC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80253AE0  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80253AE4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253AE8  48 0A 3F A5 */	bl getFirstChildPane__7J2DPaneFv
/* 80253AEC  7C 64 1B 78 */	mr r4, r3
/* 80253AF0  7F C3 F3 78 */	mr r3, r30
/* 80253AF4  7F E5 FB 78 */	mr r5, r31
/* 80253AF8  48 00 20 65 */	bl childPaneSetAlpha__13CPaneMgrAlphaFP7J2DPaneUc
lbl_80253AFC:
/* 80253AFC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80253B00  7F E4 FB 78 */	mr r4, r31
/* 80253B04  81 83 00 00 */	lwz r12, 0(r3)
/* 80253B08  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80253B0C  7D 89 03 A6 */	mtctr r12
/* 80253B10  4E 80 04 21 */	bctrl 
/* 80253B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80253B18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80253B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80253B20  7C 08 03 A6 */	mtlr r0
/* 80253B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80253B28  4E 80 00 20 */	blr 
