lbl_8018ADA0:
/* 8018ADA0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8018ADA4  7C 08 02 A6 */	mflr r0
/* 8018ADA8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8018ADAC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8018ADB0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8018ADB4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8018ADB8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 8018ADBC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8018ADC0  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 8018ADC4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8018ADC8  48 1D 73 F9 */	bl _savegpr_22
/* 8018ADCC  7C 7F 1B 78 */	mr r31, r3
/* 8018ADD0  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha
/* 8018ADD4  3B C3 A8 48 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 8018ADD8  38 60 01 18 */	li r3, 0x118
/* 8018ADDC  48 14 3E 71 */	bl __nw__FUl
/* 8018ADE0  7C 60 1B 79 */	or. r0, r3, r3
/* 8018ADE4  41 82 00 0C */	beq lbl_8018ADF0
/* 8018ADE8  48 16 D6 B1 */	bl __ct__9J2DScreenFv
/* 8018ADEC  7C 60 1B 78 */	mr r0, r3
lbl_8018ADF0:
/* 8018ADF0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8018ADF4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018ADF8  3C 80 80 39 */	lis r4, d_file_d_file_select__stringBase0@ha
/* 8018ADFC  38 84 43 88 */	addi r4, r4, d_file_d_file_select__stringBase0@l
/* 8018AE00  38 84 00 3F */	addi r4, r4, 0x3f
/* 8018AE04  3C A0 01 10 */	lis r5, 0x110
/* 8018AE08  80 DF 00 08 */	lwz r6, 8(r31)
/* 8018AE0C  48 16 D8 3D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8018AE10  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018AE14  48 0C A2 D5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8018AE18  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018AE1C  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018AE20  38 63 00 55 */	addi r3, r3, 0x55
/* 8018AE24  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018AE28  48 14 94 49 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018AE2C  7C 78 1B 78 */	mr r24, r3
/* 8018AE30  48 17 DC 3D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018AE34  90 7F 00 84 */	stw r3, 0x84(r31)
/* 8018AE38  7F 03 C3 78 */	mr r3, r24
/* 8018AE3C  48 17 DC 31 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018AE40  90 7F 00 88 */	stw r3, 0x88(r31)
/* 8018AE44  7F 03 C3 78 */	mr r3, r24
/* 8018AE48  48 17 DC 25 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018AE4C  90 7F 00 90 */	stw r3, 0x90(r31)
/* 8018AE50  7F 03 C3 78 */	mr r3, r24
/* 8018AE54  48 17 DC 19 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018AE58  90 7F 00 94 */	stw r3, 0x94(r31)
/* 8018AE5C  7F 03 C3 78 */	mr r3, r24
/* 8018AE60  48 17 DC 0D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018AE64  90 7F 00 98 */	stw r3, 0x98(r31)
/* 8018AE68  7F 03 C3 78 */	mr r3, r24
/* 8018AE6C  48 17 DC 01 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018AE70  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 8018AE74  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8018AE78  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018AE7C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AE80  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018AE84  7D 89 03 A6 */	mtctr r12
/* 8018AE88  4E 80 04 21 */	bctrl 
/* 8018AE8C  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 8018AE90  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018AE94  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AE98  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018AE9C  7D 89 03 A6 */	mtctr r12
/* 8018AEA0  4E 80 04 21 */	bctrl 
/* 8018AEA4  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 8018AEA8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018AEAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AEB0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018AEB4  7D 89 03 A6 */	mtctr r12
/* 8018AEB8  4E 80 04 21 */	bctrl 
/* 8018AEBC  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 8018AEC0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018AEC4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AEC8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018AECC  7D 89 03 A6 */	mtctr r12
/* 8018AED0  4E 80 04 21 */	bctrl 
/* 8018AED4  38 60 00 6C */	li r3, 0x6c
/* 8018AED8  48 14 3D 75 */	bl __nw__FUl
/* 8018AEDC  7C 60 1B 79 */	or. r0, r3, r3
/* 8018AEE0  41 82 00 28 */	beq lbl_8018AF08
/* 8018AEE4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018AEE8  3C A0 76 65 */	lis r5, 0x7665 /* 0x76655F6E@ha */
/* 8018AEEC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x76655F6E@l */
/* 8018AEF0  3C A0 77 5F */	lis r5, 0x775F /* 0x775F6D6F@ha */
/* 8018AEF4  38 A5 6D 6F */	addi r5, r5, 0x6D6F /* 0x775F6D6F@l */
/* 8018AEF8  38 E0 00 00 */	li r7, 0
/* 8018AEFC  39 00 00 00 */	li r8, 0
/* 8018AF00  48 0C 8A 85 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018AF04  7C 60 1B 78 */	mr r0, r3
lbl_8018AF08:
/* 8018AF08  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 8018AF0C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018AF10  3C 80 75 62 */	lis r4, 0x7562 /* 0x75625F6E@ha */
/* 8018AF14  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x75625F6E@l */
/* 8018AF18  3C 80 00 77 */	lis r4, 0x0077 /* 0x00775F73@ha */
/* 8018AF1C  38 A4 5F 73 */	addi r5, r4, 0x5F73 /* 0x00775F73@l */
/* 8018AF20  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AF24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018AF28  7D 89 03 A6 */	mtctr r12
/* 8018AF2C  4E 80 04 21 */	bctrl 
/* 8018AF30  90 7F 01 0C */	stw r3, 0x10c(r31)
/* 8018AF34  3A C0 00 00 */	li r22, 0
/* 8018AF38  3B 20 00 00 */	li r25, 0
/* 8018AF3C  3B 40 00 00 */	li r26, 0
/* 8018AF40  3B 1E 04 F8 */	addi r24, r30, 0x4f8
lbl_8018AF44:
/* 8018AF44  38 60 00 6C */	li r3, 0x6c
/* 8018AF48  48 14 3D 05 */	bl __nw__FUl
/* 8018AF4C  7C 64 1B 79 */	or. r4, r3, r3
/* 8018AF50  41 82 00 24 */	beq lbl_8018AF74
/* 8018AF54  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018AF58  7C D8 D2 14 */	add r6, r24, r26
/* 8018AF5C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018AF60  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018AF64  38 E0 00 01 */	li r7, 1
/* 8018AF68  39 00 00 00 */	li r8, 0
/* 8018AF6C  48 0C 8A 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018AF70  7C 64 1B 78 */	mr r4, r3
lbl_8018AF74:
/* 8018AF74  38 19 00 BC */	addi r0, r25, 0xbc
/* 8018AF78  7C 9F 01 2E */	stwx r4, r31, r0
/* 8018AF7C  3A D6 00 01 */	addi r22, r22, 1
/* 8018AF80  2C 16 00 03 */	cmpwi r22, 3
/* 8018AF84  3B 39 00 04 */	addi r25, r25, 4
/* 8018AF88  3B 5A 00 08 */	addi r26, r26, 8
/* 8018AF8C  41 80 FF B8 */	blt lbl_8018AF44
/* 8018AF90  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018AF94  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 8018AF98  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 8018AF9C  3C 80 57 69 */	lis r4, 0x5769 /* 0x57695F62@ha */
/* 8018AFA0  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x57695F62@l */
/* 8018AFA4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AFA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018AFAC  7D 89 03 A6 */	mtctr r12
/* 8018AFB0  4E 80 04 21 */	bctrl 
/* 8018AFB4  38 00 00 00 */	li r0, 0
/* 8018AFB8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018AFBC  38 60 00 1C */	li r3, 0x1c
/* 8018AFC0  48 14 3C 8D */	bl __nw__FUl
/* 8018AFC4  7C 60 1B 79 */	or. r0, r3, r3
/* 8018AFC8  41 82 00 28 */	beq lbl_8018AFF0
/* 8018AFCC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018AFD0  3C A0 62 62 */	lis r5, 0x6262 /* 0x6262746E@ha */
/* 8018AFD4  38 C5 74 6E */	addi r6, r5, 0x746E /* 0x6262746E@l */
/* 8018AFD8  3C A0 77 5F */	lis r5, 0x775F /* 0x775F6E5F@ha */
/* 8018AFDC  38 A5 6E 5F */	addi r5, r5, 0x6E5F /* 0x775F6E5F@l */
/* 8018AFE0  38 E0 00 02 */	li r7, 2
/* 8018AFE4  39 00 00 00 */	li r8, 0
/* 8018AFE8  48 0C A4 15 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018AFEC  7C 60 1B 78 */	mr r0, r3
lbl_8018AFF0:
/* 8018AFF0  90 1F 02 38 */	stw r0, 0x238(r31)
/* 8018AFF4  38 60 00 1C */	li r3, 0x1c
/* 8018AFF8  48 14 3C 55 */	bl __nw__FUl
/* 8018AFFC  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B000  41 82 00 28 */	beq lbl_8018B028
/* 8018B004  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B008  3C A0 61 62 */	lis r5, 0x6162 /* 0x6162746E@ha */
/* 8018B00C  38 C5 74 6E */	addi r6, r5, 0x746E /* 0x6162746E@l */
/* 8018B010  3C A0 77 5F */	lis r5, 0x775F /* 0x775F6E5F@ha */
/* 8018B014  38 A5 6E 5F */	addi r5, r5, 0x6E5F /* 0x775F6E5F@l */
/* 8018B018  38 E0 00 02 */	li r7, 2
/* 8018B01C  39 00 00 00 */	li r8, 0
/* 8018B020  48 0C A3 DD */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B024  7C 60 1B 78 */	mr r0, r3
lbl_8018B028:
/* 8018B028  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8018B02C  38 60 00 1C */	li r3, 0x1c
/* 8018B030  48 14 3C 1D */	bl __nw__FUl
/* 8018B034  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B038  41 82 00 24 */	beq lbl_8018B05C
/* 8018B03C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B040  3C A0 6D 6F */	lis r5, 0x6D6F /* 0x6D6F646F@ha */
/* 8018B044  38 C5 64 6F */	addi r6, r5, 0x646F /* 0x6D6F646F@l */
/* 8018B048  38 A0 66 5F */	li r5, 0x665f
/* 8018B04C  38 E0 00 02 */	li r7, 2
/* 8018B050  39 00 00 00 */	li r8, 0
/* 8018B054  48 0C A3 A9 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B058  7C 60 1B 78 */	mr r0, r3
lbl_8018B05C:
/* 8018B05C  90 1F 02 40 */	stw r0, 0x240(r31)
/* 8018B060  38 60 00 1C */	li r3, 0x1c
/* 8018B064  48 14 3B E9 */	bl __nw__FUl
/* 8018B068  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B06C  41 82 00 24 */	beq lbl_8018B090
/* 8018B070  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B074  3C A0 6B 65 */	lis r5, 0x6B65 /* 0x6B657465@ha */
/* 8018B078  38 C5 74 65 */	addi r6, r5, 0x7465 /* 0x6B657465@l */
/* 8018B07C  38 A0 66 5F */	li r5, 0x665f
/* 8018B080  38 E0 00 02 */	li r7, 2
/* 8018B084  39 00 00 00 */	li r8, 0
/* 8018B088  48 0C A3 75 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B08C  7C 60 1B 78 */	mr r0, r3
lbl_8018B090:
/* 8018B090  90 1F 02 44 */	stw r0, 0x244(r31)
/* 8018B094  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B098  3C 80 6D 6F */	lis r4, 0x6D6F /* 0x6D6F646F@ha */
/* 8018B09C  38 C4 64 6F */	addi r6, r4, 0x646F /* 0x6D6F646F@l */
/* 8018B0A0  38 A0 77 5F */	li r5, 0x775f
/* 8018B0A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B0A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B0AC  7D 89 03 A6 */	mtctr r12
/* 8018B0B0  4E 80 04 21 */	bctrl 
/* 8018B0B4  38 00 00 00 */	li r0, 0
/* 8018B0B8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B0BC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B0C0  3C 80 6B 65 */	lis r4, 0x6B65 /* 0x6B657465@ha */
/* 8018B0C4  38 C4 74 65 */	addi r6, r4, 0x7465 /* 0x6B657465@l */
/* 8018B0C8  38 A0 77 5F */	li r5, 0x775f
/* 8018B0CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B0D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B0D4  7D 89 03 A6 */	mtctr r12
/* 8018B0D8  4E 80 04 21 */	bctrl 
/* 8018B0DC  38 00 00 00 */	li r0, 0
/* 8018B0E0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B0E4  80 7F 02 40 */	lwz r3, 0x240(r31)
/* 8018B0E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B0EC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018B0F0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B0F4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8018B0F8  7D 89 03 A6 */	mtctr r12
/* 8018B0FC  4E 80 04 21 */	bctrl 
/* 8018B100  80 7F 02 44 */	lwz r3, 0x244(r31)
/* 8018B104  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B108  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018B10C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B110  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8018B114  7D 89 03 A6 */	mtctr r12
/* 8018B118  4E 80 04 21 */	bctrl 
/* 8018B11C  80 7F 02 40 */	lwz r3, 0x240(r31)
/* 8018B120  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B124  38 80 00 20 */	li r4, 0x20
/* 8018B128  3C A0 80 39 */	lis r5, d_file_d_file_select__stringBase0@ha
/* 8018B12C  38 A5 43 88 */	addi r5, r5, d_file_d_file_select__stringBase0@l
/* 8018B130  38 A5 00 6B */	addi r5, r5, 0x6b
/* 8018B134  4C C6 31 82 */	crclr 6
/* 8018B138  48 17 56 15 */	bl setString__10J2DTextBoxFsPCce
/* 8018B13C  80 7F 02 40 */	lwz r3, 0x240(r31)
/* 8018B140  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B144  48 17 55 15 */	bl getStringPtr__10J2DTextBoxCFv
/* 8018B148  90 7F 02 50 */	stw r3, 0x250(r31)
/* 8018B14C  80 7F 02 50 */	lwz r3, 0x250(r31)
/* 8018B150  38 80 00 54 */	li r4, 0x54
/* 8018B154  4B E9 4F 6D */	bl fopMsgM_messageGet__FPcUl
/* 8018B158  38 00 00 00 */	li r0, 0
/* 8018B15C  98 1F 02 4C */	stb r0, 0x24c(r31)
/* 8018B160  38 61 00 58 */	addi r3, r1, 0x58
/* 8018B164  38 80 00 55 */	li r4, 0x55
/* 8018B168  4B E9 4F 59 */	bl fopMsgM_messageGet__FPcUl
/* 8018B16C  80 7F 02 44 */	lwz r3, 0x244(r31)
/* 8018B170  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B174  38 81 00 58 */	addi r4, r1, 0x58
/* 8018B178  4C C6 31 82 */	crclr 6
/* 8018B17C  48 17 54 E5 */	bl setString__10J2DTextBoxFPCce
/* 8018B180  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B184  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018B188  38 63 00 6C */	addi r3, r3, 0x6c
/* 8018B18C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018B190  48 14 90 E1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018B194  7C 7A 1B 78 */	mr r26, r3
/* 8018B198  48 17 D8 D5 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B19C  90 7F 01 C8 */	stw r3, 0x1c8(r31)
/* 8018B1A0  80 7F 01 C8 */	lwz r3, 0x1c8(r31)
/* 8018B1A4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B1A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B1AC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B1B0  7D 89 03 A6 */	mtctr r12
/* 8018B1B4  4E 80 04 21 */	bctrl 
/* 8018B1B8  38 00 00 00 */	li r0, 0
/* 8018B1BC  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 8018B1C0  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B1C4  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018B1C8  38 63 00 82 */	addi r3, r3, 0x82
/* 8018B1CC  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018B1D0  48 14 90 A1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018B1D4  48 17 D8 99 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B1D8  90 7F 01 D0 */	stw r3, 0x1d0(r31)
/* 8018B1DC  80 7F 01 D0 */	lwz r3, 0x1d0(r31)
/* 8018B1E0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B1E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B1E8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B1EC  7D 89 03 A6 */	mtctr r12
/* 8018B1F0  4E 80 04 21 */	bctrl 
/* 8018B1F4  38 00 00 00 */	li r0, 0
/* 8018B1F8  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 8018B1FC  3B A0 00 00 */	li r29, 0
/* 8018B200  3B 80 00 00 */	li r28, 0
/* 8018B204  3B 60 00 00 */	li r27, 0
lbl_8018B208:
/* 8018B208  38 60 00 6C */	li r3, 0x6c
/* 8018B20C  48 14 3A 41 */	bl __nw__FUl
/* 8018B210  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B214  41 82 00 28 */	beq lbl_8018B23C
/* 8018B218  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B21C  38 1E 05 10 */	addi r0, r30, 0x510
/* 8018B220  7C C0 DA 14 */	add r6, r0, r27
/* 8018B224  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B228  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B22C  38 E0 00 00 */	li r7, 0
/* 8018B230  39 00 00 00 */	li r8, 0
/* 8018B234  48 0C 87 51 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B238  7C 60 1B 78 */	mr r0, r3
lbl_8018B23C:
/* 8018B23C  7F 3F E2 14 */	add r25, r31, r28
/* 8018B240  90 19 01 64 */	stw r0, 0x164(r25)
/* 8018B244  38 60 00 6C */	li r3, 0x6c
/* 8018B248  48 14 3A 05 */	bl __nw__FUl
/* 8018B24C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B250  41 82 00 28 */	beq lbl_8018B278
/* 8018B254  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B258  38 1E 05 28 */	addi r0, r30, 0x528
/* 8018B25C  7C C0 DA 14 */	add r6, r0, r27
/* 8018B260  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B264  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B268  38 E0 00 00 */	li r7, 0
/* 8018B26C  39 00 00 00 */	li r8, 0
/* 8018B270  48 0C 87 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B274  7C 60 1B 78 */	mr r0, r3
lbl_8018B278:
/* 8018B278  90 19 01 70 */	stw r0, 0x170(r25)
/* 8018B27C  38 60 00 6C */	li r3, 0x6c
/* 8018B280  48 14 39 CD */	bl __nw__FUl
/* 8018B284  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B288  41 82 00 28 */	beq lbl_8018B2B0
/* 8018B28C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B290  38 1E 05 40 */	addi r0, r30, 0x540
/* 8018B294  7C C0 DA 14 */	add r6, r0, r27
/* 8018B298  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B29C  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B2A0  38 E0 00 00 */	li r7, 0
/* 8018B2A4  39 00 00 00 */	li r8, 0
/* 8018B2A8  48 0C 86 DD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B2AC  7C 60 1B 78 */	mr r0, r3
lbl_8018B2B0:
/* 8018B2B0  90 19 01 7C */	stw r0, 0x17c(r25)
/* 8018B2B4  80 79 01 64 */	lwz r3, 0x164(r25)
/* 8018B2B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B2BC  80 9F 01 C8 */	lwz r4, 0x1c8(r31)
/* 8018B2C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B2C4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018B2C8  7D 89 03 A6 */	mtctr r12
/* 8018B2CC  4E 80 04 21 */	bctrl 
/* 8018B2D0  80 79 01 70 */	lwz r3, 0x170(r25)
/* 8018B2D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B2D8  80 9F 01 C8 */	lwz r4, 0x1c8(r31)
/* 8018B2DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B2E0  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018B2E4  7D 89 03 A6 */	mtctr r12
/* 8018B2E8  4E 80 04 21 */	bctrl 
/* 8018B2EC  80 79 01 7C */	lwz r3, 0x17c(r25)
/* 8018B2F0  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B2F4  80 9F 01 C8 */	lwz r4, 0x1c8(r31)
/* 8018B2F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B2FC  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018B300  7D 89 03 A6 */	mtctr r12
/* 8018B304  4E 80 04 21 */	bctrl 
/* 8018B308  80 79 01 70 */	lwz r3, 0x170(r25)
/* 8018B30C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B310  80 9F 01 D0 */	lwz r4, 0x1d0(r31)
/* 8018B314  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B318  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018B31C  7D 89 03 A6 */	mtctr r12
/* 8018B320  4E 80 04 21 */	bctrl 
/* 8018B324  80 79 01 7C */	lwz r3, 0x17c(r25)
/* 8018B328  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B32C  80 9F 01 D0 */	lwz r4, 0x1d0(r31)
/* 8018B330  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B334  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018B338  7D 89 03 A6 */	mtctr r12
/* 8018B33C  4E 80 04 21 */	bctrl 
/* 8018B340  3B BD 00 01 */	addi r29, r29, 1
/* 8018B344  2C 1D 00 03 */	cmpwi r29, 3
/* 8018B348  3B 9C 00 04 */	addi r28, r28, 4
/* 8018B34C  3B 7B 00 08 */	addi r27, r27, 8
/* 8018B350  41 80 FE B8 */	blt lbl_8018B208
/* 8018B354  7F 43 D3 78 */	mr r3, r26
/* 8018B358  48 17 D7 15 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B35C  90 7F 01 D8 */	stw r3, 0x1d8(r31)
/* 8018B360  80 7F 01 D8 */	lwz r3, 0x1d8(r31)
/* 8018B364  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B368  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B36C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B370  7D 89 03 A6 */	mtctr r12
/* 8018B374  4E 80 04 21 */	bctrl 
/* 8018B378  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B37C  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018B380  38 63 00 9B */	addi r3, r3, 0x9b
/* 8018B384  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018B388  48 14 8E E9 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018B38C  48 17 D6 E1 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B390  90 7F 01 E0 */	stw r3, 0x1e0(r31)
/* 8018B394  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 8018B398  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B39C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B3A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B3A4  7D 89 03 A6 */	mtctr r12
/* 8018B3A8  4E 80 04 21 */	bctrl 
/* 8018B3AC  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B3B0  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018B3B4  38 63 00 B1 */	addi r3, r3, 0xb1
/* 8018B3B8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018B3BC  48 14 8E B5 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018B3C0  7C 78 1B 78 */	mr r24, r3
/* 8018B3C4  48 17 D6 A9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B3C8  90 7F 01 E8 */	stw r3, 0x1e8(r31)
/* 8018B3CC  7F 03 C3 78 */	mr r3, r24
/* 8018B3D0  48 17 D6 9D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B3D4  90 7F 02 00 */	stw r3, 0x200(r31)
/* 8018B3D8  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 8018B3DC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B3E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B3E4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B3E8  7D 89 03 A6 */	mtctr r12
/* 8018B3EC  4E 80 04 21 */	bctrl 
/* 8018B3F0  80 7F 02 00 */	lwz r3, 0x200(r31)
/* 8018B3F4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B3F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B3FC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B400  7D 89 03 A6 */	mtctr r12
/* 8018B404  4E 80 04 21 */	bctrl 
/* 8018B408  38 00 00 00 */	li r0, 0
/* 8018B40C  90 1F 01 DC */	stw r0, 0x1dc(r31)
/* 8018B410  90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 8018B414  90 1F 01 EC */	stw r0, 0x1ec(r31)
/* 8018B418  3A C0 00 00 */	li r22, 0
/* 8018B41C  3B 20 00 00 */	li r25, 0
/* 8018B420  3B 40 00 00 */	li r26, 0
lbl_8018B424:
/* 8018B424  38 60 00 6C */	li r3, 0x6c
/* 8018B428  48 14 38 25 */	bl __nw__FUl
/* 8018B42C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B430  41 82 00 28 */	beq lbl_8018B458
/* 8018B434  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B438  38 1E 05 58 */	addi r0, r30, 0x558
/* 8018B43C  7C C0 D2 14 */	add r6, r0, r26
/* 8018B440  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B444  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B448  38 E0 00 00 */	li r7, 0
/* 8018B44C  39 00 00 00 */	li r8, 0
/* 8018B450  48 0C 85 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B454  7C 60 1B 78 */	mr r0, r3
lbl_8018B458:
/* 8018B458  3A F9 01 88 */	addi r23, r25, 0x188
/* 8018B45C  7C 1F B9 2E */	stwx r0, r31, r23
/* 8018B460  7C 7F B8 2E */	lwzx r3, r31, r23
/* 8018B464  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B468  80 9F 01 D8 */	lwz r4, 0x1d8(r31)
/* 8018B46C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B470  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8018B474  7D 89 03 A6 */	mtctr r12
/* 8018B478  4E 80 04 21 */	bctrl 
/* 8018B47C  7C 7F B8 2E */	lwzx r3, r31, r23
/* 8018B480  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B484  80 9F 01 E0 */	lwz r4, 0x1e0(r31)
/* 8018B488  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B48C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018B490  7D 89 03 A6 */	mtctr r12
/* 8018B494  4E 80 04 21 */	bctrl 
/* 8018B498  7C 7F B8 2E */	lwzx r3, r31, r23
/* 8018B49C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B4A0  80 9F 01 E8 */	lwz r4, 0x1e8(r31)
/* 8018B4A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B4A8  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8018B4AC  7D 89 03 A6 */	mtctr r12
/* 8018B4B0  4E 80 04 21 */	bctrl 
/* 8018B4B4  3A D6 00 01 */	addi r22, r22, 1
/* 8018B4B8  2C 16 00 03 */	cmpwi r22, 3
/* 8018B4BC  3B 39 00 04 */	addi r25, r25, 4
/* 8018B4C0  3B 5A 00 08 */	addi r26, r26, 8
/* 8018B4C4  41 80 FF 60 */	blt lbl_8018B424
/* 8018B4C8  3A C0 00 00 */	li r22, 0
/* 8018B4CC  3B 20 00 00 */	li r25, 0
/* 8018B4D0  3B 5E 05 70 */	addi r26, r30, 0x570
/* 8018B4D4  3B 00 00 00 */	li r24, 0
lbl_8018B4D8:
/* 8018B4D8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B4DC  7C DA CA 14 */	add r6, r26, r25
/* 8018B4E0  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B4E4  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B4E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B4EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B4F0  7D 89 03 A6 */	mtctr r12
/* 8018B4F4  4E 80 04 21 */	bctrl 
/* 8018B4F8  9B 03 00 B0 */	stb r24, 0xb0(r3)
/* 8018B4FC  3A D6 00 01 */	addi r22, r22, 1
/* 8018B500  2C 16 00 0F */	cmpwi r22, 0xf
/* 8018B504  3B 39 00 08 */	addi r25, r25, 8
/* 8018B508  41 80 FF D0 */	blt lbl_8018B4D8
/* 8018B50C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B510  3C 80 62 69 */	lis r4, 0x6269 /* 0x62695F73@ha */
/* 8018B514  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x62695F73@l */
/* 8018B518  3C 80 77 5F */	lis r4, 0x775F /* 0x775F7461@ha */
/* 8018B51C  38 A4 74 61 */	addi r5, r4, 0x7461 /* 0x775F7461@l */
/* 8018B520  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B524  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B528  7D 89 03 A6 */	mtctr r12
/* 8018B52C  4E 80 04 21 */	bctrl 
/* 8018B530  38 00 00 00 */	li r0, 0
/* 8018B534  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B538  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B53C  3C 80 62 69 */	lis r4, 0x6269 /* 0x62695F78@ha */
/* 8018B540  38 C4 5F 78 */	addi r6, r4, 0x5F78 /* 0x62695F78@l */
/* 8018B544  3C 80 77 5F */	lis r4, 0x775F /* 0x775F7461@ha */
/* 8018B548  38 A4 74 61 */	addi r5, r4, 0x7461 /* 0x775F7461@l */
/* 8018B54C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B550  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B554  7D 89 03 A6 */	mtctr r12
/* 8018B558  4E 80 04 21 */	bctrl 
/* 8018B55C  38 00 00 00 */	li r0, 0
/* 8018B560  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B564  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B568  3C 80 6D 67 */	lis r4, 0x6D67 /* 0x6D676E31@ha */
/* 8018B56C  38 C4 6E 31 */	addi r6, r4, 0x6E31 /* 0x6D676E31@l */
/* 8018B570  38 A0 77 5F */	li r5, 0x775f
/* 8018B574  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B578  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B57C  7D 89 03 A6 */	mtctr r12
/* 8018B580  4E 80 04 21 */	bctrl 
/* 8018B584  38 00 00 00 */	li r0, 0
/* 8018B588  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B58C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B590  3C 80 6D 67 */	lis r4, 0x6D67 /* 0x6D676E32@ha */
/* 8018B594  38 C4 6E 32 */	addi r6, r4, 0x6E32 /* 0x6D676E32@l */
/* 8018B598  38 A0 77 5F */	li r5, 0x775f
/* 8018B59C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B5A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B5A4  7D 89 03 A6 */	mtctr r12
/* 8018B5A8  4E 80 04 21 */	bctrl 
/* 8018B5AC  38 00 00 00 */	li r0, 0
/* 8018B5B0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B5B4  3B 40 00 00 */	li r26, 0
/* 8018B5B8  3B 60 00 00 */	li r27, 0
/* 8018B5BC  3B 80 00 00 */	li r28, 0
/* 8018B5C0  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B5C4  3B 03 43 88 */	addi r24, r3, d_file_d_file_select__stringBase0@l
/* 8018B5C8  C3 A2 9F 74 */	lfs f29, lit_6867(r2)
/* 8018B5CC  C3 E2 9F 78 */	lfs f31, lit_6868(r2)
/* 8018B5D0  C3 C2 9F 48 */	lfs f30, lit_4778(r2)
lbl_8018B5D4:
/* 8018B5D4  38 60 00 1C */	li r3, 0x1c
/* 8018B5D8  48 14 36 75 */	bl __nw__FUl
/* 8018B5DC  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B5E0  41 82 00 28 */	beq lbl_8018B608
/* 8018B5E4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B5E8  38 1E 05 E8 */	addi r0, r30, 0x5e8
/* 8018B5EC  7C C0 E2 14 */	add r6, r0, r28
/* 8018B5F0  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B5F4  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B5F8  38 E0 00 00 */	li r7, 0
/* 8018B5FC  39 00 00 00 */	li r8, 0
/* 8018B600  48 0C 9D FD */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B604  7C 60 1B 78 */	mr r0, r3
lbl_8018B608:
/* 8018B608  7F 3F DA 14 */	add r25, r31, r27
/* 8018B60C  90 19 02 0C */	stw r0, 0x20c(r25)
/* 8018B610  80 79 02 0C */	lwz r3, 0x20c(r25)
/* 8018B614  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B618  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018B61C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B620  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8018B624  7D 89 03 A6 */	mtctr r12
/* 8018B628  4E 80 04 21 */	bctrl 
/* 8018B62C  80 79 02 0C */	lwz r3, 0x20c(r25)
/* 8018B630  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B634  38 80 02 00 */	li r4, 0x200
/* 8018B638  38 B8 00 6B */	addi r5, r24, 0x6b
/* 8018B63C  4C C6 31 82 */	crclr 6
/* 8018B640  48 17 51 0D */	bl setString__10J2DTextBoxFsPCce
/* 8018B644  80 79 02 0C */	lwz r3, 0x20c(r25)
/* 8018B648  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B64C  D3 A3 01 1C */	stfs f29, 0x11c(r3)
/* 8018B650  D3 A3 01 20 */	stfs f29, 0x120(r3)
/* 8018B654  80 79 02 0C */	lwz r3, 0x20c(r25)
/* 8018B658  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B65C  D3 E3 01 18 */	stfs f31, 0x118(r3)
/* 8018B660  80 79 02 0C */	lwz r3, 0x20c(r25)
/* 8018B664  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B668  D3 C3 01 14 */	stfs f30, 0x114(r3)
/* 8018B66C  80 79 02 0C */	lwz r3, 0x20c(r25)
/* 8018B670  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B674  48 17 4F E5 */	bl getStringPtr__10J2DTextBoxCFv
/* 8018B678  90 79 02 14 */	stw r3, 0x214(r25)
/* 8018B67C  3B 5A 00 01 */	addi r26, r26, 1
/* 8018B680  2C 1A 00 02 */	cmpwi r26, 2
/* 8018B684  3B 7B 00 04 */	addi r27, r27, 4
/* 8018B688  3B 9C 00 08 */	addi r28, r28, 8
/* 8018B68C  41 80 FF 48 */	blt lbl_8018B5D4
/* 8018B690  80 7F 02 0C */	lwz r3, 0x20c(r31)
/* 8018B694  38 80 00 FF */	li r4, 0xff
/* 8018B698  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B69C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B6A0  7D 89 03 A6 */	mtctr r12
/* 8018B6A4  4E 80 04 21 */	bctrl 
/* 8018B6A8  80 7F 02 10 */	lwz r3, 0x210(r31)
/* 8018B6AC  38 80 00 00 */	li r4, 0
/* 8018B6B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B6B4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B6B8  7D 89 03 A6 */	mtctr r12
/* 8018B6BC  4E 80 04 21 */	bctrl 
/* 8018B6C0  38 00 00 00 */	li r0, 0
/* 8018B6C4  98 1F 02 1C */	stb r0, 0x21c(r31)
/* 8018B6C8  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B6CC  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018B6D0  38 63 00 C7 */	addi r3, r3, 0xc7
/* 8018B6D4  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018B6D8  48 14 8B 99 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018B6DC  48 17 D3 91 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B6E0  90 7F 01 F8 */	stw r3, 0x1f8(r31)
/* 8018B6E4  80 7F 01 F8 */	lwz r3, 0x1f8(r31)
/* 8018B6E8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B6EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B6F0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B6F4  7D 89 03 A6 */	mtctr r12
/* 8018B6F8  4E 80 04 21 */	bctrl 
/* 8018B6FC  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B700  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l
/* 8018B704  38 63 00 E0 */	addi r3, r3, 0xe0
/* 8018B708  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018B70C  48 14 8B 65 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018B710  48 17 D3 5D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018B714  90 7F 01 F0 */	stw r3, 0x1f0(r31)
/* 8018B718  80 7F 01 F0 */	lwz r3, 0x1f0(r31)
/* 8018B71C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B720  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B724  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018B728  7D 89 03 A6 */	mtctr r12
/* 8018B72C  4E 80 04 21 */	bctrl 
/* 8018B730  38 00 00 00 */	li r0, 0
/* 8018B734  90 1F 01 F4 */	stw r0, 0x1f4(r31)
/* 8018B738  90 1F 01 FC */	stw r0, 0x1fc(r31)
/* 8018B73C  90 1F 02 04 */	stw r0, 0x204(r31)
/* 8018B740  3B 20 00 00 */	li r25, 0
/* 8018B744  3B 40 00 00 */	li r26, 0
/* 8018B748  3B 60 00 00 */	li r27, 0
lbl_8018B74C:
/* 8018B74C  38 60 00 1C */	li r3, 0x1c
/* 8018B750  48 14 34 FD */	bl __nw__FUl
/* 8018B754  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B758  41 82 00 28 */	beq lbl_8018B780
/* 8018B75C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B760  38 1E 05 F8 */	addi r0, r30, 0x5f8
/* 8018B764  7C C0 DA 14 */	add r6, r0, r27
/* 8018B768  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B76C  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B770  38 E0 00 00 */	li r7, 0
/* 8018B774  39 00 00 00 */	li r8, 0
/* 8018B778  48 0C 9C 85 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B77C  7C 60 1B 78 */	mr r0, r3
lbl_8018B780:
/* 8018B780  7E FF D2 14 */	add r23, r31, r26
/* 8018B784  90 17 01 4C */	stw r0, 0x14c(r23)
/* 8018B788  38 60 00 1C */	li r3, 0x1c
/* 8018B78C  48 14 34 C1 */	bl __nw__FUl
/* 8018B790  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B794  41 82 00 28 */	beq lbl_8018B7BC
/* 8018B798  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B79C  38 1E 06 10 */	addi r0, r30, 0x610
/* 8018B7A0  7C C0 DA 14 */	add r6, r0, r27
/* 8018B7A4  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B7A8  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B7AC  38 E0 00 00 */	li r7, 0
/* 8018B7B0  39 00 00 00 */	li r8, 0
/* 8018B7B4  48 0C 9C 49 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B7B8  7C 60 1B 78 */	mr r0, r3
lbl_8018B7BC:
/* 8018B7BC  90 17 01 58 */	stw r0, 0x158(r23)
/* 8018B7C0  80 77 01 4C */	lwz r3, 0x14c(r23)
/* 8018B7C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B7C8  80 9F 01 F0 */	lwz r4, 0x1f0(r31)
/* 8018B7CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B7D0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018B7D4  7D 89 03 A6 */	mtctr r12
/* 8018B7D8  4E 80 04 21 */	bctrl 
/* 8018B7DC  80 77 01 4C */	lwz r3, 0x14c(r23)
/* 8018B7E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B7E4  80 9F 02 00 */	lwz r4, 0x200(r31)
/* 8018B7E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B7EC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8018B7F0  7D 89 03 A6 */	mtctr r12
/* 8018B7F4  4E 80 04 21 */	bctrl 
/* 8018B7F8  80 77 01 58 */	lwz r3, 0x158(r23)
/* 8018B7FC  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B800  80 9F 01 F8 */	lwz r4, 0x1f8(r31)
/* 8018B804  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B808  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018B80C  7D 89 03 A6 */	mtctr r12
/* 8018B810  4E 80 04 21 */	bctrl 
/* 8018B814  80 77 01 58 */	lwz r3, 0x158(r23)
/* 8018B818  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B81C  80 9F 02 00 */	lwz r4, 0x200(r31)
/* 8018B820  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B824  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8018B828  7D 89 03 A6 */	mtctr r12
/* 8018B82C  4E 80 04 21 */	bctrl 
/* 8018B830  3B 39 00 01 */	addi r25, r25, 1
/* 8018B834  2C 19 00 03 */	cmpwi r25, 3
/* 8018B838  3B 5A 00 04 */	addi r26, r26, 4
/* 8018B83C  3B 7B 00 08 */	addi r27, r27, 8
/* 8018B840  41 80 FF 0C */	blt lbl_8018B74C
/* 8018B844  38 00 00 00 */	li r0, 0
/* 8018B848  98 1F 02 08 */	stb r0, 0x208(r31)
/* 8018B84C  98 1F 02 09 */	stb r0, 0x209(r31)
/* 8018B850  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B854  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 8018B858  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 8018B85C  38 A0 77 5F */	li r5, 0x775f
/* 8018B860  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B864  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B868  7D 89 03 A6 */	mtctr r12
/* 8018B86C  4E 80 04 21 */	bctrl 
/* 8018B870  90 7F 01 2C */	stw r3, 0x12c(r31)
/* 8018B874  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B878  3C 80 5F 6D */	lis r4, 0x5F6D /* 0x5F6D7367@ha */
/* 8018B87C  38 C4 73 67 */	addi r6, r4, 0x7367 /* 0x5F6D7367@l */
/* 8018B880  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6572@ha */
/* 8018B884  38 A4 65 72 */	addi r5, r4, 0x6572 /* 0x775F6572@l */
/* 8018B888  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B88C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B890  7D 89 03 A6 */	mtctr r12
/* 8018B894  4E 80 04 21 */	bctrl 
/* 8018B898  38 00 00 00 */	li r0, 0
/* 8018B89C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B8A0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B8A4  3C 80 5F 6D */	lis r4, 0x5F6D /* 0x5F6D7352@ha */
/* 8018B8A8  38 C4 73 52 */	addi r6, r4, 0x7352 /* 0x5F6D7352@l */
/* 8018B8AC  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6572@ha */
/* 8018B8B0  38 A4 65 72 */	addi r5, r4, 0x6572 /* 0x775F6572@l */
/* 8018B8B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B8B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B8BC  7D 89 03 A6 */	mtctr r12
/* 8018B8C0  4E 80 04 21 */	bctrl 
/* 8018B8C4  38 00 00 00 */	li r0, 0
/* 8018B8C8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B8CC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018B8D0  3C 80 5F 6D */	lis r4, 0x5F6D /* 0x5F6D7345@ha */
/* 8018B8D4  38 C4 73 45 */	addi r6, r4, 0x7345 /* 0x5F6D7345@l */
/* 8018B8D8  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6572@ha */
/* 8018B8DC  38 A4 65 72 */	addi r5, r4, 0x6572 /* 0x775F6572@l */
/* 8018B8E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B8E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018B8E8  7D 89 03 A6 */	mtctr r12
/* 8018B8EC  4E 80 04 21 */	bctrl 
/* 8018B8F0  38 00 00 00 */	li r0, 0
/* 8018B8F4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018B8F8  3B 40 00 00 */	li r26, 0
/* 8018B8FC  3B 80 00 00 */	li r28, 0
/* 8018B900  3B A0 00 00 */	li r29, 0
/* 8018B904  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha
/* 8018B908  3B 63 43 88 */	addi r27, r3, d_file_d_file_select__stringBase0@l
/* 8018B90C  C3 C2 9F 84 */	lfs f30, lit_6871(r2)
/* 8018B910  C3 E2 9F 40 */	lfs f31, lit_4611(r2)
lbl_8018B914:
/* 8018B914  38 60 00 1C */	li r3, 0x1c
/* 8018B918  48 14 33 35 */	bl __nw__FUl
/* 8018B91C  7C 60 1B 79 */	or. r0, r3, r3
/* 8018B920  41 82 00 28 */	beq lbl_8018B948
/* 8018B924  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8018B928  38 1E 06 28 */	addi r0, r30, 0x628
/* 8018B92C  7C C0 EA 14 */	add r6, r0, r29
/* 8018B930  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018B934  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018B938  38 E0 00 00 */	li r7, 0
/* 8018B93C  39 00 00 00 */	li r8, 0
/* 8018B940  48 0C 9A BD */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 8018B944  7C 60 1B 78 */	mr r0, r3
lbl_8018B948:
/* 8018B948  7F 3F E2 14 */	add r25, r31, r28
/* 8018B94C  90 19 01 38 */	stw r0, 0x138(r25)
/* 8018B950  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B954  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B958  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8018B95C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B960  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8018B964  7D 89 03 A6 */	mtctr r12
/* 8018B968  4E 80 04 21 */	bctrl 
/* 8018B96C  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B970  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B974  38 80 02 00 */	li r4, 0x200
/* 8018B978  38 BB 00 6B */	addi r5, r27, 0x6b
/* 8018B97C  4C C6 31 82 */	crclr 6
/* 8018B980  48 17 4D CD */	bl setString__10J2DTextBoxFsPCce
/* 8018B984  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B988  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B98C  C0 22 9F 7C */	lfs f1, lit_6869(r2)
/* 8018B990  C0 42 9F 80 */	lfs f2, lit_6870(r2)
/* 8018B994  81 83 00 00 */	lwz r12, 0(r3)
/* 8018B998  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8018B99C  7D 89 03 A6 */	mtctr r12
/* 8018B9A0  4E 80 04 21 */	bctrl 
/* 8018B9A4  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B9A8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B9AC  D3 C3 01 1C */	stfs f30, 0x11c(r3)
/* 8018B9B0  D3 C3 01 20 */	stfs f30, 0x120(r3)
/* 8018B9B4  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B9B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B9BC  D3 C3 01 18 */	stfs f30, 0x118(r3)
/* 8018B9C0  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B9C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B9C8  D3 E3 01 14 */	stfs f31, 0x114(r3)
/* 8018B9CC  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B9D0  80 63 00 04 */	lwz r3, 4(r3)
/* 8018B9D4  48 17 4C 85 */	bl getStringPtr__10J2DTextBoxCFv
/* 8018B9D8  90 79 01 40 */	stw r3, 0x140(r25)
/* 8018B9DC  80 79 01 38 */	lwz r3, 0x138(r25)
/* 8018B9E0  48 0C 9B E9 */	bl show__13CPaneMgrAlphaFv
/* 8018B9E4  3B 5A 00 01 */	addi r26, r26, 1
/* 8018B9E8  2C 1A 00 02 */	cmpwi r26, 2
/* 8018B9EC  3B 9C 00 04 */	addi r28, r28, 4
/* 8018B9F0  3B BD 00 08 */	addi r29, r29, 8
/* 8018B9F4  41 80 FF 20 */	blt lbl_8018B914
/* 8018B9F8  38 00 00 00 */	li r0, 0
/* 8018B9FC  98 1F 01 48 */	stb r0, 0x148(r31)
/* 8018BA00  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018BA04  54 00 10 3A */	slwi r0, r0, 2
/* 8018BA08  7C 7F 02 14 */	add r3, r31, r0
/* 8018BA0C  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018BA10  38 80 00 FF */	li r4, 0xff
/* 8018BA14  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BA18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018BA1C  7D 89 03 A6 */	mtctr r12
/* 8018BA20  4E 80 04 21 */	bctrl 
/* 8018BA24  88 1F 01 48 */	lbz r0, 0x148(r31)
/* 8018BA28  68 00 00 01 */	xori r0, r0, 1
/* 8018BA2C  54 00 10 3A */	slwi r0, r0, 2
/* 8018BA30  7C 7F 02 14 */	add r3, r31, r0
/* 8018BA34  80 63 01 38 */	lwz r3, 0x138(r3)
/* 8018BA38  38 80 00 00 */	li r4, 0
/* 8018BA3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BA40  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018BA44  7D 89 03 A6 */	mtctr r12
/* 8018BA48  4E 80 04 21 */	bctrl 
/* 8018BA4C  38 60 00 B8 */	li r3, 0xb8
/* 8018BA50  48 14 31 FD */	bl __nw__FUl
/* 8018BA54  7C 60 1B 79 */	or. r0, r3, r3
/* 8018BA58  41 82 00 18 */	beq lbl_8018BA70
/* 8018BA5C  38 80 00 00 */	li r4, 0
/* 8018BA60  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018BA64  38 A0 00 00 */	li r5, 0
/* 8018BA68  48 00 87 B9 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 8018BA6C  7C 60 1B 78 */	mr r0, r3
lbl_8018BA70:
/* 8018BA70  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8018BA74  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018BA78  C0 22 9F 68 */	lfs f1, lit_6069(r2)
/* 8018BA7C  C0 42 9F 88 */	lfs f2, lit_6872(r2)
/* 8018BA80  C0 62 9F 8C */	lfs f3, lit_6873(r2)
/* 8018BA84  C0 82 9F 90 */	lfs f4, lit_6874(r2)
/* 8018BA88  FC A0 20 90 */	fmr f5, f4
/* 8018BA8C  48 00 97 25 */	bl setParam__16dSelect_cursor_cFfffff
/* 8018BA90  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018BA94  54 00 10 3A */	slwi r0, r0, 2
/* 8018BA98  7C 7F 02 14 */	add r3, r31, r0
/* 8018BA9C  80 83 00 BC */	lwz r4, 0xbc(r3)
/* 8018BAA0  38 61 00 40 */	addi r3, r1, 0x40
/* 8018BAA4  80 A4 00 04 */	lwz r5, 4(r4)
/* 8018BAA8  38 C0 00 00 */	li r6, 0
/* 8018BAAC  38 E0 00 00 */	li r7, 0
/* 8018BAB0  48 0C 94 0D */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8018BAB4  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018BAB8  54 00 10 3A */	slwi r0, r0, 2
/* 8018BABC  7C 7F 02 14 */	add r3, r31, r0
/* 8018BAC0  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 8018BAC4  80 83 00 04 */	lwz r4, 4(r3)
/* 8018BAC8  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018BACC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8018BAD0  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8018BAD4  38 A0 00 01 */	li r5, 1
/* 8018BAD8  48 00 96 1D */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 8018BADC  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018BAE0  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018BAE4  48 00 97 BD */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018BAE8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018BAEC  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F3032@ha */
/* 8018BAF0  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x6D5F3032@l */
/* 8018BAF4  38 A0 00 4E */	li r5, 0x4e
/* 8018BAF8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BAFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018BB00  7D 89 03 A6 */	mtctr r12
/* 8018BB04  4E 80 04 21 */	bctrl 
/* 8018BB08  7C 76 1B 78 */	mr r22, r3
/* 8018BB0C  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8018BB10  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BB14  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018BB18  7D 89 03 A6 */	mtctr r12
/* 8018BB1C  4E 80 04 21 */	bctrl 
/* 8018BB20  7F E3 FB 78 */	mr r3, r31
/* 8018BB24  48 00 13 15 */	bl setWakuAnm__14dFile_select_cFv
/* 8018BB28  38 00 00 01 */	li r0, 1
/* 8018BB2C  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 8018BB30  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 8018BB34  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 8018BB38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8018BB3C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8018BB40  3C 00 43 30 */	lis r0, 0x4330
/* 8018BB44  90 01 00 78 */	stw r0, 0x78(r1)
/* 8018BB48  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8018BB4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8018BB50  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8018BB54  D0 03 00 08 */	stfs f0, 8(r3)
/* 8018BB58  7E C3 B3 78 */	mr r3, r22
/* 8018BB5C  48 16 C4 71 */	bl animationTransform__7J2DPaneFv
/* 8018BB60  7E C3 B3 78 */	mr r3, r22
/* 8018BB64  38 80 00 00 */	li r4, 0
/* 8018BB68  81 96 00 00 */	lwz r12, 0(r22)
/* 8018BB6C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018BB70  7D 89 03 A6 */	mtctr r12
/* 8018BB74  4E 80 04 21 */	bctrl 
/* 8018BB78  80 7F 02 0C */	lwz r3, 0x20c(r31)
/* 8018BB7C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018BB80  C0 02 9F 40 */	lfs f0, lit_4611(r2)
/* 8018BB84  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8018BB88  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8018BB8C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BB90  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8018BB94  7D 89 03 A6 */	mtctr r12
/* 8018BB98  4E 80 04 21 */	bctrl 
/* 8018BB9C  80 7F 02 10 */	lwz r3, 0x210(r31)
/* 8018BBA0  80 63 00 04 */	lwz r3, 4(r3)
/* 8018BBA4  C0 02 9F 40 */	lfs f0, lit_4611(r2)
/* 8018BBA8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8018BBAC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8018BBB0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BBB4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8018BBB8  7D 89 03 A6 */	mtctr r12
/* 8018BBBC  4E 80 04 21 */	bctrl 
/* 8018BBC0  3B 40 00 00 */	li r26, 0
/* 8018BBC4  3B 60 00 00 */	li r27, 0
/* 8018BBC8  3B 80 00 00 */	li r28, 0
/* 8018BBCC  3B 21 00 4C */	addi r25, r1, 0x4c
/* 8018BBD0  3C 60 6E 5F */	lis r3, 0x6E5F /* 0x6E5F3433@ha */
/* 8018BBD4  3B 03 34 33 */	addi r24, r3, 0x3433 /* 0x6E5F3433@l */
/* 8018BBD8  3B BE 06 38 */	addi r29, r30, 0x638
lbl_8018BBDC:
/* 8018BBDC  38 60 01 00 */	li r3, 0x100
/* 8018BBE0  48 14 30 6D */	bl __nw__FUl
/* 8018BBE4  7C 60 1B 79 */	or. r0, r3, r3
/* 8018BBE8  41 82 00 40 */	beq lbl_8018BC28
/* 8018BBEC  C0 02 9F 94 */	lfs f0, lit_6875(r2)
/* 8018BBF0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8018BBF4  C0 02 9F 98 */	lfs f0, lit_6876(r2)
/* 8018BBF8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8018BBFC  C0 02 9F 9C */	lfs f0, lit_6877(r2)
/* 8018BC00  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8018BC04  C0 02 9F A0 */	lfs f0, lit_6878(r2)
/* 8018BC08  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8018BC0C  38 1E 00 58 */	addi r0, r30, 0x58
/* 8018BC10  7C C0 E2 14 */	add r6, r0, r28
/* 8018BC14  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018BC18  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018BC1C  38 E1 00 30 */	addi r7, r1, 0x30
/* 8018BC20  48 16 A2 69 */	bl func_802F5E88
/* 8018BC24  7C 60 1B 78 */	mr r0, r3
lbl_8018BC28:
/* 8018BC28  7C 19 D9 2E */	stwx r0, r25, r27
/* 8018BC2C  38 00 00 00 */	li r0, 0
/* 8018BC30  7E D9 D8 2E */	lwzx r22, r25, r27
/* 8018BC34  93 16 00 1C */	stw r24, 0x1c(r22)
/* 8018BC38  90 16 00 18 */	stw r0, 0x18(r22)
/* 8018BC3C  38 1B 00 BC */	addi r0, r27, 0xbc
/* 8018BC40  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8018BC44  82 E3 00 04 */	lwz r23, 4(r3)
/* 8018BC48  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018BC4C  7C DD E2 14 */	add r6, r29, r28
/* 8018BC50  80 A6 00 00 */	lwz r5, 0(r6)
/* 8018BC54  80 C6 00 04 */	lwz r6, 4(r6)
/* 8018BC58  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BC5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018BC60  7D 89 03 A6 */	mtctr r12
/* 8018BC64  4E 80 04 21 */	bctrl 
/* 8018BC68  7C 64 1B 78 */	mr r4, r3
/* 8018BC6C  7E E3 BB 78 */	mr r3, r23
/* 8018BC70  7E C5 B3 78 */	mr r5, r22
/* 8018BC74  48 16 AA A1 */	bl insertChild__7J2DPaneFP7J2DPaneP7J2DPane
/* 8018BC78  3B 5A 00 01 */	addi r26, r26, 1
/* 8018BC7C  2C 1A 00 03 */	cmpwi r26, 3
/* 8018BC80  3B 7B 00 04 */	addi r27, r27, 4
/* 8018BC84  3B 9C 00 08 */	addi r28, r28, 8
/* 8018BC88  41 80 FF 54 */	blt lbl_8018BBDC
/* 8018BC8C  3A C0 00 00 */	li r22, 0
/* 8018BC90  3B 20 00 00 */	li r25, 0
/* 8018BC94  3B 41 00 4C */	addi r26, r1, 0x4c
lbl_8018BC98:
/* 8018BC98  38 60 00 3C */	li r3, 0x3c
/* 8018BC9C  48 14 2F B1 */	bl __nw__FUl
/* 8018BCA0  7C 60 1B 79 */	or. r0, r3, r3
/* 8018BCA4  41 82 00 14 */	beq lbl_8018BCB8
/* 8018BCA8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018BCAC  38 A0 00 00 */	li r5, 0
/* 8018BCB0  48 00 67 85 */	bl __ct__12dFile_info_cFP10JKRArchiveUc
/* 8018BCB4  7C 60 1B 78 */	mr r0, r3
lbl_8018BCB8:
/* 8018BCB8  7C 9F CA 14 */	add r4, r31, r25
/* 8018BCBC  90 04 00 70 */	stw r0, 0x70(r4)
/* 8018BCC0  7C 1A C8 2E */	lwzx r0, r26, r25
/* 8018BCC4  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8018BCC8  90 03 00 14 */	stw r0, 0x14(r3)
/* 8018BCCC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8018BCD0  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8018BCD4  90 04 02 20 */	stw r0, 0x220(r4)
/* 8018BCD8  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8018BCDC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8018BCE0  90 04 02 2C */	stw r0, 0x22c(r4)
/* 8018BCE4  3A D6 00 01 */	addi r22, r22, 1
/* 8018BCE8  2C 16 00 03 */	cmpwi r22, 3
/* 8018BCEC  3B 39 00 04 */	addi r25, r25, 4
/* 8018BCF0  41 80 FF A8 */	blt lbl_8018BC98
/* 8018BCF4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018BCF8  3C 80 6D 65 */	lis r4, 0x6D65 /* 0x6D655F6E@ha */
/* 8018BCFC  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6D655F6E@l */
/* 8018BD00  38 A0 6E 61 */	li r5, 0x6e61
/* 8018BD04  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BD08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018BD0C  7D 89 03 A6 */	mtctr r12
/* 8018BD10  4E 80 04 21 */	bctrl 
/* 8018BD14  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8018BD18  38 60 03 34 */	li r3, 0x334
/* 8018BD1C  48 14 2F 31 */	bl __nw__FUl
/* 8018BD20  7C 60 1B 79 */	or. r0, r3, r3
/* 8018BD24  41 82 00 10 */	beq lbl_8018BD34
/* 8018BD28  80 9F 01 1C */	lwz r4, 0x11c(r31)
/* 8018BD2C  48 0C 26 DD */	bl __ct__7dName_cFP7J2DPane
/* 8018BD30  7C 60 1B 78 */	mr r0, r3
lbl_8018BD34:
/* 8018BD34  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8018BD38  38 00 00 00 */	li r0, 0
/* 8018BD3C  98 1F 01 28 */	stb r0, 0x128(r31)
/* 8018BD40  38 60 00 40 */	li r3, 0x40
/* 8018BD44  48 14 2F 09 */	bl __nw__FUl
/* 8018BD48  7C 60 1B 79 */	or. r0, r3, r3
/* 8018BD4C  41 82 00 14 */	beq lbl_8018BD60
/* 8018BD50  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018BD54  38 A0 00 00 */	li r5, 0
/* 8018BD58  48 00 5E 55 */	bl __ct__15dFile_warning_cFP10JKRArchiveUc
/* 8018BD5C  7C 60 1B 78 */	mr r0, r3
lbl_8018BD60:
/* 8018BD60  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 8018BD64  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018BD68  3C 80 79 6F */	lis r4, 0x796F /* 0x796F3033@ha */
/* 8018BD6C  38 C4 30 33 */	addi r6, r4, 0x3033 /* 0x796F3033@l */
/* 8018BD70  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6D6F@ha */
/* 8018BD74  38 A4 6D 6F */	addi r5, r4, 0x6D6F /* 0x775F6D6F@l */
/* 8018BD78  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BD7C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018BD80  7D 89 03 A6 */	mtctr r12
/* 8018BD84  4E 80 04 21 */	bctrl 
/* 8018BD88  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8018BD8C  80 6D 80 14 */	lwz r3, mFadeColor__13mDoGph_gInf_c(r13)
/* 8018BD90  90 61 00 0C */	stw r3, 0xc(r1)
/* 8018BD94  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8018BD98  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8018BD9C  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8018BDA0  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8018BDA4  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8018BDA8  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8018BDAC  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8018BDB0  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8018BDB4  90 61 00 08 */	stw r3, 8(r1)
/* 8018BDB8  88 01 00 08 */	lbz r0, 8(r1)
/* 8018BDBC  98 01 00 18 */	stb r0, 0x18(r1)
/* 8018BDC0  88 01 00 09 */	lbz r0, 9(r1)
/* 8018BDC4  98 01 00 19 */	stb r0, 0x19(r1)
/* 8018BDC8  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8018BDCC  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8018BDD0  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8018BDD4  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8018BDD8  38 00 00 00 */	li r0, 0
/* 8018BDDC  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8018BDE0  38 00 00 FF */	li r0, 0xff
/* 8018BDE4  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8018BDE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8018BDEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8018BDF0  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 8018BDF4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8018BDF8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8018BDFC  3C A0 80 39 */	lis r5, d_file_d_file_select__stringBase0@ha
/* 8018BE00  38 A5 43 88 */	addi r5, r5, d_file_d_file_select__stringBase0@l
/* 8018BE04  38 A5 00 F9 */	addi r5, r5, 0xf9
/* 8018BE08  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BE0C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8018BE10  7D 89 03 A6 */	mtctr r12
/* 8018BE14  4E 80 04 21 */	bctrl 
/* 8018BE18  7C 76 1B 78 */	mr r22, r3
/* 8018BE1C  38 60 01 50 */	li r3, 0x150
/* 8018BE20  48 14 2E 2D */	bl __nw__FUl
/* 8018BE24  7C 60 1B 79 */	or. r0, r3, r3
/* 8018BE28  41 82 00 40 */	beq lbl_8018BE68
/* 8018BE2C  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018BE30  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8018BE34  C0 02 9F A4 */	lfs f0, lit_6879(r2)
/* 8018BE38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8018BE3C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8018BE40  C0 02 9F A8 */	lfs f0, lit_6880(r2)
/* 8018BE44  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8018BE48  3C 80 43 54 */	lis r4, 0x4354 /* 0x43543031@ha */
/* 8018BE4C  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x43543031@l */
/* 8018BE50  38 A0 50 49 */	li r5, 0x5049
/* 8018BE54  38 E1 00 20 */	addi r7, r1, 0x20
/* 8018BE58  7E C8 B3 78 */	mr r8, r22
/* 8018BE5C  39 20 00 00 */	li r9, 0
/* 8018BE60  48 17 09 A1 */	bl func_802FC800
/* 8018BE64  7C 60 1B 78 */	mr r0, r3
lbl_8018BE68:
/* 8018BE68  90 1F 23 78 */	stw r0, 0x2378(r31)
/* 8018BE6C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8018BE70  90 01 00 10 */	stw r0, 0x10(r1)
/* 8018BE74  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8018BE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018BE7C  80 7F 23 78 */	lwz r3, 0x2378(r31)
/* 8018BE80  38 81 00 14 */	addi r4, r1, 0x14
/* 8018BE84  38 A1 00 10 */	addi r5, r1, 0x10
/* 8018BE88  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BE8C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8018BE90  7D 89 03 A6 */	mtctr r12
/* 8018BE94  4E 80 04 21 */	bctrl 
/* 8018BE98  80 7F 23 78 */	lwz r3, 0x2378(r31)
/* 8018BE9C  38 80 00 00 */	li r4, 0
/* 8018BEA0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BEA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8018BEA8  7D 89 03 A6 */	mtctr r12
/* 8018BEAC  4E 80 04 21 */	bctrl 
/* 8018BEB0  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8018BEB4  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8018BEB8  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 8018BEBC  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8018BEC0  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 8018BEC4  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8018BEC8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8018BECC  48 1D 63 41 */	bl _restgpr_22
/* 8018BED0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8018BED4  7C 08 03 A6 */	mtlr r0
/* 8018BED8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8018BEDC  4E 80 00 20 */	blr 
