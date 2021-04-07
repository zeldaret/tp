lbl_8023DE8C:
/* 8023DE8C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8023DE90  7C 08 02 A6 */	mflr r0
/* 8023DE94  90 01 00 94 */	stw r0, 0x94(r1)
/* 8023DE98  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8023DE9C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8023DEA0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8023DEA4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8023DEA8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8023DEAC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8023DEB0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8023DEB4  7C 7F 1B 78 */	mr r31, r3
/* 8023DEB8  38 00 00 00 */	li r0, 0
/* 8023DEBC  98 01 00 10 */	stb r0, 0x10(r1)
/* 8023DEC0  98 01 00 08 */	stb r0, 8(r1)
/* 8023DEC4  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8023DEC8  98 01 00 19 */	stb r0, 0x19(r1)
/* 8023DECC  88 03 00 66 */	lbz r0, 0x66(r3)
/* 8023DED0  28 00 00 04 */	cmplwi r0, 4
/* 8023DED4  40 82 00 38 */	bne lbl_8023DF0C
/* 8023DED8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023DEDC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8023DEE0  38 80 04 B0 */	li r4, 0x4b0
/* 8023DEE4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8023DEE8  38 C0 00 00 */	li r6, 0
/* 8023DEEC  4B FD E3 65 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8023DEF0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023DEF4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8023DEF8  38 80 04 B1 */	li r4, 0x4b1
/* 8023DEFC  38 A1 00 08 */	addi r5, r1, 8
/* 8023DF00  38 C0 00 00 */	li r6, 0
/* 8023DF04  4B FD E3 4D */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8023DF08  48 00 00 34 */	b lbl_8023DF3C
lbl_8023DF0C:
/* 8023DF0C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023DF10  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8023DF14  38 80 05 1F */	li r4, 0x51f
/* 8023DF18  38 A1 00 10 */	addi r5, r1, 0x10
/* 8023DF1C  38 C0 00 00 */	li r6, 0
/* 8023DF20  4B FD E3 31 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8023DF24  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023DF28  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8023DF2C  38 80 05 20 */	li r4, 0x520
/* 8023DF30  38 A1 00 08 */	addi r5, r1, 8
/* 8023DF34  38 C0 00 00 */	li r6, 0
/* 8023DF38  4B FD E3 19 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_8023DF3C:
/* 8023DF3C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DF40  4B FF CA 3D */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 8023DF44  FF C0 08 90 */	fmr f30, f1
/* 8023DF48  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DF4C  4B FF CA 01 */	bl getFontSize__17dMsgScrn3Select_cFv
/* 8023DF50  FF E0 08 90 */	fmr f31, f1
/* 8023DF54  4B DD 6A 9D */	bl mDoExt_getMesgFont__Fv
/* 8023DF58  7C 64 1B 78 */	mr r4, r3
/* 8023DF5C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023DF60  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8023DF64  FC 20 F8 90 */	fmr f1, f31
/* 8023DF68  FC 40 F0 90 */	fmr f2, f30
/* 8023DF6C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8023DF70  4B FD E8 8D */	bl getStringLength__13dMeter2Info_cFP7JUTFontffPc
/* 8023DF74  FF A0 08 90 */	fmr f29, f1
/* 8023DF78  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DF7C  4B FF CA 01 */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 8023DF80  FF E0 08 90 */	fmr f31, f1
/* 8023DF84  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DF88  4B FF C9 C5 */	bl getFontSize__17dMsgScrn3Select_cFv
/* 8023DF8C  FF C0 08 90 */	fmr f30, f1
/* 8023DF90  4B DD 6A 61 */	bl mDoExt_getMesgFont__Fv
/* 8023DF94  7C 64 1B 78 */	mr r4, r3
/* 8023DF98  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8023DF9C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8023DFA0  FC 20 F0 90 */	fmr f1, f30
/* 8023DFA4  FC 40 F8 90 */	fmr f2, f31
/* 8023DFA8  38 A1 00 08 */	addi r5, r1, 8
/* 8023DFAC  4B FD E8 51 */	bl getStringLength__13dMeter2Info_cFP7JUTFontffPc
/* 8023DFB0  FF C0 08 90 */	fmr f30, f1
/* 8023DFB4  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 8023DFB8  40 80 00 0C */	bge lbl_8023DFC4
/* 8023DFBC  FF E0 F0 90 */	fmr f31, f30
/* 8023DFC0  48 00 00 08 */	b lbl_8023DFC8
lbl_8023DFC4:
/* 8023DFC4  FF E0 E8 90 */	fmr f31, f29
lbl_8023DFC8:
/* 8023DFC8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DFCC  4B FF C9 69 */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 8023DFD0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8023DFD4  40 80 00 10 */	bge lbl_8023DFE4
/* 8023DFD8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DFDC  4B FF C9 59 */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 8023DFE0  FF E0 08 90 */	fmr f31, f1
lbl_8023DFE4:
/* 8023DFE4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8023DFE8  38 80 00 14 */	li r4, 0x14
/* 8023DFEC  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_explain__stringBase0@ha /* 0x80399910@ha */
/* 8023DFF0  38 A5 99 10 */	addi r5, r5, msg_scrn_d_msg_scrn_explain__stringBase0@l /* 0x80399910@l */
/* 8023DFF4  38 A5 00 74 */	addi r5, r5, 0x74
/* 8023DFF8  C0 22 B1 E8 */	lfs f1, lit_4294(r2)
/* 8023DFFC  EC 1F E8 28 */	fsubs f0, f31, f29
/* 8023E000  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023E004  FC 00 00 1E */	fctiwz f0, f0
/* 8023E008  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8023E00C  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 8023E010  4C C6 31 82 */	crclr 6
/* 8023E014  48 12 85 A9 */	bl snprintf
/* 8023E018  38 61 00 2C */	addi r3, r1, 0x2c
/* 8023E01C  38 81 00 10 */	addi r4, r1, 0x10
/* 8023E020  48 12 AA 9D */	bl strcat
/* 8023E024  38 61 00 18 */	addi r3, r1, 0x18
/* 8023E028  38 80 00 14 */	li r4, 0x14
/* 8023E02C  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_explain__stringBase0@ha /* 0x80399910@ha */
/* 8023E030  38 A5 99 10 */	addi r5, r5, msg_scrn_d_msg_scrn_explain__stringBase0@l /* 0x80399910@l */
/* 8023E034  38 A5 00 74 */	addi r5, r5, 0x74
/* 8023E038  C0 22 B1 E8 */	lfs f1, lit_4294(r2)
/* 8023E03C  EC 1F F0 28 */	fsubs f0, f31, f30
/* 8023E040  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023E044  FC 00 00 1E */	fctiwz f0, f0
/* 8023E048  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8023E04C  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 8023E050  4C C6 31 82 */	crclr 6
/* 8023E054  48 12 85 69 */	bl snprintf
/* 8023E058  38 61 00 18 */	addi r3, r1, 0x18
/* 8023E05C  38 81 00 08 */	addi r4, r1, 8
/* 8023E060  48 12 AA 5D */	bl strcat
/* 8023E064  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023E068  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_explain__stringBase0@ha /* 0x80399910@ha */
/* 8023E06C  38 84 99 10 */	addi r4, r4, msg_scrn_d_msg_scrn_explain__stringBase0@l /* 0x80399910@l */
/* 8023E070  38 84 00 63 */	addi r4, r4, 0x63
/* 8023E074  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8023E078  38 C1 00 18 */	addi r6, r1, 0x18
/* 8023E07C  4B FF BB FD */	bl setString__17dMsgScrn3Select_cFPcPcPc
/* 8023E080  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023E084  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_explain__stringBase0@ha /* 0x80399910@ha */
/* 8023E088  38 84 99 10 */	addi r4, r4, msg_scrn_d_msg_scrn_explain__stringBase0@l /* 0x80399910@l */
/* 8023E08C  38 84 00 63 */	addi r4, r4, 0x63
/* 8023E090  7C 85 23 78 */	mr r5, r4
/* 8023E094  7C 86 23 78 */	mr r6, r4
/* 8023E098  4B FF BC 71 */	bl setRubyString__17dMsgScrn3Select_cFPcPcPc
/* 8023E09C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023E0A0  38 80 00 02 */	li r4, 2
/* 8023E0A4  88 BF 00 61 */	lbz r5, 0x61(r31)
/* 8023E0A8  38 05 00 01 */	addi r0, r5, 1
/* 8023E0AC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8023E0B0  38 C0 00 00 */	li r6, 0
/* 8023E0B4  FC 20 F8 90 */	fmr f1, f31
/* 8023E0B8  38 E0 00 00 */	li r7, 0
/* 8023E0BC  4B FF BF D9 */	bl selAnimeInit__17dMsgScrn3Select_cFUcUcUcfUc
/* 8023E0C0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8023E0C4  4B FF DD 71 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
/* 8023E0C8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8023E0CC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8023E0D0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8023E0D4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8023E0D8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8023E0DC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8023E0E0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8023E0E4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8023E0E8  7C 08 03 A6 */	mtlr r0
/* 8023E0EC  38 21 00 90 */	addi r1, r1, 0x90
/* 8023E0F0  4E 80 00 20 */	blr 
