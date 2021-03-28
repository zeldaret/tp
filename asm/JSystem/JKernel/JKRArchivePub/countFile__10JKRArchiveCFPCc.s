lbl_802D6150:
/* 802D6150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6154  7C 08 02 A6 */	mflr r0
/* 802D6158  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D615C  88 04 00 00 */	lbz r0, 0(r4)
/* 802D6160  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D6164  40 82 00 20 */	bne lbl_802D6184
/* 802D6168  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802D616C  7C 00 07 75 */	extsb. r0, r0
/* 802D6170  40 82 00 08 */	bne lbl_802D6178
/* 802D6174  38 80 00 00 */	li r4, 0
lbl_802D6178:
/* 802D6178  38 A0 00 00 */	li r5, 0
/* 802D617C  48 00 02 A1 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 802D6180  48 00 00 0C */	b lbl_802D618C
lbl_802D6184:
/* 802D6184  80 AD 8E A0 */	lwz r5, sCurrentDirID__10JKRArchive(r13)
/* 802D6188  48 00 02 95 */	bl findDirectory__10JKRArchiveCFPCcUl
lbl_802D618C:
/* 802D618C  28 03 00 00 */	cmplwi r3, 0
/* 802D6190  41 82 00 0C */	beq lbl_802D619C
/* 802D6194  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 802D6198  48 00 00 08 */	b lbl_802D61A0
lbl_802D619C:
/* 802D619C  38 60 00 00 */	li r3, 0
lbl_802D61A0:
/* 802D61A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D61A4  7C 08 03 A6 */	mtlr r0
/* 802D61A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D61AC  4E 80 00 20 */	blr 
