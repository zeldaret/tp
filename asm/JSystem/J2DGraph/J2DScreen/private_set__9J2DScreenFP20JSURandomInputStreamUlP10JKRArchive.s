lbl_802F8778:
/* 802F8778  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F877C  7C 08 02 A6 */	mflr r0
/* 802F8780  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F8784  39 61 00 20 */	addi r11, r1, 0x20
/* 802F8788  48 06 9A 51 */	bl _savegpr_28
/* 802F878C  7C 7C 1B 78 */	mr r28, r3
/* 802F8790  7C 9D 23 78 */	mr r29, r4
/* 802F8794  7C BE 2B 78 */	mr r30, r5
/* 802F8798  7C DF 33 78 */	mr r31, r6
/* 802F879C  48 00 00 99 */	bl checkSignature__9J2DScreenFP20JSURandomInputStream
/* 802F87A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F87A4  40 82 00 0C */	bne lbl_802F87B0
/* 802F87A8  38 60 00 00 */	li r3, 0
/* 802F87AC  48 00 00 70 */	b lbl_802F881C
lbl_802F87B0:
/* 802F87B0  7F 83 E3 78 */	mr r3, r28
/* 802F87B4  7F A4 EB 78 */	mr r4, r29
/* 802F87B8  48 00 00 DD */	bl getScreenInformation__9J2DScreenFP20JSURandomInputStream
/* 802F87BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F87C0  40 82 00 0C */	bne lbl_802F87CC
/* 802F87C4  38 60 00 00 */	li r3, 0
/* 802F87C8  48 00 00 54 */	b lbl_802F881C
lbl_802F87CC:
/* 802F87CC  7F 83 E3 78 */	mr r3, r28
/* 802F87D0  7F 84 E3 78 */	mr r4, r28
/* 802F87D4  7F A5 EB 78 */	mr r5, r29
/* 802F87D8  7F C6 F3 78 */	mr r6, r30
/* 802F87DC  7F E7 FB 78 */	mr r7, r31
/* 802F87E0  48 00 01 B1 */	bl makeHierarchyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreamUlP10JKRArchive
/* 802F87E4  20 63 00 02 */	subfic r3, r3, 2
/* 802F87E8  30 03 FF FF */	addic r0, r3, -1
/* 802F87EC  7F E0 19 10 */	subfe r31, r0, r3
/* 802F87F0  57 C0 02 DF */	rlwinm. r0, r30, 0, 0xb, 0xf
/* 802F87F4  40 82 00 0C */	bne lbl_802F8800
/* 802F87F8  7F 83 E3 78 */	mr r3, r28
/* 802F87FC  4B FF FD AD */	bl clean__9J2DScreenFv
lbl_802F8800:
/* 802F8800  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802F8804  41 82 00 14 */	beq lbl_802F8818
/* 802F8808  88 1D 00 04 */	lbz r0, 4(r29)
/* 802F880C  7C 00 00 34 */	cntlzw r0, r0
/* 802F8810  54 03 D9 7E */	srwi r3, r0, 5
/* 802F8814  48 00 00 08 */	b lbl_802F881C
lbl_802F8818:
/* 802F8818  38 60 00 00 */	li r3, 0
lbl_802F881C:
/* 802F881C  39 61 00 20 */	addi r11, r1, 0x20
/* 802F8820  48 06 9A 05 */	bl _restgpr_28
/* 802F8824  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F8828  7C 08 03 A6 */	mtlr r0
/* 802F882C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F8830  4E 80 00 20 */	blr 
