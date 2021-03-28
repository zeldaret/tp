lbl_802D57E4:
/* 802D57E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D57E8  7C 08 02 A6 */	mflr r0
/* 802D57EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D57F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D57F4  48 08 C9 E9 */	bl _savegpr_29
/* 802D57F8  7C 9D 23 78 */	mr r29, r4
/* 802D57FC  7C BE 2B 78 */	mr r30, r5
/* 802D5800  7C DF 33 78 */	mr r31, r6
/* 802D5804  48 07 2D 25 */	bl DVDConvertPathToEntrynum
/* 802D5808  2C 03 00 00 */	cmpwi r3, 0
/* 802D580C  40 80 00 0C */	bge lbl_802D5818
/* 802D5810  38 60 00 00 */	li r3, 0
/* 802D5814  48 00 00 14 */	b lbl_802D5828
lbl_802D5818:
/* 802D5818  7F A4 EB 78 */	mr r4, r29
/* 802D581C  7F C5 F3 78 */	mr r5, r30
/* 802D5820  7F E6 FB 78 */	mr r6, r31
/* 802D5824  48 00 00 A5 */	bl mount__10JKRArchiveFlQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
lbl_802D5828:
/* 802D5828  39 61 00 20 */	addi r11, r1, 0x20
/* 802D582C  48 08 C9 FD */	bl _restgpr_29
/* 802D5830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5834  7C 08 03 A6 */	mtlr r0
/* 802D5838  38 21 00 20 */	addi r1, r1, 0x20
/* 802D583C  4E 80 00 20 */	blr 
