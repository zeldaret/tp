lbl_80205834:
/* 80205834  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80205838  7C 08 02 A6 */	mflr r0
/* 8020583C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80205840  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80205844  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80205848  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8020584C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80205850  39 61 00 20 */	addi r11, r1, 0x20
/* 80205854  48 15 C9 7D */	bl _savegpr_26
/* 80205858  7C 7F 1B 78 */	mr r31, r3
/* 8020585C  38 60 01 18 */	li r3, 0x118
/* 80205860  48 0C 93 ED */	bl __nw__FUl
/* 80205864  7C 60 1B 79 */	or. r0, r3, r3
/* 80205868  41 82 00 0C */	beq lbl_80205874
/* 8020586C  48 0F 2C 2D */	bl __ct__9J2DScreenFv
/* 80205870  7C 60 1B 78 */	mr r0, r3
lbl_80205874:
/* 80205874  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80205878  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8020587C  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha /* 0x803980E8@ha */
/* 80205880  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l /* 0x803980E8@l */
/* 80205884  38 84 00 22 */	addi r4, r4, 0x22
/* 80205888  3C A0 00 02 */	lis r5, 2
/* 8020588C  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80205890  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80205894  80 C6 5C 70 */	lwz r6, 0x5c70(r6)
/* 80205898  48 0F 2D B1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8020589C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802058A0  48 04 F8 49 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 802058A4  38 60 00 6C */	li r3, 0x6c
/* 802058A8  48 0C 93 A5 */	bl __nw__FUl
/* 802058AC  7C 60 1B 79 */	or. r0, r3, r3
/* 802058B0  41 82 00 24 */	beq lbl_802058D4
/* 802058B4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802058B8  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 802058BC  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 802058C0  38 A0 00 6E */	li r5, 0x6e
/* 802058C4  38 E0 00 02 */	li r7, 2
/* 802058C8  39 00 00 00 */	li r8, 0
/* 802058CC  48 04 E0 B9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802058D0  7C 60 1B 78 */	mr r0, r3
lbl_802058D4:
/* 802058D4  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 802058D8  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 802058DC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802058E0  48 04 FE F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802058E4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802058E8  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 802058EC  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 802058F0  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 802058F4  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 802058F8  81 83 00 00 */	lwz r12, 0(r3)
/* 802058FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205900  7D 89 03 A6 */	mtctr r12
/* 80205904  4E 80 04 21 */	bctrl 
/* 80205908  48 0F 17 F9 */	bl getBounds__7J2DPaneFv
/* 8020590C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80205910  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80205914  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80205918  C0 03 02 CC */	lfs f0, 0x2cc(r3)
/* 8020591C  EF C0 08 2A */	fadds f30, f0, f1
/* 80205920  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80205924  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 80205928  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 8020592C  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 80205930  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 80205934  81 83 00 00 */	lwz r12, 0(r3)
/* 80205938  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020593C  7D 89 03 A6 */	mtctr r12
/* 80205940  4E 80 04 21 */	bctrl 
/* 80205944  48 0F 17 BD */	bl getBounds__7J2DPaneFv
/* 80205948  C0 23 00 00 */	lfs f1, 0(r3)
/* 8020594C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80205950  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80205954  C0 03 02 C8 */	lfs f0, 0x2c8(r3)
/* 80205958  EF E0 08 2A */	fadds f31, f0, f1
/* 8020595C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80205960  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 80205964  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 80205968  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 8020596C  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 80205970  81 83 00 00 */	lwz r12, 0(r3)
/* 80205974  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205978  7D 89 03 A6 */	mtctr r12
/* 8020597C  4E 80 04 21 */	bctrl 
/* 80205980  FC 20 F8 90 */	fmr f1, f31
/* 80205984  FC 40 F0 90 */	fmr f2, f30
/* 80205988  81 83 00 00 */	lwz r12, 0(r3)
/* 8020598C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80205990  7D 89 03 A6 */	mtctr r12
/* 80205994  4E 80 04 21 */	bctrl 
/* 80205998  38 60 00 6C */	li r3, 0x6c
/* 8020599C  48 0C 92 B1 */	bl __nw__FUl
/* 802059A0  7C 60 1B 79 */	or. r0, r3, r3
/* 802059A4  41 82 00 28 */	beq lbl_802059CC
/* 802059A8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802059AC  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 802059B0  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 802059B4  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 802059B8  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 802059BC  38 E0 00 00 */	li r7, 0
/* 802059C0  39 00 00 00 */	li r8, 0
/* 802059C4  48 04 DF C1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802059C8  7C 60 1B 78 */	mr r0, r3
lbl_802059CC:
/* 802059CC  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 802059D0  38 60 01 18 */	li r3, 0x118
/* 802059D4  48 0C 92 79 */	bl __nw__FUl
/* 802059D8  7C 60 1B 79 */	or. r0, r3, r3
/* 802059DC  41 82 00 0C */	beq lbl_802059E8
/* 802059E0  48 0F 2A B9 */	bl __ct__9J2DScreenFv
/* 802059E4  7C 60 1B 78 */	mr r0, r3
lbl_802059E8:
/* 802059E8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802059EC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802059F0  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha /* 0x803980E8@ha */
/* 802059F4  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l /* 0x803980E8@l */
/* 802059F8  38 84 00 3F */	addi r4, r4, 0x3f
/* 802059FC  3C A0 00 02 */	lis r5, 2
/* 80205A00  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80205A04  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80205A08  80 C6 5C E4 */	lwz r6, 0x5ce4(r6)
/* 80205A0C  48 0F 2C 3D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80205A10  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80205A14  48 04 F6 D5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80205A18  38 60 00 6C */	li r3, 0x6c
/* 80205A1C  48 0C 92 31 */	bl __nw__FUl
/* 80205A20  7C 60 1B 79 */	or. r0, r3, r3
/* 80205A24  41 82 00 28 */	beq lbl_80205A4C
/* 80205A28  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80205A2C  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 80205A30  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 80205A34  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 80205A38  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 80205A3C  38 E0 00 00 */	li r7, 0
/* 80205A40  39 00 00 00 */	li r8, 0
/* 80205A44  48 04 DF 41 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80205A48  7C 60 1B 78 */	mr r0, r3
lbl_80205A4C:
/* 80205A4C  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 80205A50  38 60 00 6C */	li r3, 0x6c
/* 80205A54  48 0C 91 F9 */	bl __nw__FUl
/* 80205A58  7C 60 1B 79 */	or. r0, r3, r3
/* 80205A5C  41 82 00 28 */	beq lbl_80205A84
/* 80205A60  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80205A64  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 80205A68  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 80205A6C  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 80205A70  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 80205A74  38 E0 00 00 */	li r7, 0
/* 80205A78  39 00 00 00 */	li r8, 0
/* 80205A7C  48 04 DF 09 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80205A80  7C 60 1B 78 */	mr r0, r3
lbl_80205A84:
/* 80205A84  90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 80205A88  38 60 00 6C */	li r3, 0x6c
/* 80205A8C  48 0C 91 C1 */	bl __nw__FUl
/* 80205A90  7C 60 1B 79 */	or. r0, r3, r3
/* 80205A94  41 82 00 24 */	beq lbl_80205AB8
/* 80205A98  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80205A9C  3C A0 74 34 */	lis r5, 0x7434 /* 0x74345F73@ha */
/* 80205AA0  38 C5 5F 73 */	addi r6, r5, 0x5F73 /* 0x74345F73@l */
/* 80205AA4  38 A0 00 00 */	li r5, 0
/* 80205AA8  38 E0 00 00 */	li r7, 0
/* 80205AAC  39 00 00 00 */	li r8, 0
/* 80205AB0  48 04 DE D5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80205AB4  7C 60 1B 78 */	mr r0, r3
lbl_80205AB8:
/* 80205AB8  90 1F 00 E8 */	stw r0, 0xe8(r31)
/* 80205ABC  38 00 00 00 */	li r0, 0
/* 80205AC0  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80205AC4  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 80205AC8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80205ACC  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80205AD0  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80205AD4  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 80205AD8  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 80205ADC  81 83 00 00 */	lwz r12, 0(r3)
/* 80205AE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205AE4  7D 89 03 A6 */	mtctr r12
/* 80205AE8  4E 80 04 21 */	bctrl 
/* 80205AEC  38 00 00 00 */	li r0, 0
/* 80205AF0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80205AF4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80205AF8  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80205AFC  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80205B00  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 80205B04  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 80205B08  81 83 00 00 */	lwz r12, 0(r3)
/* 80205B0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205B10  7D 89 03 A6 */	mtctr r12
/* 80205B14  4E 80 04 21 */	bctrl 
/* 80205B18  38 00 00 00 */	li r0, 0
/* 80205B1C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80205B20  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80205B24  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80205B28  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80205B2C  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 80205B30  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 80205B34  81 83 00 00 */	lwz r12, 0(r3)
/* 80205B38  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80205B3C  7D 89 03 A6 */	mtctr r12
/* 80205B40  4E 80 04 21 */	bctrl 
/* 80205B44  38 00 00 01 */	li r0, 1
/* 80205B48  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80205B4C  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 80205B50  80 63 00 04 */	lwz r3, 4(r3)
/* 80205B54  C3 C3 01 18 */	lfs f30, 0x118(r3)
/* 80205B58  3B C0 00 00 */	li r30, 0
/* 80205B5C  3B A0 00 00 */	li r29, 0
/* 80205B60  3C 60 80 3A */	lis r3, d_meter_d_meter_button__stringBase0@ha /* 0x803980E8@ha */
/* 80205B64  3B 83 80 E8 */	addi r28, r3, d_meter_d_meter_button__stringBase0@l /* 0x803980E8@l */
lbl_80205B68:
/* 80205B68  7F 5F EA 14 */	add r26, r31, r29
/* 80205B6C  80 7A 00 E4 */	lwz r3, 0xe4(r26)
/* 80205B70  83 63 00 04 */	lwz r27, 4(r3)
/* 80205B74  4B E0 EE 7D */	bl mDoExt_getMesgFont__Fv
/* 80205B78  7C 64 1B 78 */	mr r4, r3
/* 80205B7C  7F 63 DB 78 */	mr r3, r27
/* 80205B80  81 9B 00 00 */	lwz r12, 0(r27)
/* 80205B84  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80205B88  7D 89 03 A6 */	mtctr r12
/* 80205B8C  4E 80 04 21 */	bctrl 
/* 80205B90  80 7A 00 E4 */	lwz r3, 0xe4(r26)
/* 80205B94  80 63 00 04 */	lwz r3, 4(r3)
/* 80205B98  38 80 02 00 */	li r4, 0x200
/* 80205B9C  38 BC 00 21 */	addi r5, r28, 0x21
/* 80205BA0  4C C6 31 82 */	crclr 6
/* 80205BA4  48 0F AB A9 */	bl setString__10J2DTextBoxFsPCce
/* 80205BA8  80 7A 00 EC */	lwz r3, 0xec(r26)
/* 80205BAC  28 03 00 00 */	cmplwi r3, 0
/* 80205BB0  41 82 00 50 */	beq lbl_80205C00
/* 80205BB4  83 63 00 04 */	lwz r27, 4(r3)
/* 80205BB8  4B E0 EE 39 */	bl mDoExt_getMesgFont__Fv
/* 80205BBC  7C 64 1B 78 */	mr r4, r3
/* 80205BC0  7F 63 DB 78 */	mr r3, r27
/* 80205BC4  81 9B 00 00 */	lwz r12, 0(r27)
/* 80205BC8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80205BCC  7D 89 03 A6 */	mtctr r12
/* 80205BD0  4E 80 04 21 */	bctrl 
/* 80205BD4  80 7A 00 EC */	lwz r3, 0xec(r26)
/* 80205BD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80205BDC  38 80 02 00 */	li r4, 0x200
/* 80205BE0  3C A0 80 3A */	lis r5, d_meter_d_meter_button__stringBase0@ha /* 0x803980E8@ha */
/* 80205BE4  38 A5 80 E8 */	addi r5, r5, d_meter_d_meter_button__stringBase0@l /* 0x803980E8@l */
/* 80205BE8  38 A5 00 21 */	addi r5, r5, 0x21
/* 80205BEC  4C C6 31 82 */	crclr 6
/* 80205BF0  48 0F AB 5D */	bl setString__10J2DTextBoxFsPCce
/* 80205BF4  80 7A 00 EC */	lwz r3, 0xec(r26)
/* 80205BF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80205BFC  D3 C3 01 18 */	stfs f30, 0x118(r3)
lbl_80205C00:
/* 80205C00  3B DE 00 01 */	addi r30, r30, 1
/* 80205C04  2C 1E 00 02 */	cmpwi r30, 2
/* 80205C08  3B BD 00 04 */	addi r29, r29, 4
/* 80205C0C  41 80 FF 5C */	blt lbl_80205B68
/* 80205C10  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80205C14  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80205C18  B0 1F 04 B2 */	sth r0, 0x4b2(r31)
/* 80205C1C  38 00 00 00 */	li r0, 0
/* 80205C20  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80205C24  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80205C28  38 60 00 2C */	li r3, 0x2c
/* 80205C2C  48 0C 90 21 */	bl __nw__FUl
/* 80205C30  7C 60 1B 79 */	or. r0, r3, r3
/* 80205C34  41 82 00 0C */	beq lbl_80205C40
/* 80205C38  48 04 3F E9 */	bl __ct__12dMsgString_cFv
/* 80205C3C  7C 60 1B 78 */	mr r0, r3
lbl_80205C40:
/* 80205C40  90 1F 00 04 */	stw r0, 4(r31)
/* 80205C44  38 60 02 44 */	li r3, 0x244
/* 80205C48  48 0C 90 05 */	bl __nw__FUl
/* 80205C4C  7C 60 1B 79 */	or. r0, r3, r3
/* 80205C50  41 82 00 10 */	beq lbl_80205C60
/* 80205C54  38 80 00 00 */	li r4, 0
/* 80205C58  48 02 00 3D */	bl __ct__10COutFont_cFUc
/* 80205C5C  7C 60 1B 78 */	mr r0, r3
lbl_80205C60:
/* 80205C60  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 80205C64  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80205C68  81 83 00 00 */	lwz r12, 0(r3)
/* 80205C6C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80205C70  7D 89 03 A6 */	mtctr r12
/* 80205C74  4E 80 04 21 */	bctrl 
/* 80205C78  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80205C7C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80205C80  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80205C84  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80205C88  39 61 00 20 */	addi r11, r1, 0x20
/* 80205C8C  48 15 C5 91 */	bl _restgpr_26
/* 80205C90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80205C94  7C 08 03 A6 */	mtlr r0
/* 80205C98  38 21 00 40 */	addi r1, r1, 0x40
/* 80205C9C  4E 80 00 20 */	blr 
