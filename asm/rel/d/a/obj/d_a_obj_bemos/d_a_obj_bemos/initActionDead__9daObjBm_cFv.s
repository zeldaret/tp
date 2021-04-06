lbl_80BB248C:
/* 80BB248C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB2490  7C 08 02 A6 */	mflr r0
/* 80BB2494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB2498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB249C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB24A0  7C 7F 1B 78 */	mr r31, r3
/* 80BB24A4  A8 03 0F 96 */	lha r0, 0xf96(r3)
/* 80BB24A8  2C 00 C0 00 */	cmpwi r0, -16384
/* 80BB24AC  40 81 00 18 */	ble lbl_80BB24C4
/* 80BB24B0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80BB24B4  40 80 00 10 */	bge lbl_80BB24C4
/* 80BB24B8  38 00 00 00 */	li r0, 0
/* 80BB24BC  B0 1F 0F 98 */	sth r0, 0xf98(r31)
/* 80BB24C0  48 00 00 0C */	b lbl_80BB24CC
lbl_80BB24C4:
/* 80BB24C4  38 00 7F FF */	li r0, 0x7fff
/* 80BB24C8  B0 1F 0F 98 */	sth r0, 0xf98(r31)
lbl_80BB24CC:
/* 80BB24CC  38 00 00 00 */	li r0, 0
/* 80BB24D0  B0 1F 0F AA */	sth r0, 0xfaa(r31)
/* 80BB24D4  B0 1F 0F AC */	sth r0, 0xfac(r31)
/* 80BB24D8  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB24DC  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB24E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB24E4  38 80 00 0A */	li r4, 0xa
/* 80BB24E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB24EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB24F0  3F C5 00 02 */	addis r30, r5, 2
/* 80BB24F4  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BB24F8  7F C5 F3 78 */	mr r5, r30
/* 80BB24FC  38 C0 00 80 */	li r6, 0x80
/* 80BB2500  4B 48 9D ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB2504  7C 64 1B 78 */	mr r4, r3
/* 80BB2508  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80BB250C  38 A0 00 01 */	li r5, 1
/* 80BB2510  38 C0 00 00 */	li r6, 0
/* 80BB2514  3C E0 80 BB */	lis r7, lit_4250@ha /* 0x80BB3830@ha */
/* 80BB2518  C0 27 38 30 */	lfs f1, lit_4250@l(r7)  /* 0x80BB3830@l */
/* 80BB251C  38 E0 00 00 */	li r7, 0
/* 80BB2520  39 00 FF FF */	li r8, -1
/* 80BB2524  39 20 00 01 */	li r9, 1
/* 80BB2528  4B 45 B2 B5 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BB252C  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB2530  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB2534  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB2538  38 80 00 19 */	li r4, 0x19
/* 80BB253C  7F C5 F3 78 */	mr r5, r30
/* 80BB2540  38 C0 00 80 */	li r6, 0x80
/* 80BB2544  4B 48 9D A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB2548  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80BB254C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80BB2550  7C 00 18 40 */	cmplw r0, r3
/* 80BB2554  40 82 00 50 */	bne lbl_80BB25A4
/* 80BB2558  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB255C  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB2560  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB2564  38 80 00 1A */	li r4, 0x1a
/* 80BB2568  7F C5 F3 78 */	mr r5, r30
/* 80BB256C  38 C0 00 80 */	li r6, 0x80
/* 80BB2570  4B 48 9D 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB2574  7C 65 1B 78 */	mr r5, r3
/* 80BB2578  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BB257C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB2580  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80BB2584  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB2588  38 C0 00 01 */	li r6, 1
/* 80BB258C  38 E0 00 00 */	li r7, 0
/* 80BB2590  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BB2594  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BB2598  39 00 00 00 */	li r8, 0
/* 80BB259C  39 20 FF FF */	li r9, -1
/* 80BB25A0  4B 45 B0 9D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
lbl_80BB25A4:
/* 80BB25A4  38 00 00 14 */	li r0, 0x14
/* 80BB25A8  98 1F 10 38 */	stb r0, 0x1038(r31)
/* 80BB25AC  38 60 00 00 */	li r3, 0
/* 80BB25B0  38 00 00 02 */	li r0, 2
/* 80BB25B4  7C 09 03 A6 */	mtctr r0
lbl_80BB25B8:
/* 80BB25B8  7C BF 1A 14 */	add r5, r31, r3
/* 80BB25BC  80 85 10 18 */	lwz r4, 0x1018(r5)
/* 80BB25C0  28 04 00 00 */	cmplwi r4, 0
/* 80BB25C4  41 82 00 30 */	beq lbl_80BB25F4
/* 80BB25C8  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB25CC  60 00 00 01 */	ori r0, r0, 1
/* 80BB25D0  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB25D4  38 00 00 01 */	li r0, 1
/* 80BB25D8  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BB25DC  80 85 10 18 */	lwz r4, 0x1018(r5)
/* 80BB25E0  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB25E4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB25E8  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB25EC  38 00 00 00 */	li r0, 0
/* 80BB25F0  90 05 10 18 */	stw r0, 0x1018(r5)
lbl_80BB25F4:
/* 80BB25F4  80 85 10 10 */	lwz r4, 0x1010(r5)
/* 80BB25F8  28 04 00 00 */	cmplwi r4, 0
/* 80BB25FC  41 82 00 30 */	beq lbl_80BB262C
/* 80BB2600  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB2604  60 00 00 01 */	ori r0, r0, 1
/* 80BB2608  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB260C  38 00 00 01 */	li r0, 1
/* 80BB2610  90 04 00 24 */	stw r0, 0x24(r4)
/* 80BB2614  80 85 10 10 */	lwz r4, 0x1010(r5)
/* 80BB2618  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80BB261C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2620  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80BB2624  38 00 00 00 */	li r0, 0
/* 80BB2628  90 05 10 10 */	stw r0, 0x1010(r5)
lbl_80BB262C:
/* 80BB262C  38 63 00 04 */	addi r3, r3, 4
/* 80BB2630  42 00 FF 88 */	bdnz lbl_80BB25B8
/* 80BB2634  38 60 00 00 */	li r3, 0
/* 80BB2638  38 C0 00 01 */	li r6, 1
/* 80BB263C  38 80 00 00 */	li r4, 0
/* 80BB2640  38 00 00 03 */	li r0, 3
/* 80BB2644  7C 09 03 A6 */	mtctr r0
lbl_80BB2648:
/* 80BB2648  38 E3 10 20 */	addi r7, r3, 0x1020
/* 80BB264C  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB2650  28 05 00 00 */	cmplwi r5, 0
/* 80BB2654  41 82 00 28 */	beq lbl_80BB267C
/* 80BB2658  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB265C  60 00 00 01 */	ori r0, r0, 1
/* 80BB2660  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB2664  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BB2668  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB266C  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB2670  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB2674  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB2678  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80BB267C:
/* 80BB267C  38 63 00 04 */	addi r3, r3, 4
/* 80BB2680  42 00 FF C8 */	bdnz lbl_80BB2648
/* 80BB2684  80 7F 10 34 */	lwz r3, 0x1034(r31)
/* 80BB2688  28 03 00 00 */	cmplwi r3, 0
/* 80BB268C  41 82 00 30 */	beq lbl_80BB26BC
/* 80BB2690  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB2694  60 00 00 01 */	ori r0, r0, 1
/* 80BB2698  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB269C  38 00 00 01 */	li r0, 1
/* 80BB26A0  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB26A4  80 7F 10 34 */	lwz r3, 0x1034(r31)
/* 80BB26A8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB26AC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB26B0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB26B4  38 00 00 00 */	li r0, 0
/* 80BB26B8  90 1F 10 34 */	stw r0, 0x1034(r31)
lbl_80BB26BC:
/* 80BB26BC  38 00 00 14 */	li r0, 0x14
/* 80BB26C0  98 1F 0F E5 */	stb r0, 0xfe5(r31)
/* 80BB26C4  38 60 00 00 */	li r3, 0
/* 80BB26C8  98 7F 0F E9 */	stb r3, 0xfe9(r31)
/* 80BB26CC  98 7F 0F F7 */	stb r3, 0xff7(r31)
/* 80BB26D0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80BB26D4  54 00 00 3E */	slwi r0, r0, 0
/* 80BB26D8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80BB26DC  98 7F 0F EA */	stb r3, 0xfea(r31)
/* 80BB26E0  38 00 00 04 */	li r0, 4
/* 80BB26E4  98 1F 0F E4 */	stb r0, 0xfe4(r31)
/* 80BB26E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB26EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB26F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB26F4  7C 08 03 A6 */	mtlr r0
/* 80BB26F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB26FC  4E 80 00 20 */	blr 
