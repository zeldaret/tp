lbl_80294188:
/* 80294188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029418C  7C 08 02 A6 */	mflr r0
/* 80294190  90 01 00 24 */	stw r0, 0x24(r1)
/* 80294194  39 61 00 20 */	addi r11, r1, 0x20
/* 80294198  48 0C E0 45 */	bl _savegpr_29
/* 8029419C  7C 9D 23 78 */	mr r29, r4
/* 802941A0  83 E5 00 04 */	lwz r31, 4(r5)
/* 802941A4  7F A3 EB 78 */	mr r3, r29
/* 802941A8  80 85 00 00 */	lwz r4, 0(r5)
/* 802941AC  4B FF DA 85 */	bl openChild__8JASTrackFUl
/* 802941B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802941B4  40 82 00 0C */	bne lbl_802941C0
/* 802941B8  38 60 00 00 */	li r3, 0
/* 802941BC  48 00 00 1C */	b lbl_802941D8
lbl_802941C0:
/* 802941C0  80 9D 00 00 */	lwz r4, 0(r29)
/* 802941C4  7F E5 FB 78 */	mr r5, r31
/* 802941C8  4B FF D8 41 */	bl setSeqData__8JASTrackFPvUl
/* 802941CC  7F C3 F3 78 */	mr r3, r30
/* 802941D0  4B FF D8 ED */	bl start__8JASTrackFv
/* 802941D4  38 60 00 00 */	li r3, 0
lbl_802941D8:
/* 802941D8  39 61 00 20 */	addi r11, r1, 0x20
/* 802941DC  48 0C E0 4D */	bl _restgpr_29
/* 802941E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802941E4  7C 08 03 A6 */	mtlr r0
/* 802941E8  38 21 00 20 */	addi r1, r1, 0x20
/* 802941EC  4E 80 00 20 */	blr 
