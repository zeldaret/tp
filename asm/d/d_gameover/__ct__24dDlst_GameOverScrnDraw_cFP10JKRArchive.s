lbl_8019B940:
/* 8019B940  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8019B944  7C 08 02 A6 */	mflr r0
/* 8019B948  90 01 00 84 */	stw r0, 0x84(r1)
/* 8019B94C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8019B950  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8019B954  7C 7F 1B 78 */	mr r31, r3
/* 8019B958  7C 9E 23 78 */	mr r30, r4
/* 8019B95C  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha
/* 8019B960  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l
/* 8019B964  90 1F 00 00 */	stw r0, 0(r31)
/* 8019B968  3C 60 80 3C */	lis r3, __vt__24dDlst_GameOverScrnDraw_c@ha
/* 8019B96C  38 03 BD 68 */	addi r0, r3, __vt__24dDlst_GameOverScrnDraw_c@l
/* 8019B970  90 1F 00 00 */	stw r0, 0(r31)
/* 8019B974  38 00 FF FF */	li r0, -1
/* 8019B978  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8019B97C  38 60 01 18 */	li r3, 0x118
/* 8019B980  48 13 32 CD */	bl __nw__FUl
/* 8019B984  7C 60 1B 79 */	or. r0, r3, r3
/* 8019B988  41 82 00 0C */	beq lbl_8019B994
/* 8019B98C  48 15 CB 0D */	bl __ct__9J2DScreenFv
/* 8019B990  7C 60 1B 78 */	mr r0, r3
lbl_8019B994:
/* 8019B994  90 1F 00 04 */	stw r0, 4(r31)
/* 8019B998  80 7F 00 04 */	lwz r3, 4(r31)
/* 8019B99C  3C 80 80 39 */	lis r4, d_d_gameover__stringBase0@ha
/* 8019B9A0  38 84 4C 28 */	addi r4, r4, d_d_gameover__stringBase0@l
/* 8019B9A4  38 84 00 0E */	addi r4, r4, 0xe
/* 8019B9A8  3C A0 00 10 */	lis r5, 0x10
/* 8019B9AC  7F C6 F3 78 */	mr r6, r30
/* 8019B9B0  48 15 CC 99 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8019B9B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8019B9B8  48 0B 97 31 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8019B9BC  38 00 00 00 */	li r0, 0
/* 8019B9C0  98 1F 00 14 */	stb r0, 0x14(r31)
/* 8019B9C4  98 1F 00 15 */	stb r0, 0x15(r31)
/* 8019B9C8  98 1F 00 16 */	stb r0, 0x16(r31)
/* 8019B9CC  98 1F 00 17 */	stb r0, 0x17(r31)
/* 8019B9D0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8019B9D4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8019B9D8  88 03 00 C2 */	lbz r0, 0xc2(r3)
/* 8019B9DC  28 00 00 00 */	cmplwi r0, 0
/* 8019B9E0  41 82 00 74 */	beq lbl_8019BA54
/* 8019B9E4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8019B9E8  3C 80 62 61 */	lis r4, 0x6261 /* 0x62617365@ha */
/* 8019B9EC  38 C4 73 65 */	addi r6, r4, 0x7365 /* 0x62617365@l */
/* 8019B9F0  38 A0 6E 5F */	li r5, 0x6e5f
/* 8019B9F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019B9F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8019B9FC  7D 89 03 A6 */	mtctr r12
/* 8019BA00  4E 80 04 21 */	bctrl 
/* 8019BA04  38 00 00 00 */	li r0, 0
/* 8019BA08  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8019BA0C  C0 22 A1 84 */	lfs f1, lit_3869(r2)
/* 8019BA10  C0 0D 86 5C */	lfs f0, mFadeRate__13mDoGph_gInf_c(r13)
/* 8019BA14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8019BA18  40 82 00 3C */	bne lbl_8019BA54
/* 8019BA1C  80 0D 80 14 */	lwz r0, mFadeColor__13mDoGph_gInf_c(r13)
/* 8019BA20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019BA24  88 A1 00 0C */	lbz r5, 0xc(r1)
/* 8019BA28  98 A1 00 18 */	stb r5, 0x18(r1)
/* 8019BA2C  88 81 00 0D */	lbz r4, 0xd(r1)
/* 8019BA30  98 81 00 19 */	stb r4, 0x19(r1)
/* 8019BA34  88 61 00 0E */	lbz r3, 0xe(r1)
/* 8019BA38  98 61 00 1A */	stb r3, 0x1a(r1)
/* 8019BA3C  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8019BA40  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8019BA44  98 BF 00 14 */	stb r5, 0x14(r31)
/* 8019BA48  98 9F 00 15 */	stb r4, 0x15(r31)
/* 8019BA4C  98 7F 00 16 */	stb r3, 0x16(r31)
/* 8019BA50  98 1F 00 17 */	stb r0, 0x17(r31)
lbl_8019BA54:
/* 8019BA54  80 7F 00 04 */	lwz r3, 4(r31)
/* 8019BA58  3C 80 73 65 */	lis r4, 0x7365 /* 0x73655F62@ha */
/* 8019BA5C  38 C4 5F 62 */	addi r6, r4, 0x5F62 /* 0x73655F62@l */
/* 8019BA60  38 A0 62 61 */	li r5, 0x6261
/* 8019BA64  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BA68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8019BA6C  7D 89 03 A6 */	mtctr r12
/* 8019BA70  4E 80 04 21 */	bctrl 
/* 8019BA74  38 80 00 00 */	li r4, 0
/* 8019BA78  98 83 00 B0 */	stb r4, 0xb0(r3)
/* 8019BA7C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8019BA80  90 01 00 08 */	stw r0, 8(r1)
/* 8019BA84  90 01 00 20 */	stw r0, 0x20(r1)
/* 8019BA88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8019BA8C  98 81 00 23 */	stb r4, 0x23(r1)
/* 8019BA90  38 00 00 FF */	li r0, 0xff
/* 8019BA94  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8019BA98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019BA9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019BAA0  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 8019BAA4  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8019BAA8  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8019BAAC  3C A0 80 39 */	lis r5, d_d_gameover__stringBase0@ha
/* 8019BAB0  38 A5 4C 28 */	addi r5, r5, d_d_gameover__stringBase0@l
/* 8019BAB4  38 A5 00 22 */	addi r5, r5, 0x22
/* 8019BAB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BABC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8019BAC0  7D 89 03 A6 */	mtctr r12
/* 8019BAC4  4E 80 04 21 */	bctrl 
/* 8019BAC8  7C 7E 1B 78 */	mr r30, r3
/* 8019BACC  38 60 01 50 */	li r3, 0x150
/* 8019BAD0  48 13 31 7D */	bl __nw__FUl
/* 8019BAD4  7C 60 1B 79 */	or. r0, r3, r3
/* 8019BAD8  41 82 00 40 */	beq lbl_8019BB18
/* 8019BADC  C0 22 A1 80 */	lfs f1, lit_3868(r2)
/* 8019BAE0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8019BAE4  C0 02 A1 A0 */	lfs f0, lit_4290(r2)
/* 8019BAE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8019BAEC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8019BAF0  C0 02 A1 A4 */	lfs f0, lit_4291(r2)
/* 8019BAF4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8019BAF8  3C 80 43 54 */	lis r4, 0x4354 /* 0x43543031@ha */
/* 8019BAFC  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x43543031@l */
/* 8019BB00  38 A0 50 49 */	li r5, 0x5049
/* 8019BB04  38 E1 00 24 */	addi r7, r1, 0x24
/* 8019BB08  7F C8 F3 78 */	mr r8, r30
/* 8019BB0C  39 20 00 00 */	li r9, 0
/* 8019BB10  48 16 0C F1 */	bl func_802FC800
/* 8019BB14  7C 60 1B 78 */	mr r0, r3
lbl_8019BB18:
/* 8019BB18  90 1F 00 08 */	stw r0, 8(r31)
/* 8019BB1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8019BB20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8019BB24  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8019BB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019BB2C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8019BB30  38 81 00 14 */	addi r4, r1, 0x14
/* 8019BB34  38 A1 00 10 */	addi r5, r1, 0x10
/* 8019BB38  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BB3C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8019BB40  7D 89 03 A6 */	mtctr r12
/* 8019BB44  4E 80 04 21 */	bctrl 
/* 8019BB48  80 7F 00 04 */	lwz r3, 4(r31)
/* 8019BB4C  3C 80 64 5F */	lis r4, 0x645F /* 0x645F3030@ha */
/* 8019BB50  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x645F3030@l */
/* 8019BB54  3C 80 00 67 */	lis r4, 0x0067 /* 0x00676F6C@ha */
/* 8019BB58  38 A4 6F 6C */	addi r5, r4, 0x6F6C /* 0x00676F6C@l */
/* 8019BB5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BB60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8019BB64  7D 89 03 A6 */	mtctr r12
/* 8019BB68  4E 80 04 21 */	bctrl 
/* 8019BB6C  7C 7E 1B 78 */	mr r30, r3
/* 8019BB70  4B E7 90 31 */	bl mDoExt_getSubFont__Fv
/* 8019BB74  7C 64 1B 78 */	mr r4, r3
/* 8019BB78  7F C3 F3 78 */	mr r3, r30
/* 8019BB7C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8019BB80  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8019BB84  7D 89 03 A6 */	mtctr r12
/* 8019BB88  4E 80 04 21 */	bctrl 
/* 8019BB8C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8019BB90  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8019BB94  38 80 03 81 */	li r4, 0x381
/* 8019BB98  38 A1 00 34 */	addi r5, r1, 0x34
/* 8019BB9C  38 C0 00 00 */	li r6, 0
/* 8019BBA0  48 08 06 B1 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8019BBA4  7F C3 F3 78 */	mr r3, r30
/* 8019BBA8  38 81 00 34 */	addi r4, r1, 0x34
/* 8019BBAC  4C C6 31 82 */	crclr 6
/* 8019BBB0  48 16 4A B1 */	bl setString__10J2DTextBoxFPCce
/* 8019BBB4  38 60 00 24 */	li r3, 0x24
/* 8019BBB8  48 13 30 95 */	bl __nw__FUl
/* 8019BBBC  7C 60 1B 79 */	or. r0, r3, r3
/* 8019BBC0  41 82 00 14 */	beq lbl_8019BBD4
/* 8019BBC4  38 80 00 06 */	li r4, 6
/* 8019BBC8  38 A0 00 FF */	li r5, 0xff
/* 8019BBCC  48 0A 9D 69 */	bl __ct__15dMsgScrnLight_cFUcUc
/* 8019BBD0  7C 60 1B 78 */	mr r0, r3
lbl_8019BBD4:
/* 8019BBD4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8019BBD8  C0 02 A1 80 */	lfs f0, lit_3868(r2)
/* 8019BBDC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8019BBE0  7F E3 FB 78 */	mr r3, r31
/* 8019BBE4  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8019BBE8  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8019BBEC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8019BBF0  7C 08 03 A6 */	mtlr r0
/* 8019BBF4  38 21 00 80 */	addi r1, r1, 0x80
/* 8019BBF8  4E 80 00 20 */	blr 
