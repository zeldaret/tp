lbl_801B27EC:
/* 801B27EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B27F0  7C 08 02 A6 */	mflr r0
/* 801B27F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B27F8  39 61 00 30 */	addi r11, r1, 0x30
/* 801B27FC  48 1A F9 DD */	bl _savegpr_28
/* 801B2800  7C 7F 1B 78 */	mr r31, r3
/* 801B2804  3B A0 00 00 */	li r29, 0
/* 801B2808  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801B280C  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l
lbl_801B2810:
/* 801B2810  3B 80 00 00 */	li r28, 0
lbl_801B2814:
/* 801B2814  7F E3 FB 78 */	mr r3, r31
/* 801B2818  7F A4 EB 78 */	mr r4, r29
/* 801B281C  7F 85 E3 78 */	mr r5, r28
/* 801B2820  38 C0 00 01 */	li r6, 1
/* 801B2824  48 00 1E D9 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B2828  38 00 00 00 */	li r0, 0
/* 801B282C  7C 84 02 78 */	xor r4, r4, r0
/* 801B2830  7C 60 02 78 */	xor r0, r3, r0
/* 801B2834  7C 80 03 79 */	or. r0, r4, r0
/* 801B2838  41 82 01 08 */	beq lbl_801B2940
/* 801B283C  7F E3 FB 78 */	mr r3, r31
/* 801B2840  7F A4 EB 78 */	mr r4, r29
/* 801B2844  7F 85 E3 78 */	mr r5, r28
/* 801B2848  38 C0 00 01 */	li r6, 1
/* 801B284C  48 00 1E B1 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B2850  7C 65 1B 78 */	mr r5, r3
/* 801B2854  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B2858  7C 86 23 78 */	mr r6, r4
/* 801B285C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B2860  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B2864  7D 89 03 A6 */	mtctr r12
/* 801B2868  4E 80 04 21 */	bctrl 
/* 801B286C  2C 1D 00 00 */	cmpwi r29, 0
/* 801B2870  40 82 00 0C */	bne lbl_801B287C
/* 801B2874  2C 1C 00 00 */	cmpwi r28, 0
/* 801B2878  41 82 00 C8 */	beq lbl_801B2940
lbl_801B287C:
/* 801B287C  2C 1D 00 06 */	cmpwi r29, 6
/* 801B2880  40 82 00 0C */	bne lbl_801B288C
/* 801B2884  2C 1C 00 00 */	cmpwi r28, 0
/* 801B2888  41 82 00 B8 */	beq lbl_801B2940
lbl_801B288C:
/* 801B288C  2C 1C 00 05 */	cmpwi r28, 5
/* 801B2890  40 82 00 5C */	bne lbl_801B28EC
/* 801B2894  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B2898  7C 1D 00 00 */	cmpw r29, r0
/* 801B289C  40 82 00 30 */	bne lbl_801B28CC
/* 801B28A0  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B28A4  7C 1C 00 00 */	cmpw r28, r0
/* 801B28A8  40 82 00 24 */	bne lbl_801B28CC
/* 801B28AC  C0 1E 06 2C */	lfs f0, 0x62c(r30)
/* 801B28B0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B28B4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B28B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B28BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B28C0  7D 89 03 A6 */	mtctr r12
/* 801B28C4  4E 80 04 21 */	bctrl 
/* 801B28C8  48 00 00 78 */	b lbl_801B2940
lbl_801B28CC:
/* 801B28CC  C0 1E 06 28 */	lfs f0, 0x628(r30)
/* 801B28D0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B28D4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B28D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B28DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B28E0  7D 89 03 A6 */	mtctr r12
/* 801B28E4  4E 80 04 21 */	bctrl 
/* 801B28E8  48 00 00 58 */	b lbl_801B2940
lbl_801B28EC:
/* 801B28EC  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B28F0  7C 1D 00 00 */	cmpw r29, r0
/* 801B28F4  40 82 00 30 */	bne lbl_801B2924
/* 801B28F8  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B28FC  7C 1C 00 00 */	cmpw r28, r0
/* 801B2900  40 82 00 24 */	bne lbl_801B2924
/* 801B2904  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 801B2908  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B290C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B2910  81 83 00 00 */	lwz r12, 0(r3)
/* 801B2914  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B2918  7D 89 03 A6 */	mtctr r12
/* 801B291C  4E 80 04 21 */	bctrl 
/* 801B2920  48 00 00 20 */	b lbl_801B2940
lbl_801B2924:
/* 801B2924  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 801B2928  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B292C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B2930  81 83 00 00 */	lwz r12, 0(r3)
/* 801B2934  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B2938  7D 89 03 A6 */	mtctr r12
/* 801B293C  4E 80 04 21 */	bctrl 
lbl_801B2940:
/* 801B2940  3B 9C 00 01 */	addi r28, r28, 1
/* 801B2944  2C 1C 00 06 */	cmpwi r28, 6
/* 801B2948  41 80 FE CC */	blt lbl_801B2814
/* 801B294C  3B BD 00 01 */	addi r29, r29, 1
/* 801B2950  2C 1D 00 07 */	cmpwi r29, 7
/* 801B2954  41 80 FE BC */	blt lbl_801B2810
/* 801B2958  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B295C  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2960  4B FE 29 41 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801B2964  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B2968  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801B296C  7C 7F 02 14 */	add r3, r31, r0
/* 801B2970  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B2974  54 00 10 3A */	slwi r0, r0, 2
/* 801B2978  7C 63 02 14 */	add r3, r3, r0
/* 801B297C  80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 801B2980  38 61 00 08 */	addi r3, r1, 8
/* 801B2984  80 A4 00 04 */	lwz r5, 4(r4)
/* 801B2988  38 C0 00 00 */	li r6, 0
/* 801B298C  38 E0 00 00 */	li r7, 0
/* 801B2990  48 0A 25 2D */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801B2994  80 61 00 08 */	lwz r3, 8(r1)
/* 801B2998  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B299C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801B29A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801B29A4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801B29A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B29AC  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B29B0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801B29B4  7C 7F 02 14 */	add r3, r31, r0
/* 801B29B8  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B29BC  54 00 10 3A */	slwi r0, r0, 2
/* 801B29C0  7C 63 02 14 */	add r3, r3, r0
/* 801B29C4  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 801B29C8  80 83 00 04 */	lwz r4, 4(r3)
/* 801B29CC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B29D0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801B29D4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801B29D8  38 A0 00 00 */	li r5, 0
/* 801B29DC  4B FE 27 19 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801B29E0  88 7F 02 58 */	lbz r3, 0x258(r31)
/* 801B29E4  28 03 00 05 */	cmplwi r3, 5
/* 801B29E8  40 82 00 24 */	bne lbl_801B2A0C
/* 801B29EC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B29F0  C0 22 A5 64 */	lfs f1, lit_5611(r2)
/* 801B29F4  C0 42 A5 68 */	lfs f2, lit_5612(r2)
/* 801B29F8  C0 62 A5 6C */	lfs f3, lit_5613(r2)
/* 801B29FC  C0 82 A5 30 */	lfs f4, lit_5173(r2)
/* 801B2A00  FC A0 20 90 */	fmr f5, f4
/* 801B2A04  4B FE 27 AD */	bl setParam__16dSelect_cursor_cFfffff
/* 801B2A08  48 00 00 54 */	b lbl_801B2A5C
lbl_801B2A0C:
/* 801B2A0C  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B2A10  28 00 00 06 */	cmplwi r0, 6
/* 801B2A14  40 82 00 2C */	bne lbl_801B2A40
/* 801B2A18  28 03 00 00 */	cmplwi r3, 0
/* 801B2A1C  40 82 00 24 */	bne lbl_801B2A40
/* 801B2A20  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B2A24  C0 22 A5 70 */	lfs f1, lit_5614(r2)
/* 801B2A28  C0 42 A5 68 */	lfs f2, lit_5612(r2)
/* 801B2A2C  C0 62 A5 74 */	lfs f3, lit_5615(r2)
/* 801B2A30  FC 80 08 90 */	fmr f4, f1
/* 801B2A34  FC A0 08 90 */	fmr f5, f1
/* 801B2A38  4B FE 27 79 */	bl setParam__16dSelect_cursor_cFfffff
/* 801B2A3C  48 00 00 20 */	b lbl_801B2A5C
lbl_801B2A40:
/* 801B2A40  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B2A44  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2A48  FC 40 08 90 */	fmr f2, f1
/* 801B2A4C  C0 62 A5 78 */	lfs f3, lit_5616(r2)
/* 801B2A50  C0 82 A5 7C */	lfs f4, lit_5617(r2)
/* 801B2A54  FC A0 20 90 */	fmr f5, f4
/* 801B2A58  4B FE 27 59 */	bl setParam__16dSelect_cursor_cFfffff
lbl_801B2A5C:
/* 801B2A5C  39 61 00 30 */	addi r11, r1, 0x30
/* 801B2A60  48 1A F7 C5 */	bl _restgpr_28
/* 801B2A64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B2A68  7C 08 03 A6 */	mtlr r0
/* 801B2A6C  38 21 00 30 */	addi r1, r1, 0x30
/* 801B2A70  4E 80 00 20 */	blr 
