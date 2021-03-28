lbl_80203878:
/* 80203878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020387C  7C 08 02 A6 */	mflr r0
/* 80203880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80203884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80203888  7C 7F 1B 78 */	mr r31, r3
/* 8020388C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80203890  41 82 00 1C */	beq lbl_802038AC
/* 80203894  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80203898  40 82 00 14 */	bne lbl_802038AC
/* 8020389C  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 802038A0  40 82 00 0C */	bne lbl_802038AC
/* 802038A4  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 802038A8  41 82 00 1C */	beq lbl_802038C4
lbl_802038AC:
/* 802038AC  7F E3 FB 78 */	mr r3, r31
/* 802038B0  48 00 41 79 */	bl setAlphaButtonSAnimeMin__14dMeterButton_cFv
/* 802038B4  A0 1F 04 B0 */	lhz r0, 0x4b0(r31)
/* 802038B8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 802038BC  B0 1F 04 B0 */	sth r0, 0x4b0(r31)
/* 802038C0  48 00 00 1C */	b lbl_802038DC
lbl_802038C4:
/* 802038C4  48 00 41 F5 */	bl setAlphaButtonSAnimeMax__14dMeterButton_cFv
/* 802038C8  A0 1F 04 B0 */	lhz r0, 0x4b0(r31)
/* 802038CC  60 00 00 40 */	ori r0, r0, 0x40
/* 802038D0  B0 1F 04 B0 */	sth r0, 0x4b0(r31)
/* 802038D4  38 60 00 01 */	li r3, 1
/* 802038D8  48 00 00 08 */	b lbl_802038E0
lbl_802038DC:
/* 802038DC  38 60 00 00 */	li r3, 0
lbl_802038E0:
/* 802038E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802038E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802038E8  7C 08 03 A6 */	mtlr r0
/* 802038EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802038F0  4E 80 00 20 */	blr 
