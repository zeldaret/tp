lbl_801BAB10:
/* 801BAB10  94 21 FD 30 */	stwu r1, -0x2d0(r1)
/* 801BAB14  7C 08 02 A6 */	mflr r0
/* 801BAB18  90 01 02 D4 */	stw r0, 0x2d4(r1)
/* 801BAB1C  DB E1 02 C0 */	stfd f31, 0x2c0(r1)
/* 801BAB20  F3 E1 02 C8 */	psq_st f31, 712(r1), 0, 0 /* qr0 */
/* 801BAB24  DB C1 02 B0 */	stfd f30, 0x2b0(r1)
/* 801BAB28  F3 C1 02 B8 */	psq_st f30, 696(r1), 0, 0 /* qr0 */
/* 801BAB2C  DB A1 02 A0 */	stfd f29, 0x2a0(r1)
/* 801BAB30  F3 A1 02 A8 */	psq_st f29, 680(r1), 0, 0 /* qr0 */
/* 801BAB34  DB 81 02 90 */	stfd f28, 0x290(r1)
/* 801BAB38  F3 81 02 98 */	psq_st f28, 664(r1), 0, 0 /* qr0 */
/* 801BAB3C  39 61 02 90 */	addi r11, r1, 0x290
/* 801BAB40  48 1A 76 9D */	bl _savegpr_29
/* 801BAB44  7C 7E 1B 78 */	mr r30, r3
/* 801BAB48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801BAB4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801BAB50  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801BAB54  7F E3 FB 78 */	mr r3, r31
/* 801BAB58  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BAB5C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801BAB60  7D 89 03 A6 */	mtctr r12
/* 801BAB64  4E 80 04 21 */	bctrl 
/* 801BAB68  38 61 00 24 */	addi r3, r1, 0x24
/* 801BAB6C  38 81 00 20 */	addi r4, r1, 0x20
/* 801BAB70  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801BAB74  38 C1 00 18 */	addi r6, r1, 0x18
/* 801BAB78  48 1A 59 D1 */	bl GXGetScissor
/* 801BAB7C  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BAB80  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 801BAB84  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BAB88  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801BAB8C  C0 02 A6 24 */	lfs f0, lit_4784(r2)
/* 801BAB90  EC 01 00 2A */	fadds f0, f1, f0
/* 801BAB94  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 801BAB98  C0 02 A6 28 */	lfs f0, lit_4785(r2)
/* 801BAB9C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 801BABA0  7F E3 FB 78 */	mr r3, r31
/* 801BABA4  38 81 00 88 */	addi r4, r1, 0x88
/* 801BABA8  48 12 E5 19 */	bl func_802E90C0
/* 801BABAC  7F E3 FB 78 */	mr r3, r31
/* 801BABB0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BABB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801BABB8  7D 89 03 A6 */	mtctr r12
/* 801BABBC  4E 80 04 21 */	bctrl 
/* 801BABC0  80 7E 0C A4 */	lwz r3, 0xca4(r30)
/* 801BABC4  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BABC8  C0 5E 0D 98 */	lfs f2, 0xd98(r30)
/* 801BABCC  7F E4 FB 78 */	mr r4, r31
/* 801BABD0  48 13 E3 05 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801BABD4  80 6D 8B 00 */	lwz r3, myclass__12dMenu_Dmap_c(r13)
/* 801BABD8  80 9E 0C BC */	lwz r4, 0xcbc(r30)
/* 801BABDC  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BABE0  C0 5E 0D 98 */	lfs f2, 0xd98(r30)
/* 801BABE4  7F E5 FB 78 */	mr r5, r31
/* 801BABE8  48 00 27 D1 */	bl drawFloorScreenBack__12dMenu_Dmap_cFP9J2DScreenffP13J2DOrthoGraph
/* 801BABEC  80 7E 0C A8 */	lwz r3, 0xca8(r30)
/* 801BABF0  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BABF4  C0 5E 0D 98 */	lfs f2, 0xd98(r30)
/* 801BABF8  7F E4 FB 78 */	mr r4, r31
/* 801BABFC  48 13 E2 D9 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801BAC00  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 801BAC04  28 00 00 00 */	cmplwi r0, 0
/* 801BAC08  41 82 02 C8 */	beq lbl_801BAED0
/* 801BAC0C  80 7E 0C A8 */	lwz r3, 0xca8(r30)
/* 801BAC10  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801BAC14  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801BAC18  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801BAC1C  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801BAC20  81 83 00 00 */	lwz r12, 0(r3)
/* 801BAC24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BAC28  7D 89 03 A6 */	mtctr r12
/* 801BAC2C  4E 80 04 21 */	bctrl 
/* 801BAC30  7C 7D 1B 78 */	mr r29, r3
/* 801BAC34  38 61 01 DC */	addi r3, r1, 0x1dc
/* 801BAC38  48 09 8C F9 */	bl __ct__8CPaneMgrFv
/* 801BAC3C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801BAC40  38 81 01 DC */	addi r4, r1, 0x1dc
/* 801BAC44  7F A5 EB 78 */	mr r5, r29
/* 801BAC48  38 C1 01 40 */	addi r6, r1, 0x140
/* 801BAC4C  38 E0 00 00 */	li r7, 0
/* 801BAC50  39 00 00 00 */	li r8, 0
/* 801BAC54  39 20 00 00 */	li r9, 0
/* 801BAC58  48 09 A0 39 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801BAC5C  80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 801BAC60  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 801BAC64  90 61 01 04 */	stw r3, 0x104(r1)
/* 801BAC68  90 01 01 08 */	stw r0, 0x108(r1)
/* 801BAC6C  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 801BAC70  90 01 01 0C */	stw r0, 0x10c(r1)
/* 801BAC74  38 61 00 BC */	addi r3, r1, 0xbc
/* 801BAC78  38 81 01 DC */	addi r4, r1, 0x1dc
/* 801BAC7C  7F A5 EB 78 */	mr r5, r29
/* 801BAC80  38 C1 01 40 */	addi r6, r1, 0x140
/* 801BAC84  38 E0 00 03 */	li r7, 3
/* 801BAC88  39 00 00 00 */	li r8, 0
/* 801BAC8C  39 20 00 00 */	li r9, 0
/* 801BAC90  48 09 A0 01 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801BAC94  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 801BAC98  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 801BAC9C  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 801BACA0  90 01 00 FC */	stw r0, 0xfc(r1)
/* 801BACA4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801BACA8  90 01 01 00 */	stw r0, 0x100(r1)
/* 801BACAC  C0 A1 01 08 */	lfs f5, 0x108(r1)
/* 801BACB0  C0 42 A5 EC */	lfs f2, lit_3963(r2)
/* 801BACB4  EC 05 10 24 */	fdivs f0, f5, f2
/* 801BACB8  EC 80 10 24 */	fdivs f4, f0, f2
/* 801BACBC  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 801BACC0  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BACC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801BACC8  EC 60 10 24 */	fdivs f3, f0, f2
/* 801BACCC  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 801BACD0  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 801BACD4  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 801BACD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BACDC  EC 00 10 24 */	fdivs f0, f0, f2
/* 801BACE0  EC 03 00 2A */	fadds f0, f3, f0
/* 801BACE4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801BACE8  C0 22 A6 2C */	lfs f1, lit_4786(r2)
/* 801BACEC  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 801BACF0  EC 00 28 28 */	fsubs f0, f0, f5
/* 801BACF4  EC 01 00 2A */	fadds f0, f1, f0
/* 801BACF8  EC 04 00 2A */	fadds f0, f4, f0
/* 801BACFC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801BAD00  7F E3 FB 78 */	mr r3, r31
/* 801BAD04  38 81 00 78 */	addi r4, r1, 0x78
/* 801BAD08  48 12 E3 B9 */	bl func_802E90C0
/* 801BAD0C  7F E3 FB 78 */	mr r3, r31
/* 801BAD10  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BAD14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801BAD18  7D 89 03 A6 */	mtctr r12
/* 801BAD1C  4E 80 04 21 */	bctrl 
/* 801BAD20  88 1E 0D 8C */	lbz r0, 0xd8c(r30)
/* 801BAD24  C8 22 A6 38 */	lfd f1, lit_4790(r2)
/* 801BAD28  90 01 02 4C */	stw r0, 0x24c(r1)
/* 801BAD2C  3C 00 43 30 */	lis r0, 0x4330
/* 801BAD30  90 01 02 48 */	stw r0, 0x248(r1)
/* 801BAD34  C8 01 02 48 */	lfd f0, 0x248(r1)
/* 801BAD38  EC 20 08 28 */	fsubs f1, f0, f1
/* 801BAD3C  C0 02 A6 20 */	lfs f0, lit_4643(r2)
/* 801BAD40  EC 41 00 24 */	fdivs f2, f1, f0
/* 801BAD44  38 00 FF FF */	li r0, -1
/* 801BAD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BAD4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BAD50  88 9E 0D 93 */	lbz r4, 0xd93(r30)
/* 801BAD54  88 7E 0D 92 */	lbz r3, 0xd92(r30)
/* 801BAD58  88 1E 0D 91 */	lbz r0, 0xd91(r30)
/* 801BAD5C  98 01 00 14 */	stb r0, 0x14(r1)
/* 801BAD60  98 61 00 15 */	stb r3, 0x15(r1)
/* 801BAD64  98 81 00 16 */	stb r4, 0x16(r1)
/* 801BAD68  38 60 00 FF */	li r3, 0xff
/* 801BAD6C  98 61 00 17 */	stb r3, 0x17(r1)
/* 801BAD70  88 BE 0D 8F */	lbz r5, 0xd8f(r30)
/* 801BAD74  88 9E 0D 8E */	lbz r4, 0xd8e(r30)
/* 801BAD78  88 1E 0D 8D */	lbz r0, 0xd8d(r30)
/* 801BAD7C  98 01 00 10 */	stb r0, 0x10(r1)
/* 801BAD80  98 81 00 11 */	stb r4, 0x11(r1)
/* 801BAD84  98 A1 00 12 */	stb r5, 0x12(r1)
/* 801BAD88  98 61 00 13 */	stb r3, 0x13(r1)
/* 801BAD8C  80 7E 0D 24 */	lwz r3, 0xd24(r30)
/* 801BAD90  C0 3E 0D BC */	lfs f1, 0xdbc(r30)
/* 801BAD94  C0 1E 0D 9C */	lfs f0, 0xd9c(r30)
/* 801BAD98  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BAD9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801BADA0  FC 00 00 1E */	fctiwz f0, f0
/* 801BADA4  D8 01 02 50 */	stfd f0, 0x250(r1)
/* 801BADA8  80 81 02 54 */	lwz r4, 0x254(r1)
/* 801BADAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801BADB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801BADB4  7D 89 03 A6 */	mtctr r12
/* 801BADB8  4E 80 04 21 */	bctrl 
/* 801BADBC  80 7E 0D 24 */	lwz r3, 0xd24(r30)
/* 801BADC0  48 13 C3 41 */	bl getBounds__7J2DPaneFv
/* 801BADC4  C3 C3 00 00 */	lfs f30, 0(r3)
/* 801BADC8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BADCC  90 01 00 08 */	stw r0, 8(r1)
/* 801BADD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BADD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BADD8  80 7E 0D 24 */	lwz r3, 0xd24(r30)
/* 801BADDC  38 81 00 0C */	addi r4, r1, 0xc
/* 801BADE0  38 A1 00 08 */	addi r5, r1, 8
/* 801BADE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BADE8  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801BADEC  7D 89 03 A6 */	mtctr r12
/* 801BADF0  4E 80 04 21 */	bctrl 
/* 801BADF4  80 7E 0D 24 */	lwz r3, 0xd24(r30)
/* 801BADF8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801BADFC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801BAE00  EF 81 00 28 */	fsubs f28, f1, f0
/* 801BAE04  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 801BAE08  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801BAE0C  EF A1 00 28 */	fsubs f29, f1, f0
/* 801BAE10  48 13 C2 F1 */	bl getBounds__7J2DPaneFv
/* 801BAE14  C0 23 00 04 */	lfs f1, 4(r3)
/* 801BAE18  C0 1E 0D 94 */	lfs f0, 0xd94(r30)
/* 801BAE1C  EC 40 08 2A */	fadds f2, f0, f1
/* 801BAE20  80 7E 0D 24 */	lwz r3, 0xd24(r30)
/* 801BAE24  FC 20 F0 90 */	fmr f1, f30
/* 801BAE28  FC 60 E8 90 */	fmr f3, f29
/* 801BAE2C  FC 80 E0 90 */	fmr f4, f28
/* 801BAE30  38 80 00 00 */	li r4, 0
/* 801BAE34  38 A0 00 00 */	li r5, 0
/* 801BAE38  38 C0 00 00 */	li r6, 0
/* 801BAE3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BAE40  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801BAE44  7D 89 03 A6 */	mtctr r12
/* 801BAE48  4E 80 04 21 */	bctrl 
/* 801BAE4C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801BAE50  C8 42 A6 38 */	lfd f2, lit_4790(r2)
/* 801BAE54  90 01 02 5C */	stw r0, 0x25c(r1)
/* 801BAE58  3C 60 43 30 */	lis r3, 0x4330
/* 801BAE5C  90 61 02 58 */	stw r3, 0x258(r1)
/* 801BAE60  C8 01 02 58 */	lfd f0, 0x258(r1)
/* 801BAE64  EC 60 10 28 */	fsubs f3, f0, f2
/* 801BAE68  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BAE6C  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BAE70  EC 21 00 2A */	fadds f1, f1, f0
/* 801BAE74  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801BAE78  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 801BAE7C  C0 02 A6 24 */	lfs f0, lit_4784(r2)
/* 801BAE80  EC 01 00 2A */	fadds f0, f1, f0
/* 801BAE84  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801BAE88  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801BAE8C  90 01 02 64 */	stw r0, 0x264(r1)
/* 801BAE90  90 61 02 60 */	stw r3, 0x260(r1)
/* 801BAE94  C8 01 02 60 */	lfd f0, 0x260(r1)
/* 801BAE98  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BAE9C  EC 03 00 2A */	fadds f0, f3, f0
/* 801BAEA0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801BAEA4  7F E3 FB 78 */	mr r3, r31
/* 801BAEA8  38 81 00 68 */	addi r4, r1, 0x68
/* 801BAEAC  48 12 E2 15 */	bl func_802E90C0
/* 801BAEB0  7F E3 FB 78 */	mr r3, r31
/* 801BAEB4  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BAEB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801BAEBC  7D 89 03 A6 */	mtctr r12
/* 801BAEC0  4E 80 04 21 */	bctrl 
/* 801BAEC4  38 61 01 DC */	addi r3, r1, 0x1dc
/* 801BAEC8  38 80 FF FF */	li r4, -1
/* 801BAECC  48 09 8B 4D */	bl __dt__8CPaneMgrFv
lbl_801BAED0:
/* 801BAED0  80 7E 0C AC */	lwz r3, 0xcac(r30)
/* 801BAED4  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BAED8  C0 5E 0D 98 */	lfs f2, 0xd98(r30)
/* 801BAEDC  7F E4 FB 78 */	mr r4, r31
/* 801BAEE0  48 13 DF F5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801BAEE4  80 7E 0C AC */	lwz r3, 0xcac(r30)
/* 801BAEE8  3C 80 65 72 */	lis r4, 0x6572 /* 0x65725F6E@ha */
/* 801BAEEC  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x65725F6E@l */
/* 801BAEF0  3C 80 63 65 */	lis r4, 0x6365 /* 0x63656E74@ha */
/* 801BAEF4  38 A4 6E 74 */	addi r5, r4, 0x6E74 /* 0x63656E74@l */
/* 801BAEF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BAEFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BAF00  7D 89 03 A6 */	mtctr r12
/* 801BAF04  4E 80 04 21 */	bctrl 
/* 801BAF08  7C 7D 1B 78 */	mr r29, r3
/* 801BAF0C  38 61 01 70 */	addi r3, r1, 0x170
/* 801BAF10  48 09 8A 21 */	bl __ct__8CPaneMgrFv
/* 801BAF14  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801BAF18  38 81 01 70 */	addi r4, r1, 0x170
/* 801BAF1C  7F A5 EB 78 */	mr r5, r29
/* 801BAF20  38 C1 01 10 */	addi r6, r1, 0x110
/* 801BAF24  38 E0 00 00 */	li r7, 0
/* 801BAF28  39 00 00 00 */	li r8, 0
/* 801BAF2C  39 20 00 00 */	li r9, 0
/* 801BAF30  48 09 9D 61 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801BAF34  80 61 00 B0 */	lwz r3, 0xb0(r1)
/* 801BAF38  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801BAF3C  90 61 00 EC */	stw r3, 0xec(r1)
/* 801BAF40  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 801BAF44  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 801BAF48  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801BAF4C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801BAF50  38 81 01 70 */	addi r4, r1, 0x170
/* 801BAF54  7F A5 EB 78 */	mr r5, r29
/* 801BAF58  38 C1 01 10 */	addi r6, r1, 0x110
/* 801BAF5C  38 E0 00 03 */	li r7, 3
/* 801BAF60  39 00 00 00 */	li r8, 0
/* 801BAF64  39 20 00 00 */	li r9, 0
/* 801BAF68  48 09 9D 29 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801BAF6C  80 61 00 A4 */	lwz r3, 0xa4(r1)
/* 801BAF70  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 801BAF74  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 801BAF78  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801BAF7C  80 01 00 AC */	lwz r0, 0xac(r1)
/* 801BAF80  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 801BAF84  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 801BAF88  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BAF8C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801BAF90  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BAF94  EC 60 08 24 */	fdivs f3, f0, f1
/* 801BAF98  C3 E1 00 F0 */	lfs f31, 0xf0(r1)
/* 801BAF9C  EC 1F 08 24 */	fdivs f0, f31, f1
/* 801BAFA0  EC 80 08 24 */	fdivs f4, f0, f1
/* 801BAFA4  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 801BAFA8  D0 81 00 5C */	stfs f4, 0x5c(r1)
/* 801BAFAC  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 801BAFB0  EF A0 10 28 */	fsubs f29, f0, f2
/* 801BAFB4  EC 1D 08 24 */	fdivs f0, f29, f1
/* 801BAFB8  EC 03 00 2A */	fadds f0, f3, f0
/* 801BAFBC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801BAFC0  C0 02 A6 2C */	lfs f0, lit_4786(r2)
/* 801BAFC4  C3 81 00 E4 */	lfs f28, 0xe4(r1)
/* 801BAFC8  EF DC F8 28 */	fsubs f30, f28, f31
/* 801BAFCC  EC 00 F0 2A */	fadds f0, f0, f30
/* 801BAFD0  EC 04 00 2A */	fadds f0, f4, f0
/* 801BAFD4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801BAFD8  7F E3 FB 78 */	mr r3, r31
/* 801BAFDC  38 81 00 58 */	addi r4, r1, 0x58
/* 801BAFE0  48 12 E0 E1 */	bl func_802E90C0
/* 801BAFE4  7F E3 FB 78 */	mr r3, r31
/* 801BAFE8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BAFEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801BAFF0  7D 89 03 A6 */	mtctr r12
/* 801BAFF4  4E 80 04 21 */	bctrl 
/* 801BAFF8  38 61 00 98 */	addi r3, r1, 0x98
/* 801BAFFC  38 81 01 70 */	addi r4, r1, 0x170
/* 801BB000  80 BE 0C C4 */	lwz r5, 0xcc4(r30)
/* 801BB004  38 C1 01 10 */	addi r6, r1, 0x110
/* 801BB008  38 E0 00 00 */	li r7, 0
/* 801BB00C  39 00 00 00 */	li r8, 0
/* 801BB010  39 20 00 00 */	li r9, 0
/* 801BB014  48 09 9C 7D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 801BB018  80 61 00 98 */	lwz r3, 0x98(r1)
/* 801BB01C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 801BB020  90 61 00 D4 */	stw r3, 0xd4(r1)
/* 801BB024  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 801BB028  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801BB02C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801BB030  38 7E 00 04 */	addi r3, r30, 4
/* 801BB034  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 801BB038  C0 1E 0D 94 */	lfs f0, 0xd94(r30)
/* 801BB03C  EC 21 00 2A */	fadds f1, f1, f0
/* 801BB040  C0 41 00 D8 */	lfs f2, 0xd8(r1)
/* 801BB044  C0 7E 0D A8 */	lfs f3, 0xda8(r30)
/* 801BB048  C0 82 A5 EC */	lfs f4, lit_3963(r2)
/* 801BB04C  48 00 88 99 */	bl drawIcon__16dMenuMapCommon_cFffff
/* 801BB050  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801BB054  C8 42 A6 38 */	lfd f2, lit_4790(r2)
/* 801BB058  90 01 02 64 */	stw r0, 0x264(r1)
/* 801BB05C  3C 60 43 30 */	lis r3, 0x4330
/* 801BB060  90 61 02 60 */	stw r3, 0x260(r1)
/* 801BB064  C8 01 02 60 */	lfd f0, 0x260(r1)
/* 801BB068  EC 60 10 28 */	fsubs f3, f0, f2
/* 801BB06C  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BB070  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BB074  EC 21 00 2A */	fadds f1, f1, f0
/* 801BB078  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801BB07C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801BB080  C0 02 A6 24 */	lfs f0, lit_4784(r2)
/* 801BB084  EC 01 00 2A */	fadds f0, f1, f0
/* 801BB088  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801BB08C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801BB090  90 01 02 5C */	stw r0, 0x25c(r1)
/* 801BB094  90 61 02 58 */	stw r3, 0x258(r1)
/* 801BB098  C8 01 02 58 */	lfd f0, 0x258(r1)
/* 801BB09C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BB0A0  EC 03 00 2A */	fadds f0, f3, f0
/* 801BB0A4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801BB0A8  7F E3 FB 78 */	mr r3, r31
/* 801BB0AC  38 81 00 48 */	addi r4, r1, 0x48
/* 801BB0B0  48 12 E0 11 */	bl func_802E90C0
/* 801BB0B4  7F E3 FB 78 */	mr r3, r31
/* 801BB0B8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BB0BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801BB0C0  7D 89 03 A6 */	mtctr r12
/* 801BB0C4  4E 80 04 21 */	bctrl 
/* 801BB0C8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801BB0CC  C8 22 A6 38 */	lfd f1, lit_4790(r2)
/* 801BB0D0  90 01 02 54 */	stw r0, 0x254(r1)
/* 801BB0D4  3C 60 43 30 */	lis r3, 0x4330
/* 801BB0D8  90 61 02 50 */	stw r3, 0x250(r1)
/* 801BB0DC  C8 01 02 50 */	lfd f0, 0x250(r1)
/* 801BB0E0  EC 60 08 28 */	fsubs f3, f0, f1
/* 801BB0E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BB0E8  90 01 02 4C */	stw r0, 0x24c(r1)
/* 801BB0EC  90 61 02 48 */	stw r3, 0x248(r1)
/* 801BB0F0  C8 01 02 48 */	lfd f0, 0x248(r1)
/* 801BB0F4  EC 40 08 28 */	fsubs f2, f0, f1
/* 801BB0F8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801BB0FC  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801BB100  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801BB104  90 01 02 6C */	stw r0, 0x26c(r1)
/* 801BB108  90 61 02 68 */	stw r3, 0x268(r1)
/* 801BB10C  C8 01 02 68 */	lfd f0, 0x268(r1)
/* 801BB110  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BB114  EC 02 00 2A */	fadds f0, f2, f0
/* 801BB118  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801BB11C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801BB120  90 01 02 74 */	stw r0, 0x274(r1)
/* 801BB124  90 61 02 70 */	stw r3, 0x270(r1)
/* 801BB128  C8 01 02 70 */	lfd f0, 0x270(r1)
/* 801BB12C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BB130  EC 03 00 2A */	fadds f0, f3, f0
/* 801BB134  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801BB138  7F E3 FB 78 */	mr r3, r31
/* 801BB13C  38 81 00 38 */	addi r4, r1, 0x38
/* 801BB140  48 12 DF 81 */	bl func_802E90C0
/* 801BB144  7F E3 FB 78 */	mr r3, r31
/* 801BB148  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BB14C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801BB150  7D 89 03 A6 */	mtctr r12
/* 801BB154  4E 80 04 21 */	bctrl 
/* 801BB158  88 1E 0D DA */	lbz r0, 0xdda(r30)
/* 801BB15C  28 00 00 00 */	cmplwi r0, 0
/* 801BB160  41 82 00 60 */	beq lbl_801BB1C0
/* 801BB164  80 7E 0D 30 */	lwz r3, 0xd30(r30)
/* 801BB168  28 03 00 00 */	cmplwi r3, 0
/* 801BB16C  41 82 00 54 */	beq lbl_801BB1C0
/* 801BB170  C0 22 A6 30 */	lfs f1, lit_4787(r2)
/* 801BB174  48 05 0A AD */	bl setScale__14dMeterHaihai_cFf
/* 801BB178  80 7E 0D 30 */	lwz r3, 0xd30(r30)
/* 801BB17C  88 9E 0D DA */	lbz r4, 0xdda(r30)
/* 801BB180  C0 62 A5 E8 */	lfs f3, lit_3962(r2)
/* 801BB184  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 801BB188  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 801BB18C  EC 01 00 2A */	fadds f0, f1, f0
/* 801BB190  C0 42 A6 0C */	lfs f2, lit_4249(r2)
/* 801BB194  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801BB198  EC 23 00 2A */	fadds f1, f3, f0
/* 801BB19C  EC 1C F8 2A */	fadds f0, f28, f31
/* 801BB1A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801BB1A4  EC 43 00 2A */	fadds f2, f3, f0
/* 801BB1A8  C0 02 A6 34 */	lfs f0, lit_4788(r2)
/* 801BB1AC  EC 60 E8 2A */	fadds f3, f0, f29
/* 801BB1B0  EC 80 F0 2A */	fadds f4, f0, f30
/* 801BB1B4  48 05 06 61 */	bl drawHaihai__14dMeterHaihai_cFUcffff
/* 801BB1B8  38 00 00 00 */	li r0, 0
/* 801BB1BC  98 1E 0D DA */	stb r0, 0xdda(r30)
lbl_801BB1C0:
/* 801BB1C0  80 6D 8B 00 */	lwz r3, myclass__12dMenu_Dmap_c(r13)
/* 801BB1C4  80 9E 0C BC */	lwz r4, 0xcbc(r30)
/* 801BB1C8  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BB1CC  C0 5E 0D 98 */	lfs f2, 0xd98(r30)
/* 801BB1D0  7F E5 FB 78 */	mr r5, r31
/* 801BB1D4  48 00 23 51 */	bl drawFloorScreenTop__12dMenu_Dmap_cFP9J2DScreenffP13J2DOrthoGraph
/* 801BB1D8  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801BB1DC  C0 1E 0D 94 */	lfs f0, 0xd94(r30)
/* 801BB1E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801BB1E4  40 82 00 18 */	bne lbl_801BB1FC
/* 801BB1E8  C0 1E 0D 98 */	lfs f0, 0xd98(r30)
/* 801BB1EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801BB1F0  40 82 00 0C */	bne lbl_801BB1FC
/* 801BB1F4  7F C3 F3 78 */	mr r3, r30
/* 801BB1F8  48 00 02 71 */	bl drawCursor__14dMenu_DmapBg_cFv
lbl_801BB1FC:
/* 801BB1FC  80 7E 0C B8 */	lwz r3, 0xcb8(r30)
/* 801BB200  28 03 00 00 */	cmplwi r3, 0
/* 801BB204  41 82 00 14 */	beq lbl_801BB218
/* 801BB208  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BB20C  C0 5E 0D 98 */	lfs f2, 0xd98(r30)
/* 801BB210  7F E4 FB 78 */	mr r4, r31
/* 801BB214  48 13 DC C1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801BB218:
/* 801BB218  88 1E 0D D0 */	lbz r0, 0xdd0(r30)
/* 801BB21C  28 00 00 00 */	cmplwi r0, 0
/* 801BB220  41 82 00 18 */	beq lbl_801BB238
/* 801BB224  80 7E 0D 18 */	lwz r3, 0xd18(r30)
/* 801BB228  28 03 00 00 */	cmplwi r3, 0
/* 801BB22C  41 82 00 0C */	beq lbl_801BB238
/* 801BB230  7F E4 FB 78 */	mr r4, r31
/* 801BB234  48 02 02 E1 */	bl draw__19dMenu_ItemExplain_cFP13J2DOrthoGraph
lbl_801BB238:
/* 801BB238  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801BB23C  C0 3E 0D 94 */	lfs f1, 0xd94(r30)
/* 801BB240  C0 5E 0D 98 */	lfs f2, 0xd98(r30)
/* 801BB244  7F E4 FB 78 */	mr r4, r31
/* 801BB248  48 13 DC 8D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801BB24C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801BB250  C8 22 A6 38 */	lfd f1, lit_4790(r2)
/* 801BB254  90 01 02 74 */	stw r0, 0x274(r1)
/* 801BB258  3C 60 43 30 */	lis r3, 0x4330
/* 801BB25C  90 61 02 70 */	stw r3, 0x270(r1)
/* 801BB260  C8 01 02 70 */	lfd f0, 0x270(r1)
/* 801BB264  EC 60 08 28 */	fsubs f3, f0, f1
/* 801BB268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BB26C  90 01 02 6C */	stw r0, 0x26c(r1)
/* 801BB270  90 61 02 68 */	stw r3, 0x268(r1)
/* 801BB274  C8 01 02 68 */	lfd f0, 0x268(r1)
/* 801BB278  EC 40 08 28 */	fsubs f2, f0, f1
/* 801BB27C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801BB280  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 801BB284  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801BB288  90 01 02 64 */	stw r0, 0x264(r1)
/* 801BB28C  90 61 02 60 */	stw r3, 0x260(r1)
/* 801BB290  C8 01 02 60 */	lfd f0, 0x260(r1)
/* 801BB294  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BB298  EC 02 00 2A */	fadds f0, f2, f0
/* 801BB29C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801BB2A0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801BB2A4  90 01 02 5C */	stw r0, 0x25c(r1)
/* 801BB2A8  90 61 02 58 */	stw r3, 0x258(r1)
/* 801BB2AC  C8 01 02 58 */	lfd f0, 0x258(r1)
/* 801BB2B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801BB2B4  EC 03 00 2A */	fadds f0, f3, f0
/* 801BB2B8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801BB2BC  7F E3 FB 78 */	mr r3, r31
/* 801BB2C0  38 81 00 28 */	addi r4, r1, 0x28
/* 801BB2C4  48 12 DD FD */	bl func_802E90C0
/* 801BB2C8  7F E3 FB 78 */	mr r3, r31
/* 801BB2CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BB2D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801BB2D4  7D 89 03 A6 */	mtctr r12
/* 801BB2D8  4E 80 04 21 */	bctrl 
/* 801BB2DC  7F E3 FB 78 */	mr r3, r31
/* 801BB2E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801BB2E4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801BB2E8  7D 89 03 A6 */	mtctr r12
/* 801BB2EC  4E 80 04 21 */	bctrl 
/* 801BB2F0  38 61 01 70 */	addi r3, r1, 0x170
/* 801BB2F4  38 80 FF FF */	li r4, -1
/* 801BB2F8  48 09 87 21 */	bl __dt__8CPaneMgrFv
/* 801BB2FC  E3 E1 02 C8 */	psq_l f31, 712(r1), 0, 0 /* qr0 */
/* 801BB300  CB E1 02 C0 */	lfd f31, 0x2c0(r1)
/* 801BB304  E3 C1 02 B8 */	psq_l f30, 696(r1), 0, 0 /* qr0 */
/* 801BB308  CB C1 02 B0 */	lfd f30, 0x2b0(r1)
/* 801BB30C  E3 A1 02 A8 */	psq_l f29, 680(r1), 0, 0 /* qr0 */
/* 801BB310  CB A1 02 A0 */	lfd f29, 0x2a0(r1)
/* 801BB314  E3 81 02 98 */	psq_l f28, 664(r1), 0, 0 /* qr0 */
/* 801BB318  CB 81 02 90 */	lfd f28, 0x290(r1)
/* 801BB31C  39 61 02 90 */	addi r11, r1, 0x290
/* 801BB320  48 1A 6F 09 */	bl _restgpr_29
/* 801BB324  80 01 02 D4 */	lwz r0, 0x2d4(r1)
/* 801BB328  7C 08 03 A6 */	mtlr r0
/* 801BB32C  38 21 02 D0 */	addi r1, r1, 0x2d0
/* 801BB330  4E 80 00 20 */	blr 
