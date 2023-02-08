lbl_802DE1BC:
/* 802DE1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE1C0  7C 08 02 A6 */	mflr r0
/* 802DE1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE1C8  7C 66 1B 78 */	mr r6, r3
/* 802DE1CC  38 60 00 00 */	li r3, 0
/* 802DE1D0  88 06 00 00 */	lbz r0, 0(r6)
/* 802DE1D4  2C 00 00 03 */	cmpwi r0, 3
/* 802DE1D8  41 82 00 34 */	beq lbl_802DE20C
/* 802DE1DC  40 80 00 14 */	bge lbl_802DE1F0
/* 802DE1E0  2C 00 00 01 */	cmpwi r0, 1
/* 802DE1E4  41 82 00 40 */	beq lbl_802DE224
/* 802DE1E8  40 80 00 14 */	bge lbl_802DE1FC
/* 802DE1EC  48 00 00 38 */	b lbl_802DE224
lbl_802DE1F0:
/* 802DE1F0  2C 00 00 05 */	cmpwi r0, 5
/* 802DE1F4  40 80 00 30 */	bge lbl_802DE224
/* 802DE1F8  48 00 00 24 */	b lbl_802DE21C
lbl_802DE1FC:
/* 802DE1FC  7C 83 23 78 */	mr r3, r4
/* 802DE200  38 86 00 02 */	addi r4, r6, 2
/* 802DE204  4B FF 79 35 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 802DE208  48 00 00 1C */	b lbl_802DE224
lbl_802DE20C:
/* 802DE20C  38 66 00 02 */	addi r3, r6, 2
/* 802DE210  7C A4 2B 78 */	mr r4, r5
/* 802DE214  4B FF 60 5D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 802DE218  48 00 00 0C */	b lbl_802DE224
lbl_802DE21C:
/* 802DE21C  38 66 00 02 */	addi r3, r6, 2
/* 802DE220  4B FF 60 05 */	bl getGlbResource__13JKRFileLoaderFPCc
lbl_802DE224:
/* 802DE224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE228  7C 08 03 A6 */	mtlr r0
/* 802DE22C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE230  4E 80 00 20 */	blr 
