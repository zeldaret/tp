lbl_8030BC60:
/* 8030BC60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030BC64  7C 08 02 A6 */	mflr r0
/* 8030BC68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8030BC6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8030BC70  48 05 65 6D */	bl _savegpr_29
/* 8030BC74  7C 7D 1B 78 */	mr r29, r3
/* 8030BC78  7C 9E 23 79 */	or. r30, r4, r4
/* 8030BC7C  41 82 00 7C */	beq lbl_8030BCF8
/* 8030BC80  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 8030BC84  28 00 00 00 */	cmplwi r0, 0
/* 8030BC88  41 82 00 70 */	beq lbl_8030BCF8
/* 8030BC8C  3B E0 00 00 */	li r31, 0
/* 8030BC90  48 00 00 4C */	b lbl_8030BCDC
lbl_8030BC94:
/* 8030BC94  38 7D 00 34 */	addi r3, r29, 0x34
/* 8030BC98  7F E4 FB 78 */	mr r4, r31
/* 8030BC9C  4B FD 2E 5D */	bl getName__10JUTNameTabCFUs
/* 8030BCA0  7C 64 1B 78 */	mr r4, r3
/* 8030BCA4  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 8030BCA8  4B FD 2D B1 */	bl getIndex__10JUTNameTabCFPCc
/* 8030BCAC  2C 03 FF FF */	cmpwi r3, -1
/* 8030BCB0  41 82 00 14 */	beq lbl_8030BCC4
/* 8030BCB4  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 8030BCB8  57 E0 0B FC */	rlwinm r0, r31, 1, 0xf, 0x1e
/* 8030BCBC  7C 64 03 2E */	sthx r3, r4, r0
/* 8030BCC0  48 00 00 18 */	b lbl_8030BCD8
lbl_8030BCC4:
/* 8030BCC4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8030BCC8  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8030BCCC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8030BCD0  57 E0 0B FC */	rlwinm r0, r31, 1, 0xf, 0x1e
/* 8030BCD4  7C 83 03 2E */	sthx r4, r3, r0
lbl_8030BCD8:
/* 8030BCD8  3B FF 00 01 */	addi r31, r31, 1
lbl_8030BCDC:
/* 8030BCDC  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8030BCE0  A0 7D 00 18 */	lhz r3, 0x18(r29)
/* 8030BCE4  38 00 00 03 */	li r0, 3
/* 8030BCE8  7C 03 03 D6 */	divw r0, r3, r0
/* 8030BCEC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8030BCF0  7C 04 00 40 */	cmplw r4, r0
/* 8030BCF4  41 80 FF A0 */	blt lbl_8030BC94
lbl_8030BCF8:
/* 8030BCF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8030BCFC  48 05 65 2D */	bl _restgpr_29
/* 8030BD00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030BD04  7C 08 03 A6 */	mtlr r0
/* 8030BD08  38 21 00 20 */	addi r1, r1, 0x20
/* 8030BD0C  4E 80 00 20 */	blr 
