lbl_8021EA14:
/* 8021EA14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021EA18  7C 08 02 A6 */	mflr r0
/* 8021EA1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021EA20  39 61 00 30 */	addi r11, r1, 0x30
/* 8021EA24  48 14 37 A9 */	bl _savegpr_25
/* 8021EA28  7C 7F 1B 78 */	mr r31, r3
/* 8021EA2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021EA30  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8021EA34  38 7B 4E 20 */	addi r3, r27, 0x4e20
/* 8021EA38  81 9B 4E 20 */	lwz r12, 0x4e20(r27)
/* 8021EA3C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8021EA40  7D 89 03 A6 */	mtctr r12
/* 8021EA44  4E 80 04 21 */	bctrl 
/* 8021EA48  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8021EA4C  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8021EA50  2C 00 00 01 */	cmpwi r0, 1
/* 8021EA54  40 82 00 1C */	bne lbl_8021EA70
/* 8021EA58  3C 60 00 06 */	lis r3, 0x0006 /* 0x0005A400@ha */
/* 8021EA5C  38 63 A4 00 */	addi r3, r3, 0xA400 /* 0x0005A400@l */
/* 8021EA60  38 80 00 00 */	li r4, 0
/* 8021EA64  4B E0 19 39 */	bl fopMsgM_createExpHeap__FUlP7JKRHeap
/* 8021EA68  90 7F 01 00 */	stw r3, 0x100(r31)
/* 8021EA6C  48 00 00 18 */	b lbl_8021EA84
lbl_8021EA70:
/* 8021EA70  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060800@ha */
/* 8021EA74  38 63 08 00 */	addi r3, r3, 0x0800 /* 0x00060800@l */
/* 8021EA78  38 80 00 00 */	li r4, 0
/* 8021EA7C  4B E0 19 21 */	bl fopMsgM_createExpHeap__FUlP7JKRHeap
/* 8021EA80  90 7F 01 00 */	stw r3, 0x100(r31)
lbl_8021EA84:
/* 8021EA84  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8021EA88  4B DF 07 45 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8021EA8C  7C 7E 1B 78 */	mr r30, r3
/* 8021EA90  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8021EA94  48 0A FC F1 */	bl getTotalFreeSize__7JKRHeapFv
/* 8021EA98  38 7B 4E 00 */	addi r3, r27, 0x4e00
/* 8021EA9C  3C 80 80 3A */	lis r4, d_meter_d_meter2__stringBase0@ha
/* 8021EAA0  38 84 93 38 */	addi r4, r4, d_meter_d_meter2__stringBase0@l
/* 8021EAA4  48 14 9E F1 */	bl strcmp
/* 8021EAA8  2C 03 00 00 */	cmpwi r3, 0
/* 8021EAAC  40 82 00 18 */	bne lbl_8021EAC4
/* 8021EAB0  38 00 00 00 */	li r0, 0
/* 8021EAB4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021EAB8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021EABC  98 03 00 BC */	stb r0, 0xbc(r3)
/* 8021EAC0  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_8021EAC4:
/* 8021EAC4  38 60 00 00 */	li r3, 0
/* 8021EAC8  90 7F 01 28 */	stw r3, 0x128(r31)
/* 8021EACC  80 1F 01 28 */	lwz r0, 0x128(r31)
/* 8021EAD0  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 8021EAD4  90 7F 01 24 */	stw r3, 0x124(r31)
/* 8021EAD8  98 7F 01 E5 */	stb r3, 0x1e5(r31)
/* 8021EADC  B0 7F 01 B6 */	sth r3, 0x1b6(r31)
/* 8021EAE0  98 7F 01 E6 */	stb r3, 0x1e6(r31)
/* 8021EAE4  98 7F 01 E7 */	stb r3, 0x1e7(r31)
/* 8021EAE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021EAEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EAF0  3B A3 00 F8 */	addi r29, r3, 0xf8
/* 8021EAF4  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8021EAF8  98 1F 01 FB */	stb r0, 0x1fb(r31)
/* 8021EAFC  3B 83 00 EC */	addi r28, r3, 0xec
/* 8021EB00  88 03 00 EC */	lbz r0, 0xec(r3)
/* 8021EB04  98 1F 01 DA */	stb r0, 0x1da(r31)
/* 8021EB08  38 00 00 32 */	li r0, 0x32
/* 8021EB0C  98 1F 01 FC */	stb r0, 0x1fc(r31)
/* 8021EB10  88 03 00 F4 */	lbz r0, 0xf4(r3)
/* 8021EB14  98 1F 01 DB */	stb r0, 0x1db(r31)
/* 8021EB18  3B 20 00 00 */	li r25, 0
/* 8021EB1C  3B 63 00 9C */	addi r27, r3, 0x9c
lbl_8021EB20:
/* 8021EB20  7F 63 DB 78 */	mr r3, r27
/* 8021EB24  38 19 00 0F */	addi r0, r25, 0xf
/* 8021EB28  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021EB2C  38 A0 00 01 */	li r5, 1
/* 8021EB30  4B E1 45 01 */	bl getItem__17dSv_player_item_cCFib
/* 8021EB34  7C 64 1B 78 */	mr r4, r3
/* 8021EB38  7F A3 EB 78 */	mr r3, r29
/* 8021EB3C  4B E1 55 BD */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8021EB40  7F 5F CA 14 */	add r26, r31, r25
/* 8021EB44  98 7A 01 F6 */	stb r3, 0x1f6(r26)
/* 8021EB48  7F 83 E3 78 */	mr r3, r28
/* 8021EB4C  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8021EB50  4B E1 54 2D */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8021EB54  98 7A 01 F3 */	stb r3, 0x1f3(r26)
/* 8021EB58  3B 39 00 01 */	addi r25, r25, 1
/* 8021EB5C  2C 19 00 03 */	cmpwi r25, 3
/* 8021EB60  41 80 FF C0 */	blt lbl_8021EB20
/* 8021EB64  3B 20 00 00 */	li r25, 0
/* 8021EB68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021EB6C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
lbl_8021EB70:
/* 8021EB70  7F 63 DB 78 */	mr r3, r27
/* 8021EB74  7F 24 CB 78 */	mr r4, r25
/* 8021EB78  4B E1 3E E5 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8021EB7C  38 19 01 F9 */	addi r0, r25, 0x1f9
/* 8021EB80  7C 7F 01 AE */	stbx r3, r31, r0
/* 8021EB84  3B 39 00 01 */	addi r25, r25, 1
/* 8021EB88  2C 19 00 02 */	cmpwi r25, 2
/* 8021EB8C  41 80 FF E4 */	blt lbl_8021EB70
/* 8021EB90  3B 20 00 00 */	li r25, 0
lbl_8021EB94:
/* 8021EB94  7F 83 E3 78 */	mr r3, r28
/* 8021EB98  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8021EB9C  4B E1 54 95 */	bl getBottleNum__24dSv_player_item_record_cCFUc
/* 8021EBA0  38 19 01 EF */	addi r0, r25, 0x1ef
/* 8021EBA4  7C 7F 01 AE */	stbx r3, r31, r0
/* 8021EBA8  3B 39 00 01 */	addi r25, r25, 1
/* 8021EBAC  2C 19 00 04 */	cmpwi r25, 4
/* 8021EBB0  41 80 FF E4 */	blt lbl_8021EB94
/* 8021EBB4  38 80 00 00 */	li r4, 0
/* 8021EBB8  98 9F 01 E8 */	stb r4, 0x1e8(r31)
/* 8021EBBC  98 9F 01 E9 */	stb r4, 0x1e9(r31)
/* 8021EBC0  98 9F 01 EA */	stb r4, 0x1ea(r31)
/* 8021EBC4  98 9F 01 EB */	stb r4, 0x1eb(r31)
/* 8021EBC8  7C 83 23 78 */	mr r3, r4
/* 8021EBCC  38 00 00 05 */	li r0, 5
/* 8021EBD0  7C 09 03 A6 */	mtctr r0
lbl_8021EBD4:
/* 8021EBD4  38 03 01 B8 */	addi r0, r3, 0x1b8
/* 8021EBD8  7C 9F 03 2E */	sthx r4, r31, r0
/* 8021EBDC  38 63 00 02 */	addi r3, r3, 2
/* 8021EBE0  42 00 FF F4 */	bdnz lbl_8021EBD4
/* 8021EBE4  38 00 00 00 */	li r0, 0
/* 8021EBE8  98 1F 01 EC */	stb r0, 0x1ec(r31)
/* 8021EBEC  98 1F 01 ED */	stb r0, 0x1ed(r31)
/* 8021EBF0  98 1F 01 EE */	stb r0, 0x1ee(r31)
/* 8021EBF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021EBF8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8021EBFC  A0 04 00 02 */	lhz r0, 2(r4)
/* 8021EC00  B0 1F 01 92 */	sth r0, 0x192(r31)
/* 8021EC04  A8 1F 01 92 */	lha r0, 0x192(r31)
/* 8021EC08  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8021EC0C  B0 04 5E 16 */	sth r0, 0x5e16(r4)
/* 8021EC10  A0 04 00 00 */	lhz r0, 0(r4)
/* 8021EC14  B0 1F 01 94 */	sth r0, 0x194(r31)
/* 8021EC18  88 04 00 1B */	lbz r0, 0x1b(r4)
/* 8021EC1C  B0 1F 01 96 */	sth r0, 0x196(r31)
/* 8021EC20  A8 1F 01 96 */	lha r0, 0x196(r31)
/* 8021EC24  B0 04 5D CE */	sth r0, 0x5dce(r4)
/* 8021EC28  88 04 00 1A */	lbz r0, 0x1a(r4)
/* 8021EC2C  B0 1F 01 98 */	sth r0, 0x198(r31)
/* 8021EC30  A0 04 00 08 */	lhz r0, 8(r4)
/* 8021EC34  7C 00 07 34 */	extsh r0, r0
/* 8021EC38  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8021EC3C  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 8021EC40  90 04 5D D8 */	stw r0, 0x5dd8(r4)
/* 8021EC44  A0 04 00 06 */	lhz r0, 6(r4)
/* 8021EC48  7C 00 07 34 */	extsh r0, r0
/* 8021EC4C  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 8021EC50  80 04 5D E0 */	lwz r0, 0x5de0(r4)
/* 8021EC54  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 8021EC58  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8021EC5C  90 04 5D E4 */	stw r0, 0x5de4(r4)
/* 8021EC60  80 04 5D E8 */	lwz r0, 0x5de8(r4)
/* 8021EC64  90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 8021EC68  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 8021EC6C  D0 1F 01 30 */	stfs f0, 0x130(r31)
/* 8021EC70  38 64 01 14 */	addi r3, r4, 0x114
/* 8021EC74  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 8021EC78  4B E1 56 C9 */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 8021EC7C  98 7F 01 C2 */	stb r3, 0x1c2(r31)
/* 8021EC80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021EC84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EC88  88 03 5E A1 */	lbz r0, 0x5ea1(r3)
/* 8021EC8C  98 1F 01 C3 */	stb r0, 0x1c3(r31)
/* 8021EC90  A0 03 00 04 */	lhz r0, 4(r3)
/* 8021EC94  B0 1F 01 B0 */	sth r0, 0x1b0(r31)
/* 8021EC98  88 03 09 74 */	lbz r0, 0x974(r3)
/* 8021EC9C  B0 1F 01 B2 */	sth r0, 0x1b2(r31)
/* 8021ECA0  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 8021ECA4  98 1F 01 C4 */	stb r0, 0x1c4(r31)
/* 8021ECA8  88 03 5E 4A */	lbz r0, 0x5e4a(r3)
/* 8021ECAC  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ECB0  98 1F 01 DC */	stb r0, 0x1dc(r31)
/* 8021ECB4  38 60 00 00 */	li r3, 0
/* 8021ECB8  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 8021ECBC  38 00 00 02 */	li r0, 2
/* 8021ECC0  7C 09 03 A6 */	mtctr r0
lbl_8021ECC4:
/* 8021ECC4  7C 9F 1A 14 */	add r4, r31, r3
/* 8021ECC8  D0 04 01 34 */	stfs f0, 0x134(r4)
/* 8021ECCC  D0 04 01 3C */	stfs f0, 0x13c(r4)
/* 8021ECD0  38 63 00 04 */	addi r3, r3, 4
/* 8021ECD4  42 00 FF F0 */	bdnz lbl_8021ECC4
/* 8021ECD8  C0 02 AF CC */	lfs f0, lit_4663(r2)
/* 8021ECDC  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 8021ECE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021ECE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021ECE8  88 03 5E 1D */	lbz r0, 0x5e1d(r3)
/* 8021ECEC  98 1F 01 C5 */	stb r0, 0x1c5(r31)
/* 8021ECF0  38 00 00 00 */	li r0, 0
/* 8021ECF4  98 1F 01 C6 */	stb r0, 0x1c6(r31)
/* 8021ECF8  88 03 5E 43 */	lbz r0, 0x5e43(r3)
/* 8021ECFC  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED00  98 1F 01 DD */	stb r0, 0x1dd(r31)
/* 8021ED04  38 60 00 00 */	li r3, 0
/* 8021ED08  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 8021ED0C  38 00 00 02 */	li r0, 2
/* 8021ED10  7C 09 03 A6 */	mtctr r0
lbl_8021ED14:
/* 8021ED14  7C 9F 1A 14 */	add r4, r31, r3
/* 8021ED18  D0 04 01 48 */	stfs f0, 0x148(r4)
/* 8021ED1C  D0 04 01 50 */	stfs f0, 0x150(r4)
/* 8021ED20  38 63 00 04 */	addi r3, r3, 4
/* 8021ED24  42 00 FF F0 */	bdnz lbl_8021ED14
/* 8021ED28  C0 02 AF CC */	lfs f0, lit_4663(r2)
/* 8021ED2C  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 8021ED30  38 80 00 00 */	li r4, 0
/* 8021ED34  98 9F 01 E4 */	stb r4, 0x1e4(r31)
/* 8021ED38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021ED3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021ED40  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8021ED44  98 1F 01 E2 */	stb r0, 0x1e2(r31)
/* 8021ED48  98 9F 01 E3 */	stb r4, 0x1e3(r31)
/* 8021ED4C  98 9F 01 FE */	stb r4, 0x1fe(r31)
/* 8021ED50  98 9F 01 FD */	stb r4, 0x1fd(r31)
/* 8021ED54  98 9F 01 FF */	stb r4, 0x1ff(r31)
/* 8021ED58  98 9F 02 00 */	stb r4, 0x200(r31)
/* 8021ED5C  98 9F 02 01 */	stb r4, 0x201(r31)
/* 8021ED60  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8021ED64  98 1F 01 C7 */	stb r0, 0x1c7(r31)
/* 8021ED68  88 03 5E 1C */	lbz r0, 0x5e1c(r3)
/* 8021ED6C  98 1F 01 C8 */	stb r0, 0x1c8(r31)
/* 8021ED70  88 03 5E 42 */	lbz r0, 0x5e42(r3)
/* 8021ED74  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED78  98 1F 01 DE */	stb r0, 0x1de(r31)
/* 8021ED7C  88 03 5E 5E */	lbz r0, 0x5e5e(r3)
/* 8021ED80  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED84  98 1F 01 DF */	stb r0, 0x1df(r31)
/* 8021ED88  88 03 5E 62 */	lbz r0, 0x5e62(r3)
/* 8021ED8C  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 8021ED90  98 1F 01 E0 */	stb r0, 0x1e0(r31)
/* 8021ED94  3B 20 00 00 */	li r25, 0
lbl_8021ED98:
/* 8021ED98  7F 23 CB 78 */	mr r3, r25
/* 8021ED9C  4B E0 F0 59 */	bl dComIfGp_setSelectItem__Fi
/* 8021EDA0  3B 39 00 01 */	addi r25, r25, 1
/* 8021EDA4  2C 19 00 02 */	cmpwi r25, 2
/* 8021EDA8  41 80 FF F0 */	blt lbl_8021ED98
/* 8021EDAC  38 60 00 00 */	li r3, 0
/* 8021EDB0  4B E0 F1 6D */	bl dComIfGp_getSelectItem__Fi
/* 8021EDB4  98 7F 01 D2 */	stb r3, 0x1d2(r31)
/* 8021EDB8  38 60 00 01 */	li r3, 1
/* 8021EDBC  4B E0 F1 61 */	bl dComIfGp_getSelectItem__Fi
/* 8021EDC0  98 7F 01 D4 */	stb r3, 0x1d4(r31)
/* 8021EDC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021EDC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EDCC  88 03 5E 5C */	lbz r0, 0x5e5c(r3)
/* 8021EDD0  98 1F 01 D3 */	stb r0, 0x1d3(r31)
/* 8021EDD4  88 03 5E 60 */	lbz r0, 0x5e60(r3)
/* 8021EDD8  98 1F 01 D5 */	stb r0, 0x1d5(r31)
/* 8021EDDC  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 8021EDE0  D0 1F 01 88 */	stfs f0, 0x188(r31)
/* 8021EDE4  D0 1F 01 8C */	stfs f0, 0x18c(r31)
/* 8021EDE8  3B 20 00 00 */	li r25, 0
/* 8021EDEC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021EDF0  3B 63 01 88 */	addi r27, r3, g_meter2_info@l
lbl_8021EDF4:
/* 8021EDF4  7F 63 DB 78 */	mr r3, r27
/* 8021EDF8  7F 24 CB 78 */	mr r4, r25
/* 8021EDFC  4B FF DB 55 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 8021EE00  7F 5F CA 14 */	add r26, r31, r25
/* 8021EE04  98 7A 01 D6 */	stb r3, 0x1d6(r26)
/* 8021EE08  7F 23 CB 78 */	mr r3, r25
/* 8021EE0C  4B E0 F7 B5 */	bl dComIfGp_getSelectItemNum__Fi
/* 8021EE10  98 7A 01 D8 */	stb r3, 0x1d8(r26)
/* 8021EE14  3B 39 00 01 */	addi r25, r25, 1
/* 8021EE18  2C 19 00 02 */	cmpwi r25, 2
/* 8021EE1C  41 80 FF D8 */	blt lbl_8021EDF4
/* 8021EE20  38 00 00 00 */	li r0, 0
/* 8021EE24  98 1F 01 E1 */	stb r0, 0x1e1(r31)
/* 8021EE28  B0 1F 01 B4 */	sth r0, 0x1b4(r31)
/* 8021EE2C  C0 02 AF C8 */	lfs f0, lit_4662(r2)
/* 8021EE30  D0 1F 01 5C */	stfs f0, 0x15c(r31)
/* 8021EE34  38 60 00 00 */	li r3, 0
/* 8021EE38  38 00 00 04 */	li r0, 4
/* 8021EE3C  7C 09 03 A6 */	mtctr r0
lbl_8021EE40:
/* 8021EE40  7C 9F 1A 14 */	add r4, r31, r3
/* 8021EE44  D0 04 01 60 */	stfs f0, 0x160(r4)
/* 8021EE48  D0 04 01 74 */	stfs f0, 0x174(r4)
/* 8021EE4C  38 63 00 04 */	addi r3, r3, 4
/* 8021EE50  42 00 FF F0 */	bdnz lbl_8021EE40
/* 8021EE54  38 80 00 00 */	li r4, 0
/* 8021EE58  B0 9F 01 90 */	sth r4, 0x190(r31)
/* 8021EE5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021EE60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021EE64  88 03 5E 33 */	lbz r0, 0x5e33(r3)
/* 8021EE68  98 1F 01 C9 */	stb r0, 0x1c9(r31)
/* 8021EE6C  88 03 5E 26 */	lbz r0, 0x5e26(r3)
/* 8021EE70  98 1F 01 CA */	stb r0, 0x1ca(r31)
/* 8021EE74  88 03 5E 2F */	lbz r0, 0x5e2f(r3)
/* 8021EE78  98 1F 01 CB */	stb r0, 0x1cb(r31)
/* 8021EE7C  88 03 5E 32 */	lbz r0, 0x5e32(r3)
/* 8021EE80  98 1F 01 CC */	stb r0, 0x1cc(r31)
/* 8021EE84  88 03 5E 1F */	lbz r0, 0x5e1f(r3)
/* 8021EE88  98 1F 01 CD */	stb r0, 0x1cd(r31)
/* 8021EE8C  88 03 5E 21 */	lbz r0, 0x5e21(r3)
/* 8021EE90  98 1F 01 CE */	stb r0, 0x1ce(r31)
/* 8021EE94  88 03 5E 64 */	lbz r0, 0x5e64(r3)
/* 8021EE98  98 1F 01 CF */	stb r0, 0x1cf(r31)
/* 8021EE9C  88 03 5E 68 */	lbz r0, 0x5e68(r3)
/* 8021EEA0  98 1F 01 D0 */	stb r0, 0x1d0(r31)
/* 8021EEA4  88 03 5E 20 */	lbz r0, 0x5e20(r3)
/* 8021EEA8  98 1F 01 D1 */	stb r0, 0x1d1(r31)
/* 8021EEAC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021EEB0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021EEB4  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 8021EEB8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 8021EEBC  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 8021EEC0  B0 9F 01 9A */	sth r4, 0x19a(r31)
/* 8021EEC4  38 60 08 64 */	li r3, 0x864
/* 8021EEC8  48 0A FD 85 */	bl __nw__FUl
/* 8021EECC  7C 60 1B 79 */	or. r0, r3, r3
/* 8021EED0  41 82 00 10 */	beq lbl_8021EEE0
/* 8021EED4  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 8021EED8  4B FF 0B DD */	bl __ct__13dMeter2Draw_cFP10JKRExpHeap
/* 8021EEDC  7C 60 1B 78 */	mr r0, r3
lbl_8021EEE0:
/* 8021EEE0  90 1F 01 0C */	stw r0, 0x10c(r31)
/* 8021EEE4  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021EEE8  4B FF 6E C1 */	bl getNowLightDropRateCalc__13dMeter2Draw_cFv
/* 8021EEEC  D0 3F 01 30 */	stfs f1, 0x130(r31)
/* 8021EEF0  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8021EEF4  48 0A F8 91 */	bl getTotalFreeSize__7JKRHeapFv
/* 8021EEF8  3B 20 00 00 */	li r25, 0
/* 8021EEFC  3B 80 00 00 */	li r28, 0
lbl_8021EF00:
/* 8021EF00  80 1F 01 28 */	lwz r0, 0x128(r31)
/* 8021EF04  28 00 00 00 */	cmplwi r0, 0
/* 8021EF08  40 82 01 48 */	bne lbl_8021F050
/* 8021EF0C  38 1C 01 D2 */	addi r0, r28, 0x1d2
/* 8021EF10  7C 1F 00 AE */	lbzx r0, r31, r0
/* 8021EF14  28 00 00 50 */	cmplwi r0, 0x50
/* 8021EF18  41 82 00 1C */	beq lbl_8021EF34
/* 8021EF1C  28 00 00 70 */	cmplwi r0, 0x70
/* 8021EF20  41 82 00 14 */	beq lbl_8021EF34
/* 8021EF24  28 00 00 71 */	cmplwi r0, 0x71
/* 8021EF28  41 82 00 0C */	beq lbl_8021EF34
/* 8021EF2C  28 00 00 72 */	cmplwi r0, 0x72
/* 8021EF30  40 82 00 30 */	bne lbl_8021EF60
lbl_8021EF34:
/* 8021EF34  7F 23 CB 78 */	mr r3, r25
/* 8021EF38  4B E0 F7 51 */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 8021EF3C  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 8021EF40  7F 23 CB 78 */	mr r3, r25
/* 8021EF44  4B E0 F6 7D */	bl dComIfGp_getSelectItemNum__Fi
/* 8021EF48  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8021EF4C  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021EF50  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8021EF54  7F 66 DB 78 */	mr r6, r27
/* 8021EF58  4B FF BC 2D */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 8021EF5C  48 00 00 F4 */	b lbl_8021F050
lbl_8021EF60:
/* 8021EF60  28 00 00 76 */	cmplwi r0, 0x76
/* 8021EF64  40 82 00 30 */	bne lbl_8021EF94
/* 8021EF68  7F 23 CB 78 */	mr r3, r25
/* 8021EF6C  4B E0 F7 1D */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 8021EF70  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 8021EF74  7F 23 CB 78 */	mr r3, r25
/* 8021EF78  4B E0 F6 49 */	bl dComIfGp_getSelectItemNum__Fi
/* 8021EF7C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8021EF80  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021EF84  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8021EF88  7F 66 DB 78 */	mr r6, r27
/* 8021EF8C  4B FF BB F9 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 8021EF90  48 00 00 C0 */	b lbl_8021F050
lbl_8021EF94:
/* 8021EF94  28 00 00 43 */	cmplwi r0, 0x43
/* 8021EF98  41 82 00 2C */	beq lbl_8021EFC4
/* 8021EF9C  28 00 00 53 */	cmplwi r0, 0x53
/* 8021EFA0  41 82 00 24 */	beq lbl_8021EFC4
/* 8021EFA4  28 00 00 54 */	cmplwi r0, 0x54
/* 8021EFA8  41 82 00 1C */	beq lbl_8021EFC4
/* 8021EFAC  28 00 00 55 */	cmplwi r0, 0x55
/* 8021EFB0  41 82 00 14 */	beq lbl_8021EFC4
/* 8021EFB4  28 00 00 56 */	cmplwi r0, 0x56
/* 8021EFB8  41 82 00 0C */	beq lbl_8021EFC4
/* 8021EFBC  28 00 00 5A */	cmplwi r0, 0x5a
/* 8021EFC0  40 82 00 1C */	bne lbl_8021EFDC
lbl_8021EFC4:
/* 8021EFC4  88 DD 00 00 */	lbz r6, 0(r29)
/* 8021EFC8  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021EFCC  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8021EFD0  88 BF 01 DA */	lbz r5, 0x1da(r31)
/* 8021EFD4  4B FF BB B1 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 8021EFD8  48 00 00 78 */	b lbl_8021F050
lbl_8021EFDC:
/* 8021EFDC  28 00 00 4B */	cmplwi r0, 0x4b
/* 8021EFE0  40 82 00 1C */	bne lbl_8021EFFC
/* 8021EFE4  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021EFE8  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8021EFEC  88 BF 01 DB */	lbz r5, 0x1db(r31)
/* 8021EFF0  38 C0 00 32 */	li r6, 0x32
/* 8021EFF4  4B FF BB 91 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 8021EFF8  48 00 00 58 */	b lbl_8021F050
lbl_8021EFFC:
/* 8021EFFC  28 00 00 59 */	cmplwi r0, 0x59
/* 8021F000  40 82 00 50 */	bne lbl_8021F050
/* 8021F004  7F 23 CB 78 */	mr r3, r25
/* 8021F008  4B E0 F5 B9 */	bl dComIfGp_getSelectItemNum__Fi
/* 8021F00C  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 8021F010  7F 23 CB 78 */	mr r3, r25
/* 8021F014  4B E0 F6 75 */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 8021F018  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 8021F01C  88 1F 01 DA */	lbz r0, 0x1da(r31)
/* 8021F020  7C 1A 00 40 */	cmplw r26, r0
/* 8021F024  40 81 00 08 */	ble lbl_8021F02C
/* 8021F028  7C 1A 03 78 */	mr r26, r0
lbl_8021F02C:
/* 8021F02C  88 7D 00 00 */	lbz r3, 0(r29)
/* 8021F030  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021F034  7C 06 00 40 */	cmplw r6, r0
/* 8021F038  40 80 00 08 */	bge lbl_8021F040
/* 8021F03C  7C 66 1B 78 */	mr r6, r3
lbl_8021F040:
/* 8021F040  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021F044  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8021F048  7F 45 D3 78 */	mr r5, r26
/* 8021F04C  4B FF BB 39 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
lbl_8021F050:
/* 8021F050  3B 39 00 01 */	addi r25, r25, 1
/* 8021F054  2C 19 00 02 */	cmpwi r25, 2
/* 8021F058  3B 9C 00 02 */	addi r28, r28, 2
/* 8021F05C  41 80 FE A4 */	blt lbl_8021EF00
/* 8021F060  38 00 00 00 */	li r0, 0
/* 8021F064  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8021F068  4B FE E5 E9 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 8021F06C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F070  41 82 00 2C */	beq lbl_8021F09C
/* 8021F074  38 60 00 34 */	li r3, 0x34
/* 8021F078  48 0A FB D5 */	bl __nw__FUl
/* 8021F07C  7C 60 1B 79 */	or. r0, r3, r3
/* 8021F080  41 82 00 14 */	beq lbl_8021F094
/* 8021F084  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 8021F088  80 84 00 78 */	lwz r4, 0x78(r4)
/* 8021F08C  4B FE E8 BD */	bl __ct__11dMeterMap_cFP9J2DScreen
/* 8021F090  7C 60 1B 78 */	mr r0, r3
lbl_8021F094:
/* 8021F094  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8021F098  48 00 00 20 */	b lbl_8021F0B8
lbl_8021F09C:
/* 8021F09C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021F0A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021F0A4  88 03 00 BF */	lbz r0, 0xbf(r3)
/* 8021F0A8  28 00 00 02 */	cmplwi r0, 2
/* 8021F0AC  40 82 00 0C */	bne lbl_8021F0B8
/* 8021F0B0  38 00 00 00 */	li r0, 0
/* 8021F0B4  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_8021F0B8:
/* 8021F0B8  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 8021F0BC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8021F0C0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8021F0C4  90 03 00 20 */	stw r0, 0x20(r3)
/* 8021F0C8  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8021F0CC  48 0A F6 B9 */	bl getTotalFreeSize__7JKRHeapFv
/* 8021F0D0  38 60 50 00 */	li r3, 0x5000
/* 8021F0D4  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 8021F0D8  4B E0 12 C5 */	bl fopMsgM_createExpHeap__FUlP7JKRHeap
/* 8021F0DC  90 7F 01 04 */	stw r3, 0x104(r31)
/* 8021F0E0  38 00 00 00 */	li r0, 0
/* 8021F0E4  90 1F 01 08 */	stw r0, 0x108(r31)
/* 8021F0E8  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8021F0EC  90 1F 01 14 */	stw r0, 0x114(r31)
/* 8021F0F0  90 1F 01 18 */	stw r0, 0x118(r31)
/* 8021F0F4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8021F0F8  48 0A F6 8D */	bl getTotalFreeSize__7JKRHeapFv
/* 8021F0FC  38 00 00 00 */	li r0, 0
/* 8021F100  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8021F104  7F C3 F3 78 */	mr r3, r30
/* 8021F108  4B DF 00 C5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8021F10C  38 60 00 04 */	li r3, 4
/* 8021F110  39 61 00 30 */	addi r11, r1, 0x30
/* 8021F114  48 14 31 05 */	bl _restgpr_25
/* 8021F118  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021F11C  7C 08 03 A6 */	mtlr r0
/* 8021F120  38 21 00 30 */	addi r1, r1, 0x30
/* 8021F124  4E 80 00 20 */	blr 
