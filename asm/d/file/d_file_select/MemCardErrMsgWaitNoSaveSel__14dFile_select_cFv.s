lbl_8018ED80:
/* 8018ED80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018ED84  7C 08 02 A6 */	mflr r0
/* 8018ED88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018ED8C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8018ED90  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8018ED94  7C 7F 1B 78 */	mr r31, r3
/* 8018ED98  48 00 0C 95 */	bl errYesNoSelect__14dFile_select_cFv
/* 8018ED9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018EDA0  41 82 01 A4 */	beq lbl_8018EF44
/* 8018EDA4  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 8018EDA8  28 00 00 00 */	cmplwi r0, 0
/* 8018EDAC  41 82 01 3C */	beq lbl_8018EEE8
/* 8018EDB0  7F E3 FB 78 */	mr r3, r31
/* 8018EDB4  48 00 14 A1 */	bl setInitSaveData__14dFile_select_cFv
/* 8018EDB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018EDBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8018EDC0  38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 8018EDC4  38 A0 00 00 */	li r5, 0
/* 8018EDC8  4B EA 6C 3D */	bl card_to_memory__10dSv_info_cFPci
/* 8018EDCC  38 80 00 01 */	li r4, 1
/* 8018EDD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018EDD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8018EDD8  98 83 0F 1A */	stb r4, 0xf1a(r3)
/* 8018EDDC  38 00 00 00 */	li r0, 0
/* 8018EDE0  98 03 0F 18 */	stb r0, 0xf18(r3)
/* 8018EDE4  38 60 00 00 */	li r3, 0
/* 8018EDE8  38 00 00 03 */	li r0, 3
/* 8018EDEC  7C 09 03 A6 */	mtctr r0
lbl_8018EDF0:
/* 8018EDF0  38 03 02 58 */	addi r0, r3, 0x258
/* 8018EDF4  7C 9F 01 AE */	stbx r4, r31, r0
/* 8018EDF8  38 63 00 01 */	addi r3, r3, 1
/* 8018EDFC  42 00 FF F4 */	bdnz lbl_8018EDF0
/* 8018EE00  7F E3 FB 78 */	mr r3, r31
/* 8018EE04  38 80 03 85 */	li r4, 0x385
/* 8018EE08  38 A0 00 01 */	li r5, 1
/* 8018EE0C  38 C0 00 00 */	li r6, 0
/* 8018EE10  4B FF E2 D5 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018EE14  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018EE18  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018EE1C  48 00 64 85 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018EE20  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8018EE24  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8018EE28  38 80 03 82 */	li r4, 0x382
/* 8018EE2C  38 A1 00 08 */	addi r5, r1, 8
/* 8018EE30  38 C0 00 00 */	li r6, 0
/* 8018EE34  48 08 D4 1D */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8018EE38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018EE3C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8018EE40  38 7E 01 B4 */	addi r3, r30, 0x1b4
/* 8018EE44  38 81 00 08 */	addi r4, r1, 8
/* 8018EE48  48 1D 9C E5 */	bl strcpy
/* 8018EE4C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8018EE50  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8018EE54  38 80 03 83 */	li r4, 0x383
/* 8018EE58  38 A1 00 08 */	addi r5, r1, 8
/* 8018EE5C  38 C0 00 00 */	li r6, 0
/* 8018EE60  48 08 D3 F1 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8018EE64  38 7E 01 C5 */	addi r3, r30, 0x1c5
/* 8018EE68  38 81 00 08 */	addi r4, r1, 8
/* 8018EE6C  48 1D 9C C1 */	bl strcpy
/* 8018EE70  38 9E 01 B4 */	addi r4, r30, 0x1b4
/* 8018EE74  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8018EE78  38 63 03 1C */	addi r3, r3, 0x31c
/* 8018EE7C  48 1D 9C B1 */	bl strcpy
/* 8018EE80  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8018EE84  48 0B F9 21 */	bl initial__7dName_cFv
/* 8018EE88  7F E3 FB 78 */	mr r3, r31
/* 8018EE8C  38 80 00 01 */	li r4, 1
/* 8018EE90  4B FF E4 B5 */	bl modoruTxtChange__14dFile_select_cFUc
/* 8018EE94  7F E3 FB 78 */	mr r3, r31
/* 8018EE98  38 80 0D 1F */	li r4, 0xd1f
/* 8018EE9C  38 A0 0D 29 */	li r5, 0xd29
/* 8018EEA0  48 00 11 D5 */	bl nameMoveAnmInitSet__14dFile_select_cFii
/* 8018EEA4  7F E3 FB 78 */	mr r3, r31
/* 8018EEA8  38 80 04 7D */	li r4, 0x47d
/* 8018EEAC  38 A0 04 73 */	li r5, 0x473
/* 8018EEB0  4B FF 9D 0D */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018EEB4  7F E3 FB 78 */	mr r3, r31
/* 8018EEB8  38 80 0B 2B */	li r4, 0xb2b
/* 8018EEBC  38 A0 0B 21 */	li r5, 0xb21
/* 8018EEC0  4B FF F2 71 */	bl errorMoveAnmInitSet__14dFile_select_cFii
/* 8018EEC4  7F E3 FB 78 */	mr r3, r31
/* 8018EEC8  38 80 00 01 */	li r4, 1
/* 8018EECC  4B FF E4 D5 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 8018EED0  7F E3 FB 78 */	mr r3, r31
/* 8018EED4  38 80 00 01 */	li r4, 1
/* 8018EED8  4B FF E6 21 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018EEDC  38 00 00 2D */	li r0, 0x2d
/* 8018EEE0  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018EEE4  48 00 00 60 */	b lbl_8018EF44
lbl_8018EEE8:
/* 8018EEE8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8018EEEC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8018EEF0  80 64 00 00 */	lwz r3, 0(r4)
/* 8018EEF4  80 04 00 04 */	lwz r0, 4(r4)
/* 8018EEF8  90 7F 02 84 */	stw r3, 0x284(r31)
/* 8018EEFC  90 1F 02 88 */	stw r0, 0x288(r31)
/* 8018EF00  80 04 00 08 */	lwz r0, 8(r4)
/* 8018EF04  90 1F 02 8C */	stw r0, 0x28c(r31)
/* 8018EF08  38 00 00 00 */	li r0, 0
/* 8018EF0C  98 1F 02 73 */	stb r0, 0x273(r31)
/* 8018EF10  7F E3 FB 78 */	mr r3, r31
/* 8018EF14  38 80 00 00 */	li r4, 0
/* 8018EF18  4B FF E5 E1 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018EF1C  7F E3 FB 78 */	mr r3, r31
/* 8018EF20  38 80 0B 2B */	li r4, 0xb2b
/* 8018EF24  38 A0 0B 21 */	li r5, 0xb21
/* 8018EF28  4B FF F2 09 */	bl errorMoveAnmInitSet__14dFile_select_cFii
/* 8018EF2C  7F E3 FB 78 */	mr r3, r31
/* 8018EF30  38 80 04 7D */	li r4, 0x47d
/* 8018EF34  38 A0 04 73 */	li r5, 0x473
/* 8018EF38  4B FF 9C 85 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018EF3C  38 00 00 18 */	li r0, 0x18
/* 8018EF40  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018EF44:
/* 8018EF44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018EF48  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8018EF4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018EF50  7C 08 03 A6 */	mtlr r0
/* 8018EF54  38 21 00 30 */	addi r1, r1, 0x30
/* 8018EF58  4E 80 00 20 */	blr 
