lbl_802036C0:
/* 802036C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802036C4  7C 08 02 A6 */	mflr r0
/* 802036C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802036CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802036D0  48 15 EB 0D */	bl _savegpr_29
/* 802036D4  7C 7F 1B 78 */	mr r31, r3
/* 802036D8  7C 9D 23 78 */	mr r29, r4
/* 802036DC  7C BE 2B 78 */	mr r30, r5
/* 802036E0  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 802036E4  40 82 00 4C */	bne lbl_80203730
/* 802036E8  48 03 4B 45 */	bl getStatus__12dMsgObject_cFv
/* 802036EC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802036F0  20 60 00 01 */	subfic r3, r0, 1
/* 802036F4  30 03 FF FF */	addic r0, r3, -1
/* 802036F8  7C 00 19 10 */	subfe r0, r0, r3
/* 802036FC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80203700  40 82 00 30 */	bne lbl_80203730
/* 80203704  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80203708  41 82 00 28 */	beq lbl_80203730
/* 8020370C  A8 1F 04 8C */	lha r0, 0x48c(r31)
/* 80203710  2C 00 00 00 */	cmpwi r0, 0
/* 80203714  41 81 00 1C */	bgt lbl_80203730
/* 80203718  57 A0 07 39 */	rlwinm. r0, r29, 0, 0x1c, 0x1c
/* 8020371C  40 82 00 14 */	bne lbl_80203730
/* 80203720  57 A0 06 F7 */	rlwinm. r0, r29, 0, 0x1b, 0x1b
/* 80203724  40 82 00 0C */	bne lbl_80203730
/* 80203728  57 A0 06 B5 */	rlwinm. r0, r29, 0, 0x1a, 0x1a
/* 8020372C  41 82 00 24 */	beq lbl_80203750
lbl_80203730:
/* 80203730  7F E3 FB 78 */	mr r3, r31
/* 80203734  48 00 3E 8D */	bl setAlphaButton3DAnimeMin__14dMeterButton_cFv
/* 80203738  7F E3 FB 78 */	mr r3, r31
/* 8020373C  48 00 40 05 */	bl setAlphaButton3DVAnimeMin__14dMeterButton_cFv
/* 80203740  A0 1F 04 B0 */	lhz r0, 0x4b0(r31)
/* 80203744  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80203748  B0 1F 04 B0 */	sth r0, 0x4b0(r31)
/* 8020374C  48 00 00 50 */	b lbl_8020379C
lbl_80203750:
/* 80203750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80203754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80203758  88 03 5E 4B */	lbz r0, 0x5e4b(r3)
/* 8020375C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80203760  41 82 00 18 */	beq lbl_80203778
/* 80203764  7F E3 FB 78 */	mr r3, r31
/* 80203768  48 00 3E 59 */	bl setAlphaButton3DAnimeMin__14dMeterButton_cFv
/* 8020376C  7F E3 FB 78 */	mr r3, r31
/* 80203770  48 00 3F D5 */	bl setAlphaButton3DVAnimeMax__14dMeterButton_cFv
/* 80203774  48 00 00 14 */	b lbl_80203788
lbl_80203778:
/* 80203778  7F E3 FB 78 */	mr r3, r31
/* 8020377C  48 00 3E D9 */	bl setAlphaButton3DAnimeMax__14dMeterButton_cFv
/* 80203780  7F E3 FB 78 */	mr r3, r31
/* 80203784  48 00 3F BD */	bl setAlphaButton3DVAnimeMin__14dMeterButton_cFv
lbl_80203788:
/* 80203788  A0 1F 04 B0 */	lhz r0, 0x4b0(r31)
/* 8020378C  60 00 00 10 */	ori r0, r0, 0x10
/* 80203790  B0 1F 04 B0 */	sth r0, 0x4b0(r31)
/* 80203794  38 60 00 01 */	li r3, 1
/* 80203798  48 00 00 08 */	b lbl_802037A0
lbl_8020379C:
/* 8020379C  38 60 00 00 */	li r3, 0
lbl_802037A0:
/* 802037A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802037A4  48 15 EA 85 */	bl _restgpr_29
/* 802037A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802037AC  7C 08 03 A6 */	mtlr r0
/* 802037B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802037B4  4E 80 00 20 */	blr 
