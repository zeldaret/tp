lbl_8025FB74:
/* 8025FB74  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8025FB78  7C 08 02 A6 */	mflr r0
/* 8025FB7C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8025FB80  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8025FB84  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8025FB88  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8025FB8C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8025FB90  39 61 00 40 */	addi r11, r1, 0x40
/* 8025FB94  48 10 26 49 */	bl _savegpr_29
/* 8025FB98  7C 7D 1B 78 */	mr r29, r3
/* 8025FB9C  88 03 03 DE */	lbz r0, 0x3de(r3)
/* 8025FBA0  28 00 00 00 */	cmplwi r0, 0
/* 8025FBA4  40 82 03 CC */	bne lbl_8025FF70
/* 8025FBA8  80 7D 03 D8 */	lwz r3, 0x3d8(r29)
/* 8025FBAC  3B C2 B5 60 */	la r30, animeFrame(r2) /* 80454F60-_SDA2_BASE_ */
/* 8025FBB0  A8 1E 00 04 */	lha r0, 4(r30)
/* 8025FBB4  7C 03 00 00 */	cmpw r3, r0
/* 8025FBB8  41 81 00 10 */	bgt lbl_8025FBC8
/* 8025FBBC  38 03 00 01 */	addi r0, r3, 1
/* 8025FBC0  90 1D 03 D8 */	stw r0, 0x3d8(r29)
/* 8025FBC4  48 00 00 0C */	b lbl_8025FBD0
lbl_8025FBC8:
/* 8025FBC8  38 00 00 01 */	li r0, 1
/* 8025FBCC  98 1D 03 DE */	stb r0, 0x3de(r29)
lbl_8025FBD0:
/* 8025FBD0  80 1D 03 D8 */	lwz r0, 0x3d8(r29)
/* 8025FBD4  3B E2 B5 60 */	la r31, animeFrame(r2) /* 80454F60-_SDA2_BASE_ */
/* 8025FBD8  A8 9F 00 02 */	lha r4, 2(r31)
/* 8025FBDC  7C 00 20 00 */	cmpw r0, r4
/* 8025FBE0  41 81 01 AC */	bgt lbl_8025FD8C
/* 8025FBE4  7C 00 07 34 */	extsh r0, r0
/* 8025FBE8  C8 62 B5 58 */	lfd f3, lit_4627(r2)
/* 8025FBEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8025FBF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8025FBF4  3C 60 43 30 */	lis r3, 0x4330
/* 8025FBF8  90 61 00 08 */	stw r3, 8(r1)
/* 8025FBFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8025FC00  EC 20 18 28 */	fsubs f1, f0, f3
/* 8025FC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FC08  90 61 00 10 */	stw r3, 0x10(r1)
/* 8025FC0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8025FC10  EC 00 18 28 */	fsubs f0, f0, f3
/* 8025FC14  EC 41 00 32 */	fmuls f2, f1, f0
/* 8025FC18  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8025FC1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8025FC20  90 61 00 18 */	stw r3, 0x18(r1)
/* 8025FC24  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8025FC28  EC 20 18 28 */	fsubs f1, f0, f3
/* 8025FC2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025FC30  90 61 00 20 */	stw r3, 0x20(r1)
/* 8025FC34  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8025FC38  EC 00 18 28 */	fsubs f0, f0, f3
/* 8025FC3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8025FC40  EF E2 00 24 */	fdivs f31, f2, f0
/* 8025FC44  C0 22 B5 68 */	lfs f1, lit_5094(r2)
/* 8025FC48  C0 02 B5 4C */	lfs f0, lit_4124(r2)
/* 8025FC4C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8025FC50  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025FC54  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8025FC58  28 00 00 00 */	cmplwi r0, 0
/* 8025FC5C  41 82 01 18 */	beq lbl_8025FD74
/* 8025FC60  88 1D 03 E2 */	lbz r0, 0x3e2(r29)
/* 8025FC64  28 00 00 00 */	cmplwi r0, 0
/* 8025FC68  41 82 00 30 */	beq lbl_8025FC98
/* 8025FC6C  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FC70  28 00 00 00 */	cmplwi r0, 0
/* 8025FC74  40 82 00 24 */	bne lbl_8025FC98
/* 8025FC78  7F A3 EB 78 */	mr r3, r29
/* 8025FC7C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FC80  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FC84  C0 04 0B 84 */	lfs f0, 0xb84(r4)
/* 8025FC88  EC 20 08 2A */	fadds f1, f0, f1
/* 8025FC8C  C0 44 0B 88 */	lfs f2, 0xb88(r4)
/* 8025FC90  4B FF FD 9D */	bl setTimerPos__21dDlst_TimerScrnDraw_cFff
/* 8025FC94  48 00 00 2C */	b lbl_8025FCC0
lbl_8025FC98:
/* 8025FC98  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FC9C  54 05 10 3A */	slwi r5, r0, 2
/* 8025FCA0  7F A3 EB 78 */	mr r3, r29
/* 8025FCA4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FCA8  38 04 EB C8 */	addi r0, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FCAC  7C 80 2A 14 */	add r4, r0, r5
/* 8025FCB0  C0 04 0A E0 */	lfs f0, 0xae0(r4)
/* 8025FCB4  EC 20 08 2A */	fadds f1, f0, f1
/* 8025FCB8  C0 44 0A EC */	lfs f2, 0xaec(r4)
/* 8025FCBC  4B FF FD 71 */	bl setTimerPos__21dDlst_TimerScrnDraw_cFff
lbl_8025FCC0:
/* 8025FCC0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8025FCC4  C0 3D 03 B0 */	lfs f1, 0x3b0(r29)
/* 8025FCC8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FCCC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FCD0  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FCD4  54 00 10 3A */	slwi r0, r0, 2
/* 8025FCD8  7C 84 02 14 */	add r4, r4, r0
/* 8025FCDC  C0 04 0A F8 */	lfs f0, 0xaf8(r4)
/* 8025FCE0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8025FCE4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025FCE8  4B FF 5A E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025FCEC  88 1D 03 E2 */	lbz r0, 0x3e2(r29)
/* 8025FCF0  28 00 00 00 */	cmplwi r0, 0
/* 8025FCF4  41 82 00 44 */	beq lbl_8025FD38
/* 8025FCF8  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FCFC  28 00 00 00 */	cmplwi r0, 0
/* 8025FD00  40 82 00 38 */	bne lbl_8025FD38
/* 8025FD04  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FD08  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FD0C  C0 24 0B 80 */	lfs f1, 0xb80(r4)
/* 8025FD10  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8025FD14  80 63 00 04 */	lwz r3, 4(r3)
/* 8025FD18  C0 04 0B 7C */	lfs f0, 0xb7c(r4)
/* 8025FD1C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025FD20  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025FD24  81 83 00 00 */	lwz r12, 0(r3)
/* 8025FD28  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025FD2C  7D 89 03 A6 */	mtctr r12
/* 8025FD30  4E 80 04 21 */	bctrl 
/* 8025FD34  48 00 00 40 */	b lbl_8025FD74
lbl_8025FD38:
/* 8025FD38  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FD3C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FD40  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FD44  54 00 10 3A */	slwi r0, r0, 2
/* 8025FD48  7C 83 02 14 */	add r4, r3, r0
/* 8025FD4C  C0 24 0A D4 */	lfs f1, 0xad4(r4)
/* 8025FD50  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8025FD54  80 63 00 04 */	lwz r3, 4(r3)
/* 8025FD58  C0 04 0A C8 */	lfs f0, 0xac8(r4)
/* 8025FD5C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025FD60  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025FD64  81 83 00 00 */	lwz r12, 0(r3)
/* 8025FD68  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025FD6C  7D 89 03 A6 */	mtctr r12
/* 8025FD70  4E 80 04 21 */	bctrl 
lbl_8025FD74:
/* 8025FD74  80 7D 03 D8 */	lwz r3, 0x3d8(r29)
/* 8025FD78  A8 1F 00 02 */	lha r0, 2(r31)
/* 8025FD7C  7C 03 00 00 */	cmpw r3, r0
/* 8025FD80  40 82 00 0C */	bne lbl_8025FD8C
/* 8025FD84  38 00 00 01 */	li r0, 1
/* 8025FD88  98 1D 03 DF */	stb r0, 0x3df(r29)
lbl_8025FD8C:
/* 8025FD8C  80 7D 03 D8 */	lwz r3, 0x3d8(r29)
/* 8025FD90  A8 82 B5 60 */	lha r4, animeFrame(r2)
/* 8025FD94  7C 03 20 00 */	cmpw r3, r4
/* 8025FD98  40 81 01 D8 */	ble lbl_8025FF70
/* 8025FD9C  A8 1E 00 04 */	lha r0, 4(r30)
/* 8025FDA0  7C 03 00 00 */	cmpw r3, r0
/* 8025FDA4  41 81 01 CC */	bgt lbl_8025FF70
/* 8025FDA8  7C 04 18 50 */	subf r0, r4, r3
/* 8025FDAC  7C 00 07 34 */	extsh r0, r0
/* 8025FDB0  A8 9F 00 02 */	lha r4, 2(r31)
/* 8025FDB4  C8 62 B5 58 */	lfd f3, lit_4627(r2)
/* 8025FDB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8025FDBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025FDC0  3C 60 43 30 */	lis r3, 0x4330
/* 8025FDC4  90 61 00 20 */	stw r3, 0x20(r1)
/* 8025FDC8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8025FDCC  EC 20 18 28 */	fsubs f1, f0, f3
/* 8025FDD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8025FDD4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8025FDD8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8025FDDC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8025FDE0  EC 41 00 32 */	fmuls f2, f1, f0
/* 8025FDE4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8025FDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FDEC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8025FDF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8025FDF4  EC 20 18 28 */	fsubs f1, f0, f3
/* 8025FDF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8025FDFC  90 61 00 08 */	stw r3, 8(r1)
/* 8025FE00  C8 01 00 08 */	lfd f0, 8(r1)
/* 8025FE04  EC 00 18 28 */	fsubs f0, f0, f3
/* 8025FE08  EC 01 00 32 */	fmuls f0, f1, f0
/* 8025FE0C  EF E2 00 24 */	fdivs f31, f2, f0
/* 8025FE10  C0 22 B5 68 */	lfs f1, lit_5094(r2)
/* 8025FE14  C0 02 B5 4C */	lfs f0, lit_4124(r2)
/* 8025FE18  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8025FE1C  EF C1 00 32 */	fmuls f30, f1, f0
/* 8025FE20  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8025FE24  28 00 00 00 */	cmplwi r0, 0
/* 8025FE28  41 82 00 94 */	beq lbl_8025FEBC
/* 8025FE2C  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FE30  54 05 10 3A */	slwi r5, r0, 2
/* 8025FE34  7F A3 EB 78 */	mr r3, r29
/* 8025FE38  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FE3C  38 04 EB C8 */	addi r0, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FE40  7C 80 2A 14 */	add r4, r0, r5
/* 8025FE44  C0 04 0B 1C */	lfs f0, 0xb1c(r4)
/* 8025FE48  EC 20 F0 2A */	fadds f1, f0, f30
/* 8025FE4C  C0 44 0B 28 */	lfs f2, 0xb28(r4)
/* 8025FE50  4B FF FC 1D */	bl setCounterPos__21dDlst_TimerScrnDraw_cFff
/* 8025FE54  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8025FE58  C0 3D 03 B0 */	lfs f1, 0x3b0(r29)
/* 8025FE5C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FE60  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FE64  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FE68  54 00 10 3A */	slwi r0, r0, 2
/* 8025FE6C  7C 84 02 14 */	add r4, r4, r0
/* 8025FE70  C0 04 0B 34 */	lfs f0, 0xb34(r4)
/* 8025FE74  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8025FE78  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025FE7C  4B FF 59 55 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025FE80  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FE84  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FE88  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FE8C  54 00 10 3A */	slwi r0, r0, 2
/* 8025FE90  7C 83 02 14 */	add r4, r3, r0
/* 8025FE94  C0 24 0B 10 */	lfs f1, 0xb10(r4)
/* 8025FE98  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8025FE9C  80 63 00 04 */	lwz r3, 4(r3)
/* 8025FEA0  C0 04 0B 04 */	lfs f0, 0xb04(r4)
/* 8025FEA4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025FEA8  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025FEAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8025FEB0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025FEB4  7D 89 03 A6 */	mtctr r12
/* 8025FEB8  4E 80 04 21 */	bctrl 
lbl_8025FEBC:
/* 8025FEBC  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 8025FEC0  28 00 00 00 */	cmplwi r0, 0
/* 8025FEC4  41 82 00 94 */	beq lbl_8025FF58
/* 8025FEC8  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FECC  54 05 10 3A */	slwi r5, r0, 2
/* 8025FED0  7F A3 EB 78 */	mr r3, r29
/* 8025FED4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FED8  38 04 EB C8 */	addi r0, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FEDC  7C 80 2A 14 */	add r4, r0, r5
/* 8025FEE0  C0 04 0B 58 */	lfs f0, 0xb58(r4)
/* 8025FEE4  EC 20 F0 2A */	fadds f1, f0, f30
/* 8025FEE8  C0 44 0B 64 */	lfs f2, 0xb64(r4)
/* 8025FEEC  4B FF FB AD */	bl setImagePos__21dDlst_TimerScrnDraw_cFff
/* 8025FEF0  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8025FEF4  C0 3D 03 B0 */	lfs f1, 0x3b0(r29)
/* 8025FEF8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FEFC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FF00  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FF04  54 00 10 3A */	slwi r0, r0, 2
/* 8025FF08  7C 84 02 14 */	add r4, r4, r0
/* 8025FF0C  C0 04 0B 70 */	lfs f0, 0xb70(r4)
/* 8025FF10  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8025FF14  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025FF18  4B FF 58 B9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025FF1C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025FF20  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025FF24  88 1D 03 DD */	lbz r0, 0x3dd(r29)
/* 8025FF28  54 00 10 3A */	slwi r0, r0, 2
/* 8025FF2C  7C 83 02 14 */	add r4, r3, r0
/* 8025FF30  C0 24 0B 4C */	lfs f1, 0xb4c(r4)
/* 8025FF34  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8025FF38  80 63 00 04 */	lwz r3, 4(r3)
/* 8025FF3C  C0 04 0B 40 */	lfs f0, 0xb40(r4)
/* 8025FF40  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8025FF44  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8025FF48  81 83 00 00 */	lwz r12, 0(r3)
/* 8025FF4C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025FF50  7D 89 03 A6 */	mtctr r12
/* 8025FF54  4E 80 04 21 */	bctrl 
lbl_8025FF58:
/* 8025FF58  80 7D 03 D8 */	lwz r3, 0x3d8(r29)
/* 8025FF5C  A8 1E 00 04 */	lha r0, 4(r30)
/* 8025FF60  7C 03 00 00 */	cmpw r3, r0
/* 8025FF64  40 82 00 0C */	bne lbl_8025FF70
/* 8025FF68  38 00 00 01 */	li r0, 1
/* 8025FF6C  98 1D 03 E0 */	stb r0, 0x3e0(r29)
lbl_8025FF70:
/* 8025FF70  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8025FF74  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8025FF78  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8025FF7C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8025FF80  39 61 00 40 */	addi r11, r1, 0x40
/* 8025FF84  48 10 22 A5 */	bl _restgpr_29
/* 8025FF88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8025FF8C  7C 08 03 A6 */	mtlr r0
/* 8025FF90  38 21 00 60 */	addi r1, r1, 0x60
/* 8025FF94  4E 80 00 20 */	blr 
