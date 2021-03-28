lbl_802FF6D8:
/* 802FF6D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FF6DC  7C 08 02 A6 */	mflr r0
/* 802FF6E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FF6E4  39 61 00 20 */	addi r11, r1, 0x20
/* 802FF6E8  48 06 2A F1 */	bl _savegpr_28
/* 802FF6EC  7C 7C 1B 78 */	mr r28, r3
/* 802FF6F0  7C 9D 23 78 */	mr r29, r4
/* 802FF6F4  7C BE 2B 78 */	mr r30, r5
/* 802FF6F8  7C DF 33 78 */	mr r31, r6
/* 802FF6FC  4B FF 64 FD */	bl __ct__7J2DPaneFv
/* 802FF700  3C 60 80 3D */	lis r3, __vt__10J2DTextBox@ha
/* 802FF704  38 03 D3 28 */	addi r0, r3, __vt__10J2DTextBox@l
/* 802FF708  90 1C 00 00 */	stw r0, 0(r28)
/* 802FF70C  38 60 00 00 */	li r3, 0
/* 802FF710  90 7C 01 00 */	stw r3, 0x100(r28)
/* 802FF714  38 00 FF FF */	li r0, -1
/* 802FF718  90 1C 01 04 */	stw r0, 0x104(r28)
/* 802FF71C  90 1C 01 08 */	stw r0, 0x108(r28)
/* 802FF720  90 7C 01 24 */	stw r3, 0x124(r28)
/* 802FF724  90 1C 01 28 */	stw r0, 0x128(r28)
/* 802FF728  90 1C 01 2C */	stw r0, 0x12c(r28)
/* 802FF72C  7F 83 E3 78 */	mr r3, r28
/* 802FF730  7F A4 EB 78 */	mr r4, r29
/* 802FF734  7F C5 F3 78 */	mr r5, r30
/* 802FF738  7F E6 FB 78 */	mr r6, r31
/* 802FF73C  48 00 07 4D */	bl private_readStream__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamP10JKRArchive
/* 802FF740  7F 83 E3 78 */	mr r3, r28
/* 802FF744  39 61 00 20 */	addi r11, r1, 0x20
/* 802FF748  48 06 2A DD */	bl _restgpr_28
/* 802FF74C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FF750  7C 08 03 A6 */	mtlr r0
/* 802FF754  38 21 00 20 */	addi r1, r1, 0x20
/* 802FF758  4E 80 00 20 */	blr 
