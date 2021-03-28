lbl_802D641C:
/* 802D641C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802D6420  7C 08 02 A6 */	mflr r0
/* 802D6424  90 01 01 34 */	stw r0, 0x134(r1)
/* 802D6428  39 61 01 30 */	addi r11, r1, 0x130
/* 802D642C  48 08 BD A9 */	bl _savegpr_27
/* 802D6430  7C 7B 1B 78 */	mr r27, r3
/* 802D6434  7C BD 2B 78 */	mr r29, r5
/* 802D6438  28 04 00 00 */	cmplwi r4, 0
/* 802D643C  40 82 00 14 */	bne lbl_802D6450
/* 802D6440  80 7B 00 48 */	lwz r3, 0x48(r27)
/* 802D6444  57 A0 20 36 */	slwi r0, r29, 4
/* 802D6448  7C 63 02 14 */	add r3, r3, r0
/* 802D644C  48 00 00 90 */	b lbl_802D64DC
lbl_802D6450:
/* 802D6450  38 61 00 08 */	addi r3, r1, 8
/* 802D6454  38 A0 00 2F */	li r5, 0x2f
/* 802D6458  48 00 04 2D */	bl store__Q210JKRArchive8CArcNameFPCcc
/* 802D645C  7C 7C 1B 78 */	mr r28, r3
/* 802D6460  80 7B 00 48 */	lwz r3, 0x48(r27)
/* 802D6464  57 A0 20 36 */	slwi r0, r29, 4
/* 802D6468  7F E3 02 14 */	add r31, r3, r0
/* 802D646C  80 7B 00 4C */	lwz r3, 0x4c(r27)
/* 802D6470  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802D6474  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802D6478  7F C3 02 14 */	add r30, r3, r0
/* 802D647C  3B A0 00 00 */	li r29, 0
/* 802D6480  48 00 00 4C */	b lbl_802D64CC
lbl_802D6484:
/* 802D6484  7F 63 DB 78 */	mr r3, r27
/* 802D6488  38 81 00 08 */	addi r4, r1, 8
/* 802D648C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6490  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D6494  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D6498  4B FF FE FD */	bl isSameName__10JKRArchiveCFRQ210JKRArchive8CArcNameUlUs
/* 802D649C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D64A0  41 82 00 24 */	beq lbl_802D64C4
/* 802D64A4  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D64A8  54 00 47 BD */	rlwinm. r0, r0, 8, 0x1e, 0x1e
/* 802D64AC  41 82 00 2C */	beq lbl_802D64D8
/* 802D64B0  7F 63 DB 78 */	mr r3, r27
/* 802D64B4  7F 84 E3 78 */	mr r4, r28
/* 802D64B8  80 BE 00 08 */	lwz r5, 8(r30)
/* 802D64BC  4B FF FF 61 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 802D64C0  48 00 00 1C */	b lbl_802D64DC
lbl_802D64C4:
/* 802D64C4  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D64C8  3B BD 00 01 */	addi r29, r29, 1
lbl_802D64CC:
/* 802D64CC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D64D0  7C 1D 00 00 */	cmpw r29, r0
/* 802D64D4  41 80 FF B0 */	blt lbl_802D6484
lbl_802D64D8:
/* 802D64D8  38 60 00 00 */	li r3, 0
lbl_802D64DC:
/* 802D64DC  39 61 01 30 */	addi r11, r1, 0x130
/* 802D64E0  48 08 BD 41 */	bl _restgpr_27
/* 802D64E4  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802D64E8  7C 08 03 A6 */	mtlr r0
/* 802D64EC  38 21 01 30 */	addi r1, r1, 0x130
/* 802D64F0  4E 80 00 20 */	blr 
