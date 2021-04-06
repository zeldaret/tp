lbl_80214EB4:
/* 80214EB4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80214EB8  7C 08 02 A6 */	mflr r0
/* 80214EBC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80214EC0  39 61 00 90 */	addi r11, r1, 0x90
/* 80214EC4  48 14 D3 11 */	bl _savegpr_27
/* 80214EC8  7C 7C 1B 78 */	mr r28, r3
/* 80214ECC  7C 9B 23 78 */	mr r27, r4
/* 80214ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80214ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80214ED8  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80214EDC  80 7C 01 CC */	lwz r3, 0x1cc(r28)
/* 80214EE0  54 9D 15 BA */	rlwinm r29, r4, 2, 0x16, 0x1d
/* 80214EE4  7F DC EA 14 */	add r30, r28, r29
/* 80214EE8  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 80214EEC  48 04 08 E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80214EF0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80214EF4  40 82 00 4C */	bne lbl_80214F40
/* 80214EF8  80 7C 01 D8 */	lwz r3, 0x1d8(r28)
/* 80214EFC  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 80214F00  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80214F04  38 00 00 FF */	li r0, 0xff
/* 80214F08  98 01 00 5F */	stb r0, 0x5f(r1)
/* 80214F0C  80 03 00 58 */	lwz r0, 0x58(r3)
/* 80214F10  90 01 00 50 */	stw r0, 0x50(r1)
/* 80214F14  90 01 00 54 */	stw r0, 0x54(r1)
/* 80214F18  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80214F1C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80214F20  80 7C 01 D8 */	lwz r3, 0x1d8(r28)
/* 80214F24  38 81 00 58 */	addi r4, r1, 0x58
/* 80214F28  38 A1 00 54 */	addi r5, r1, 0x54
/* 80214F2C  48 03 F5 2D */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80214F30  7F 83 E3 78 */	mr r3, r28
/* 80214F34  38 80 00 01 */	li r4, 1
/* 80214F38  48 00 04 49 */	bl setAlphaMagicChange__13dMeter2Draw_cFb
/* 80214F3C  48 00 02 7C */	b lbl_802151B8
lbl_80214F40:
/* 80214F40  28 00 00 01 */	cmplwi r0, 1
/* 80214F44  40 82 00 68 */	bne lbl_80214FAC
/* 80214F48  38 00 00 E6 */	li r0, 0xe6
/* 80214F4C  98 01 00 40 */	stb r0, 0x40(r1)
/* 80214F50  38 00 00 AA */	li r0, 0xaa
/* 80214F54  98 01 00 41 */	stb r0, 0x41(r1)
/* 80214F58  38 00 00 00 */	li r0, 0
/* 80214F5C  98 01 00 42 */	stb r0, 0x42(r1)
/* 80214F60  38 60 00 FF */	li r3, 0xff
/* 80214F64  98 61 00 43 */	stb r3, 0x43(r1)
/* 80214F68  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80214F6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80214F70  98 61 00 48 */	stb r3, 0x48(r1)
/* 80214F74  98 61 00 49 */	stb r3, 0x49(r1)
/* 80214F78  38 00 00 8C */	li r0, 0x8c
/* 80214F7C  98 01 00 4A */	stb r0, 0x4a(r1)
/* 80214F80  98 61 00 4B */	stb r3, 0x4b(r1)
/* 80214F84  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80214F88  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80214F8C  80 7C 01 D8 */	lwz r3, 0x1d8(r28)
/* 80214F90  38 81 00 4C */	addi r4, r1, 0x4c
/* 80214F94  38 A1 00 44 */	addi r5, r1, 0x44
/* 80214F98  48 03 F4 C1 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80214F9C  7F 83 E3 78 */	mr r3, r28
/* 80214FA0  38 80 00 01 */	li r4, 1
/* 80214FA4  48 00 06 15 */	bl setAlphaKanteraChange__13dMeter2Draw_cFb
/* 80214FA8  48 00 02 10 */	b lbl_802151B8
lbl_80214FAC:
/* 80214FAC  28 00 00 02 */	cmplwi r0, 2
/* 80214FB0  40 82 02 08 */	bne lbl_802151B8
/* 80214FB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80214FB8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80214FBC  80 04 5D E0 */	lwz r0, 0x5de0(r4)
/* 80214FC0  C8 42 AE A0 */	lfd f2, lit_4925(r2)
/* 80214FC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80214FC8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80214FCC  3C 60 43 30 */	lis r3, 0x4330
/* 80214FD0  90 61 00 60 */	stw r3, 0x60(r1)
/* 80214FD4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80214FD8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80214FDC  80 04 5D E8 */	lwz r0, 0x5de8(r4)
/* 80214FE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80214FE4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80214FE8  90 61 00 68 */	stw r3, 0x68(r1)
/* 80214FEC  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80214FF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80214FF4  EC 21 00 24 */	fdivs f1, f1, f0
/* 80214FF8  C0 02 AE B4 */	lfs f0, lit_6143(r2)
/* 80214FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80215000  4C 40 13 82 */	cror 2, 0, 2
/* 80215004  40 82 00 A4 */	bne lbl_802150A8
/* 80215008  38 60 00 FF */	li r3, 0xff
/* 8021500C  98 61 00 30 */	stb r3, 0x30(r1)
/* 80215010  38 00 00 0A */	li r0, 0xa
/* 80215014  98 01 00 31 */	stb r0, 0x31(r1)
/* 80215018  98 01 00 32 */	stb r0, 0x32(r1)
/* 8021501C  98 61 00 33 */	stb r3, 0x33(r1)
/* 80215020  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80215024  90 01 00 34 */	stw r0, 0x34(r1)
/* 80215028  98 61 00 38 */	stb r3, 0x38(r1)
/* 8021502C  38 00 00 64 */	li r0, 0x64
/* 80215030  98 01 00 39 */	stb r0, 0x39(r1)
/* 80215034  98 01 00 3A */	stb r0, 0x3a(r1)
/* 80215038  98 61 00 3B */	stb r3, 0x3b(r1)
/* 8021503C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80215040  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80215044  80 7C 01 D8 */	lwz r3, 0x1d8(r28)
/* 80215048  38 81 00 3C */	addi r4, r1, 0x3c
/* 8021504C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80215050  48 03 F4 09 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80215054  7F 83 E3 78 */	mr r3, r28
/* 80215058  80 9C 05 3C */	lwz r4, 0x53c(r28)
/* 8021505C  4B FF EE 39 */	bl playOxygenBpkAnimation__13dMeter2Draw_cFP11J2DAnmColor
/* 80215060  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 80215064  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80215068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8021506C  40 81 01 40 */	ble lbl_802151AC
/* 80215070  38 00 00 2B */	li r0, 0x2b
/* 80215074  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80215078  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8021507C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80215080  38 A0 00 00 */	li r5, 0
/* 80215084  38 C0 00 00 */	li r6, 0
/* 80215088  38 E0 00 00 */	li r7, 0
/* 8021508C  C0 22 AE 84 */	lfs f1, lit_4183(r2)
/* 80215090  FC 40 08 90 */	fmr f2, f1
/* 80215094  C0 62 AE B0 */	lfs f3, lit_5786(r2)
/* 80215098  FC 80 18 90 */	fmr f4, f3
/* 8021509C  39 00 00 00 */	li r8, 0
/* 802150A0  48 09 74 6D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802150A4  48 00 01 08 */	b lbl_802151AC
lbl_802150A8:
/* 802150A8  C0 02 AE 94 */	lfs f0, lit_4922(r2)
/* 802150AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802150B0  4C 40 13 82 */	cror 2, 0, 2
/* 802150B4  40 82 00 A8 */	bne lbl_8021515C
/* 802150B8  38 00 00 50 */	li r0, 0x50
/* 802150BC  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802150C0  38 00 00 B4 */	li r0, 0xb4
/* 802150C4  98 01 00 1D */	stb r0, 0x1d(r1)
/* 802150C8  38 60 00 FF */	li r3, 0xff
/* 802150CC  98 61 00 1E */	stb r3, 0x1e(r1)
/* 802150D0  98 61 00 1F */	stb r3, 0x1f(r1)
/* 802150D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802150D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802150DC  38 00 00 C8 */	li r0, 0xc8
/* 802150E0  98 01 00 24 */	stb r0, 0x24(r1)
/* 802150E4  98 01 00 25 */	stb r0, 0x25(r1)
/* 802150E8  98 61 00 26 */	stb r3, 0x26(r1)
/* 802150EC  98 61 00 27 */	stb r3, 0x27(r1)
/* 802150F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802150F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 802150F8  80 7C 01 D8 */	lwz r3, 0x1d8(r28)
/* 802150FC  38 81 00 28 */	addi r4, r1, 0x28
/* 80215100  38 A1 00 20 */	addi r5, r1, 0x20
/* 80215104  48 03 F3 55 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80215108  7F 83 E3 78 */	mr r3, r28
/* 8021510C  80 9C 05 40 */	lwz r4, 0x540(r28)
/* 80215110  4B FF ED 85 */	bl playOxygenBpkAnimation__13dMeter2Draw_cFP11J2DAnmColor
/* 80215114  C0 3E 05 FC */	lfs f1, 0x5fc(r30)
/* 80215118  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021511C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80215120  40 81 00 8C */	ble lbl_802151AC
/* 80215124  38 00 00 2A */	li r0, 0x2a
/* 80215128  90 01 00 18 */	stw r0, 0x18(r1)
/* 8021512C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80215130  38 81 00 18 */	addi r4, r1, 0x18
/* 80215134  38 A0 00 00 */	li r5, 0
/* 80215138  38 C0 00 00 */	li r6, 0
/* 8021513C  38 E0 00 00 */	li r7, 0
/* 80215140  C0 22 AE 84 */	lfs f1, lit_4183(r2)
/* 80215144  FC 40 08 90 */	fmr f2, f1
/* 80215148  C0 62 AE B0 */	lfs f3, lit_5786(r2)
/* 8021514C  FC 80 18 90 */	fmr f4, f3
/* 80215150  39 00 00 00 */	li r8, 0
/* 80215154  48 09 73 B9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80215158  48 00 00 54 */	b lbl_802151AC
lbl_8021515C:
/* 8021515C  38 00 00 50 */	li r0, 0x50
/* 80215160  98 01 00 08 */	stb r0, 8(r1)
/* 80215164  38 00 00 B4 */	li r0, 0xb4
/* 80215168  98 01 00 09 */	stb r0, 9(r1)
/* 8021516C  38 60 00 FF */	li r3, 0xff
/* 80215170  98 61 00 0A */	stb r3, 0xa(r1)
/* 80215174  98 61 00 0B */	stb r3, 0xb(r1)
/* 80215178  80 01 00 08 */	lwz r0, 8(r1)
/* 8021517C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80215180  38 00 00 C8 */	li r0, 0xc8
/* 80215184  98 01 00 10 */	stb r0, 0x10(r1)
/* 80215188  98 01 00 11 */	stb r0, 0x11(r1)
/* 8021518C  98 61 00 12 */	stb r3, 0x12(r1)
/* 80215190  98 61 00 13 */	stb r3, 0x13(r1)
/* 80215194  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80215198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021519C  80 7C 01 D8 */	lwz r3, 0x1d8(r28)
/* 802151A0  38 81 00 14 */	addi r4, r1, 0x14
/* 802151A4  38 A1 00 0C */	addi r5, r1, 0xc
/* 802151A8  48 03 F2 B1 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_802151AC:
/* 802151AC  7F 83 E3 78 */	mr r3, r28
/* 802151B0  38 80 00 01 */	li r4, 1
/* 802151B4  48 00 07 3D */	bl setAlphaOxygenChange__13dMeter2Draw_cFb
lbl_802151B8:
/* 802151B8  80 7C 01 D8 */	lwz r3, 0x1d8(r28)
/* 802151BC  80 63 00 04 */	lwz r3, 4(r3)
/* 802151C0  7C 9C EA 14 */	add r4, r28, r29
/* 802151C4  C0 24 05 84 */	lfs f1, 0x584(r4)
/* 802151C8  C0 44 05 90 */	lfs f2, 0x590(r4)
/* 802151CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802151D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802151D4  7D 89 03 A6 */	mtctr r12
/* 802151D8  4E 80 04 21 */	bctrl 
/* 802151DC  80 7C 01 DC */	lwz r3, 0x1dc(r28)
/* 802151E0  80 63 00 04 */	lwz r3, 4(r3)
/* 802151E4  7C 9C EA 14 */	add r4, r28, r29
/* 802151E8  C0 24 05 9C */	lfs f1, 0x59c(r4)
/* 802151EC  C0 44 05 A8 */	lfs f2, 0x5a8(r4)
/* 802151F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802151F4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802151F8  7D 89 03 A6 */	mtctr r12
/* 802151FC  4E 80 04 21 */	bctrl 
/* 80215200  80 7C 01 D0 */	lwz r3, 0x1d0(r28)
/* 80215204  80 63 00 04 */	lwz r3, 4(r3)
/* 80215208  7C 9C EA 14 */	add r4, r28, r29
/* 8021520C  C0 24 05 B4 */	lfs f1, 0x5b4(r4)
/* 80215210  C0 44 05 C0 */	lfs f2, 0x5c0(r4)
/* 80215214  81 83 00 00 */	lwz r12, 0(r3)
/* 80215218  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021521C  7D 89 03 A6 */	mtctr r12
/* 80215220  4E 80 04 21 */	bctrl 
/* 80215224  7C 9C EA 14 */	add r4, r28, r29
/* 80215228  C0 24 05 D8 */	lfs f1, 0x5d8(r4)
/* 8021522C  80 7C 01 CC */	lwz r3, 0x1cc(r28)
/* 80215230  80 63 00 04 */	lwz r3, 4(r3)
/* 80215234  C0 04 05 CC */	lfs f0, 0x5cc(r4)
/* 80215238  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8021523C  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80215240  81 83 00 00 */	lwz r12, 0(r3)
/* 80215244  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80215248  7D 89 03 A6 */	mtctr r12
/* 8021524C  4E 80 04 21 */	bctrl 
/* 80215250  80 7C 01 CC */	lwz r3, 0x1cc(r28)
/* 80215254  7C 9C EA 14 */	add r4, r28, r29
/* 80215258  C0 24 05 E4 */	lfs f1, 0x5e4(r4)
/* 8021525C  C0 44 05 F0 */	lfs f2, 0x5f0(r4)
/* 80215260  48 03 F3 51 */	bl paneTrans__8CPaneMgrFff
/* 80215264  80 7C 00 7C */	lwz r3, 0x7c(r28)
/* 80215268  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 8021526C  FC 40 08 90 */	fmr f2, f1
/* 80215270  7F E4 FB 78 */	mr r4, r31
/* 80215274  48 0E 3C 61 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80215278  39 61 00 90 */	addi r11, r1, 0x90
/* 8021527C  48 14 CF A5 */	bl _restgpr_27
/* 80215280  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80215284  7C 08 03 A6 */	mtlr r0
/* 80215288  38 21 00 90 */	addi r1, r1, 0x90
/* 8021528C  4E 80 00 20 */	blr 
