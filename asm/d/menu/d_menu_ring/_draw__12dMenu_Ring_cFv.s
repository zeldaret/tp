lbl_801EACC8:
/* 801EACC8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801EACCC  7C 08 02 A6 */	mflr r0
/* 801EACD0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801EACD4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801EACD8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 801EACDC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801EACE0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801EACE4  7C 7E 1B 78 */	mr r30, r3
/* 801EACE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EACEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EACF0  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801EACF4  7F E3 FB 78 */	mr r3, r31
/* 801EACF8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EACFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801EAD00  7D 89 03 A6 */	mtctr r12
/* 801EAD04  4E 80 04 21 */	bctrl 
/* 801EAD08  88 1E 06 BD */	lbz r0, 0x6bd(r30)
/* 801EAD0C  28 00 00 00 */	cmplwi r0, 0
/* 801EAD10  40 82 03 04 */	bne lbl_801EB014
/* 801EAD14  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801EAD18  C0 3E 05 14 */	lfs f1, 0x514(r30)
/* 801EAD1C  3C 80 80 43 */	lis r4, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAD20  38 84 FA FC */	addi r4, r4, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAD24  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 801EAD28  EC 21 00 32 */	fmuls f1, f1, f0
/* 801EAD2C  48 06 AA A5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801EAD30  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 801EAD34  C0 22 A9 88 */	lfs f1, lit_4300(r2)
/* 801EAD38  FC 40 08 90 */	fmr f2, f1
/* 801EAD3C  7F E4 FB 78 */	mr r4, r31
/* 801EAD40  48 10 E1 95 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801EAD44  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 801EAD48  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAD4C  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAD50  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 801EAD54  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801EAD58  41 82 00 2C */	beq lbl_801EAD84
/* 801EAD5C  D0 3E 05 94 */	stfs f1, 0x594(r30)
/* 801EAD60  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 801EAD64  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 801EAD68  80 63 00 04 */	lwz r3, 4(r3)
/* 801EAD6C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801EAD70  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801EAD74  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAD78  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801EAD7C  7D 89 03 A6 */	mtctr r12
/* 801EAD80  4E 80 04 21 */	bctrl 
lbl_801EAD84:
/* 801EAD84  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 801EAD88  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAD8C  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAD90  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 801EAD94  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801EAD98  40 82 00 14 */	bne lbl_801EADAC
/* 801EAD9C  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 801EADA0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 801EADA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801EADA8  41 82 00 28 */	beq lbl_801EADD0
lbl_801EADAC:
/* 801EADAC  D0 5E 05 8C */	stfs f2, 0x58c(r30)
/* 801EADB0  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EADB4  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EADB8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 801EADBC  D0 1E 05 90 */	stfs f0, 0x590(r30)
/* 801EADC0  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 801EADC4  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 801EADC8  C0 5E 05 90 */	lfs f2, 0x590(r30)
/* 801EADCC  48 06 97 E5 */	bl paneTrans__8CPaneMgrFff
lbl_801EADD0:
/* 801EADD0  C0 1E 06 14 */	lfs f0, 0x614(r30)
/* 801EADD4  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EADD8  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EADDC  C0 43 01 18 */	lfs f2, 0x118(r3)
/* 801EADE0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801EADE4  40 82 00 14 */	bne lbl_801EADF8
/* 801EADE8  C0 3E 06 18 */	lfs f1, 0x618(r30)
/* 801EADEC  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 801EADF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801EADF4  41 82 00 28 */	beq lbl_801EAE1C
lbl_801EADF8:
/* 801EADF8  D0 5E 06 14 */	stfs f2, 0x614(r30)
/* 801EADFC  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAE00  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAE04  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 801EAE08  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 801EAE0C  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 801EAE10  C0 3E 06 14 */	lfs f1, 0x614(r30)
/* 801EAE14  C0 5E 06 18 */	lfs f2, 0x618(r30)
/* 801EAE18  48 06 97 99 */	bl paneTrans__8CPaneMgrFff
lbl_801EAE1C:
/* 801EAE1C  C0 1E 06 1C */	lfs f0, 0x61c(r30)
/* 801EAE20  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAE24  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAE28  C0 43 01 28 */	lfs f2, 0x128(r3)
/* 801EAE2C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801EAE30  40 82 00 14 */	bne lbl_801EAE44
/* 801EAE34  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 801EAE38  C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 801EAE3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801EAE40  41 82 00 40 */	beq lbl_801EAE80
lbl_801EAE44:
/* 801EAE44  D0 5E 06 1C */	stfs f2, 0x61c(r30)
/* 801EAE48  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAE4C  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAE50  C0 03 01 2C */	lfs f0, 0x12c(r3)
/* 801EAE54  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 801EAE58  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 801EAE5C  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 801EAE60  80 63 00 04 */	lwz r3, 4(r3)
/* 801EAE64  C0 1E 06 1C */	lfs f0, 0x61c(r30)
/* 801EAE68  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801EAE6C  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 801EAE70  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAE74  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801EAE78  7D 89 03 A6 */	mtctr r12
/* 801EAE7C  4E 80 04 21 */	bctrl 
lbl_801EAE80:
/* 801EAE80  80 1E 06 2C */	lwz r0, 0x62c(r30)
/* 801EAE84  28 00 00 00 */	cmplwi r0, 0
/* 801EAE88  41 82 00 14 */	beq lbl_801EAE9C
/* 801EAE8C  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAE90  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAE94  C0 23 01 24 */	lfs f1, 0x124(r3)
/* 801EAE98  48 00 00 10 */	b lbl_801EAEA8
lbl_801EAE9C:
/* 801EAE9C  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAEA0  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAEA4  C0 23 01 20 */	lfs f1, 0x120(r3)
lbl_801EAEA8:
/* 801EAEA8  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 801EAEAC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801EAEB0  41 82 00 14 */	beq lbl_801EAEC4
/* 801EAEB4  D0 3E 06 24 */	stfs f1, 0x624(r30)
/* 801EAEB8  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 801EAEBC  C0 3E 06 24 */	lfs f1, 0x624(r30)
/* 801EAEC0  48 06 A9 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801EAEC4:
/* 801EAEC4  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801EAEC8  C0 3E 05 14 */	lfs f1, 0x514(r30)
/* 801EAECC  48 06 A9 05 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801EAED0  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801EAED4  C0 3E 05 68 */	lfs f1, 0x568(r30)
/* 801EAED8  C0 5E 05 6C */	lfs f2, 0x56c(r30)
/* 801EAEDC  7F E4 FB 78 */	mr r4, r31
/* 801EAEE0  48 10 DF F5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801EAEE4  7F C3 F3 78 */	mr r3, r30
/* 801EAEE8  48 00 1C 2D */	bl drawItem__12dMenu_Ring_cFv
/* 801EAEEC  7F C3 F3 78 */	mr r3, r30
/* 801EAEF0  48 00 40 25 */	bl textScaleHIO__12dMenu_Ring_cFv
/* 801EAEF4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801EAEF8  48 06 A9 31 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801EAEFC  FF E0 08 90 */	fmr f31, f1
/* 801EAF00  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801EAF04  C0 3E 05 14 */	lfs f1, 0x514(r30)
/* 801EAF08  48 06 A8 C9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801EAF0C  88 1E 06 B0 */	lbz r0, 0x6b0(r30)
/* 801EAF10  28 00 00 02 */	cmplwi r0, 2
/* 801EAF14  40 82 00 14 */	bne lbl_801EAF28
/* 801EAF18  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801EAF1C  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EAF20  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801EAF24  48 06 A8 AD */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801EAF28:
/* 801EAF28  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 801EAF2C  C0 3E 05 68 */	lfs f1, 0x568(r30)
/* 801EAF30  C0 5E 05 6C */	lfs f2, 0x56c(r30)
/* 801EAF34  7F E4 FB 78 */	mr r4, r31
/* 801EAF38  48 10 DF 9D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801EAF3C  88 1E 06 B0 */	lbz r0, 0x6b0(r30)
/* 801EAF40  28 00 00 02 */	cmplwi r0, 2
/* 801EAF44  41 82 00 C4 */	beq lbl_801EB008
/* 801EAF48  C0 3E 05 70 */	lfs f1, 0x570(r30)
/* 801EAF4C  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EAF50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EAF54  40 81 00 B4 */	ble lbl_801EB008
/* 801EAF58  38 61 00 24 */	addi r3, r1, 0x24
/* 801EAF5C  48 06 89 D5 */	bl __ct__8CPaneMgrFv
/* 801EAF60  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 801EAF64  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F62746E@ha */
/* 801EAF68  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x5F62746E@l */
/* 801EAF6C  38 A0 67 72 */	li r5, 0x6772
/* 801EAF70  81 83 00 00 */	lwz r12, 0(r3)
/* 801EAF74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EAF78  7D 89 03 A6 */	mtctr r12
/* 801EAF7C  4E 80 04 21 */	bctrl 
/* 801EAF80  7C 65 1B 78 */	mr r5, r3
/* 801EAF84  38 61 00 18 */	addi r3, r1, 0x18
/* 801EAF88  38 81 00 24 */	addi r4, r1, 0x24
/* 801EAF8C  38 C0 00 01 */	li r6, 1
/* 801EAF90  38 E0 00 00 */	li r7, 0
/* 801EAF94  48 06 9F 29 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801EAF98  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EAF9C  39 23 FA FC */	addi r9, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EAFA0  80 09 00 D8 */	lwz r0, 0xd8(r9)
/* 801EAFA4  90 01 00 08 */	stw r0, 8(r1)
/* 801EAFA8  80 09 00 DC */	lwz r0, 0xdc(r9)
/* 801EAFAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EAFB0  80 09 00 D0 */	lwz r0, 0xd0(r9)
/* 801EAFB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801EAFB8  80 09 00 D4 */	lwz r0, 0xd4(r9)
/* 801EAFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EAFC0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801EAFC4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801EAFC8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801EAFCC  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801EAFD0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801EAFD4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801EAFD8  38 9E 05 70 */	addi r4, r30, 0x570
/* 801EAFDC  C0 69 00 CC */	lfs f3, 0xcc(r9)
/* 801EAFE0  38 A1 00 14 */	addi r5, r1, 0x14
/* 801EAFE4  38 C1 00 10 */	addi r6, r1, 0x10
/* 801EAFE8  38 E1 00 0C */	addi r7, r1, 0xc
/* 801EAFEC  39 01 00 08 */	addi r8, r1, 8
/* 801EAFF0  C0 89 00 E0 */	lfs f4, 0xe0(r9)
/* 801EAFF4  39 20 00 02 */	li r9, 2
/* 801EAFF8  48 02 90 E5 */	bl drawPikari__13dMeter2Draw_cFffPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc
/* 801EAFFC  38 61 00 24 */	addi r3, r1, 0x24
/* 801EB000  38 80 FF FF */	li r4, -1
/* 801EB004  48 06 8A 15 */	bl __dt__8CPaneMgrFv
lbl_801EB008:
/* 801EB008  38 00 00 01 */	li r0, 1
/* 801EB00C  98 1E 06 BD */	stb r0, 0x6bd(r30)
/* 801EB010  48 00 00 50 */	b lbl_801EB060
lbl_801EB014:
/* 801EB014  7F C3 F3 78 */	mr r3, r30
/* 801EB018  48 00 2C 81 */	bl drawSelectItem__12dMenu_Ring_cFv
/* 801EB01C  7F C3 F3 78 */	mr r3, r30
/* 801EB020  48 00 1F 7D */	bl drawItem2__12dMenu_Ring_cFv
/* 801EB024  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801EB028  81 83 00 00 */	lwz r12, 0(r3)
/* 801EB02C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EB030  7D 89 03 A6 */	mtctr r12
/* 801EB034  4E 80 04 21 */	bctrl 
/* 801EB038  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 801EB03C  80 7E 03 70 */	lwz r3, 0x370(r30)
/* 801EB040  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 801EB044  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801EB048  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 801EB04C  80 7E 03 70 */	lwz r3, 0x370(r30)
/* 801EB050  7F E4 FB 78 */	mr r4, r31
/* 801EB054  4B FF 04 C1 */	bl draw__19dMenu_ItemExplain_cFP13J2DOrthoGraph
/* 801EB058  38 00 00 00 */	li r0, 0
/* 801EB05C  98 1E 06 BD */	stb r0, 0x6bd(r30)
lbl_801EB060:
/* 801EB060  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801EB064  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801EB068  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801EB06C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801EB070  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801EB074  7C 08 03 A6 */	mtlr r0
/* 801EB078  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801EB07C  4E 80 00 20 */	blr 
