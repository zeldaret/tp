lbl_80204548:
/* 80204548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020454C  7C 08 02 A6 */	mflr r0
/* 80204550  90 01 00 24 */	stw r0, 0x24(r1)
/* 80204554  39 61 00 20 */	addi r11, r1, 0x20
/* 80204558  48 15 DC 85 */	bl _savegpr_29
/* 8020455C  7C 7E 1B 78 */	mr r30, r3
/* 80204560  7C 9F 23 78 */	mr r31, r4
/* 80204564  7C BD 2B 78 */	mr r29, r5
/* 80204568  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 8020456C  40 82 00 7C */	bne lbl_802045E8
/* 80204570  48 03 3C BD */	bl getStatus__12dMsgObject_cFv
/* 80204574  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80204578  20 60 00 01 */	subfic r3, r0, 1
/* 8020457C  30 03 FF FF */	addic r0, r3, -1
/* 80204580  7C 00 19 10 */	subfe r0, r0, r3
/* 80204584  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80204588  40 82 00 60 */	bne lbl_802045E8
/* 8020458C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80204590  41 82 00 58 */	beq lbl_802045E8
/* 80204594  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 80204598  41 82 00 30 */	beq lbl_802045C8
/* 8020459C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802045A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802045A4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 802045A8  28 00 00 00 */	cmplwi r0, 0
/* 802045AC  41 82 00 10 */	beq lbl_802045BC
/* 802045B0  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 802045B4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802045B8  48 00 00 08 */	b lbl_802045C0
lbl_802045BC:
/* 802045BC  38 00 00 00 */	li r0, 0
lbl_802045C0:
/* 802045C0  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 802045C4  40 82 00 24 */	bne lbl_802045E8
lbl_802045C8:
/* 802045C8  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 802045CC  40 82 00 1C */	bne lbl_802045E8
/* 802045D0  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 802045D4  40 82 00 14 */	bne lbl_802045E8
/* 802045D8  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 802045DC  40 82 00 0C */	bne lbl_802045E8
/* 802045E0  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 802045E4  41 82 00 10 */	beq lbl_802045F4
lbl_802045E8:
/* 802045E8  7F C3 F3 78 */	mr r3, r30
/* 802045EC  48 00 47 99 */	bl setAlphaButtonNunZAnimeMin__14dMeterButton_cFv
/* 802045F0  48 00 00 14 */	b lbl_80204604
lbl_802045F4:
/* 802045F4  7F C3 F3 78 */	mr r3, r30
/* 802045F8  48 00 48 25 */	bl setAlphaButtonNunZAnimeMax__14dMeterButton_cFv
/* 802045FC  38 60 00 01 */	li r3, 1
/* 80204600  48 00 00 08 */	b lbl_80204608
lbl_80204604:
/* 80204604  38 60 00 00 */	li r3, 0
lbl_80204608:
/* 80204608  39 61 00 20 */	addi r11, r1, 0x20
/* 8020460C  48 15 DC 1D */	bl _restgpr_29
/* 80204610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80204614  7C 08 03 A6 */	mtlr r0
/* 80204618  38 21 00 20 */	addi r1, r1, 0x20
/* 8020461C  4E 80 00 20 */	blr 
