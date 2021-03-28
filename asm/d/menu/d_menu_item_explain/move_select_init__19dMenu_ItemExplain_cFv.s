lbl_801DBCB4:
/* 801DBCB4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801DBCB8  7C 08 02 A6 */	mflr r0
/* 801DBCBC  90 01 00 94 */	stw r0, 0x94(r1)
/* 801DBCC0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801DBCC4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801DBCC8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801DBCCC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 801DBCD0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801DBCD4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 801DBCD8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801DBCDC  7C 7F 1B 78 */	mr r31, r3
/* 801DBCE0  38 00 00 00 */	li r0, 0
/* 801DBCE4  98 01 00 10 */	stb r0, 0x10(r1)
/* 801DBCE8  98 01 00 08 */	stb r0, 8(r1)
/* 801DBCEC  98 01 00 2C */	stb r0, 0x2c(r1)
/* 801DBCF0  98 01 00 19 */	stb r0, 0x19(r1)
/* 801DBCF4  48 00 0E 61 */	bl getWarpMarkFlag__19dMenu_ItemExplain_cFv
/* 801DBCF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DBCFC  40 82 00 48 */	bne lbl_801DBD44
/* 801DBD00  38 00 05 17 */	li r0, 0x517
/* 801DBD04  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801DBD08  38 00 00 00 */	li r0, 0
/* 801DBD0C  98 1F 00 E2 */	stb r0, 0xe2(r31)
/* 801DBD10  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DBD14  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DBD18  38 80 05 18 */	li r4, 0x518
/* 801DBD1C  38 A1 00 10 */	addi r5, r1, 0x10
/* 801DBD20  38 C0 00 00 */	li r6, 0
/* 801DBD24  48 04 05 2D */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DBD28  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DBD2C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DBD30  38 80 05 19 */	li r4, 0x519
/* 801DBD34  38 A1 00 08 */	addi r5, r1, 8
/* 801DBD38  38 C0 00 00 */	li r6, 0
/* 801DBD3C  48 04 05 15 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DBD40  48 00 00 44 */	b lbl_801DBD84
lbl_801DBD44:
/* 801DBD44  38 00 05 1A */	li r0, 0x51a
/* 801DBD48  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801DBD4C  38 00 00 00 */	li r0, 0
/* 801DBD50  98 1F 00 E2 */	stb r0, 0xe2(r31)
/* 801DBD54  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DBD58  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DBD5C  38 80 05 1B */	li r4, 0x51b
/* 801DBD60  38 A1 00 10 */	addi r5, r1, 0x10
/* 801DBD64  38 C0 00 00 */	li r6, 0
/* 801DBD68  48 04 04 E9 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DBD6C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DBD70  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DBD74  38 80 05 1C */	li r4, 0x51c
/* 801DBD78  38 A1 00 08 */	addi r5, r1, 8
/* 801DBD7C  38 C0 00 00 */	li r6, 0
/* 801DBD80  48 04 04 D1 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_801DBD84:
/* 801DBD84  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBD88  48 05 EB F5 */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 801DBD8C  FF C0 08 90 */	fmr f30, f1
/* 801DBD90  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBD94  48 05 EB B9 */	bl getFontSize__17dMsgScrn3Select_cFv
/* 801DBD98  FF E0 08 90 */	fmr f31, f1
/* 801DBD9C  4B E3 8C 55 */	bl mDoExt_getMesgFont__Fv
/* 801DBDA0  7C 64 1B 78 */	mr r4, r3
/* 801DBDA4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DBDA8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DBDAC  FC 20 F8 90 */	fmr f1, f31
/* 801DBDB0  FC 40 F0 90 */	fmr f2, f30
/* 801DBDB4  38 A1 00 10 */	addi r5, r1, 0x10
/* 801DBDB8  48 04 0A 45 */	bl getStringLength__13dMeter2Info_cFP7JUTFontffPc
/* 801DBDBC  FF A0 08 90 */	fmr f29, f1
/* 801DBDC0  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBDC4  48 05 EB B9 */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 801DBDC8  FF E0 08 90 */	fmr f31, f1
/* 801DBDCC  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBDD0  48 05 EB 7D */	bl getFontSize__17dMsgScrn3Select_cFv
/* 801DBDD4  FF C0 08 90 */	fmr f30, f1
/* 801DBDD8  4B E3 8C 19 */	bl mDoExt_getMesgFont__Fv
/* 801DBDDC  7C 64 1B 78 */	mr r4, r3
/* 801DBDE0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DBDE4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DBDE8  FC 20 F0 90 */	fmr f1, f30
/* 801DBDEC  FC 40 F8 90 */	fmr f2, f31
/* 801DBDF0  38 A1 00 08 */	addi r5, r1, 8
/* 801DBDF4  48 04 0A 09 */	bl getStringLength__13dMeter2Info_cFP7JUTFontffPc
/* 801DBDF8  FF C0 08 90 */	fmr f30, f1
/* 801DBDFC  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 801DBE00  40 80 00 0C */	bge lbl_801DBE0C
/* 801DBE04  FF E0 F0 90 */	fmr f31, f30
/* 801DBE08  48 00 00 08 */	b lbl_801DBE10
lbl_801DBE0C:
/* 801DBE0C  FF E0 E8 90 */	fmr f31, f29
lbl_801DBE10:
/* 801DBE10  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBE14  48 05 EB 21 */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 801DBE18  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801DBE1C  40 80 00 10 */	bge lbl_801DBE2C
/* 801DBE20  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBE24  48 05 EB 11 */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 801DBE28  FF E0 08 90 */	fmr f31, f1
lbl_801DBE2C:
/* 801DBE2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DBE30  38 80 00 14 */	li r4, 0x14
/* 801DBE34  3C A0 80 39 */	lis r5, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DBE38  38 A5 69 90 */	addi r5, r5, d_menu_d_menu_item_explain__stringBase0@l
/* 801DBE3C  38 A5 00 2C */	addi r5, r5, 0x2c
/* 801DBE40  C0 22 A8 94 */	lfs f1, lit_4065(r2)
/* 801DBE44  EC 1F E8 28 */	fsubs f0, f31, f29
/* 801DBE48  EC 01 00 32 */	fmuls f0, f1, f0
/* 801DBE4C  FC 00 00 1E */	fctiwz f0, f0
/* 801DBE50  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801DBE54  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 801DBE58  4C C6 31 82 */	crclr 6
/* 801DBE5C  48 18 A7 61 */	bl snprintf
/* 801DBE60  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DBE64  38 81 00 10 */	addi r4, r1, 0x10
/* 801DBE68  48 18 CC 55 */	bl strcat
/* 801DBE6C  38 61 00 18 */	addi r3, r1, 0x18
/* 801DBE70  38 80 00 14 */	li r4, 0x14
/* 801DBE74  3C A0 80 39 */	lis r5, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DBE78  38 A5 69 90 */	addi r5, r5, d_menu_d_menu_item_explain__stringBase0@l
/* 801DBE7C  38 A5 00 2C */	addi r5, r5, 0x2c
/* 801DBE80  C0 22 A8 94 */	lfs f1, lit_4065(r2)
/* 801DBE84  EC 1F F0 28 */	fsubs f0, f31, f30
/* 801DBE88  EC 01 00 32 */	fmuls f0, f1, f0
/* 801DBE8C  FC 00 00 1E */	fctiwz f0, f0
/* 801DBE90  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801DBE94  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 801DBE98  4C C6 31 82 */	crclr 6
/* 801DBE9C  48 18 A7 21 */	bl snprintf
/* 801DBEA0  38 61 00 18 */	addi r3, r1, 0x18
/* 801DBEA4  38 81 00 08 */	addi r4, r1, 8
/* 801DBEA8  48 18 CC 15 */	bl strcat
/* 801DBEAC  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBEB0  3C 80 80 39 */	lis r4, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DBEB4  38 84 69 90 */	addi r4, r4, d_menu_d_menu_item_explain__stringBase0@l
/* 801DBEB8  38 84 00 1B */	addi r4, r4, 0x1b
/* 801DBEBC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801DBEC0  38 C1 00 18 */	addi r6, r1, 0x18
/* 801DBEC4  48 05 DD B5 */	bl setString__17dMsgScrn3Select_cFPcPcPc
/* 801DBEC8  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBECC  3C 80 80 39 */	lis r4, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DBED0  38 84 69 90 */	addi r4, r4, d_menu_d_menu_item_explain__stringBase0@l
/* 801DBED4  38 84 00 1B */	addi r4, r4, 0x1b
/* 801DBED8  7C 85 23 78 */	mr r5, r4
/* 801DBEDC  7C 86 23 78 */	mr r6, r4
/* 801DBEE0  48 05 DE 29 */	bl setRubyString__17dMsgScrn3Select_cFPcPcPc
/* 801DBEE4  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DBEE8  38 80 00 02 */	li r4, 2
/* 801DBEEC  88 BF 00 E2 */	lbz r5, 0xe2(r31)
/* 801DBEF0  38 05 00 01 */	addi r0, r5, 1
/* 801DBEF4  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801DBEF8  38 C0 00 00 */	li r6, 0
/* 801DBEFC  FC 20 F8 90 */	fmr f1, f31
/* 801DBF00  38 E0 00 00 */	li r7, 0
/* 801DBF04  48 05 E1 91 */	bl selAnimeInit__17dMsgScrn3Select_cFUcUcUcfUc
/* 801DBF08  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801DBF0C  28 03 00 00 */	cmplwi r3, 0
/* 801DBF10  41 82 00 08 */	beq lbl_801DBF18
/* 801DBF14  48 05 FF 21 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
lbl_801DBF18:
/* 801DBF18  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 801DBF1C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801DBF20  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 801DBF24  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801DBF28  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 801DBF2C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 801DBF30  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801DBF34  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801DBF38  7C 08 03 A6 */	mtlr r0
/* 801DBF3C  38 21 00 90 */	addi r1, r1, 0x90
/* 801DBF40  4E 80 00 20 */	blr 
