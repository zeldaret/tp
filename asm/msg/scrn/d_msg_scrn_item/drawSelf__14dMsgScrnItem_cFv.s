lbl_8023FB24:
/* 8023FB24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8023FB28  7C 08 02 A6 */	mflr r0
/* 8023FB2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023FB30  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8023FB34  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8023FB38  39 61 00 30 */	addi r11, r1, 0x30
/* 8023FB3C  48 12 26 91 */	bl _savegpr_25
/* 8023FB40  7C 7B 1B 78 */	mr r27, r3
/* 8023FB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023FB48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023FB4C  83 A3 5F 50 */	lwz r29, 0x5f50(r3)
/* 8023FB50  7F A3 EB 78 */	mr r3, r29
/* 8023FB54  81 9D 00 00 */	lwz r12, 0(r29)
/* 8023FB58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023FB5C  7D 89 03 A6 */	mtctr r12
/* 8023FB60  4E 80 04 21 */	bctrl 
/* 8023FB64  83 9B 00 50 */	lwz r28, 0x50(r27)
/* 8023FB68  A8 1C 10 68 */	lha r0, 0x1068(r28)
/* 8023FB6C  2C 00 00 00 */	cmpwi r0, 0
/* 8023FB70  40 81 00 68 */	ble lbl_8023FBD8
/* 8023FB74  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8023FB78  48 01 5C B1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8023FB7C  FF E0 08 90 */	fmr f31, f1
/* 8023FB80  3B C0 00 00 */	li r30, 0
/* 8023FB84  3B 40 00 00 */	li r26, 0
/* 8023FB88  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023FB8C  3B 23 02 8C */	addi r25, r3, g_MsgObject_HIO_c@l
/* 8023FB90  48 00 00 3C */	b lbl_8023FBCC
lbl_8023FB94:
/* 8023FB94  80 1B 00 50 */	lwz r0, 0x50(r27)
/* 8023FB98  7C A0 D2 14 */	add r5, r0, r26
/* 8023FB9C  80 7B 00 F4 */	lwz r3, 0xf4(r27)
/* 8023FBA0  38 85 00 14 */	addi r4, r5, 0x14
/* 8023FBA4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8023FBA8  C0 45 00 04 */	lfs f2, 4(r5)
/* 8023FBAC  C0 65 00 08 */	lfs f3, 8(r5)
/* 8023FBB0  C0 85 00 0C */	lfs f4, 0xc(r5)
/* 8023FBB4  C0 19 00 5C */	lfs f0, 0x5c(r25)
/* 8023FBB8  EC BF 00 32 */	fmuls f5, f31, f0
/* 8023FBBC  88 A5 00 18 */	lbz r5, 0x18(r5)
/* 8023FBC0  48 00 60 45 */	bl draw__15dMsgScrnLight_cFPffffffUc
/* 8023FBC4  3B DE 00 01 */	addi r30, r30, 1
/* 8023FBC8  3B 5A 00 1C */	addi r26, r26, 0x1c
lbl_8023FBCC:
/* 8023FBCC  A8 1C 10 68 */	lha r0, 0x1068(r28)
/* 8023FBD0  7C 1E 00 00 */	cmpw r30, r0
/* 8023FBD4  41 80 FF C0 */	blt lbl_8023FB94
lbl_8023FBD8:
/* 8023FBD8  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8023FBDC  48 01 47 0D */	bl getGlobalPosX__8CPaneMgrFv
/* 8023FBE0  7F 63 DB 78 */	mr r3, r27
/* 8023FBE4  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023FBE8  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 8023FBEC  C0 24 00 E0 */	lfs f1, 0xe0(r4)
/* 8023FBF0  C0 02 B2 20 */	lfs f0, lit_4476(r2)
/* 8023FBF4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023FBF8  C0 44 00 E4 */	lfs f2, 0xe4(r4)
/* 8023FBFC  C0 62 B1 FC */	lfs f3, lit_4193(r2)
/* 8023FC00  4B FF C7 2D */	bl drawOutFont__14dMsgScrnBase_cFfff
/* 8023FC04  80 7B 00 C4 */	lwz r3, 0xc4(r27)
/* 8023FC08  C0 22 B2 04 */	lfs f1, lit_4195(r2)
/* 8023FC0C  FC 40 08 90 */	fmr f2, f1
/* 8023FC10  7F A4 EB 78 */	mr r4, r29
/* 8023FC14  48 0B 92 C1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8023FC18  80 7B 00 F0 */	lwz r3, 0xf0(r27)
/* 8023FC1C  C0 22 B2 04 */	lfs f1, lit_4195(r2)
/* 8023FC20  FC 40 08 90 */	fmr f2, f1
/* 8023FC24  4B FF A1 B1 */	bl draw__17dMsgScrn3Select_cFff
/* 8023FC28  80 7B 00 EC */	lwz r3, 0xec(r27)
/* 8023FC2C  4B FF C1 95 */	bl draw__15dMsgScrnArrow_cFv
/* 8023FC30  3B 80 00 00 */	li r28, 0
/* 8023FC34  3B 40 00 00 */	li r26, 0
/* 8023FC38  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8023FC3C  3B C3 02 8C */	addi r30, r3, g_MsgObject_HIO_c@l
/* 8023FC40  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8023FC44  3B E3 EB C8 */	addi r31, r3, g_drawHIO@l
lbl_8023FC48:
/* 8023FC48  3B BA 00 C8 */	addi r29, r26, 0xc8
/* 8023FC4C  7C 7B E8 2E */	lwzx r3, r27, r29
/* 8023FC50  28 03 00 00 */	cmplwi r3, 0
/* 8023FC54  41 82 02 AC */	beq lbl_8023FF00
/* 8023FC58  C0 22 B2 24 */	lfs f1, lit_4477(r2)
/* 8023FC5C  C0 1B 01 94 */	lfs f0, 0x194(r27)
/* 8023FC60  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023FC64  FC 00 00 1E */	fctiwz f0, f0
/* 8023FC68  D8 01 00 08 */	stfd f0, 8(r1)
/* 8023FC6C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8023FC70  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FC74  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8023FC78  7D 89 03 A6 */	mtctr r12
/* 8023FC7C  4E 80 04 21 */	bctrl 
/* 8023FC80  80 1B 01 98 */	lwz r0, 0x198(r27)
/* 8023FC84  2C 00 00 49 */	cmpwi r0, 0x49
/* 8023FC88  41 82 01 10 */	beq lbl_8023FD98
/* 8023FC8C  40 80 00 84 */	bge lbl_8023FD10
/* 8023FC90  2C 00 00 3D */	cmpwi r0, 0x3d
/* 8023FC94  41 82 00 E0 */	beq lbl_8023FD74
/* 8023FC98  40 80 00 40 */	bge lbl_8023FCD8
/* 8023FC9C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8023FCA0  40 80 00 24 */	bge lbl_8023FCC4
/* 8023FCA4  2C 00 00 22 */	cmpwi r0, 0x22
/* 8023FCA8  40 80 00 10 */	bge lbl_8023FCB8
/* 8023FCAC  2C 00 00 20 */	cmpwi r0, 0x20
/* 8023FCB0  40 80 00 C4 */	bge lbl_8023FD74
/* 8023FCB4  48 00 00 E4 */	b lbl_8023FD98
lbl_8023FCB8:
/* 8023FCB8  2C 00 00 2A */	cmpwi r0, 0x2a
/* 8023FCBC  40 80 00 B8 */	bge lbl_8023FD74
/* 8023FCC0  48 00 00 D8 */	b lbl_8023FD98
lbl_8023FCC4:
/* 8023FCC4  2C 00 00 3B */	cmpwi r0, 0x3b
/* 8023FCC8  40 80 00 D0 */	bge lbl_8023FD98
/* 8023FCCC  2C 00 00 37 */	cmpwi r0, 0x37
/* 8023FCD0  40 80 00 A4 */	bge lbl_8023FD74
/* 8023FCD4  48 00 00 C4 */	b lbl_8023FD98
lbl_8023FCD8:
/* 8023FCD8  2C 00 00 43 */	cmpwi r0, 0x43
/* 8023FCDC  41 82 00 BC */	beq lbl_8023FD98
/* 8023FCE0  40 80 00 1C */	bge lbl_8023FCFC
/* 8023FCE4  2C 00 00 41 */	cmpwi r0, 0x41
/* 8023FCE8  41 82 00 B0 */	beq lbl_8023FD98
/* 8023FCEC  40 80 00 88 */	bge lbl_8023FD74
/* 8023FCF0  2C 00 00 40 */	cmpwi r0, 0x40
/* 8023FCF4  40 80 00 80 */	bge lbl_8023FD74
/* 8023FCF8  48 00 00 A0 */	b lbl_8023FD98
lbl_8023FCFC:
/* 8023FCFC  2C 00 00 47 */	cmpwi r0, 0x47
/* 8023FD00  40 80 00 74 */	bge lbl_8023FD74
/* 8023FD04  2C 00 00 45 */	cmpwi r0, 0x45
/* 8023FD08  40 80 00 90 */	bge lbl_8023FD98
/* 8023FD0C  48 00 00 68 */	b lbl_8023FD74
lbl_8023FD10:
/* 8023FD10  2C 00 00 9C */	cmpwi r0, 0x9c
/* 8023FD14  41 82 00 60 */	beq lbl_8023FD74
/* 8023FD18  40 80 00 30 */	bge lbl_8023FD48
/* 8023FD1C  2C 00 00 58 */	cmpwi r0, 0x58
/* 8023FD20  41 82 00 54 */	beq lbl_8023FD74
/* 8023FD24  40 80 00 10 */	bge lbl_8023FD34
/* 8023FD28  2C 00 00 4B */	cmpwi r0, 0x4b
/* 8023FD2C  40 80 00 6C */	bge lbl_8023FD98
/* 8023FD30  48 00 00 44 */	b lbl_8023FD74
lbl_8023FD34:
/* 8023FD34  2C 00 00 60 */	cmpwi r0, 0x60
/* 8023FD38  40 80 00 60 */	bge lbl_8023FD98
/* 8023FD3C  2C 00 00 5B */	cmpwi r0, 0x5b
/* 8023FD40  40 80 00 34 */	bge lbl_8023FD74
/* 8023FD44  48 00 00 54 */	b lbl_8023FD98
lbl_8023FD48:
/* 8023FD48  2C 00 00 F3 */	cmpwi r0, 0xf3
/* 8023FD4C  41 82 00 28 */	beq lbl_8023FD74
/* 8023FD50  40 80 00 10 */	bge lbl_8023FD60
/* 8023FD54  2C 00 00 EE */	cmpwi r0, 0xee
/* 8023FD58  41 82 00 1C */	beq lbl_8023FD74
/* 8023FD5C  48 00 00 3C */	b lbl_8023FD98
lbl_8023FD60:
/* 8023FD60  2C 00 00 FF */	cmpwi r0, 0xff
/* 8023FD64  40 80 00 34 */	bge lbl_8023FD98
/* 8023FD68  2C 00 00 F8 */	cmpwi r0, 0xf8
/* 8023FD6C  40 80 00 08 */	bge lbl_8023FD74
/* 8023FD70  48 00 00 28 */	b lbl_8023FD98
lbl_8023FD74:
/* 8023FD74  7C 7B E8 2E */	lwzx r3, r27, r29
/* 8023FD78  C0 02 B2 28 */	lfs f0, lit_4478(r2)
/* 8023FD7C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023FD80  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8023FD84  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FD88  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023FD8C  7D 89 03 A6 */	mtctr r12
/* 8023FD90  4E 80 04 21 */	bctrl 
/* 8023FD94  48 00 00 28 */	b lbl_8023FDBC
lbl_8023FD98:
/* 8023FD98  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8023FD9C  7C 7B E8 2E */	lwzx r3, r27, r29
/* 8023FDA0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8023FDA4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023FDA8  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8023FDAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FDB0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023FDB4  7D 89 03 A6 */	mtctr r12
/* 8023FDB8  4E 80 04 21 */	bctrl 
lbl_8023FDBC:
/* 8023FDBC  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 8023FDC0  28 00 00 01 */	cmplwi r0, 1
/* 8023FDC4  40 82 00 2C */	bne lbl_8023FDF0
/* 8023FDC8  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 8023FDCC  C8 22 B2 10 */	lfd f1, lit_4199(r2)
/* 8023FDD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023FDD4  3C 00 43 30 */	lis r0, 0x4330
/* 8023FDD8  90 01 00 08 */	stw r0, 8(r1)
/* 8023FDDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023FDE0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8023FDE4  C0 02 B1 F8 */	lfs f0, lit_4192(r2)
/* 8023FDE8  EF E1 00 24 */	fdivs f31, f1, f0
/* 8023FDEC  48 00 00 58 */	b lbl_8023FE44
lbl_8023FDF0:
/* 8023FDF0  80 1B 01 98 */	lwz r0, 0x198(r27)
/* 8023FDF4  2C 00 00 00 */	cmpwi r0, 0
/* 8023FDF8  41 80 00 48 */	blt lbl_8023FE40
/* 8023FDFC  2C 00 00 FF */	cmpwi r0, 0xff
/* 8023FE00  41 81 00 40 */	bgt lbl_8023FE40
/* 8023FE04  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8023FE08  1C 80 00 18 */	mulli r4, r0, 0x18
/* 8023FE0C  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha
/* 8023FE10  38 03 C5 A0 */	addi r0, r3, item_resource__10dItem_data@l
/* 8023FE14  7C 60 22 14 */	add r3, r0, r4
/* 8023FE18  88 03 00 12 */	lbz r0, 0x12(r3)
/* 8023FE1C  C8 22 B2 10 */	lfd f1, lit_4199(r2)
/* 8023FE20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8023FE24  3C 00 43 30 */	lis r0, 0x4330
/* 8023FE28  90 01 00 08 */	stw r0, 8(r1)
/* 8023FE2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023FE30  EC 20 08 28 */	fsubs f1, f0, f1
/* 8023FE34  C0 02 B1 F8 */	lfs f0, lit_4192(r2)
/* 8023FE38  EF E1 00 24 */	fdivs f31, f1, f0
/* 8023FE3C  48 00 00 08 */	b lbl_8023FE44
lbl_8023FE40:
/* 8023FE40  C3 E2 B1 FC */	lfs f31, lit_4193(r2)
lbl_8023FE44:
/* 8023FE44  80 7B 00 04 */	lwz r3, 4(r27)
/* 8023FE48  3C 80 69 74 */	lis r4, 0x6974 /* 0x69745F6E@ha */
/* 8023FE4C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x69745F6E@l */
/* 8023FE50  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 8023FE54  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 8023FE58  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FE5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023FE60  7D 89 03 A6 */	mtctr r12
/* 8023FE64  4E 80 04 21 */	bctrl 
/* 8023FE68  7C 79 1B 78 */	mr r25, r3
/* 8023FE6C  80 7B 00 04 */	lwz r3, 4(r27)
/* 8023FE70  3C 80 69 74 */	lis r4, 0x6974 /* 0x69745F6E@ha */
/* 8023FE74  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x69745F6E@l */
/* 8023FE78  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 8023FE7C  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 8023FE80  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FE84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8023FE88  7D 89 03 A6 */	mtctr r12
/* 8023FE8C  4E 80 04 21 */	bctrl 
/* 8023FE90  7C 64 1B 78 */	mr r4, r3
/* 8023FE94  C0 1B 01 7C */	lfs f0, 0x17c(r27)
/* 8023FE98  EC 80 07 F2 */	fmuls f4, f0, f31
/* 8023FE9C  C0 1B 01 78 */	lfs f0, 0x178(r27)
/* 8023FEA0  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8023FEA4  7C 7B E8 2E */	lwzx r3, r27, r29
/* 8023FEA8  C0 BE 00 D0 */	lfs f5, 0xd0(r30)
/* 8023FEAC  C0 42 B2 0C */	lfs f2, lit_4197(r2)
/* 8023FEB0  C0 1B 01 70 */	lfs f0, 0x170(r27)
/* 8023FEB4  EC 00 18 28 */	fsubs f0, f0, f3
/* 8023FEB8  EC 22 00 32 */	fmuls f1, f2, f0
/* 8023FEBC  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8023FEC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8023FEC4  EC 25 00 2A */	fadds f1, f5, f0
/* 8023FEC8  C0 BE 00 D4 */	lfs f5, 0xd4(r30)
/* 8023FECC  C0 1B 01 74 */	lfs f0, 0x174(r27)
/* 8023FED0  EC 00 20 28 */	fsubs f0, f0, f4
/* 8023FED4  EC 42 00 32 */	fmuls f2, f2, f0
/* 8023FED8  C0 19 00 34 */	lfs f0, 0x34(r25)
/* 8023FEDC  EC 02 00 2A */	fadds f0, f2, f0
/* 8023FEE0  EC 45 00 2A */	fadds f2, f5, f0
/* 8023FEE4  88 9B 01 9E */	lbz r4, 0x19e(r27)
/* 8023FEE8  38 A0 00 00 */	li r5, 0
/* 8023FEEC  38 C0 00 00 */	li r6, 0
/* 8023FEF0  81 83 00 00 */	lwz r12, 0(r3)
/* 8023FEF4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8023FEF8  7D 89 03 A6 */	mtctr r12
/* 8023FEFC  4E 80 04 21 */	bctrl 
lbl_8023FF00:
/* 8023FF00  3B 9C 00 01 */	addi r28, r28, 1
/* 8023FF04  2C 1C 00 03 */	cmpwi r28, 3
/* 8023FF08  3B 5A 00 04 */	addi r26, r26, 4
/* 8023FF0C  41 80 FD 3C */	blt lbl_8023FC48
/* 8023FF10  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8023FF14  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8023FF18  39 61 00 30 */	addi r11, r1, 0x30
/* 8023FF1C  48 12 22 FD */	bl _restgpr_25
/* 8023FF20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8023FF24  7C 08 03 A6 */	mtlr r0
/* 8023FF28  38 21 00 40 */	addi r1, r1, 0x40
/* 8023FF2C  4E 80 00 20 */	blr 
