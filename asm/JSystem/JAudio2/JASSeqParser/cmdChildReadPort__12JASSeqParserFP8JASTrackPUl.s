lbl_802946AC:
/* 802946AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802946B0  7C 08 02 A6 */	mflr r0
/* 802946B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802946B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802946BC  48 0C DB 21 */	bl _savegpr_29
/* 802946C0  7C 7D 1B 78 */	mr r29, r3
/* 802946C4  7C 9E 23 78 */	mr r30, r4
/* 802946C8  7C BF 2B 78 */	mr r31, r5
/* 802946CC  80 05 00 00 */	lwz r0, 0(r5)
/* 802946D0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802946D4  54 00 F6 BA */	rlwinm r0, r0, 0x1e, 0x1a, 0x1d
/* 802946D8  7C 7E 02 14 */	add r3, r30, r0
/* 802946DC  80 63 01 30 */	lwz r3, 0x130(r3)
/* 802946E0  28 03 00 00 */	cmplwi r3, 0
/* 802946E4  41 82 00 24 */	beq lbl_80294708
/* 802946E8  54 84 07 3E */	clrlwi r4, r4, 0x1c
/* 802946EC  4B FF E2 91 */	bl readPort__8JASTrackFUl
/* 802946F0  7C 60 1B 78 */	mr r0, r3
/* 802946F4  7F A3 EB 78 */	mr r3, r29
/* 802946F8  7F C4 F3 78 */	mr r4, r30
/* 802946FC  80 BF 00 04 */	lwz r5, 4(r31)
/* 80294700  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 80294704  4B FF F6 C1 */	bl writeReg__12JASSeqParserFP8JASTrackUlUl
lbl_80294708:
/* 80294708  38 60 00 00 */	li r3, 0
/* 8029470C  39 61 00 20 */	addi r11, r1, 0x20
/* 80294710  48 0C DB 19 */	bl _restgpr_29
/* 80294714  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294718  7C 08 03 A6 */	mtlr r0
/* 8029471C  38 21 00 20 */	addi r1, r1, 0x20
/* 80294720  4E 80 00 20 */	blr 
