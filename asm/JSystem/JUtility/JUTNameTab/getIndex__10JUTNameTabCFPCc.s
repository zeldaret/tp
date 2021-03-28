lbl_802DEA58:
/* 802DEA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DEA5C  7C 08 02 A6 */	mflr r0
/* 802DEA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEA64  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEA68  48 08 37 69 */	bl _savegpr_26
/* 802DEA6C  7C 7F 1B 78 */	mr r31, r3
/* 802DEA70  7C 9A 23 78 */	mr r26, r4
/* 802DEA74  80 A3 00 04 */	lwz r5, 4(r3)
/* 802DEA78  3B 85 00 04 */	addi r28, r5, 4
/* 802DEA7C  48 00 00 AD */	bl calcKeyCode__10JUTNameTabCFPCc
/* 802DEA80  3B 60 00 00 */	li r27, 0
/* 802DEA84  83 BF 00 04 */	lwz r29, 4(r31)
/* 802DEA88  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 802DEA8C  A3 FF 00 0C */	lhz r31, 0xc(r31)
/* 802DEA90  48 00 00 40 */	b lbl_802DEAD0
lbl_802DEA94:
/* 802DEA94  A0 1C 00 00 */	lhz r0, 0(r28)
/* 802DEA98  7C 00 F0 40 */	cmplw r0, r30
/* 802DEA9C  40 82 00 2C */	bne lbl_802DEAC8
/* 802DEAA0  57 63 13 BA */	rlwinm r3, r27, 2, 0xe, 0x1d
/* 802DEAA4  38 03 00 06 */	addi r0, r3, 6
/* 802DEAA8  7C 1D 02 2E */	lhzx r0, r29, r0
/* 802DEAAC  7C 7D 02 14 */	add r3, r29, r0
/* 802DEAB0  7F 44 D3 78 */	mr r4, r26
/* 802DEAB4  48 08 9E E1 */	bl strcmp
/* 802DEAB8  2C 03 00 00 */	cmpwi r3, 0
/* 802DEABC  40 82 00 0C */	bne lbl_802DEAC8
/* 802DEAC0  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 802DEAC4  48 00 00 1C */	b lbl_802DEAE0
lbl_802DEAC8:
/* 802DEAC8  3B 9C 00 04 */	addi r28, r28, 4
/* 802DEACC  3B 7B 00 01 */	addi r27, r27, 1
lbl_802DEAD0:
/* 802DEAD0  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 802DEAD4  7C 00 F8 40 */	cmplw r0, r31
/* 802DEAD8  41 80 FF BC */	blt lbl_802DEA94
/* 802DEADC  38 60 FF FF */	li r3, -1
lbl_802DEAE0:
/* 802DEAE0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEAE4  48 08 37 39 */	bl _restgpr_26
/* 802DEAE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DEAEC  7C 08 03 A6 */	mtlr r0
/* 802DEAF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802DEAF4  4E 80 00 20 */	blr 
