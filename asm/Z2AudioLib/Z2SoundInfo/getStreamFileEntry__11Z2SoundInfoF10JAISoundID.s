lbl_802BBA88:
/* 802BBA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BBA8C  7C 08 02 A6 */	mflr r0
/* 802BBA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBA94  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBA98  90 01 00 08 */	stw r0, 8(r1)
/* 802BBA9C  38 81 00 08 */	addi r4, r1, 8
/* 802BBAA0  4B FF FF 71 */	bl getStreamFilePath__11Z2SoundInfoF10JAISoundID
/* 802BBAA4  28 03 00 00 */	cmplwi r3, 0
/* 802BBAA8  40 82 00 0C */	bne lbl_802BBAB4
/* 802BBAAC  38 60 FF FF */	li r3, -1
/* 802BBAB0  48 00 00 08 */	b lbl_802BBAB8
lbl_802BBAB4:
/* 802BBAB4  48 08 CA 75 */	bl DVDConvertPathToEntrynum
lbl_802BBAB8:
/* 802BBAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BBABC  7C 08 03 A6 */	mtlr r0
/* 802BBAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BBAC4  4E 80 00 20 */	blr 
