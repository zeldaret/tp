lbl_802958D4:
/* 802958D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802958D8  7C 08 02 A6 */	mflr r0
/* 802958DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802958E0  80 A4 00 04 */	lwz r5, 4(r4)
/* 802958E4  38 05 00 01 */	addi r0, r5, 1
/* 802958E8  90 04 00 04 */	stw r0, 4(r4)
/* 802958EC  88 A5 00 00 */	lbz r5, 0(r5)
/* 802958F0  54 A0 06 31 */	rlwinm. r0, r5, 0, 0x18, 0x18
/* 802958F4  40 82 00 0C */	bne lbl_80295900
/* 802958F8  4B FF FD 09 */	bl parseNoteOn__12JASSeqParserFP8JASTrackUc
/* 802958FC  48 00 00 44 */	b lbl_80295940
lbl_80295900:
/* 80295900  54 A0 06 36 */	rlwinm r0, r5, 0, 0x18, 0x1b
/* 80295904  2C 00 00 90 */	cmpwi r0, 0x90
/* 80295908  41 82 00 20 */	beq lbl_80295928
/* 8029590C  40 80 00 2C */	bge lbl_80295938
/* 80295910  2C 00 00 80 */	cmpwi r0, 0x80
/* 80295914  41 82 00 08 */	beq lbl_8029591C
/* 80295918  48 00 00 20 */	b lbl_80295938
lbl_8029591C:
/* 8029591C  54 A5 07 3E */	clrlwi r5, r5, 0x1c
/* 80295920  4B FF FC A9 */	bl parseNoteOff__12JASSeqParserFP8JASTrackUc
/* 80295924  48 00 00 1C */	b lbl_80295940
lbl_80295928:
/* 80295928  54 A5 07 7E */	clrlwi r5, r5, 0x1d
/* 8029592C  38 A5 00 01 */	addi r5, r5, 1
/* 80295930  4B FF FF 35 */	bl parseRegCommand__12JASSeqParserFP8JASTracki
/* 80295934  48 00 00 0C */	b lbl_80295940
lbl_80295938:
/* 80295938  38 C0 00 00 */	li r6, 0
/* 8029593C  4B FF FD 75 */	bl parseCommand__12JASSeqParserFP8JASTrackUcUs
lbl_80295940:
/* 80295940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295944  7C 08 03 A6 */	mtlr r0
/* 80295948  38 21 00 10 */	addi r1, r1, 0x10
/* 8029594C  4E 80 00 20 */	blr 
