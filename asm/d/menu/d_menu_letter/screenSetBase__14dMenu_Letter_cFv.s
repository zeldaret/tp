lbl_801DFA58:
/* 801DFA58  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801DFA5C  7C 08 02 A6 */	mflr r0
/* 801DFA60  90 01 00 64 */	stw r0, 0x64(r1)
/* 801DFA64  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801DFA68  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 801DFA6C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801DFA70  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 801DFA74  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801DFA78  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 801DFA7C  39 61 00 30 */	addi r11, r1, 0x30
/* 801DFA80  48 18 27 49 */	bl _savegpr_24
/* 801DFA84  7C 7F 1B 78 */	mr r31, r3
/* 801DFA88  3C 60 80 39 */	lis r3, tag_sub0@ha /* 0x803969C8@ha */
/* 801DFA8C  3B C3 69 C8 */	addi r30, r3, tag_sub0@l /* 0x803969C8@l */
/* 801DFA90  38 60 01 18 */	li r3, 0x118
/* 801DFA94  48 0E F1 B9 */	bl __nw__FUl
/* 801DFA98  7C 60 1B 79 */	or. r0, r3, r3
/* 801DFA9C  41 82 00 0C */	beq lbl_801DFAA8
/* 801DFAA0  48 11 89 F9 */	bl __ct__9J2DScreenFv
/* 801DFAA4  7C 60 1B 78 */	mr r0, r3
lbl_801DFAA8:
/* 801DFAA8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801DFAAC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFAB0  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DFAB4  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DFAB8  38 84 00 3C */	addi r4, r4, 0x3c
/* 801DFABC  3C A0 00 02 */	lis r5, 2
/* 801DFAC0  80 DF 00 08 */	lwz r6, 8(r31)
/* 801DFAC4  48 11 8B 85 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801DFAC8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFACC  48 07 56 1D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801DFAD0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFAD4  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801DFAD8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801DFADC  3C 80 77 69 */	lis r4, 0x7769 /* 0x77695F62@ha */
/* 801DFAE0  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x77695F62@l */
/* 801DFAE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFAE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFAEC  7D 89 03 A6 */	mtctr r12
/* 801DFAF0  4E 80 04 21 */	bctrl 
/* 801DFAF4  38 00 00 00 */	li r0, 0
/* 801DFAF8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DFAFC  38 60 00 6C */	li r3, 0x6c
/* 801DFB00  48 0E F1 4D */	bl __nw__FUl
/* 801DFB04  7C 60 1B 79 */	or. r0, r3, r3
/* 801DFB08  41 82 00 24 */	beq lbl_801DFB2C
/* 801DFB0C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801DFB10  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801DFB14  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801DFB18  38 A0 00 6E */	li r5, 0x6e
/* 801DFB1C  38 E0 00 02 */	li r7, 2
/* 801DFB20  39 00 00 00 */	li r8, 0
/* 801DFB24  48 07 3E 61 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DFB28  7C 60 1B 78 */	mr r0, r3
lbl_801DFB2C:
/* 801DFB2C  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 801DFB30  80 7F 02 BC */	lwz r3, 0x2bc(r31)
/* 801DFB34  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DFB38  48 07 5C 99 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DFB3C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFB40  3C 80 74 5F */	lis r4, 0x745F /* 0x745F3030@ha */
/* 801DFB44  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x745F3030@l */
/* 801DFB48  38 A0 66 5F */	li r5, 0x665f
/* 801DFB4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFB50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFB54  7D 89 03 A6 */	mtctr r12
/* 801DFB58  4E 80 04 21 */	bctrl 
/* 801DFB5C  7C 78 1B 78 */	mr r24, r3
/* 801DFB60  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFB64  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801DFB68  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801DFB6C  38 A0 00 74 */	li r5, 0x74
/* 801DFB70  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFB74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFB78  7D 89 03 A6 */	mtctr r12
/* 801DFB7C  4E 80 04 21 */	bctrl 
/* 801DFB80  38 00 00 00 */	li r0, 0
/* 801DFB84  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DFB88  7F 03 C3 78 */	mr r3, r24
/* 801DFB8C  38 80 00 40 */	li r4, 0x40
/* 801DFB90  3C A0 80 39 */	lis r5, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DFB94  38 A5 6D C0 */	addi r5, r5, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DFB98  38 A5 00 3B */	addi r5, r5, 0x3b
/* 801DFB9C  4C C6 31 82 */	crclr 6
/* 801DFBA0  48 12 0B AD */	bl setString__10J2DTextBoxFsPCce
/* 801DFBA4  4B E3 4F FD */	bl mDoExt_getSubFont__Fv
/* 801DFBA8  7C 64 1B 78 */	mr r4, r3
/* 801DFBAC  7F 03 C3 78 */	mr r3, r24
/* 801DFBB0  81 98 00 00 */	lwz r12, 0(r24)
/* 801DFBB4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFBB8  7D 89 03 A6 */	mtctr r12
/* 801DFBBC  4E 80 04 21 */	bctrl 
/* 801DFBC0  88 9F 03 74 */	lbz r4, 0x374(r31)
/* 801DFBC4  88 7F 03 6F */	lbz r3, 0x36f(r31)
/* 801DFBC8  38 03 00 01 */	addi r0, r3, 1
/* 801DFBCC  1C 00 00 64 */	mulli r0, r0, 0x64
/* 801DFBD0  7C 04 02 14 */	add r0, r4, r0
/* 801DFBD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801DFBD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801DFBDC  90 03 5E 0C */	stw r0, 0x5e0c(r3)
/* 801DFBE0  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 801DFBE4  38 80 04 D6 */	li r4, 0x4d6
/* 801DFBE8  7F 05 C3 78 */	mr r5, r24
/* 801DFBEC  38 C0 00 00 */	li r6, 0
/* 801DFBF0  38 E0 00 00 */	li r7, 0
/* 801DFBF4  39 00 00 00 */	li r8, 0
/* 801DFBF8  39 20 00 00 */	li r9, 0
/* 801DFBFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFC00  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DFC04  7D 89 03 A6 */	mtctr r12
/* 801DFC08  4E 80 04 21 */	bctrl 
/* 801DFC0C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFC10  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657831@ha */
/* 801DFC14  38 C4 78 31 */	addi r6, r4, 0x7831 /* 0x74657831@l */
/* 801DFC18  3C 80 66 77 */	lis r4, 0x6677 /* 0x66777073@ha */
/* 801DFC1C  38 A4 70 73 */	addi r5, r4, 0x7073 /* 0x66777073@l */
/* 801DFC20  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFC24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFC28  7D 89 03 A6 */	mtctr r12
/* 801DFC2C  4E 80 04 21 */	bctrl 
/* 801DFC30  7C 7C 1B 78 */	mr r28, r3
/* 801DFC34  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFC38  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657831@ha */
/* 801DFC3C  38 C4 78 31 */	addi r6, r4, 0x7831 /* 0x74657831@l */
/* 801DFC40  3C 80 66 77 */	lis r4, 0x6677 /* 0x6677705F@ha */
/* 801DFC44  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6677705F@l */
/* 801DFC48  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFC4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFC50  7D 89 03 A6 */	mtctr r12
/* 801DFC54  4E 80 04 21 */	bctrl 
/* 801DFC58  7C 7B 1B 78 */	mr r27, r3
/* 801DFC5C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFC60  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F747831@ha */
/* 801DFC64  38 C4 78 31 */	addi r6, r4, 0x7831 /* 0x5F747831@l */
/* 801DFC68  3C 80 66 67 */	lis r4, 0x6667 /* 0x66677073@ha */
/* 801DFC6C  38 A4 70 73 */	addi r5, r4, 0x7073 /* 0x66677073@l */
/* 801DFC70  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFC74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFC78  7D 89 03 A6 */	mtctr r12
/* 801DFC7C  4E 80 04 21 */	bctrl 
/* 801DFC80  7C 7A 1B 78 */	mr r26, r3
/* 801DFC84  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFC88  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657831@ha */
/* 801DFC8C  38 C4 78 31 */	addi r6, r4, 0x7831 /* 0x74657831@l */
/* 801DFC90  3C 80 66 67 */	lis r4, 0x6667 /* 0x6667705F@ha */
/* 801DFC94  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x6667705F@l */
/* 801DFC98  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFC9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFCA0  7D 89 03 A6 */	mtctr r12
/* 801DFCA4  4E 80 04 21 */	bctrl 
/* 801DFCA8  7C 7D 1B 78 */	mr r29, r3
/* 801DFCAC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFCB0  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657874@ha */
/* 801DFCB4  38 C4 78 74 */	addi r6, r4, 0x7874 /* 0x74657874@l */
/* 801DFCB8  3C 80 77 70 */	lis r4, 0x7770 /* 0x7770735F@ha */
/* 801DFCBC  38 A4 73 5F */	addi r5, r4, 0x735F /* 0x7770735F@l */
/* 801DFCC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFCC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFCC8  7D 89 03 A6 */	mtctr r12
/* 801DFCCC  4E 80 04 21 */	bctrl 
/* 801DFCD0  38 00 00 00 */	li r0, 0
/* 801DFCD4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DFCD8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFCDC  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657874@ha */
/* 801DFCE0  38 C4 78 74 */	addi r6, r4, 0x7874 /* 0x74657874@l */
/* 801DFCE4  3C 80 77 5F */	lis r4, 0x775F /* 0x775F705F@ha */
/* 801DFCE8  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x775F705F@l */
/* 801DFCEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFCF0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFCF4  7D 89 03 A6 */	mtctr r12
/* 801DFCF8  4E 80 04 21 */	bctrl 
/* 801DFCFC  38 00 00 00 */	li r0, 0
/* 801DFD00  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DFD04  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFD08  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F747874@ha */
/* 801DFD0C  38 C4 78 74 */	addi r6, r4, 0x7874 /* 0x5F747874@l */
/* 801DFD10  3C 80 67 5F */	lis r4, 0x675F /* 0x675F7073@ha */
/* 801DFD14  38 A4 70 73 */	addi r5, r4, 0x7073 /* 0x675F7073@l */
/* 801DFD18  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFD1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFD20  7D 89 03 A6 */	mtctr r12
/* 801DFD24  4E 80 04 21 */	bctrl 
/* 801DFD28  38 00 00 00 */	li r0, 0
/* 801DFD2C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DFD30  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFD34  3C 80 74 65 */	lis r4, 0x7465 /* 0x74657874@ha */
/* 801DFD38  38 C4 78 74 */	addi r6, r4, 0x7874 /* 0x74657874@l */
/* 801DFD3C  3C 80 67 5F */	lis r4, 0x675F /* 0x675F705F@ha */
/* 801DFD40  38 A4 70 5F */	addi r5, r4, 0x705F /* 0x675F705F@l */
/* 801DFD44  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFD48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFD4C  7D 89 03 A6 */	mtctr r12
/* 801DFD50  4E 80 04 21 */	bctrl 
/* 801DFD54  38 00 00 00 */	li r0, 0
/* 801DFD58  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DFD5C  7F 83 E3 78 */	mr r3, r28
/* 801DFD60  38 80 00 40 */	li r4, 0x40
/* 801DFD64  3C A0 80 39 */	lis r5, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DFD68  38 A5 6D C0 */	addi r5, r5, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DFD6C  38 A5 00 3B */	addi r5, r5, 0x3b
/* 801DFD70  4C C6 31 82 */	crclr 6
/* 801DFD74  48 12 09 D9 */	bl setString__10J2DTextBoxFsPCce
/* 801DFD78  7F 63 DB 78 */	mr r3, r27
/* 801DFD7C  38 80 00 40 */	li r4, 0x40
/* 801DFD80  3C A0 80 39 */	lis r5, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DFD84  38 A5 6D C0 */	addi r5, r5, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DFD88  38 A5 00 3B */	addi r5, r5, 0x3b
/* 801DFD8C  4C C6 31 82 */	crclr 6
/* 801DFD90  48 12 09 BD */	bl setString__10J2DTextBoxFsPCce
/* 801DFD94  7F 43 D3 78 */	mr r3, r26
/* 801DFD98  38 80 00 40 */	li r4, 0x40
/* 801DFD9C  3C A0 80 39 */	lis r5, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DFDA0  38 A5 6D C0 */	addi r5, r5, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DFDA4  38 A5 00 3B */	addi r5, r5, 0x3b
/* 801DFDA8  4C C6 31 82 */	crclr 6
/* 801DFDAC  48 12 09 A1 */	bl setString__10J2DTextBoxFsPCce
/* 801DFDB0  7F A3 EB 78 */	mr r3, r29
/* 801DFDB4  38 80 00 40 */	li r4, 0x40
/* 801DFDB8  3C A0 80 39 */	lis r5, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DFDBC  38 A5 6D C0 */	addi r5, r5, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DFDC0  38 A5 00 3B */	addi r5, r5, 0x3b
/* 801DFDC4  4C C6 31 82 */	crclr 6
/* 801DFDC8  48 12 09 85 */	bl setString__10J2DTextBoxFsPCce
/* 801DFDCC  4B E3 4C 25 */	bl mDoExt_getMesgFont__Fv
/* 801DFDD0  7C 64 1B 78 */	mr r4, r3
/* 801DFDD4  7F 83 E3 78 */	mr r3, r28
/* 801DFDD8  81 9C 00 00 */	lwz r12, 0(r28)
/* 801DFDDC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFDE0  7D 89 03 A6 */	mtctr r12
/* 801DFDE4  4E 80 04 21 */	bctrl 
/* 801DFDE8  4B E3 4C 09 */	bl mDoExt_getMesgFont__Fv
/* 801DFDEC  7C 64 1B 78 */	mr r4, r3
/* 801DFDF0  7F 63 DB 78 */	mr r3, r27
/* 801DFDF4  81 9B 00 00 */	lwz r12, 0(r27)
/* 801DFDF8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFDFC  7D 89 03 A6 */	mtctr r12
/* 801DFE00  4E 80 04 21 */	bctrl 
/* 801DFE04  4B E3 4B ED */	bl mDoExt_getMesgFont__Fv
/* 801DFE08  7C 64 1B 78 */	mr r4, r3
/* 801DFE0C  7F 43 D3 78 */	mr r3, r26
/* 801DFE10  81 9A 00 00 */	lwz r12, 0(r26)
/* 801DFE14  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFE18  7D 89 03 A6 */	mtctr r12
/* 801DFE1C  4E 80 04 21 */	bctrl 
/* 801DFE20  4B E3 4B D1 */	bl mDoExt_getMesgFont__Fv
/* 801DFE24  7C 64 1B 78 */	mr r4, r3
/* 801DFE28  7F A3 EB 78 */	mr r3, r29
/* 801DFE2C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801DFE30  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFE34  7D 89 03 A6 */	mtctr r12
/* 801DFE38  4E 80 04 21 */	bctrl 
/* 801DFE3C  7F 83 E3 78 */	mr r3, r28
/* 801DFE40  48 12 08 19 */	bl getStringPtr__10J2DTextBoxCFv
/* 801DFE44  7C 65 1B 78 */	mr r5, r3
/* 801DFE48  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DFE4C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801DFE50  38 80 04 D7 */	li r4, 0x4d7
/* 801DFE54  38 C0 00 00 */	li r6, 0
/* 801DFE58  48 03 C6 ED */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DFE5C  7F 63 DB 78 */	mr r3, r27
/* 801DFE60  48 12 07 F9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801DFE64  7C 65 1B 78 */	mr r5, r3
/* 801DFE68  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DFE6C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801DFE70  38 80 04 D7 */	li r4, 0x4d7
/* 801DFE74  38 C0 00 00 */	li r6, 0
/* 801DFE78  48 03 C6 CD */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DFE7C  7F 43 D3 78 */	mr r3, r26
/* 801DFE80  48 12 07 D9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801DFE84  7C 65 1B 78 */	mr r5, r3
/* 801DFE88  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DFE8C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801DFE90  38 80 04 D7 */	li r4, 0x4d7
/* 801DFE94  38 C0 00 00 */	li r6, 0
/* 801DFE98  48 03 C6 AD */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DFE9C  7F A3 EB 78 */	mr r3, r29
/* 801DFEA0  48 12 07 B9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801DFEA4  7C 65 1B 78 */	mr r5, r3
/* 801DFEA8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801DFEAC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801DFEB0  38 80 04 D7 */	li r4, 0x4d7
/* 801DFEB4  38 C0 00 00 */	li r6, 0
/* 801DFEB8  48 03 C6 8D */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801DFEBC  4B E3 4B 35 */	bl mDoExt_getMesgFont__Fv
/* 801DFEC0  7C 78 1B 78 */	mr r24, r3
/* 801DFEC4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFEC8  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3030@ha */
/* 801DFECC  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6F5F3030@l */
/* 801DFED0  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801DFED4  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801DFED8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFEDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFEE0  7D 89 03 A6 */	mtctr r12
/* 801DFEE4  4E 80 04 21 */	bctrl 
/* 801DFEE8  7F 04 C3 78 */	mr r4, r24
/* 801DFEEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFEF0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFEF4  7D 89 03 A6 */	mtctr r12
/* 801DFEF8  4E 80 04 21 */	bctrl 
/* 801DFEFC  4B E3 4A F5 */	bl mDoExt_getMesgFont__Fv
/* 801DFF00  7C 78 1B 78 */	mr r24, r3
/* 801DFF04  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFF08  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3031@ha */
/* 801DFF0C  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x6F5F3031@l */
/* 801DFF10  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801DFF14  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801DFF18  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFF1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFF20  7D 89 03 A6 */	mtctr r12
/* 801DFF24  4E 80 04 21 */	bctrl 
/* 801DFF28  7F 04 C3 78 */	mr r4, r24
/* 801DFF2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFF30  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFF34  7D 89 03 A6 */	mtctr r12
/* 801DFF38  4E 80 04 21 */	bctrl 
/* 801DFF3C  4B E3 4A B5 */	bl mDoExt_getMesgFont__Fv
/* 801DFF40  7C 78 1B 78 */	mr r24, r3
/* 801DFF44  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFF48  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3032@ha */
/* 801DFF4C  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x6F5F3032@l */
/* 801DFF50  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801DFF54  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801DFF58  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFF5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFF60  7D 89 03 A6 */	mtctr r12
/* 801DFF64  4E 80 04 21 */	bctrl 
/* 801DFF68  7F 04 C3 78 */	mr r4, r24
/* 801DFF6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFF70  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFF74  7D 89 03 A6 */	mtctr r12
/* 801DFF78  4E 80 04 21 */	bctrl 
/* 801DFF7C  4B E3 4A 75 */	bl mDoExt_getMesgFont__Fv
/* 801DFF80  7C 78 1B 78 */	mr r24, r3
/* 801DFF84  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFF88  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3033@ha */
/* 801DFF8C  38 C4 30 33 */	addi r6, r4, 0x3033 /* 0x6F5F3033@l */
/* 801DFF90  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801DFF94  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801DFF98  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFF9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFFA0  7D 89 03 A6 */	mtctr r12
/* 801DFFA4  4E 80 04 21 */	bctrl 
/* 801DFFA8  7F 04 C3 78 */	mr r4, r24
/* 801DFFAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFFB0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFFB4  7D 89 03 A6 */	mtctr r12
/* 801DFFB8  4E 80 04 21 */	bctrl 
/* 801DFFBC  4B E3 4A 35 */	bl mDoExt_getMesgFont__Fv
/* 801DFFC0  7C 78 1B 78 */	mr r24, r3
/* 801DFFC4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DFFC8  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3034@ha */
/* 801DFFCC  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x6F5F3034@l */
/* 801DFFD0  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801DFFD4  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801DFFD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFFDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DFFE0  7D 89 03 A6 */	mtctr r12
/* 801DFFE4  4E 80 04 21 */	bctrl 
/* 801DFFE8  7F 04 C3 78 */	mr r4, r24
/* 801DFFEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFFF0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DFFF4  7D 89 03 A6 */	mtctr r12
/* 801DFFF8  4E 80 04 21 */	bctrl 
/* 801DFFFC  4B E3 49 F5 */	bl mDoExt_getMesgFont__Fv
/* 801E0000  7C 78 1B 78 */	mr r24, r3
/* 801E0004  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E0008  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3035@ha */
/* 801E000C  38 C4 30 35 */	addi r6, r4, 0x3035 /* 0x6F5F3035@l */
/* 801E0010  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801E0014  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801E0018  81 83 00 00 */	lwz r12, 0(r3)
/* 801E001C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0020  7D 89 03 A6 */	mtctr r12
/* 801E0024  4E 80 04 21 */	bctrl 
/* 801E0028  7F 04 C3 78 */	mr r4, r24
/* 801E002C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0030  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E0034  7D 89 03 A6 */	mtctr r12
/* 801E0038  4E 80 04 21 */	bctrl 
/* 801E003C  4B E3 49 B5 */	bl mDoExt_getMesgFont__Fv
/* 801E0040  7C 78 1B 78 */	mr r24, r3
/* 801E0044  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E0048  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3036@ha */
/* 801E004C  38 C4 30 36 */	addi r6, r4, 0x3036 /* 0x6F5F3036@l */
/* 801E0050  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801E0054  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801E0058  81 83 00 00 */	lwz r12, 0(r3)
/* 801E005C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0060  7D 89 03 A6 */	mtctr r12
/* 801E0064  4E 80 04 21 */	bctrl 
/* 801E0068  7F 04 C3 78 */	mr r4, r24
/* 801E006C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0070  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E0074  7D 89 03 A6 */	mtctr r12
/* 801E0078  4E 80 04 21 */	bctrl 
/* 801E007C  4B E3 49 75 */	bl mDoExt_getMesgFont__Fv
/* 801E0080  7C 78 1B 78 */	mr r24, r3
/* 801E0084  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E0088  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3037@ha */
/* 801E008C  38 C4 30 37 */	addi r6, r4, 0x3037 /* 0x6F5F3037@l */
/* 801E0090  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801E0094  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801E0098  81 83 00 00 */	lwz r12, 0(r3)
/* 801E009C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E00A0  7D 89 03 A6 */	mtctr r12
/* 801E00A4  4E 80 04 21 */	bctrl 
/* 801E00A8  7F 04 C3 78 */	mr r4, r24
/* 801E00AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E00B0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E00B4  7D 89 03 A6 */	mtctr r12
/* 801E00B8  4E 80 04 21 */	bctrl 
/* 801E00BC  4B E3 49 35 */	bl mDoExt_getMesgFont__Fv
/* 801E00C0  7C 78 1B 78 */	mr r24, r3
/* 801E00C4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E00C8  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F3038@ha */
/* 801E00CC  38 C4 30 38 */	addi r6, r4, 0x3038 /* 0x6F5F3038@l */
/* 801E00D0  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801E00D4  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x70695F6E@l */
/* 801E00D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E00DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E00E0  7D 89 03 A6 */	mtctr r12
/* 801E00E4  4E 80 04 21 */	bctrl 
/* 801E00E8  7F 04 C3 78 */	mr r4, r24
/* 801E00EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E00F0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E00F4  7D 89 03 A6 */	mtctr r12
/* 801E00F8  4E 80 04 21 */	bctrl 
/* 801E00FC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E0100  3C 80 61 72 */	lis r4, 0x6172 /* 0x61726561@ha */
/* 801E0104  38 C4 65 61 */	addi r6, r4, 0x6561 /* 0x61726561@l */
/* 801E0108  3C 80 6C 65 */	lis r4, 0x6C65 /* 0x6C65745F@ha */
/* 801E010C  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x6C65745F@l */
/* 801E0110  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0114  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0118  7D 89 03 A6 */	mtctr r12
/* 801E011C  4E 80 04 21 */	bctrl 
/* 801E0120  90 7F 01 EC */	stw r3, 0x1ec(r31)
/* 801E0124  3B 40 00 00 */	li r26, 0
/* 801E0128  3B 60 00 00 */	li r27, 0
/* 801E012C  3B 80 00 00 */	li r28, 0
/* 801E0130  3B BE 02 70 */	addi r29, r30, 0x270
/* 801E0134  3B 1E 02 B8 */	addi r24, r30, 0x2b8
/* 801E0138  3B 3E 03 00 */	addi r25, r30, 0x300
lbl_801E013C:
/* 801E013C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E0140  7C DD E2 14 */	add r6, r29, r28
/* 801E0144  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E0148  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E014C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0150  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0154  7D 89 03 A6 */	mtctr r12
/* 801E0158  4E 80 04 21 */	bctrl 
/* 801E015C  7F DF DA 14 */	add r30, r31, r27
/* 801E0160  90 7E 01 F0 */	stw r3, 0x1f0(r30)
/* 801E0164  88 1F 03 74 */	lbz r0, 0x374(r31)
/* 801E0168  28 00 00 01 */	cmplwi r0, 1
/* 801E016C  40 81 00 1C */	ble lbl_801E0188
/* 801E0170  7C 1A 00 00 */	cmpw r26, r0
/* 801E0174  40 80 00 14 */	bge lbl_801E0188
/* 801E0178  38 00 00 01 */	li r0, 1
/* 801E017C  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 801E0180  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E0184  48 00 00 10 */	b lbl_801E0194
lbl_801E0188:
/* 801E0188  38 00 00 00 */	li r0, 0
/* 801E018C  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 801E0190  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801E0194:
/* 801E0194  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E0198  7C D8 E2 14 */	add r6, r24, r28
/* 801E019C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E01A0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E01A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E01A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E01AC  7D 89 03 A6 */	mtctr r12
/* 801E01B0  4E 80 04 21 */	bctrl 
/* 801E01B4  90 7E 02 14 */	stw r3, 0x214(r30)
/* 801E01B8  88 1F 03 6F */	lbz r0, 0x36f(r31)
/* 801E01BC  7C 1A 00 00 */	cmpw r26, r0
/* 801E01C0  40 82 00 14 */	bne lbl_801E01D4
/* 801E01C4  38 00 00 01 */	li r0, 1
/* 801E01C8  80 7E 02 14 */	lwz r3, 0x214(r30)
/* 801E01CC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E01D0  48 00 00 10 */	b lbl_801E01E0
lbl_801E01D4:
/* 801E01D4  38 00 00 00 */	li r0, 0
/* 801E01D8  80 7E 02 14 */	lwz r3, 0x214(r30)
/* 801E01DC  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801E01E0:
/* 801E01E0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E01E4  7C D9 E2 14 */	add r6, r25, r28
/* 801E01E8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E01EC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E01F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E01F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E01F8  7D 89 03 A6 */	mtctr r12
/* 801E01FC  4E 80 04 21 */	bctrl 
/* 801E0200  90 7E 02 38 */	stw r3, 0x238(r30)
/* 801E0204  3B 5A 00 01 */	addi r26, r26, 1
/* 801E0208  2C 1A 00 09 */	cmpwi r26, 9
/* 801E020C  3B 7B 00 04 */	addi r27, r27, 4
/* 801E0210  3B 9C 00 08 */	addi r28, r28, 8
/* 801E0214  41 80 FF 28 */	blt lbl_801E013C
/* 801E0218  88 1F 03 74 */	lbz r0, 0x374(r31)
/* 801E021C  28 00 00 01 */	cmplwi r0, 1
/* 801E0220  40 81 00 E0 */	ble lbl_801E0300
/* 801E0224  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E0228  3C 80 70 69 */	lis r4, 0x7069 /* 0x70695F6E@ha */
/* 801E022C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x70695F6E@l */
/* 801E0230  38 A0 00 00 */	li r5, 0
/* 801E0234  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0238  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E023C  7D 89 03 A6 */	mtctr r12
/* 801E0240  4E 80 04 21 */	bctrl 
/* 801E0244  7C 7A 1B 78 */	mr r26, r3
/* 801E0248  80 7F 01 F0 */	lwz r3, 0x1f0(r31)
/* 801E024C  48 11 6E B5 */	bl getBounds__7J2DPaneFv
/* 801E0250  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801E0254  80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 801E0258  48 11 6E A9 */	bl getBounds__7J2DPaneFv
/* 801E025C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801E0260  EF C0 F8 28 */	fsubs f30, f0, f31
/* 801E0264  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 801E0268  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 801E026C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801E0270  C0 42 A9 18 */	lfs f2, lit_4308(r2)
/* 801E0274  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801E0278  88 7F 03 74 */	lbz r3, 0x374(r31)
/* 801E027C  38 03 FF FF */	addi r0, r3, -1
/* 801E0280  CB E2 A9 10 */	lfd f31, lit_4171(r2)
/* 801E0284  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E0288  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E028C  3F 60 43 30 */	lis r27, 0x4330
/* 801E0290  93 61 00 08 */	stw r27, 8(r1)
/* 801E0294  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E0298  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801E029C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801E02A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801E02A4  EF A1 00 28 */	fsubs f29, f1, f0
/* 801E02A8  3B 20 00 00 */	li r25, 0
/* 801E02AC  3B 40 00 00 */	li r26, 0
lbl_801E02B0:
/* 801E02B0  3B 1A 01 F0 */	addi r24, r26, 0x1f0
/* 801E02B4  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801E02B8  48 11 6E 49 */	bl getBounds__7J2DPaneFv
/* 801E02BC  C0 43 00 04 */	lfs f2, 4(r3)
/* 801E02C0  7C 7F C0 2E */	lwzx r3, r31, r24
/* 801E02C4  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 801E02C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E02CC  93 61 00 08 */	stw r27, 8(r1)
/* 801E02D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E02D4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801E02D8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801E02DC  EC 3D 00 2A */	fadds f1, f29, f0
/* 801E02E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E02E4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801E02E8  7D 89 03 A6 */	mtctr r12
/* 801E02EC  4E 80 04 21 */	bctrl 
/* 801E02F0  3B 39 00 01 */	addi r25, r25, 1
/* 801E02F4  2C 19 00 09 */	cmpwi r25, 9
/* 801E02F8  3B 5A 00 04 */	addi r26, r26, 4
/* 801E02FC  41 80 FF B4 */	blt lbl_801E02B0
lbl_801E0300:
/* 801E0300  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 801E0304  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801E0308  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 801E030C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801E0310  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 801E0314  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801E0318  39 61 00 30 */	addi r11, r1, 0x30
/* 801E031C  48 18 1E F9 */	bl _restgpr_24
/* 801E0320  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801E0324  7C 08 03 A6 */	mtlr r0
/* 801E0328  38 21 00 60 */	addi r1, r1, 0x60
/* 801E032C  4E 80 00 20 */	blr 
