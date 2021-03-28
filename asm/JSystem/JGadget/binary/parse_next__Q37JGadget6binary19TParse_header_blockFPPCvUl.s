lbl_802DC910:
/* 802DC910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DC914  7C 08 02 A6 */	mflr r0
/* 802DC918  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DC91C  39 61 00 30 */	addi r11, r1, 0x30
/* 802DC920  48 08 58 B1 */	bl _savegpr_26
/* 802DC924  7C 7A 1B 78 */	mr r26, r3
/* 802DC928  7C 9B 23 79 */	or. r27, r4, r4
/* 802DC92C  7C BC 2B 78 */	mr r28, r5
/* 802DC930  41 82 00 10 */	beq lbl_802DC940
/* 802DC934  80 1B 00 00 */	lwz r0, 0(r27)
/* 802DC938  28 00 00 00 */	cmplwi r0, 0
/* 802DC93C  40 82 00 0C */	bne lbl_802DC948
lbl_802DC940:
/* 802DC940  38 60 00 00 */	li r3, 0
/* 802DC944  48 00 00 C0 */	b lbl_802DCA04
lbl_802DC948:
/* 802DC948  3B E0 00 00 */	li r31, 0
/* 802DC94C  38 A1 00 0C */	addi r5, r1, 0xc
/* 802DC950  7F 86 E3 78 */	mr r6, r28
/* 802DC954  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC958  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802DC95C  7D 89 03 A6 */	mtctr r12
/* 802DC960  4E 80 04 21 */	bctrl 
/* 802DC964  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DC968  41 82 00 08 */	beq lbl_802DC970
/* 802DC96C  3B E0 00 01 */	li r31, 1
lbl_802DC970:
/* 802DC970  7F FD FB 78 */	mr r29, r31
/* 802DC974  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 802DC978  40 82 00 14 */	bne lbl_802DC98C
/* 802DC97C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802DC980  40 82 00 0C */	bne lbl_802DC98C
/* 802DC984  7F E3 FB 78 */	mr r3, r31
/* 802DC988  48 00 00 7C */	b lbl_802DCA04
lbl_802DC98C:
/* 802DC98C  57 9E 07 BC */	rlwinm r30, r28, 0, 0x1e, 0x1e
/* 802DC990  48 00 00 64 */	b lbl_802DC9F4
lbl_802DC994:
/* 802DC994  3B E0 00 00 */	li r31, 0
/* 802DC998  7F 43 D3 78 */	mr r3, r26
/* 802DC99C  7F 64 DB 78 */	mr r4, r27
/* 802DC9A0  38 A1 00 08 */	addi r5, r1, 8
/* 802DC9A4  7F 86 E3 78 */	mr r6, r28
/* 802DC9A8  81 9A 00 00 */	lwz r12, 0(r26)
/* 802DC9AC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802DC9B0  7D 89 03 A6 */	mtctr r12
/* 802DC9B4  4E 80 04 21 */	bctrl 
/* 802DC9B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DC9BC  41 82 00 10 */	beq lbl_802DC9CC
/* 802DC9C0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802DC9C4  41 82 00 08 */	beq lbl_802DC9CC
/* 802DC9C8  3B E0 00 01 */	li r31, 1
lbl_802DC9CC:
/* 802DC9CC  7F FD FB 78 */	mr r29, r31
/* 802DC9D0  28 1E 00 00 */	cmplwi r30, 0
/* 802DC9D4  40 82 00 14 */	bne lbl_802DC9E8
/* 802DC9D8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802DC9DC  40 82 00 0C */	bne lbl_802DC9E8
/* 802DC9E0  7F E3 FB 78 */	mr r3, r31
/* 802DC9E4  48 00 00 20 */	b lbl_802DCA04
lbl_802DC9E8:
/* 802DC9E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802DC9EC  38 03 FF FF */	addi r0, r3, -1
/* 802DC9F0  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802DC9F4:
/* 802DC9F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802DC9F8  28 00 00 00 */	cmplwi r0, 0
/* 802DC9FC  40 82 FF 98 */	bne lbl_802DC994
/* 802DCA00  7F A3 EB 78 */	mr r3, r29
lbl_802DCA04:
/* 802DCA04  39 61 00 30 */	addi r11, r1, 0x30
/* 802DCA08  48 08 58 15 */	bl _restgpr_26
/* 802DCA0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DCA10  7C 08 03 A6 */	mtlr r0
/* 802DCA14  38 21 00 30 */	addi r1, r1, 0x30
/* 802DCA18  4E 80 00 20 */	blr 
