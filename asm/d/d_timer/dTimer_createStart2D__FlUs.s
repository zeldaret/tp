lbl_80261188:
/* 80261188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026118C  7C 08 02 A6 */	mflr r0
/* 80261190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80261198  93 C1 00 08 */	stw r30, 8(r1)
/* 8026119C  7C 9E 23 78 */	mr r30, r4
/* 802611A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802611A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802611A8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 802611AC  7F E3 FB 78 */	mr r3, r31
/* 802611B0  4B DC BA 2D */	bl getTimerPtr__14dComIfG_play_cFv
/* 802611B4  28 03 00 00 */	cmplwi r3, 0
/* 802611B8  41 82 00 1C */	beq lbl_802611D4
/* 802611BC  7F E3 FB 78 */	mr r3, r31
/* 802611C0  4B DC BA 1D */	bl getTimerPtr__14dComIfG_play_cFv
/* 802611C4  80 63 00 FC */	lwz r3, 0xfc(r3)
/* 802611C8  7F C4 F3 78 */	mr r4, r30
/* 802611CC  4B FF F3 A9 */	bl createStart__21dDlst_TimerScrnDraw_cFUs
/* 802611D0  48 00 00 08 */	b lbl_802611D8
lbl_802611D4:
/* 802611D4  38 60 00 00 */	li r3, 0
lbl_802611D8:
/* 802611D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802611DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802611E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802611E4  7C 08 03 A6 */	mtlr r0
/* 802611E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802611EC  4E 80 00 20 */	blr 
