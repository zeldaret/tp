lbl_802D65A4:
/* 802D65A4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802D65A8  7C 08 02 A6 */	mflr r0
/* 802D65AC  90 01 01 34 */	stw r0, 0x134(r1)
/* 802D65B0  39 61 01 30 */	addi r11, r1, 0x130
/* 802D65B4  48 08 BC 21 */	bl _savegpr_27
/* 802D65B8  7C 7B 1B 78 */	mr r27, r3
/* 802D65BC  7C BD 2B 78 */	mr r29, r5
/* 802D65C0  28 04 00 00 */	cmplwi r4, 0
/* 802D65C4  41 82 00 A4 */	beq lbl_802D6668
/* 802D65C8  38 61 00 08 */	addi r3, r1, 8
/* 802D65CC  38 A0 00 2F */	li r5, 0x2f
/* 802D65D0  48 00 02 B5 */	bl store__Q210JKRArchive8CArcNameFPCcc
/* 802D65D4  7C 7C 1B 78 */	mr r28, r3
/* 802D65D8  80 7B 00 48 */	lwz r3, 0x48(r27)
/* 802D65DC  57 A0 20 36 */	slwi r0, r29, 4
/* 802D65E0  7F E3 02 14 */	add r31, r3, r0
/* 802D65E4  80 7B 00 4C */	lwz r3, 0x4c(r27)
/* 802D65E8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802D65EC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802D65F0  7F C3 02 14 */	add r30, r3, r0
/* 802D65F4  3B A0 00 00 */	li r29, 0
/* 802D65F8  48 00 00 64 */	b lbl_802D665C
lbl_802D65FC:
/* 802D65FC  7F 63 DB 78 */	mr r3, r27
/* 802D6600  38 81 00 08 */	addi r4, r1, 8
/* 802D6604  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6608  54 05 02 3E */	clrlwi r5, r0, 8
/* 802D660C  A0 DE 00 02 */	lhz r6, 2(r30)
/* 802D6610  4B FF FD 85 */	bl isSameName__10JKRArchiveCFRQ210JKRArchive8CArcNameUlUs
/* 802D6614  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6618  41 82 00 3C */	beq lbl_802D6654
/* 802D661C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D6620  54 00 47 BD */	rlwinm. r0, r0, 8, 0x1e, 0x1e
/* 802D6624  41 82 00 18 */	beq lbl_802D663C
/* 802D6628  7F 63 DB 78 */	mr r3, r27
/* 802D662C  7F 84 E3 78 */	mr r4, r28
/* 802D6630  80 BE 00 08 */	lwz r5, 8(r30)
/* 802D6634  4B FF FF 71 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 802D6638  48 00 00 34 */	b lbl_802D666C
lbl_802D663C:
/* 802D663C  28 1C 00 00 */	cmplwi r28, 0
/* 802D6640  40 82 00 0C */	bne lbl_802D664C
/* 802D6644  7F C3 F3 78 */	mr r3, r30
/* 802D6648  48 00 00 24 */	b lbl_802D666C
lbl_802D664C:
/* 802D664C  38 60 00 00 */	li r3, 0
/* 802D6650  48 00 00 1C */	b lbl_802D666C
lbl_802D6654:
/* 802D6654  3B DE 00 14 */	addi r30, r30, 0x14
/* 802D6658  3B BD 00 01 */	addi r29, r29, 1
lbl_802D665C:
/* 802D665C  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D6660  7C 1D 00 00 */	cmpw r29, r0
/* 802D6664  41 80 FF 98 */	blt lbl_802D65FC
lbl_802D6668:
/* 802D6668  38 60 00 00 */	li r3, 0
lbl_802D666C:
/* 802D666C  39 61 01 30 */	addi r11, r1, 0x130
/* 802D6670  48 08 BB B1 */	bl _restgpr_27
/* 802D6674  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802D6678  7C 08 03 A6 */	mtlr r0
/* 802D667C  38 21 01 30 */	addi r1, r1, 0x130
/* 802D6680  4E 80 00 20 */	blr 
