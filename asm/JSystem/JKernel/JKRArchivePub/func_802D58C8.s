lbl_802D58C8:
/* 802D58C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D58CC  7C 08 02 A6 */	mflr r0
/* 802D58D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D58D4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D58D8  48 08 C8 FD */	bl _savegpr_27
/* 802D58DC  7C 7B 1B 78 */	mr r27, r3
/* 802D58E0  7C 9C 23 78 */	mr r28, r4
/* 802D58E4  7C BD 2B 78 */	mr r29, r5
/* 802D58E8  7C DE 33 78 */	mr r30, r6
/* 802D58EC  7F A4 EB 78 */	mr r4, r29
/* 802D58F0  4B FF FE 89 */	bl check_mount_already__10JKRArchiveFlP7JKRHeap
/* 802D58F4  28 03 00 00 */	cmplwi r3, 0
/* 802D58F8  41 82 00 08 */	beq lbl_802D5900
/* 802D58FC  48 00 01 24 */	b lbl_802D5A20
lbl_802D5900:
/* 802D5900  2C 1E 00 01 */	cmpwi r30, 1
/* 802D5904  38 A0 FF FC */	li r5, -4
/* 802D5908  40 82 00 08 */	bne lbl_802D5910
/* 802D590C  38 A0 00 04 */	li r5, 4
lbl_802D5910:
/* 802D5910  2C 1C 00 03 */	cmpwi r28, 3
/* 802D5914  41 82 00 7C */	beq lbl_802D5990
/* 802D5918  40 80 00 14 */	bge lbl_802D592C
/* 802D591C  2C 1C 00 01 */	cmpwi r28, 1
/* 802D5920  41 82 00 18 */	beq lbl_802D5938
/* 802D5924  40 80 00 40 */	bge lbl_802D5964
/* 802D5928  48 00 00 BC */	b lbl_802D59E4
lbl_802D592C:
/* 802D592C  2C 1C 00 05 */	cmpwi r28, 5
/* 802D5930  40 80 00 B4 */	bge lbl_802D59E4
/* 802D5934  48 00 00 88 */	b lbl_802D59BC
lbl_802D5938:
/* 802D5938  38 60 00 70 */	li r3, 0x70
/* 802D593C  7F A4 EB 78 */	mr r4, r29
/* 802D5940  4B FF 93 59 */	bl __nw__FUlP7JKRHeapi
/* 802D5944  7C 60 1B 79 */	or. r0, r3, r3
/* 802D5948  41 82 00 14 */	beq lbl_802D595C
/* 802D594C  7F 64 DB 78 */	mr r4, r27
/* 802D5950  7F C5 F3 78 */	mr r5, r30
/* 802D5954  48 00 10 65 */	bl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 802D5958  7C 60 1B 78 */	mr r0, r3
lbl_802D595C:
/* 802D595C  7C 1F 03 78 */	mr r31, r0
/* 802D5960  48 00 00 84 */	b lbl_802D59E4
lbl_802D5964:
/* 802D5964  38 60 00 6C */	li r3, 0x6c
/* 802D5968  7F A4 EB 78 */	mr r4, r29
/* 802D596C  4B FF 93 2D */	bl __nw__FUlP7JKRHeapi
/* 802D5970  7C 60 1B 79 */	or. r0, r3, r3
/* 802D5974  41 82 00 14 */	beq lbl_802D5988
/* 802D5978  7F 64 DB 78 */	mr r4, r27
/* 802D597C  7F C5 F3 78 */	mr r5, r30
/* 802D5980  48 00 17 41 */	bl __ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
/* 802D5984  7C 60 1B 78 */	mr r0, r3
lbl_802D5988:
/* 802D5988  7C 1F 03 78 */	mr r31, r0
/* 802D598C  48 00 00 58 */	b lbl_802D59E4
lbl_802D5990:
/* 802D5990  38 60 00 6C */	li r3, 0x6c
/* 802D5994  7F A4 EB 78 */	mr r4, r29
/* 802D5998  4B FF 93 01 */	bl __nw__FUlP7JKRHeapi
/* 802D599C  7C 60 1B 79 */	or. r0, r3, r3
/* 802D59A0  41 82 00 14 */	beq lbl_802D59B4
/* 802D59A4  7F 64 DB 78 */	mr r4, r27
/* 802D59A8  7F C5 F3 78 */	mr r5, r30
/* 802D59AC  48 00 22 45 */	bl __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection
/* 802D59B0  7C 60 1B 78 */	mr r0, r3
lbl_802D59B4:
/* 802D59B4  7C 1F 03 78 */	mr r31, r0
/* 802D59B8  48 00 00 2C */	b lbl_802D59E4
lbl_802D59BC:
/* 802D59BC  38 60 00 80 */	li r3, 0x80
/* 802D59C0  7F A4 EB 78 */	mr r4, r29
/* 802D59C4  4B FF 92 D5 */	bl __nw__FUlP7JKRHeapi
/* 802D59C8  7C 60 1B 79 */	or. r0, r3, r3
/* 802D59CC  41 82 00 14 */	beq lbl_802D59E0
/* 802D59D0  7F 64 DB 78 */	mr r4, r27
/* 802D59D4  7F C5 F3 78 */	mr r5, r30
/* 802D59D8  48 00 2D FD */	bl __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection
/* 802D59DC  7C 60 1B 78 */	mr r0, r3
lbl_802D59E0:
/* 802D59E0  7C 1F 03 78 */	mr r31, r0
lbl_802D59E4:
/* 802D59E4  28 1F 00 00 */	cmplwi r31, 0
/* 802D59E8  41 82 00 34 */	beq lbl_802D5A1C
/* 802D59EC  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 802D59F0  28 00 00 00 */	cmplwi r0, 0
/* 802D59F4  40 82 00 28 */	bne lbl_802D5A1C
/* 802D59F8  28 1F 00 00 */	cmplwi r31, 0
/* 802D59FC  41 82 00 1C */	beq lbl_802D5A18
/* 802D5A00  7F E3 FB 78 */	mr r3, r31
/* 802D5A04  38 80 00 01 */	li r4, 1
/* 802D5A08  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5A0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D5A10  7D 89 03 A6 */	mtctr r12
/* 802D5A14  4E 80 04 21 */	bctrl 
lbl_802D5A18:
/* 802D5A18  3B E0 00 00 */	li r31, 0
lbl_802D5A1C:
/* 802D5A1C  7F E3 FB 78 */	mr r3, r31
lbl_802D5A20:
/* 802D5A20  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5A24  48 08 C7 FD */	bl _restgpr_27
/* 802D5A28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5A2C  7C 08 03 A6 */	mtlr r0
/* 802D5A30  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5A34  4E 80 00 20 */	blr 
