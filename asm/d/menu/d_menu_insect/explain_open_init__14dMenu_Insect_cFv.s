lbl_801D8E00:
/* 801D8E00  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 801D8E04  7C 08 02 A6 */	mflr r0
/* 801D8E08  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801D8E0C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 801D8E10  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 801D8E14  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 801D8E18  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 801D8E1C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 801D8E20  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 801D8E24  39 61 00 C0 */	addi r11, r1, 0xc0
/* 801D8E28  48 18 93 AD */	bl _savegpr_27
/* 801D8E2C  7C 7F 1B 78 */	mr r31, r3
/* 801D8E30  38 80 00 00 */	li r4, 0
/* 801D8E34  48 00 14 D1 */	bl setAButtonString__14dMenu_Insect_cFUs
/* 801D8E38  7F E3 FB 78 */	mr r3, r31
/* 801D8E3C  38 80 03 F9 */	li r4, 0x3f9
/* 801D8E40  48 00 15 75 */	bl setBButtonString__14dMenu_Insect_cFUs
/* 801D8E44  7F E3 FB 78 */	mr r3, r31
/* 801D8E48  88 9F 00 F4 */	lbz r4, 0xf4(r31)
/* 801D8E4C  88 BF 00 F5 */	lbz r5, 0xf5(r31)
/* 801D8E50  48 00 0F 7D */	bl getInsectItemID__14dMenu_Insect_cFii
/* 801D8E54  7C 7C 1B 78 */	mr r28, r3
/* 801D8E58  38 00 00 00 */	li r0, 0
/* 801D8E5C  90 01 00 08 */	stw r0, 8(r1)
/* 801D8E60  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D8E64  38 00 FF FF */	li r0, -1
/* 801D8E68  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D8E6C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D8E70  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801D8E74  7F 84 E3 78 */	mr r4, r28
/* 801D8E78  80 BF 00 EC */	lwz r5, 0xec(r31)
/* 801D8E7C  38 C0 00 00 */	li r6, 0
/* 801D8E80  38 E0 00 00 */	li r7, 0
/* 801D8E84  39 00 00 00 */	li r8, 0
/* 801D8E88  39 20 00 00 */	li r9, 0
/* 801D8E8C  39 40 00 00 */	li r10, 0
/* 801D8E90  48 04 40 79 */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 801D8E94  80 9F 00 EC */	lwz r4, 0xec(r31)
/* 801D8E98  A0 04 00 02 */	lhz r0, 2(r4)
/* 801D8E9C  C8 42 A8 78 */	lfd f2, lit_4138(r2)
/* 801D8EA0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801D8EA4  3C 60 43 30 */	lis r3, 0x4330
/* 801D8EA8  90 61 00 98 */	stw r3, 0x98(r1)
/* 801D8EAC  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 801D8EB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801D8EB4  C0 22 A8 6C */	lfs f1, lit_4135(r2)
/* 801D8EB8  EF A0 08 24 */	fdivs f29, f0, f1
/* 801D8EBC  A0 04 00 04 */	lhz r0, 4(r4)
/* 801D8EC0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801D8EC4  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 801D8EC8  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 801D8ECC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801D8ED0  EF C0 08 24 */	fdivs f30, f0, f1
/* 801D8ED4  3B 60 00 00 */	li r27, 0
/* 801D8ED8  3B C0 00 00 */	li r30, 0
lbl_801D8EDC:
/* 801D8EDC  3B BE 00 54 */	addi r29, r30, 0x54
/* 801D8EE0  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801D8EE4  80 9F 00 EC */	lwz r4, 0xec(r31)
/* 801D8EE8  38 A0 00 00 */	li r5, 0
/* 801D8EEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8EF0  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801D8EF4  7D 89 03 A6 */	mtctr r12
/* 801D8EF8  4E 80 04 21 */	bctrl 
/* 801D8EFC  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801D8F00  D3 A3 00 CC */	stfs f29, 0xcc(r3)
/* 801D8F04  D3 C3 00 D0 */	stfs f30, 0xd0(r3)
/* 801D8F08  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8F0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D8F10  7D 89 03 A6 */	mtctr r12
/* 801D8F14  4E 80 04 21 */	bctrl 
/* 801D8F18  3B 7B 00 01 */	addi r27, r27, 1
/* 801D8F1C  2C 1B 00 02 */	cmpwi r27, 2
/* 801D8F20  3B DE 00 04 */	addi r30, r30, 4
/* 801D8F24  41 80 FF B8 */	blt lbl_801D8EDC
/* 801D8F28  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 801D8F2C  80 A3 00 04 */	lwz r5, 4(r3)
/* 801D8F30  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801D8F34  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 801D8F38  38 84 02 65 */	addi r4, r4, 0x265
/* 801D8F3C  38 C0 00 00 */	li r6, 0
/* 801D8F40  38 E0 00 00 */	li r7, 0
/* 801D8F44  39 00 00 00 */	li r8, 0
/* 801D8F48  39 20 00 00 */	li r9, 0
/* 801D8F4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8F50  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D8F54  7D 89 03 A6 */	mtctr r12
/* 801D8F58  4E 80 04 21 */	bctrl 
/* 801D8F5C  88 1F 00 F6 */	lbz r0, 0xf6(r31)
/* 801D8F60  28 00 00 01 */	cmplwi r0, 1
/* 801D8F64  40 82 02 44 */	bne lbl_801D91A8
/* 801D8F68  7F E3 FB 78 */	mr r3, r31
/* 801D8F6C  88 9F 00 F4 */	lbz r4, 0xf4(r31)
/* 801D8F70  88 BF 00 F5 */	lbz r5, 0xf5(r31)
/* 801D8F74  48 00 0E AD */	bl isGiveInsect__14dMenu_Insect_cFii
/* 801D8F78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8F7C  40 82 02 00 */	bne lbl_801D917C
/* 801D8F80  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801D8F84  38 80 05 BB */	li r4, 0x5bb
/* 801D8F88  80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 801D8F8C  38 C0 00 00 */	li r6, 0
/* 801D8F90  38 E0 00 00 */	li r7, 0
/* 801D8F94  39 00 00 00 */	li r8, 0
/* 801D8F98  39 20 00 00 */	li r9, 0
/* 801D8F9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8FA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D8FA4  7D 89 03 A6 */	mtctr r12
/* 801D8FA8  4E 80 04 21 */	bctrl 
/* 801D8FAC  38 00 00 00 */	li r0, 0
/* 801D8FB0  98 01 00 78 */	stb r0, 0x78(r1)
/* 801D8FB4  98 01 00 58 */	stb r0, 0x58(r1)
/* 801D8FB8  98 01 00 38 */	stb r0, 0x38(r1)
/* 801D8FBC  98 01 00 19 */	stb r0, 0x19(r1)
/* 801D8FC0  98 1F 00 F7 */	stb r0, 0xf7(r31)
/* 801D8FC4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D8FC8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801D8FCC  38 80 04 BD */	li r4, 0x4bd
/* 801D8FD0  38 A1 00 78 */	addi r5, r1, 0x78
/* 801D8FD4  38 C0 00 00 */	li r6, 0
/* 801D8FD8  48 04 32 79 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801D8FDC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D8FE0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801D8FE4  38 80 04 BE */	li r4, 0x4be
/* 801D8FE8  38 A1 00 58 */	addi r5, r1, 0x58
/* 801D8FEC  38 C0 00 00 */	li r6, 0
/* 801D8FF0  48 04 32 61 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801D8FF4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D8FF8  48 06 19 85 */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 801D8FFC  FF C0 08 90 */	fmr f30, f1
/* 801D9000  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9004  48 06 19 49 */	bl getFontSize__17dMsgScrn3Select_cFv
/* 801D9008  FF E0 08 90 */	fmr f31, f1
/* 801D900C  4B E3 B9 E5 */	bl mDoExt_getMesgFont__Fv
/* 801D9010  7C 64 1B 78 */	mr r4, r3
/* 801D9014  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D9018  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801D901C  FC 20 F8 90 */	fmr f1, f31
/* 801D9020  FC 40 F0 90 */	fmr f2, f30
/* 801D9024  38 A1 00 78 */	addi r5, r1, 0x78
/* 801D9028  48 04 37 D5 */	bl getStringLength__13dMeter2Info_cFP7JUTFontffPc
/* 801D902C  FF A0 08 90 */	fmr f29, f1
/* 801D9030  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9034  48 06 19 49 */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 801D9038  FF E0 08 90 */	fmr f31, f1
/* 801D903C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9040  48 06 19 0D */	bl getFontSize__17dMsgScrn3Select_cFv
/* 801D9044  FF C0 08 90 */	fmr f30, f1
/* 801D9048  4B E3 B9 A9 */	bl mDoExt_getMesgFont__Fv
/* 801D904C  7C 64 1B 78 */	mr r4, r3
/* 801D9050  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801D9054  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801D9058  FC 20 F0 90 */	fmr f1, f30
/* 801D905C  FC 40 F8 90 */	fmr f2, f31
/* 801D9060  38 A1 00 58 */	addi r5, r1, 0x58
/* 801D9064  48 04 37 99 */	bl getStringLength__13dMeter2Info_cFP7JUTFontffPc
/* 801D9068  FF C0 08 90 */	fmr f30, f1
/* 801D906C  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 801D9070  40 80 00 0C */	bge lbl_801D907C
/* 801D9074  FF E0 F0 90 */	fmr f31, f30
/* 801D9078  48 00 00 08 */	b lbl_801D9080
lbl_801D907C:
/* 801D907C  FF E0 E8 90 */	fmr f31, f29
lbl_801D9080:
/* 801D9080  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9084  48 06 18 B1 */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 801D9088  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801D908C  40 80 00 10 */	bge lbl_801D909C
/* 801D9090  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9094  48 06 18 A1 */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 801D9098  FF E0 08 90 */	fmr f31, f1
lbl_801D909C:
/* 801D909C  38 61 00 38 */	addi r3, r1, 0x38
/* 801D90A0  38 80 00 20 */	li r4, 0x20
/* 801D90A4  3C A0 80 39 */	lis r5, d_menu_d_menu_insect__stringBase0@ha
/* 801D90A8  38 A5 68 C0 */	addi r5, r5, d_menu_d_menu_insect__stringBase0@l
/* 801D90AC  38 A5 00 2A */	addi r5, r5, 0x2a
/* 801D90B0  C0 22 A8 70 */	lfs f1, lit_4136(r2)
/* 801D90B4  EC 1F E8 28 */	fsubs f0, f31, f29
/* 801D90B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D90BC  FC 00 00 1E */	fctiwz f0, f0
/* 801D90C0  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 801D90C4  80 C1 00 A4 */	lwz r6, 0xa4(r1)
/* 801D90C8  4C C6 31 82 */	crclr 6
/* 801D90CC  48 18 D4 F1 */	bl snprintf
/* 801D90D0  38 61 00 38 */	addi r3, r1, 0x38
/* 801D90D4  38 81 00 78 */	addi r4, r1, 0x78
/* 801D90D8  48 18 F9 E5 */	bl strcat
/* 801D90DC  38 61 00 18 */	addi r3, r1, 0x18
/* 801D90E0  38 80 00 20 */	li r4, 0x20
/* 801D90E4  3C A0 80 39 */	lis r5, d_menu_d_menu_insect__stringBase0@ha
/* 801D90E8  38 A5 68 C0 */	addi r5, r5, d_menu_d_menu_insect__stringBase0@l
/* 801D90EC  38 A5 00 2A */	addi r5, r5, 0x2a
/* 801D90F0  C0 22 A8 70 */	lfs f1, lit_4136(r2)
/* 801D90F4  EC 1F F0 28 */	fsubs f0, f31, f30
/* 801D90F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D90FC  FC 00 00 1E */	fctiwz f0, f0
/* 801D9100  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 801D9104  80 C1 00 9C */	lwz r6, 0x9c(r1)
/* 801D9108  4C C6 31 82 */	crclr 6
/* 801D910C  48 18 D4 B1 */	bl snprintf
/* 801D9110  38 61 00 18 */	addi r3, r1, 0x18
/* 801D9114  38 81 00 58 */	addi r4, r1, 0x58
/* 801D9118  48 18 F9 A5 */	bl strcat
/* 801D911C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9120  3C 80 80 39 */	lis r4, d_menu_d_menu_insect__stringBase0@ha
/* 801D9124  38 84 68 C0 */	addi r4, r4, d_menu_d_menu_insect__stringBase0@l
/* 801D9128  38 84 00 32 */	addi r4, r4, 0x32
/* 801D912C  38 A1 00 38 */	addi r5, r1, 0x38
/* 801D9130  38 C1 00 18 */	addi r6, r1, 0x18
/* 801D9134  48 06 0B 45 */	bl setString__17dMsgScrn3Select_cFPcPcPc
/* 801D9138  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D913C  3C 80 80 39 */	lis r4, d_menu_d_menu_insect__stringBase0@ha
/* 801D9140  38 84 68 C0 */	addi r4, r4, d_menu_d_menu_insect__stringBase0@l
/* 801D9144  38 84 00 32 */	addi r4, r4, 0x32
/* 801D9148  7C 85 23 78 */	mr r5, r4
/* 801D914C  7C 86 23 78 */	mr r6, r4
/* 801D9150  48 06 0B B9 */	bl setRubyString__17dMsgScrn3Select_cFPcPcPc
/* 801D9154  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9158  38 80 00 02 */	li r4, 2
/* 801D915C  88 BF 00 F7 */	lbz r5, 0xf7(r31)
/* 801D9160  38 05 00 01 */	addi r0, r5, 1
/* 801D9164  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801D9168  38 C0 00 00 */	li r6, 0
/* 801D916C  FC 20 F8 90 */	fmr f1, f31
/* 801D9170  38 E0 00 00 */	li r7, 0
/* 801D9174  48 06 0F 21 */	bl selAnimeInit__17dMsgScrn3Select_cFUcUcUcfUc
/* 801D9178  48 00 00 30 */	b lbl_801D91A8
lbl_801D917C:
/* 801D917C  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801D9180  38 80 05 BC */	li r4, 0x5bc
/* 801D9184  80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 801D9188  38 C0 00 00 */	li r6, 0
/* 801D918C  38 E0 00 00 */	li r7, 0
/* 801D9190  39 00 00 00 */	li r8, 0
/* 801D9194  39 20 00 00 */	li r9, 0
/* 801D9198  81 83 00 00 */	lwz r12, 0(r3)
/* 801D919C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D91A0  7D 89 03 A6 */	mtctr r12
/* 801D91A4  4E 80 04 21 */	bctrl 
lbl_801D91A8:
/* 801D91A8  38 00 00 00 */	li r0, 0
/* 801D91AC  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801D91B0  B0 03 00 16 */	sth r0, 0x16(r3)
/* 801D91B4  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 801D91B8  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 801D91BC  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 801D91C0  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 801D91C4  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 801D91C8  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 801D91CC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 801D91D0  48 18 90 51 */	bl _restgpr_27
/* 801D91D4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801D91D8  7C 08 03 A6 */	mtlr r0
/* 801D91DC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801D91E0  4E 80 00 20 */	blr 
