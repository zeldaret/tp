lbl_801EF904:
/* 801EF904  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801EF908  7C 08 02 A6 */	mflr r0
/* 801EF90C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801EF910  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801EF914  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 801EF918  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801EF91C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 801EF920  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801EF924  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 801EF928  39 61 00 90 */	addi r11, r1, 0x90
/* 801EF92C  48 17 28 99 */	bl _savegpr_23
/* 801EF930  7C 7F 1B 78 */	mr r31, r3
/* 801EF934  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha /* 0x803BDF78@ha */
/* 801EF938  3B C3 DF 78 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x803BDF78@l */
/* 801EF93C  38 60 01 18 */	li r3, 0x118
/* 801EF940  48 0D F3 0D */	bl __nw__FUl
/* 801EF944  7C 60 1B 79 */	or. r0, r3, r3
/* 801EF948  41 82 00 0C */	beq lbl_801EF954
/* 801EF94C  48 10 8B 4D */	bl __ct__9J2DScreenFv
/* 801EF950  7C 60 1B 78 */	mr r0, r3
lbl_801EF954:
/* 801EF954  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801EF958  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EF95C  3C 80 80 39 */	lis r4, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801EF960  38 84 79 60 */	addi r4, r4, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801EF964  38 84 00 18 */	addi r4, r4, 0x18
/* 801EF968  3C A0 01 10 */	lis r5, 0x110
/* 801EF96C  80 DF 00 04 */	lwz r6, 4(r31)
/* 801EF970  48 10 8C D9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801EF974  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EF978  48 06 57 71 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801EF97C  4B E2 50 75 */	bl mDoExt_getMesgFont__Fv
/* 801EF980  90 7F 00 20 */	stw r3, 0x20(r31)
/* 801EF984  4B E2 52 1D */	bl mDoExt_getSubFont__Fv
/* 801EF988  90 7F 00 24 */	stw r3, 0x24(r31)
/* 801EF98C  38 60 00 2C */	li r3, 0x2c
/* 801EF990  48 0D F2 BD */	bl __nw__FUl
/* 801EF994  7C 60 1B 79 */	or. r0, r3, r3
/* 801EF998  41 82 00 0C */	beq lbl_801EF9A4
/* 801EF99C  48 05 A2 85 */	bl __ct__12dMsgString_cFv
/* 801EF9A0  7C 60 1B 78 */	mr r0, r3
lbl_801EF9A4:
/* 801EF9A4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801EF9A8  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801EF9AC  38 63 79 60 */	addi r3, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801EF9B0  38 63 00 2F */	addi r3, r3, 0x2f
/* 801EF9B4  80 9F 00 04 */	lwz r4, 4(r31)
/* 801EF9B8  48 0E 48 B9 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801EF9BC  7C 79 1B 78 */	mr r25, r3
/* 801EF9C0  48 11 90 AD */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801EF9C4  90 7F 00 40 */	stw r3, 0x40(r31)
/* 801EF9C8  7F 23 CB 78 */	mr r3, r25
/* 801EF9CC  48 11 90 A1 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801EF9D0  90 7F 00 44 */	stw r3, 0x44(r31)
/* 801EF9D4  7F 23 CB 78 */	mr r3, r25
/* 801EF9D8  48 11 90 95 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801EF9DC  90 7F 00 48 */	stw r3, 0x48(r31)
/* 801EF9E0  7F 23 CB 78 */	mr r3, r25
/* 801EF9E4  48 11 90 89 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801EF9E8  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 801EF9EC  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801EF9F0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EF9F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EF9F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EF9FC  7D 89 03 A6 */	mtctr r12
/* 801EFA00  4E 80 04 21 */	bctrl 
/* 801EFA04  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801EFA08  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFA0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFA10  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFA14  7D 89 03 A6 */	mtctr r12
/* 801EFA18  4E 80 04 21 */	bctrl 
/* 801EFA1C  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801EFA20  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFA24  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFA28  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFA2C  7D 89 03 A6 */	mtctr r12
/* 801EFA30  4E 80 04 21 */	bctrl 
/* 801EFA34  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801EFA38  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFA3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFA40  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFA44  7D 89 03 A6 */	mtctr r12
/* 801EFA48  4E 80 04 21 */	bctrl 
/* 801EFA4C  38 60 00 6C */	li r3, 0x6c
/* 801EFA50  48 0D F1 FD */	bl __nw__FUl
/* 801EFA54  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFA58  41 82 00 28 */	beq lbl_801EFA80
/* 801EFA5C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFA60  3C A0 76 65 */	lis r5, 0x7665 /* 0x76655F6E@ha */
/* 801EFA64  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x76655F6E@l */
/* 801EFA68  3C A0 77 5F */	lis r5, 0x775F /* 0x775F6D6F@ha */
/* 801EFA6C  38 A5 6D 6F */	addi r5, r5, 0x6D6F /* 0x775F6D6F@l */
/* 801EFA70  38 E0 00 00 */	li r7, 0
/* 801EFA74  39 00 00 00 */	li r8, 0
/* 801EFA78  48 06 3F 0D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFA7C  7C 60 1B 78 */	mr r0, r3
lbl_801EFA80:
/* 801EFA80  90 1F 00 58 */	stw r0, 0x58(r31)
/* 801EFA84  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EFA88  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E755F6E@ha */
/* 801EFA8C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x6E755F6E@l */
/* 801EFA90  3C 80 00 77 */	lis r4, 0x0077 /* 0x00776D65@ha */
/* 801EFA94  38 A4 6D 65 */	addi r5, r4, 0x6D65 /* 0x00776D65@l */
/* 801EFA98  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFA9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EFAA0  7D 89 03 A6 */	mtctr r12
/* 801EFAA4  4E 80 04 21 */	bctrl 
/* 801EFAA8  90 7F 00 A0 */	stw r3, 0xa0(r31)
/* 801EFAAC  3B 00 00 00 */	li r24, 0
/* 801EFAB0  3B 20 00 00 */	li r25, 0
/* 801EFAB4  3B 40 00 00 */	li r26, 0
/* 801EFAB8  3B 7E 00 60 */	addi r27, r30, 0x60
lbl_801EFABC:
/* 801EFABC  38 60 00 6C */	li r3, 0x6c
/* 801EFAC0  48 0D F1 8D */	bl __nw__FUl
/* 801EFAC4  7C 64 1B 79 */	or. r4, r3, r3
/* 801EFAC8  41 82 00 24 */	beq lbl_801EFAEC
/* 801EFACC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFAD0  7C DB D2 14 */	add r6, r27, r26
/* 801EFAD4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFAD8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFADC  38 E0 00 00 */	li r7, 0
/* 801EFAE0  39 00 00 00 */	li r8, 0
/* 801EFAE4  48 06 3E A1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFAE8  7C 64 1B 78 */	mr r4, r3
lbl_801EFAEC:
/* 801EFAEC  38 19 00 68 */	addi r0, r25, 0x68
/* 801EFAF0  7C 9F 01 2E */	stwx r4, r31, r0
/* 801EFAF4  3B 18 00 01 */	addi r24, r24, 1
/* 801EFAF8  2C 18 00 03 */	cmpwi r24, 3
/* 801EFAFC  3B 39 00 04 */	addi r25, r25, 4
/* 801EFB00  3B 5A 00 08 */	addi r26, r26, 8
/* 801EFB04  41 80 FF B8 */	blt lbl_801EFABC
/* 801EFB08  38 60 00 6C */	li r3, 0x6c
/* 801EFB0C  48 0D F1 41 */	bl __nw__FUl
/* 801EFB10  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFB14  41 82 00 24 */	beq lbl_801EFB38
/* 801EFB18  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFB1C  3C A0 6E 6F */	lis r5, 0x6E6F /* 0x6E6F5F6E@ha */
/* 801EFB20  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6E6F5F6E@l */
/* 801EFB24  38 A0 77 5F */	li r5, 0x775f
/* 801EFB28  38 E0 00 00 */	li r7, 0
/* 801EFB2C  39 00 00 00 */	li r8, 0
/* 801EFB30  48 06 3E 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFB34  7C 60 1B 78 */	mr r0, r3
lbl_801EFB38:
/* 801EFB38  90 1F 00 84 */	stw r0, 0x84(r31)
/* 801EFB3C  38 60 00 6C */	li r3, 0x6c
/* 801EFB40  48 0D F1 0D */	bl __nw__FUl
/* 801EFB44  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFB48  41 82 00 28 */	beq lbl_801EFB70
/* 801EFB4C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFB50  3C A0 65 73 */	lis r5, 0x6573 /* 0x65735F6E@ha */
/* 801EFB54  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65735F6E@l */
/* 801EFB58  3C A0 00 77 */	lis r5, 0x0077 /* 0x00775F79@ha */
/* 801EFB5C  38 A5 5F 79 */	addi r5, r5, 0x5F79 /* 0x00775F79@l */
/* 801EFB60  38 E0 00 00 */	li r7, 0
/* 801EFB64  39 00 00 00 */	li r8, 0
/* 801EFB68  48 06 3E 1D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFB6C  7C 60 1B 78 */	mr r0, r3
lbl_801EFB70:
/* 801EFB70  90 1F 00 88 */	stw r0, 0x88(r31)
/* 801EFB74  3B 00 00 00 */	li r24, 0
/* 801EFB78  3B 20 00 00 */	li r25, 0
/* 801EFB7C  3B 40 00 00 */	li r26, 0
/* 801EFB80  3B 7E 00 78 */	addi r27, r30, 0x78
lbl_801EFB84:
/* 801EFB84  38 60 00 6C */	li r3, 0x6c
/* 801EFB88  48 0D F0 C5 */	bl __nw__FUl
/* 801EFB8C  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFB90  41 82 00 28 */	beq lbl_801EFBB8
/* 801EFB94  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFB98  38 1E 00 88 */	addi r0, r30, 0x88
/* 801EFB9C  7C C0 D2 14 */	add r6, r0, r26
/* 801EFBA0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFBA4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFBA8  38 E0 00 00 */	li r7, 0
/* 801EFBAC  39 00 00 00 */	li r8, 0
/* 801EFBB0  48 06 3D D5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFBB4  7C 60 1B 78 */	mr r0, r3
lbl_801EFBB8:
/* 801EFBB8  3B 99 01 38 */	addi r28, r25, 0x138
/* 801EFBBC  7C 1F E1 2E */	stwx r0, r31, r28
/* 801EFBC0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EFBC4  7C DB D2 14 */	add r6, r27, r26
/* 801EFBC8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFBCC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFBD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFBD4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EFBD8  7D 89 03 A6 */	mtctr r12
/* 801EFBDC  4E 80 04 21 */	bctrl 
/* 801EFBE0  38 00 00 00 */	li r0, 0
/* 801EFBE4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801EFBE8  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801EFBEC  80 63 00 04 */	lwz r3, 4(r3)
/* 801EFBF0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801EFBF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFBF8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801EFBFC  7D 89 03 A6 */	mtctr r12
/* 801EFC00  4E 80 04 21 */	bctrl 
/* 801EFC04  38 61 00 3C */	addi r3, r1, 0x3c
/* 801EFC08  38 8D 81 C0 */	la r4, l_msgNum0(r13) /* 80450740-_SDA_BASE_ */
/* 801EFC0C  7C 84 C0 AE */	lbzx r4, r4, r24
/* 801EFC10  4B E3 04 B1 */	bl fopMsgM_messageGet__FPcUl
/* 801EFC14  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801EFC18  80 63 00 04 */	lwz r3, 4(r3)
/* 801EFC1C  38 81 00 3C */	addi r4, r1, 0x3c
/* 801EFC20  4C C6 31 82 */	crclr 6
/* 801EFC24  48 11 0A 3D */	bl setString__10J2DTextBoxFPCce
/* 801EFC28  3B 18 00 01 */	addi r24, r24, 1
/* 801EFC2C  2C 18 00 02 */	cmpwi r24, 2
/* 801EFC30  3B 39 00 04 */	addi r25, r25, 4
/* 801EFC34  3B 5A 00 08 */	addi r26, r26, 8
/* 801EFC38  41 80 FF 4C */	blt lbl_801EFB84
/* 801EFC3C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EFC40  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801EFC44  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801EFC48  3C 80 57 69 */	lis r4, 0x5769 /* 0x57695F62@ha */
/* 801EFC4C  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x57695F62@l */
/* 801EFC50  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFC54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EFC58  7D 89 03 A6 */	mtctr r12
/* 801EFC5C  4E 80 04 21 */	bctrl 
/* 801EFC60  38 00 00 00 */	li r0, 0
/* 801EFC64  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801EFC68  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EFC6C  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801EFC70  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801EFC74  3C 80 47 43 */	lis r4, 0x4743 /* 0x47435F62@ha */
/* 801EFC78  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x47435F62@l */
/* 801EFC7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFC80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EFC84  7D 89 03 A6 */	mtctr r12
/* 801EFC88  4E 80 04 21 */	bctrl 
/* 801EFC8C  38 00 00 01 */	li r0, 1
/* 801EFC90  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801EFC94  38 60 00 1C */	li r3, 0x1c
/* 801EFC98  48 0D EF B5 */	bl __nw__FUl
/* 801EFC9C  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFCA0  41 82 00 28 */	beq lbl_801EFCC8
/* 801EFCA4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFCA8  3C A0 62 62 */	lis r5, 0x6262 /* 0x6262746E@ha */
/* 801EFCAC  38 C5 74 6E */	addi r6, r5, 0x746E /* 0x6262746E@l */
/* 801EFCB0  3C A0 00 77 */	lis r5, 0x0077 /* 0x00775F6E@ha */
/* 801EFCB4  38 A5 5F 6E */	addi r5, r5, 0x5F6E /* 0x00775F6E@l */
/* 801EFCB8  38 E0 00 02 */	li r7, 2
/* 801EFCBC  39 00 00 00 */	li r8, 0
/* 801EFCC0  48 06 57 3D */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFCC4  7C 60 1B 78 */	mr r0, r3
lbl_801EFCC8:
/* 801EFCC8  90 1F 01 94 */	stw r0, 0x194(r31)
/* 801EFCCC  38 60 00 1C */	li r3, 0x1c
/* 801EFCD0  48 0D EF 7D */	bl __nw__FUl
/* 801EFCD4  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFCD8  41 82 00 28 */	beq lbl_801EFD00
/* 801EFCDC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFCE0  3C A0 61 62 */	lis r5, 0x6162 /* 0x6162746E@ha */
/* 801EFCE4  38 C5 74 6E */	addi r6, r5, 0x746E /* 0x6162746E@l */
/* 801EFCE8  3C A0 00 77 */	lis r5, 0x0077 /* 0x00775F6E@ha */
/* 801EFCEC  38 A5 5F 6E */	addi r5, r5, 0x5F6E /* 0x00775F6E@l */
/* 801EFCF0  38 E0 00 02 */	li r7, 2
/* 801EFCF4  39 00 00 00 */	li r8, 0
/* 801EFCF8  48 06 57 05 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFCFC  7C 60 1B 78 */	mr r0, r3
lbl_801EFD00:
/* 801EFD00  90 1F 01 98 */	stw r0, 0x198(r31)
/* 801EFD04  38 60 00 1C */	li r3, 0x1c
/* 801EFD08  48 0D EF 45 */	bl __nw__FUl
/* 801EFD0C  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFD10  41 82 00 24 */	beq lbl_801EFD34
/* 801EFD14  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFD18  3C A0 6D 6F */	lis r5, 0x6D6F /* 0x6D6F646F@ha */
/* 801EFD1C  38 C5 64 6F */	addi r6, r5, 0x646F /* 0x6D6F646F@l */
/* 801EFD20  38 A0 66 5F */	li r5, 0x665f
/* 801EFD24  38 E0 00 02 */	li r7, 2
/* 801EFD28  39 00 00 00 */	li r8, 0
/* 801EFD2C  48 06 56 D1 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFD30  7C 60 1B 78 */	mr r0, r3
lbl_801EFD34:
/* 801EFD34  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 801EFD38  38 60 00 1C */	li r3, 0x1c
/* 801EFD3C  48 0D EF 11 */	bl __nw__FUl
/* 801EFD40  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFD44  41 82 00 24 */	beq lbl_801EFD68
/* 801EFD48  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFD4C  3C A0 6B 65 */	lis r5, 0x6B65 /* 0x6B657465@ha */
/* 801EFD50  38 C5 74 65 */	addi r6, r5, 0x7465 /* 0x6B657465@l */
/* 801EFD54  38 A0 66 5F */	li r5, 0x665f
/* 801EFD58  38 E0 00 02 */	li r7, 2
/* 801EFD5C  39 00 00 00 */	li r8, 0
/* 801EFD60  48 06 56 9D */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFD64  7C 60 1B 78 */	mr r0, r3
lbl_801EFD68:
/* 801EFD68  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 801EFD6C  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 801EFD70  38 80 00 00 */	li r4, 0
/* 801EFD74  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFD78  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFD7C  7D 89 03 A6 */	mtctr r12
/* 801EFD80  4E 80 04 21 */	bctrl 
/* 801EFD84  80 7F 01 A4 */	lwz r3, 0x1a4(r31)
/* 801EFD88  38 80 00 00 */	li r4, 0
/* 801EFD8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFD90  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFD94  7D 89 03 A6 */	mtctr r12
/* 801EFD98  4E 80 04 21 */	bctrl 
/* 801EFD9C  80 7F 01 94 */	lwz r3, 0x194(r31)
/* 801EFDA0  38 80 00 80 */	li r4, 0x80
/* 801EFDA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFDA8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFDAC  7D 89 03 A6 */	mtctr r12
/* 801EFDB0  4E 80 04 21 */	bctrl 
/* 801EFDB4  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801EFDB8  38 80 00 80 */	li r4, 0x80
/* 801EFDBC  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFDC0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFDC4  7D 89 03 A6 */	mtctr r12
/* 801EFDC8  4E 80 04 21 */	bctrl 
/* 801EFDCC  3A E0 00 00 */	li r23, 0
/* 801EFDD0  3B 20 00 00 */	li r25, 0
/* 801EFDD4  3B 40 00 00 */	li r26, 0
/* 801EFDD8  3B 9E 00 A8 */	addi r28, r30, 0xa8
/* 801EFDDC  3B A1 00 08 */	addi r29, r1, 8
/* 801EFDE0  3B 7E 00 98 */	addi r27, r30, 0x98
lbl_801EFDE4:
/* 801EFDE4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EFDE8  7C DC D2 14 */	add r6, r28, r26
/* 801EFDEC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFDF0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFDF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFDF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EFDFC  7D 89 03 A6 */	mtctr r12
/* 801EFE00  4E 80 04 21 */	bctrl 
/* 801EFE04  7C 7D C9 2E */	stwx r3, r29, r25
/* 801EFE08  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801EFE0C  7C DB D2 14 */	add r6, r27, r26
/* 801EFE10  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFE14  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFE18  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFE1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EFE20  7D 89 03 A6 */	mtctr r12
/* 801EFE24  4E 80 04 21 */	bctrl 
/* 801EFE28  38 00 00 00 */	li r0, 0
/* 801EFE2C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801EFE30  7F 1D C8 2E */	lwzx r24, r29, r25
/* 801EFE34  7F 03 C3 78 */	mr r3, r24
/* 801EFE38  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801EFE3C  81 98 00 00 */	lwz r12, 0(r24)
/* 801EFE40  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801EFE44  7D 89 03 A6 */	mtctr r12
/* 801EFE48  4E 80 04 21 */	bctrl 
/* 801EFE4C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801EFE50  38 8D 81 C4 */	la r4, l_msgNum(r13) /* 80450744-_SDA_BASE_ */
/* 801EFE54  7C 84 B8 AE */	lbzx r4, r4, r23
/* 801EFE58  4B E3 02 69 */	bl fopMsgM_messageGet__FPcUl
/* 801EFE5C  7F 03 C3 78 */	mr r3, r24
/* 801EFE60  38 81 00 1C */	addi r4, r1, 0x1c
/* 801EFE64  4C C6 31 82 */	crclr 6
/* 801EFE68  48 11 07 F9 */	bl setString__10J2DTextBoxFPCce
/* 801EFE6C  3A F7 00 01 */	addi r23, r23, 1
/* 801EFE70  2C 17 00 02 */	cmpwi r23, 2
/* 801EFE74  3B 39 00 04 */	addi r25, r25, 4
/* 801EFE78  3B 5A 00 08 */	addi r26, r26, 8
/* 801EFE7C  41 80 FF 68 */	blt lbl_801EFDE4
/* 801EFE80  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801EFE84  38 63 79 60 */	addi r3, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801EFE88  38 63 00 46 */	addi r3, r3, 0x46
/* 801EFE8C  80 9F 00 04 */	lwz r4, 4(r31)
/* 801EFE90  48 0E 43 E1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801EFE94  7C 7D 1B 78 */	mr r29, r3
/* 801EFE98  48 11 8B D5 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801EFE9C  90 7F 01 40 */	stw r3, 0x140(r31)
/* 801EFEA0  80 7F 01 40 */	lwz r3, 0x140(r31)
/* 801EFEA4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFEA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFEAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFEB0  7D 89 03 A6 */	mtctr r12
/* 801EFEB4  4E 80 04 21 */	bctrl 
/* 801EFEB8  38 00 00 00 */	li r0, 0
/* 801EFEBC  90 1F 01 44 */	stw r0, 0x144(r31)
/* 801EFEC0  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801EFEC4  38 63 79 60 */	addi r3, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801EFEC8  38 63 00 5D */	addi r3, r3, 0x5d
/* 801EFECC  80 9F 00 04 */	lwz r4, 4(r31)
/* 801EFED0  48 0E 43 A1 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801EFED4  48 11 8B 99 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801EFED8  90 7F 01 48 */	stw r3, 0x148(r31)
/* 801EFEDC  80 7F 01 48 */	lwz r3, 0x148(r31)
/* 801EFEE0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFEE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFEE8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EFEEC  7D 89 03 A6 */	mtctr r12
/* 801EFEF0  4E 80 04 21 */	bctrl 
/* 801EFEF4  38 00 00 00 */	li r0, 0
/* 801EFEF8  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 801EFEFC  3B 80 00 00 */	li r28, 0
/* 801EFF00  3B 40 00 00 */	li r26, 0
/* 801EFF04  3B 60 00 00 */	li r27, 0
lbl_801EFF08:
/* 801EFF08  38 60 00 6C */	li r3, 0x6c
/* 801EFF0C  48 0D ED 41 */	bl __nw__FUl
/* 801EFF10  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFF14  41 82 00 28 */	beq lbl_801EFF3C
/* 801EFF18  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFF1C  38 1E 00 B8 */	addi r0, r30, 0xb8
/* 801EFF20  7C C0 DA 14 */	add r6, r0, r27
/* 801EFF24  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFF28  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFF2C  38 E0 00 00 */	li r7, 0
/* 801EFF30  39 00 00 00 */	li r8, 0
/* 801EFF34  48 06 3A 51 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFF38  7C 60 1B 78 */	mr r0, r3
lbl_801EFF3C:
/* 801EFF3C  7F 3F D2 14 */	add r25, r31, r26
/* 801EFF40  90 19 00 D4 */	stw r0, 0xd4(r25)
/* 801EFF44  38 60 00 6C */	li r3, 0x6c
/* 801EFF48  48 0D ED 05 */	bl __nw__FUl
/* 801EFF4C  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFF50  41 82 00 28 */	beq lbl_801EFF78
/* 801EFF54  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFF58  38 1E 00 D0 */	addi r0, r30, 0xd0
/* 801EFF5C  7C C0 DA 14 */	add r6, r0, r27
/* 801EFF60  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFF64  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFF68  38 E0 00 00 */	li r7, 0
/* 801EFF6C  39 00 00 00 */	li r8, 0
/* 801EFF70  48 06 3A 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFF74  7C 60 1B 78 */	mr r0, r3
lbl_801EFF78:
/* 801EFF78  90 19 00 E0 */	stw r0, 0xe0(r25)
/* 801EFF7C  38 60 00 6C */	li r3, 0x6c
/* 801EFF80  48 0D EC CD */	bl __nw__FUl
/* 801EFF84  7C 60 1B 79 */	or. r0, r3, r3
/* 801EFF88  41 82 00 28 */	beq lbl_801EFFB0
/* 801EFF8C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801EFF90  38 1E 00 E8 */	addi r0, r30, 0xe8
/* 801EFF94  7C C0 DA 14 */	add r6, r0, r27
/* 801EFF98  80 A6 00 00 */	lwz r5, 0(r6)
/* 801EFF9C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801EFFA0  38 E0 00 00 */	li r7, 0
/* 801EFFA4  39 00 00 00 */	li r8, 0
/* 801EFFA8  48 06 39 DD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801EFFAC  7C 60 1B 78 */	mr r0, r3
lbl_801EFFB0:
/* 801EFFB0  90 19 00 EC */	stw r0, 0xec(r25)
/* 801EFFB4  80 79 00 D4 */	lwz r3, 0xd4(r25)
/* 801EFFB8  80 63 00 04 */	lwz r3, 4(r3)
/* 801EFFBC  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 801EFFC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFFC4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801EFFC8  7D 89 03 A6 */	mtctr r12
/* 801EFFCC  4E 80 04 21 */	bctrl 
/* 801EFFD0  80 79 00 E0 */	lwz r3, 0xe0(r25)
/* 801EFFD4  80 63 00 04 */	lwz r3, 4(r3)
/* 801EFFD8  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 801EFFDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFFE0  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801EFFE4  7D 89 03 A6 */	mtctr r12
/* 801EFFE8  4E 80 04 21 */	bctrl 
/* 801EFFEC  80 79 00 EC */	lwz r3, 0xec(r25)
/* 801EFFF0  80 63 00 04 */	lwz r3, 4(r3)
/* 801EFFF4  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 801EFFF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EFFFC  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801F0000  7D 89 03 A6 */	mtctr r12
/* 801F0004  4E 80 04 21 */	bctrl 
/* 801F0008  80 79 00 E0 */	lwz r3, 0xe0(r25)
/* 801F000C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0010  80 9F 01 48 */	lwz r4, 0x148(r31)
/* 801F0014  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0018  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801F001C  7D 89 03 A6 */	mtctr r12
/* 801F0020  4E 80 04 21 */	bctrl 
/* 801F0024  80 79 00 EC */	lwz r3, 0xec(r25)
/* 801F0028  80 63 00 04 */	lwz r3, 4(r3)
/* 801F002C  80 9F 01 48 */	lwz r4, 0x148(r31)
/* 801F0030  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0034  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801F0038  7D 89 03 A6 */	mtctr r12
/* 801F003C  4E 80 04 21 */	bctrl 
/* 801F0040  3B 9C 00 01 */	addi r28, r28, 1
/* 801F0044  2C 1C 00 03 */	cmpwi r28, 3
/* 801F0048  3B 5A 00 04 */	addi r26, r26, 4
/* 801F004C  3B 7B 00 08 */	addi r27, r27, 8
/* 801F0050  41 80 FE B8 */	blt lbl_801EFF08
/* 801F0054  3B 80 00 00 */	li r28, 0
/* 801F0058  3B 60 00 00 */	li r27, 0
/* 801F005C  3B 40 00 00 */	li r26, 0
lbl_801F0060:
/* 801F0060  38 60 00 6C */	li r3, 0x6c
/* 801F0064  48 0D EB E9 */	bl __nw__FUl
/* 801F0068  7C 60 1B 79 */	or. r0, r3, r3
/* 801F006C  41 82 00 28 */	beq lbl_801F0094
/* 801F0070  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F0074  38 1E 01 00 */	addi r0, r30, 0x100
/* 801F0078  7C C0 D2 14 */	add r6, r0, r26
/* 801F007C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F0080  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F0084  38 E0 00 00 */	li r7, 0
/* 801F0088  39 00 00 00 */	li r8, 0
/* 801F008C  48 06 38 F9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801F0090  7C 60 1B 78 */	mr r0, r3
lbl_801F0094:
/* 801F0094  7F 3F DA 14 */	add r25, r31, r27
/* 801F0098  90 19 01 18 */	stw r0, 0x118(r25)
/* 801F009C  38 60 00 6C */	li r3, 0x6c
/* 801F00A0  48 0D EB AD */	bl __nw__FUl
/* 801F00A4  7C 60 1B 79 */	or. r0, r3, r3
/* 801F00A8  41 82 00 28 */	beq lbl_801F00D0
/* 801F00AC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F00B0  38 1E 01 10 */	addi r0, r30, 0x110
/* 801F00B4  7C C0 D2 14 */	add r6, r0, r26
/* 801F00B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F00BC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F00C0  38 E0 00 00 */	li r7, 0
/* 801F00C4  39 00 00 00 */	li r8, 0
/* 801F00C8  48 06 38 BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801F00CC  7C 60 1B 78 */	mr r0, r3
lbl_801F00D0:
/* 801F00D0  90 19 01 20 */	stw r0, 0x120(r25)
/* 801F00D4  38 60 00 6C */	li r3, 0x6c
/* 801F00D8  48 0D EB 75 */	bl __nw__FUl
/* 801F00DC  7C 60 1B 79 */	or. r0, r3, r3
/* 801F00E0  41 82 00 28 */	beq lbl_801F0108
/* 801F00E4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F00E8  38 1E 01 20 */	addi r0, r30, 0x120
/* 801F00EC  7C C0 D2 14 */	add r6, r0, r26
/* 801F00F0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F00F4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F00F8  38 E0 00 00 */	li r7, 0
/* 801F00FC  39 00 00 00 */	li r8, 0
/* 801F0100  48 06 38 85 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801F0104  7C 60 1B 78 */	mr r0, r3
lbl_801F0108:
/* 801F0108  90 19 01 28 */	stw r0, 0x128(r25)
/* 801F010C  80 79 01 18 */	lwz r3, 0x118(r25)
/* 801F0110  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0114  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 801F0118  81 83 00 00 */	lwz r12, 0(r3)
/* 801F011C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801F0120  7D 89 03 A6 */	mtctr r12
/* 801F0124  4E 80 04 21 */	bctrl 
/* 801F0128  80 79 01 20 */	lwz r3, 0x120(r25)
/* 801F012C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0130  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 801F0134  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0138  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801F013C  7D 89 03 A6 */	mtctr r12
/* 801F0140  4E 80 04 21 */	bctrl 
/* 801F0144  80 79 01 28 */	lwz r3, 0x128(r25)
/* 801F0148  80 63 00 04 */	lwz r3, 4(r3)
/* 801F014C  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 801F0150  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0154  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801F0158  7D 89 03 A6 */	mtctr r12
/* 801F015C  4E 80 04 21 */	bctrl 
/* 801F0160  80 79 01 20 */	lwz r3, 0x120(r25)
/* 801F0164  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0168  80 9F 01 48 */	lwz r4, 0x148(r31)
/* 801F016C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0170  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801F0174  7D 89 03 A6 */	mtctr r12
/* 801F0178  4E 80 04 21 */	bctrl 
/* 801F017C  80 79 01 28 */	lwz r3, 0x128(r25)
/* 801F0180  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0184  80 9F 01 48 */	lwz r4, 0x148(r31)
/* 801F0188  81 83 00 00 */	lwz r12, 0(r3)
/* 801F018C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801F0190  7D 89 03 A6 */	mtctr r12
/* 801F0194  4E 80 04 21 */	bctrl 
/* 801F0198  80 79 01 18 */	lwz r3, 0x118(r25)
/* 801F019C  38 80 00 00 */	li r4, 0
/* 801F01A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F01A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F01A8  7D 89 03 A6 */	mtctr r12
/* 801F01AC  4E 80 04 21 */	bctrl 
/* 801F01B0  80 79 01 20 */	lwz r3, 0x120(r25)
/* 801F01B4  38 80 00 00 */	li r4, 0
/* 801F01B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F01BC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F01C0  7D 89 03 A6 */	mtctr r12
/* 801F01C4  4E 80 04 21 */	bctrl 
/* 801F01C8  80 79 01 28 */	lwz r3, 0x128(r25)
/* 801F01CC  38 80 00 00 */	li r4, 0
/* 801F01D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F01D4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F01D8  7D 89 03 A6 */	mtctr r12
/* 801F01DC  4E 80 04 21 */	bctrl 
/* 801F01E0  3B 9C 00 01 */	addi r28, r28, 1
/* 801F01E4  2C 1C 00 02 */	cmpwi r28, 2
/* 801F01E8  3B 7B 00 04 */	addi r27, r27, 4
/* 801F01EC  3B 5A 00 08 */	addi r26, r26, 8
/* 801F01F0  41 80 FE 70 */	blt lbl_801F0060
/* 801F01F4  7F A3 EB 78 */	mr r3, r29
/* 801F01F8  48 11 88 75 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801F01FC  90 7F 01 50 */	stw r3, 0x150(r31)
/* 801F0200  80 7F 01 50 */	lwz r3, 0x150(r31)
/* 801F0204  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F0208  81 83 00 00 */	lwz r12, 0(r3)
/* 801F020C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F0210  7D 89 03 A6 */	mtctr r12
/* 801F0214  4E 80 04 21 */	bctrl 
/* 801F0218  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801F021C  38 63 79 60 */	addi r3, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801F0220  38 63 00 77 */	addi r3, r3, 0x77
/* 801F0224  80 9F 00 04 */	lwz r4, 4(r31)
/* 801F0228  48 0E 40 49 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801F022C  48 11 88 41 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801F0230  90 7F 01 58 */	stw r3, 0x158(r31)
/* 801F0234  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F0238  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F023C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0240  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F0244  7D 89 03 A6 */	mtctr r12
/* 801F0248  4E 80 04 21 */	bctrl 
/* 801F024C  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801F0250  38 63 79 60 */	addi r3, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801F0254  38 63 00 8E */	addi r3, r3, 0x8e
/* 801F0258  80 9F 00 04 */	lwz r4, 4(r31)
/* 801F025C  48 0E 40 15 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801F0260  48 11 88 0D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801F0264  90 7F 01 60 */	stw r3, 0x160(r31)
/* 801F0268  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 801F026C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F0270  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0274  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F0278  7D 89 03 A6 */	mtctr r12
/* 801F027C  4E 80 04 21 */	bctrl 
/* 801F0280  38 00 00 00 */	li r0, 0
/* 801F0284  90 1F 01 54 */	stw r0, 0x154(r31)
/* 801F0288  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 801F028C  90 1F 01 64 */	stw r0, 0x164(r31)
/* 801F0290  3A E0 00 00 */	li r23, 0
/* 801F0294  3B 20 00 00 */	li r25, 0
/* 801F0298  3B 40 00 00 */	li r26, 0
lbl_801F029C:
/* 801F029C  38 60 00 6C */	li r3, 0x6c
/* 801F02A0  48 0D E9 AD */	bl __nw__FUl
/* 801F02A4  7C 60 1B 79 */	or. r0, r3, r3
/* 801F02A8  41 82 00 28 */	beq lbl_801F02D0
/* 801F02AC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F02B0  38 1E 01 30 */	addi r0, r30, 0x130
/* 801F02B4  7C C0 D2 14 */	add r6, r0, r26
/* 801F02B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F02BC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F02C0  38 E0 00 00 */	li r7, 0
/* 801F02C4  39 00 00 00 */	li r8, 0
/* 801F02C8  48 06 36 BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801F02CC  7C 60 1B 78 */	mr r0, r3
lbl_801F02D0:
/* 801F02D0  3B 19 00 F8 */	addi r24, r25, 0xf8
/* 801F02D4  7C 1F C1 2E */	stwx r0, r31, r24
/* 801F02D8  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801F02DC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F02E0  80 9F 01 50 */	lwz r4, 0x150(r31)
/* 801F02E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F02E8  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801F02EC  7D 89 03 A6 */	mtctr r12
/* 801F02F0  4E 80 04 21 */	bctrl 
/* 801F02F4  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801F02F8  80 63 00 04 */	lwz r3, 4(r3)
/* 801F02FC  80 9F 01 58 */	lwz r4, 0x158(r31)
/* 801F0300  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0304  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801F0308  7D 89 03 A6 */	mtctr r12
/* 801F030C  4E 80 04 21 */	bctrl 
/* 801F0310  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801F0314  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0318  80 9F 01 60 */	lwz r4, 0x160(r31)
/* 801F031C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0320  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 801F0324  7D 89 03 A6 */	mtctr r12
/* 801F0328  4E 80 04 21 */	bctrl 
/* 801F032C  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801F0330  38 80 00 00 */	li r4, 0
/* 801F0334  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0338  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F033C  7D 89 03 A6 */	mtctr r12
/* 801F0340  4E 80 04 21 */	bctrl 
/* 801F0344  3A F7 00 01 */	addi r23, r23, 1
/* 801F0348  2C 17 00 03 */	cmpwi r23, 3
/* 801F034C  3B 39 00 04 */	addi r25, r25, 4
/* 801F0350  3B 5A 00 08 */	addi r26, r26, 8
/* 801F0354  41 80 FF 48 */	blt lbl_801F029C
/* 801F0358  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F035C  3C 80 62 69 */	lis r4, 0x6269 /* 0x62695F73@ha */
/* 801F0360  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x62695F73@l */
/* 801F0364  3C 80 77 5F */	lis r4, 0x775F /* 0x775F7461@ha */
/* 801F0368  38 A4 74 61 */	addi r5, r4, 0x7461 /* 0x775F7461@l */
/* 801F036C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0370  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F0374  7D 89 03 A6 */	mtctr r12
/* 801F0378  4E 80 04 21 */	bctrl 
/* 801F037C  38 00 00 00 */	li r0, 0
/* 801F0380  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801F0384  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F0388  3C 80 62 69 */	lis r4, 0x6269 /* 0x62695F78@ha */
/* 801F038C  38 C4 5F 78 */	addi r6, r4, 0x5F78 /* 0x62695F78@l */
/* 801F0390  3C 80 77 5F */	lis r4, 0x775F /* 0x775F7461@ha */
/* 801F0394  38 A4 74 61 */	addi r5, r4, 0x7461 /* 0x775F7461@l */
/* 801F0398  81 83 00 00 */	lwz r12, 0(r3)
/* 801F039C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F03A0  7D 89 03 A6 */	mtctr r12
/* 801F03A4  4E 80 04 21 */	bctrl 
/* 801F03A8  3B 60 00 00 */	li r27, 0
/* 801F03AC  9B 63 00 B0 */	stb r27, 0xb0(r3)
/* 801F03B0  3A E0 00 00 */	li r23, 0
/* 801F03B4  3B 20 00 00 */	li r25, 0
/* 801F03B8  3B 5E 01 58 */	addi r26, r30, 0x158
lbl_801F03BC:
/* 801F03BC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F03C0  7C DA CA 14 */	add r6, r26, r25
/* 801F03C4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F03C8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F03CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F03D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F03D4  7D 89 03 A6 */	mtctr r12
/* 801F03D8  4E 80 04 21 */	bctrl 
/* 801F03DC  9B 63 00 B0 */	stb r27, 0xb0(r3)
/* 801F03E0  3A F7 00 01 */	addi r23, r23, 1
/* 801F03E4  2C 17 00 0A */	cmpwi r23, 0xa
/* 801F03E8  3B 39 00 08 */	addi r25, r25, 8
/* 801F03EC  41 80 FF D0 */	blt lbl_801F03BC
/* 801F03F0  3B 40 00 00 */	li r26, 0
/* 801F03F4  3B 60 00 00 */	li r27, 0
/* 801F03F8  3B 80 00 00 */	li r28, 0
/* 801F03FC  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801F0400  3B A3 79 60 */	addi r29, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801F0404  C3 A2 AA 40 */	lfs f29, lit_4173(r2)
/* 801F0408  C3 E2 AA 44 */	lfs f31, lit_4174(r2)
/* 801F040C  C3 C2 AA 48 */	lfs f30, lit_4175(r2)
lbl_801F0410:
/* 801F0410  38 60 00 1C */	li r3, 0x1c
/* 801F0414  48 0D E8 39 */	bl __nw__FUl
/* 801F0418  7C 60 1B 79 */	or. r0, r3, r3
/* 801F041C  41 82 00 28 */	beq lbl_801F0444
/* 801F0420  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F0424  38 1E 01 48 */	addi r0, r30, 0x148
/* 801F0428  7C C0 E2 14 */	add r6, r0, r28
/* 801F042C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F0430  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F0434  38 E0 00 00 */	li r7, 0
/* 801F0438  39 00 00 00 */	li r8, 0
/* 801F043C  48 06 4F C1 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801F0440  7C 60 1B 78 */	mr r0, r3
lbl_801F0444:
/* 801F0444  7F 3F DA 14 */	add r25, r31, r27
/* 801F0448  90 19 01 68 */	stw r0, 0x168(r25)
/* 801F044C  80 79 01 68 */	lwz r3, 0x168(r25)
/* 801F0450  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0454  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801F0458  81 83 00 00 */	lwz r12, 0(r3)
/* 801F045C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801F0460  7D 89 03 A6 */	mtctr r12
/* 801F0464  4E 80 04 21 */	bctrl 
/* 801F0468  80 79 01 68 */	lwz r3, 0x168(r25)
/* 801F046C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0470  38 80 01 00 */	li r4, 0x100
/* 801F0474  38 BD 00 A5 */	addi r5, r29, 0xa5
/* 801F0478  4C C6 31 82 */	crclr 6
/* 801F047C  48 11 02 D1 */	bl setString__10J2DTextBoxFsPCce
/* 801F0480  80 79 01 68 */	lwz r3, 0x168(r25)
/* 801F0484  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0488  D3 A3 01 1C */	stfs f29, 0x11c(r3)
/* 801F048C  D3 A3 01 20 */	stfs f29, 0x120(r3)
/* 801F0490  80 79 01 68 */	lwz r3, 0x168(r25)
/* 801F0494  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0498  D3 E3 01 18 */	stfs f31, 0x118(r3)
/* 801F049C  80 79 01 68 */	lwz r3, 0x168(r25)
/* 801F04A0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F04A4  D3 C3 01 14 */	stfs f30, 0x114(r3)
/* 801F04A8  80 79 01 68 */	lwz r3, 0x168(r25)
/* 801F04AC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F04B0  48 11 01 A9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801F04B4  90 79 01 70 */	stw r3, 0x170(r25)
/* 801F04B8  3B 5A 00 01 */	addi r26, r26, 1
/* 801F04BC  2C 1A 00 02 */	cmpwi r26, 2
/* 801F04C0  3B 7B 00 04 */	addi r27, r27, 4
/* 801F04C4  3B 9C 00 08 */	addi r28, r28, 8
/* 801F04C8  41 80 FF 48 */	blt lbl_801F0410
/* 801F04CC  80 7F 01 68 */	lwz r3, 0x168(r31)
/* 801F04D0  38 80 00 FF */	li r4, 0xff
/* 801F04D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F04D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F04DC  7D 89 03 A6 */	mtctr r12
/* 801F04E0  4E 80 04 21 */	bctrl 
/* 801F04E4  80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 801F04E8  38 80 00 00 */	li r4, 0
/* 801F04EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F04F0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F04F4  7D 89 03 A6 */	mtctr r12
/* 801F04F8  4E 80 04 21 */	bctrl 
/* 801F04FC  38 00 00 00 */	li r0, 0
/* 801F0500  98 1F 01 78 */	stb r0, 0x178(r31)
/* 801F0504  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F0508  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801F050C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801F0510  38 A0 77 5F */	li r5, 0x775f
/* 801F0514  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0518  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F051C  7D 89 03 A6 */	mtctr r12
/* 801F0520  4E 80 04 21 */	bctrl 
/* 801F0524  90 7F 00 B4 */	stw r3, 0xb4(r31)
/* 801F0528  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F052C  3C 80 5F 6D */	lis r4, 0x5F6D /* 0x5F6D7367@ha */
/* 801F0530  38 C4 73 67 */	addi r6, r4, 0x7367 /* 0x5F6D7367@l */
/* 801F0534  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6572@ha */
/* 801F0538  38 A4 65 72 */	addi r5, r4, 0x6572 /* 0x775F6572@l */
/* 801F053C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0540  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F0544  7D 89 03 A6 */	mtctr r12
/* 801F0548  4E 80 04 21 */	bctrl 
/* 801F054C  38 00 00 00 */	li r0, 0
/* 801F0550  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801F0554  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F0558  3C 80 5F 6D */	lis r4, 0x5F6D /* 0x5F6D7352@ha */
/* 801F055C  38 C4 73 52 */	addi r6, r4, 0x7352 /* 0x5F6D7352@l */
/* 801F0560  3C 80 77 5F */	lis r4, 0x775F /* 0x775F6572@ha */
/* 801F0564  38 A4 65 72 */	addi r5, r4, 0x6572 /* 0x775F6572@l */
/* 801F0568  81 83 00 00 */	lwz r12, 0(r3)
/* 801F056C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F0570  7D 89 03 A6 */	mtctr r12
/* 801F0574  4E 80 04 21 */	bctrl 
/* 801F0578  38 00 00 00 */	li r0, 0
/* 801F057C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801F0580  3B 60 00 00 */	li r27, 0
/* 801F0584  3B 80 00 00 */	li r28, 0
/* 801F0588  3B A0 00 00 */	li r29, 0
/* 801F058C  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801F0590  3B 43 79 60 */	addi r26, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801F0594  C3 C2 AA 54 */	lfs f30, lit_4178(r2)
/* 801F0598  C3 E2 AA 58 */	lfs f31, lit_4179(r2)
lbl_801F059C:
/* 801F059C  38 60 00 1C */	li r3, 0x1c
/* 801F05A0  48 0D E6 AD */	bl __nw__FUl
/* 801F05A4  7C 60 1B 79 */	or. r0, r3, r3
/* 801F05A8  41 82 00 28 */	beq lbl_801F05D0
/* 801F05AC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F05B0  38 1E 01 A8 */	addi r0, r30, 0x1a8
/* 801F05B4  7C C0 EA 14 */	add r6, r0, r29
/* 801F05B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F05BC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F05C0  38 E0 00 00 */	li r7, 0
/* 801F05C4  39 00 00 00 */	li r8, 0
/* 801F05C8  48 06 4E 35 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801F05CC  7C 60 1B 78 */	mr r0, r3
lbl_801F05D0:
/* 801F05D0  7F 3F E2 14 */	add r25, r31, r28
/* 801F05D4  90 19 00 C0 */	stw r0, 0xc0(r25)
/* 801F05D8  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F05DC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F05E0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801F05E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F05E8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801F05EC  7D 89 03 A6 */	mtctr r12
/* 801F05F0  4E 80 04 21 */	bctrl 
/* 801F05F4  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F05F8  80 63 00 04 */	lwz r3, 4(r3)
/* 801F05FC  38 80 02 00 */	li r4, 0x200
/* 801F0600  38 BA 00 A5 */	addi r5, r26, 0xa5
/* 801F0604  4C C6 31 82 */	crclr 6
/* 801F0608  48 11 01 45 */	bl setString__10J2DTextBoxFsPCce
/* 801F060C  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F0610  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0614  C0 22 AA 4C */	lfs f1, lit_4176(r2)
/* 801F0618  C0 42 AA 50 */	lfs f2, lit_4177(r2)
/* 801F061C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0620  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801F0624  7D 89 03 A6 */	mtctr r12
/* 801F0628  4E 80 04 21 */	bctrl 
/* 801F062C  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F0630  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0634  D3 C3 01 1C */	stfs f30, 0x11c(r3)
/* 801F0638  D3 C3 01 20 */	stfs f30, 0x120(r3)
/* 801F063C  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F0640  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0644  D3 C3 01 18 */	stfs f30, 0x118(r3)
/* 801F0648  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F064C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0650  D3 E3 01 14 */	stfs f31, 0x114(r3)
/* 801F0654  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F0658  80 63 00 04 */	lwz r3, 4(r3)
/* 801F065C  48 10 FF FD */	bl getStringPtr__10J2DTextBoxCFv
/* 801F0660  90 79 00 C8 */	stw r3, 0xc8(r25)
/* 801F0664  80 79 00 C0 */	lwz r3, 0xc0(r25)
/* 801F0668  48 06 4F 61 */	bl show__13CPaneMgrAlphaFv
/* 801F066C  3B 7B 00 01 */	addi r27, r27, 1
/* 801F0670  2C 1B 00 02 */	cmpwi r27, 2
/* 801F0674  3B 9C 00 04 */	addi r28, r28, 4
/* 801F0678  3B BD 00 08 */	addi r29, r29, 8
/* 801F067C  41 80 FF 20 */	blt lbl_801F059C
/* 801F0680  38 00 00 00 */	li r0, 0
/* 801F0684  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 801F0688  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F068C  54 00 10 3A */	slwi r0, r0, 2
/* 801F0690  7C 7F 02 14 */	add r3, r31, r0
/* 801F0694  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801F0698  38 80 00 FF */	li r4, 0xff
/* 801F069C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F06A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F06A4  7D 89 03 A6 */	mtctr r12
/* 801F06A8  4E 80 04 21 */	bctrl 
/* 801F06AC  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 801F06B0  68 00 00 01 */	xori r0, r0, 1
/* 801F06B4  54 00 10 3A */	slwi r0, r0, 2
/* 801F06B8  7C 7F 02 14 */	add r3, r31, r0
/* 801F06BC  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801F06C0  38 80 00 00 */	li r4, 0
/* 801F06C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F06C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F06CC  7D 89 03 A6 */	mtctr r12
/* 801F06D0  4E 80 04 21 */	bctrl 
/* 801F06D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F06D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F06DC  88 03 0F 18 */	lbz r0, 0xf18(r3)
/* 801F06E0  98 1F 00 54 */	stb r0, 0x54(r31)
/* 801F06E4  38 60 00 B8 */	li r3, 0xb8
/* 801F06E8  48 0D E5 65 */	bl __nw__FUl
/* 801F06EC  7C 60 1B 79 */	or. r0, r3, r3
/* 801F06F0  41 82 00 18 */	beq lbl_801F0708
/* 801F06F4  38 80 00 00 */	li r4, 0
/* 801F06F8  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F06FC  38 A0 00 00 */	li r5, 0
/* 801F0700  4B FA 3B 21 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801F0704  7C 60 1B 78 */	mr r0, r3
lbl_801F0708:
/* 801F0708  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 801F070C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F0710  C0 22 AA 5C */	lfs f1, lit_4180(r2)
/* 801F0714  C0 42 AA 60 */	lfs f2, lit_4181(r2)
/* 801F0718  C0 62 AA 64 */	lfs f3, lit_4182(r2)
/* 801F071C  C0 82 AA 68 */	lfs f4, lit_4183(r2)
/* 801F0720  FC A0 20 90 */	fmr f5, f4
/* 801F0724  4B FA 4A 8D */	bl setParam__16dSelect_cursor_cFfffff
/* 801F0728  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F072C  54 00 10 3A */	slwi r0, r0, 2
/* 801F0730  7C 7F 02 14 */	add r3, r31, r0
/* 801F0734  80 83 00 68 */	lwz r4, 0x68(r3)
/* 801F0738  38 61 00 10 */	addi r3, r1, 0x10
/* 801F073C  80 A4 00 04 */	lwz r5, 4(r4)
/* 801F0740  38 C0 00 00 */	li r6, 0
/* 801F0744  38 E0 00 00 */	li r7, 0
/* 801F0748  48 06 47 75 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801F074C  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F0750  54 00 10 3A */	slwi r0, r0, 2
/* 801F0754  7C 7F 02 14 */	add r3, r31, r0
/* 801F0758  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F075C  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0760  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F0764  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801F0768  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801F076C  38 A0 00 01 */	li r5, 1
/* 801F0770  4B FA 49 85 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801F0774  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F0778  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F077C  4B FA 4B 25 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F0780  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F0784  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F3032@ha */
/* 801F0788  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x6D5F3032@l */
/* 801F078C  38 A0 00 4E */	li r5, 0x4e
/* 801F0790  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0794  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F0798  7D 89 03 A6 */	mtctr r12
/* 801F079C  4E 80 04 21 */	bctrl 
/* 801F07A0  7C 77 1B 78 */	mr r23, r3
/* 801F07A4  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 801F07A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F07AC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F07B0  7D 89 03 A6 */	mtctr r12
/* 801F07B4  4E 80 04 21 */	bctrl 
/* 801F07B8  38 00 00 00 */	li r0, 0
/* 801F07BC  98 1F 00 64 */	stb r0, 0x64(r31)
/* 801F07C0  38 00 00 01 */	li r0, 1
/* 801F07C4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801F07C8  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 801F07CC  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F07D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F07D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F07D8  3C 00 43 30 */	lis r0, 0x4330
/* 801F07DC  90 01 00 60 */	stw r0, 0x60(r1)
/* 801F07E0  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 801F07E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F07E8  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801F07EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F07F0  7E E3 BB 78 */	mr r3, r23
/* 801F07F4  48 10 77 D9 */	bl animationTransform__7J2DPaneFv
/* 801F07F8  7E E3 BB 78 */	mr r3, r23
/* 801F07FC  38 80 00 00 */	li r4, 0
/* 801F0800  81 97 00 00 */	lwz r12, 0(r23)
/* 801F0804  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F0808  7D 89 03 A6 */	mtctr r12
/* 801F080C  4E 80 04 21 */	bctrl 
/* 801F0810  80 7F 01 68 */	lwz r3, 0x168(r31)
/* 801F0814  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0818  C0 02 AA 58 */	lfs f0, lit_4179(r2)
/* 801F081C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F0820  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F0824  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0828  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F082C  7D 89 03 A6 */	mtctr r12
/* 801F0830  4E 80 04 21 */	bctrl 
/* 801F0834  80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 801F0838  80 63 00 04 */	lwz r3, 4(r3)
/* 801F083C  C0 02 AA 58 */	lfs f0, lit_4179(r2)
/* 801F0840  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F0844  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F0848  81 83 00 00 */	lwz r12, 0(r3)
/* 801F084C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F0850  7D 89 03 A6 */	mtctr r12
/* 801F0854  4E 80 04 21 */	bctrl 
/* 801F0858  3A E0 00 00 */	li r23, 0
/* 801F085C  3B 20 00 00 */	li r25, 0
/* 801F0860  3B 40 00 00 */	li r26, 0
/* 801F0864  3B 7E 01 B8 */	addi r27, r30, 0x1b8
lbl_801F0868:
/* 801F0868  38 60 00 3C */	li r3, 0x3c
/* 801F086C  48 0D E3 E1 */	bl __nw__FUl
/* 801F0870  7C 60 1B 79 */	or. r0, r3, r3
/* 801F0874  41 82 00 14 */	beq lbl_801F0888
/* 801F0878  80 9F 00 04 */	lwz r4, 4(r31)
/* 801F087C  38 A0 00 01 */	li r5, 1
/* 801F0880  4B FA 1B B5 */	bl __ct__12dFile_info_cFP10JKRArchiveUc
/* 801F0884  7C 60 1B 78 */	mr r0, r3
lbl_801F0888:
/* 801F0888  7F 1F D2 14 */	add r24, r31, r26
/* 801F088C  90 18 00 34 */	stw r0, 0x34(r24)
/* 801F0890  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F0894  7C DB CA 14 */	add r6, r27, r25
/* 801F0898  80 A6 00 00 */	lwz r5, 0(r6)
/* 801F089C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801F08A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F08A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F08A8  7D 89 03 A6 */	mtctr r12
/* 801F08AC  4E 80 04 21 */	bctrl 
/* 801F08B0  80 98 00 34 */	lwz r4, 0x34(r24)
/* 801F08B4  90 64 00 14 */	stw r3, 0x14(r4)
/* 801F08B8  80 78 00 34 */	lwz r3, 0x34(r24)
/* 801F08BC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801F08C0  90 18 01 7C */	stw r0, 0x17c(r24)
/* 801F08C4  80 78 00 34 */	lwz r3, 0x34(r24)
/* 801F08C8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 801F08CC  90 18 01 88 */	stw r0, 0x188(r24)
/* 801F08D0  3A F7 00 01 */	addi r23, r23, 1
/* 801F08D4  2C 17 00 03 */	cmpwi r23, 3
/* 801F08D8  3B 39 00 08 */	addi r25, r25, 8
/* 801F08DC  3B 5A 00 04 */	addi r26, r26, 4
/* 801F08E0  41 80 FF 88 */	blt lbl_801F0868
/* 801F08E4  38 60 00 40 */	li r3, 0x40
/* 801F08E8  48 0D E3 65 */	bl __nw__FUl
/* 801F08EC  7C 60 1B 79 */	or. r0, r3, r3
/* 801F08F0  41 82 00 14 */	beq lbl_801F0904
/* 801F08F4  80 9F 00 04 */	lwz r4, 4(r31)
/* 801F08F8  38 A0 00 00 */	li r5, 0
/* 801F08FC  4B FA 12 B1 */	bl __ct__15dFile_warning_cFP10JKRArchiveUc
/* 801F0900  7C 60 1B 78 */	mr r0, r3
lbl_801F0904:
/* 801F0904  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801F0908  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 801F090C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801F0910  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 801F0914  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801F0918  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 801F091C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 801F0920  39 61 00 90 */	addi r11, r1, 0x90
/* 801F0924  48 17 18 ED */	bl _restgpr_23
/* 801F0928  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801F092C  7C 08 03 A6 */	mtlr r0
/* 801F0930  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801F0934  4E 80 00 20 */	blr 
