lbl_80204620:
/* 80204620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80204624  7C 08 02 A6 */	mflr r0
/* 80204628  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020462C  39 61 00 20 */	addi r11, r1, 0x20
/* 80204630  48 15 DB AD */	bl _savegpr_29
/* 80204634  7C 7E 1B 78 */	mr r30, r3
/* 80204638  7C 9F 23 78 */	mr r31, r4
/* 8020463C  7C BD 2B 78 */	mr r29, r5
/* 80204640  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80204644  40 82 00 7C */	bne lbl_802046C0
/* 80204648  48 03 3B E5 */	bl getStatus__12dMsgObject_cFv
/* 8020464C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80204650  20 60 00 01 */	subfic r3, r0, 1
/* 80204654  30 03 FF FF */	addic r0, r3, -1
/* 80204658  7C 00 19 10 */	subfe r0, r0, r3
/* 8020465C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80204660  40 82 00 60 */	bne lbl_802046C0
/* 80204664  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80204668  41 82 00 58 */	beq lbl_802046C0
/* 8020466C  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80204670  41 82 00 30 */	beq lbl_802046A0
/* 80204674  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80204678  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020467C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80204680  28 00 00 00 */	cmplwi r0, 0
/* 80204684  41 82 00 10 */	beq lbl_80204694
/* 80204688  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 8020468C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80204690  48 00 00 08 */	b lbl_80204698
lbl_80204694:
/* 80204694  38 00 00 00 */	li r0, 0
lbl_80204698:
/* 80204698  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8020469C  40 82 00 24 */	bne lbl_802046C0
lbl_802046A0:
/* 802046A0  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 802046A4  40 82 00 1C */	bne lbl_802046C0
/* 802046A8  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 802046AC  40 82 00 14 */	bne lbl_802046C0
/* 802046B0  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 802046B4  40 82 00 0C */	bne lbl_802046C0
/* 802046B8  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 802046BC  41 82 00 10 */	beq lbl_802046CC
lbl_802046C0:
/* 802046C0  7F C3 F3 78 */	mr r3, r30
/* 802046C4  48 00 48 59 */	bl setAlphaButtonNunCAnimeMin__14dMeterButton_cFv
/* 802046C8  48 00 00 14 */	b lbl_802046DC
lbl_802046CC:
/* 802046CC  7F C3 F3 78 */	mr r3, r30
/* 802046D0  48 00 48 E5 */	bl setAlphaButtonNunCAnimeMax__14dMeterButton_cFv
/* 802046D4  38 60 00 01 */	li r3, 1
/* 802046D8  48 00 00 08 */	b lbl_802046E0
lbl_802046DC:
/* 802046DC  38 60 00 00 */	li r3, 0
lbl_802046E0:
/* 802046E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802046E4  48 15 DB 45 */	bl _restgpr_29
/* 802046E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802046EC  7C 08 03 A6 */	mtlr r0
/* 802046F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802046F4  4E 80 00 20 */	blr 
