lbl_8051F03C:
/* 8051F03C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8051F040  7C 08 02 A6 */	mflr r0
/* 8051F044  90 01 01 44 */	stw r0, 0x144(r1)
/* 8051F048  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8051F04C  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 8051F050  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8051F054  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 8051F058  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 8051F05C  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 8051F060  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 8051F064  F3 81 01 08 */	psq_st f28, 264(r1), 0, 0 /* qr0 */
/* 8051F068  DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 8051F06C  F3 61 00 F8 */	psq_st f27, 248(r1), 0, 0 /* qr0 */
/* 8051F070  DB 41 00 E0 */	stfd f26, 0xe0(r1)
/* 8051F074  F3 41 00 E8 */	psq_st f26, 232(r1), 0, 0 /* qr0 */
/* 8051F078  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8051F07C  4B E4 31 34 */	b _savegpr_18
/* 8051F080  7C 74 1B 78 */	mr r20, r3
/* 8051F084  3C 60 80 52 */	lis r3, cNullVec__6Z2Calc@ha
/* 8051F088  3B 83 31 D8 */	addi r28, r3, cNullVec__6Z2Calc@l
/* 8051F08C  3C 60 80 52 */	lis r3, lit_3999@ha
/* 8051F090  3B A3 30 28 */	addi r29, r3, lit_3999@l
/* 8051F094  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8051F098  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 8051F09C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8051F0A0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8051F0A4  4B DF 16 98 */	b reinitGX__6J3DSysFv
/* 8051F0A8  38 60 00 00 */	li r3, 0
/* 8051F0AC  4B E4 00 28 */	b GXSetNumIndStages
/* 8051F0B0  4B C8 85 10 */	b dKy_setLight_again__Fv
/* 8051F0B4  4B E3 C4 D8 */	b GXClearVtxDesc
/* 8051F0B8  38 7C 19 74 */	addi r3, r28, 0x1974
/* 8051F0BC  4B E3 C0 68 */	b GXSetVtxDescv
/* 8051F0C0  38 60 00 00 */	li r3, 0
/* 8051F0C4  38 9C 19 9C */	addi r4, r28, 0x199c
/* 8051F0C8  4B E3 C7 58 */	b GXSetVtxAttrFmtv
/* 8051F0CC  38 60 00 09 */	li r3, 9
/* 8051F0D0  3C 94 00 02 */	addis r4, r20, 2
/* 8051F0D4  80 84 D6 E4 */	lwz r4, -0x291c(r4)
/* 8051F0D8  38 A0 00 0C */	li r5, 0xc
/* 8051F0DC  4B E3 CA 4C */	b GXSetArray
/* 8051F0E0  38 60 00 0A */	li r3, 0xa
/* 8051F0E4  3C 94 00 02 */	addis r4, r20, 2
/* 8051F0E8  80 84 D6 E8 */	lwz r4, -0x2918(r4)
/* 8051F0EC  38 A0 00 0C */	li r5, 0xc
/* 8051F0F0  4B E3 CA 38 */	b GXSetArray
/* 8051F0F4  38 60 00 0B */	li r3, 0xb
/* 8051F0F8  3C 94 00 02 */	addis r4, r20, 2
/* 8051F0FC  80 84 D6 EC */	lwz r4, -0x2914(r4)
/* 8051F100  38 A0 00 04 */	li r5, 4
/* 8051F104  4B E3 CA 24 */	b GXSetArray
/* 8051F108  38 60 00 0D */	li r3, 0xd
/* 8051F10C  3C 94 00 02 */	addis r4, r20, 2
/* 8051F110  80 84 D6 F0 */	lwz r4, -0x2910(r4)
/* 8051F114  38 A0 00 08 */	li r5, 8
/* 8051F118  4B E3 CA 10 */	b GXSetArray
/* 8051F11C  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8051F120  80 1D 00 78 */	lwz r0, 0x78(r29)
/* 8051F124  90 61 00 50 */	stw r3, 0x50(r1)
/* 8051F128  90 01 00 54 */	stw r0, 0x54(r1)
/* 8051F12C  80 7D 00 7C */	lwz r3, 0x7c(r29)
/* 8051F130  80 1D 00 80 */	lwz r0, 0x80(r29)
/* 8051F134  90 61 00 48 */	stw r3, 0x48(r1)
/* 8051F138  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8051F13C  3F 14 00 02 */	addis r24, r20, 2
/* 8051F140  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8051F144  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8051F148  3B 18 D5 E4 */	addi r24, r24, -10780
/* 8051F14C  4B C8 08 BC */	b getDaytime__18dScnKy_env_light_cFv
/* 8051F150  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 8051F154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F158  4C 41 13 82 */	cror 2, 1, 2
/* 8051F15C  40 82 00 38 */	bne lbl_8051F194
/* 8051F160  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 8051F164  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F168  40 80 00 2C */	bge lbl_8051F194
/* 8051F16C  C0 7D 00 68 */	lfs f3, 0x68(r29)
/* 8051F170  C0 5D 00 8C */	lfs f2, 0x8c(r29)
/* 8051F174  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051F178  EC 02 00 32 */	fmuls f0, f2, f0
/* 8051F17C  EC 43 00 28 */	fsubs f2, f3, f0
/* 8051F180  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 8051F184  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 8051F188  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051F18C  EF 41 00 28 */	fsubs f26, f1, f0
/* 8051F190  48 00 00 D4 */	b lbl_8051F264
lbl_8051F194:
/* 8051F194  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 8051F198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F19C  4C 41 13 82 */	cror 2, 1, 2
/* 8051F1A0  40 82 00 38 */	bne lbl_8051F1D8
/* 8051F1A4  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 8051F1A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F1AC  40 80 00 2C */	bge lbl_8051F1D8
/* 8051F1B0  C0 7D 00 68 */	lfs f3, 0x68(r29)
/* 8051F1B4  C0 5D 00 9C */	lfs f2, 0x9c(r29)
/* 8051F1B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051F1BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8051F1C0  EC 43 00 28 */	fsubs f2, f3, f0
/* 8051F1C4  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 8051F1C8  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 8051F1CC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051F1D0  EF 41 00 28 */	fsubs f26, f1, f0
/* 8051F1D4  48 00 00 90 */	b lbl_8051F264
lbl_8051F1D8:
/* 8051F1D8  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 8051F1DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F1E0  4C 41 13 82 */	cror 2, 1, 2
/* 8051F1E4  40 82 00 38 */	bne lbl_8051F21C
/* 8051F1E8  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 8051F1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F1F0  40 80 00 2C */	bge lbl_8051F21C
/* 8051F1F4  C0 7D 00 68 */	lfs f3, 0x68(r29)
/* 8051F1F8  C0 5D 00 8C */	lfs f2, 0x8c(r29)
/* 8051F1FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051F200  EC 02 00 32 */	fmuls f0, f2, f0
/* 8051F204  EC 43 00 28 */	fsubs f2, f3, f0
/* 8051F208  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 8051F20C  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 8051F210  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051F214  EF 41 00 28 */	fsubs f26, f1, f0
/* 8051F218  48 00 00 4C */	b lbl_8051F264
lbl_8051F21C:
/* 8051F21C  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 8051F220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F224  4C 41 13 82 */	cror 2, 1, 2
/* 8051F228  40 82 00 38 */	bne lbl_8051F260
/* 8051F22C  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 8051F230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051F234  40 80 00 2C */	bge lbl_8051F260
/* 8051F238  C0 7D 00 68 */	lfs f3, 0x68(r29)
/* 8051F23C  C0 5D 00 8C */	lfs f2, 0x8c(r29)
/* 8051F240  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051F244  EC 02 00 32 */	fmuls f0, f2, f0
/* 8051F248  EC 43 00 28 */	fsubs f2, f3, f0
/* 8051F24C  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 8051F250  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 8051F254  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051F258  EF 41 00 28 */	fsubs f26, f1, f0
/* 8051F25C  48 00 00 08 */	b lbl_8051F264
lbl_8051F260:
/* 8051F260  C3 5D 00 90 */	lfs f26, 0x90(r29)
lbl_8051F264:
/* 8051F264  3A E0 00 00 */	li r23, 0
/* 8051F268  3A 60 00 00 */	li r19, 0
/* 8051F26C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8051F270  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8051F274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051F278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051F27C  3B 43 4E 00 */	addi r26, r3, 0x4e00
/* 8051F280  3B 23 4E C4 */	addi r25, r3, 0x4ec4
lbl_8051F284:
/* 8051F284  82 58 00 00 */	lwz r18, 0(r24)
/* 8051F288  7E 56 93 78 */	mr r22, r18
/* 8051F28C  28 12 00 00 */	cmplwi r18, 0
/* 8051F290  41 82 07 C4 */	beq lbl_8051FA54
/* 8051F294  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 8051F298  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l
/* 8051F29C  7C 60 9A 14 */	add r3, r0, r19
/* 8051F2A0  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 8051F2A4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8051F2A8  41 82 07 AC */	beq lbl_8051FA54
/* 8051F2AC  3A A0 00 06 */	li r21, 6
/* 8051F2B0  3B 63 00 6C */	addi r27, r3, 0x6c
/* 8051F2B4  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 8051F2B8  C0 1F 12 5C */	lfs f0, 0x125c(r31)
/* 8051F2BC  EC 41 00 32 */	fmuls f2, f1, f0
/* 8051F2C0  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8051F2C4  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 8051F2C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8051F2CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051F2D0  EC 42 00 2A */	fadds f2, f2, f0
/* 8051F2D4  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8051F2D8  C8 3D 00 D0 */	lfd f1, 0xd0(r29)
/* 8051F2DC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8051F2E0  3C 60 43 30 */	lis r3, 0x4330
/* 8051F2E4  90 61 00 58 */	stw r3, 0x58(r1)
/* 8051F2E8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8051F2EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051F2F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051F2F4  FC 00 00 1E */	fctiwz f0, f0
/* 8051F2F8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8051F2FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8051F300  B0 01 00 48 */	sth r0, 0x48(r1)
/* 8051F304  88 1B 00 8D */	lbz r0, 0x8d(r27)
/* 8051F308  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8051F30C  90 61 00 68 */	stw r3, 0x68(r1)
/* 8051F310  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8051F314  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051F318  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051F31C  FC 00 00 1E */	fctiwz f0, f0
/* 8051F320  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8051F324  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8051F328  B0 01 00 4A */	sth r0, 0x4a(r1)
/* 8051F32C  88 1B 00 8E */	lbz r0, 0x8e(r27)
/* 8051F330  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8051F334  90 61 00 78 */	stw r3, 0x78(r1)
/* 8051F338  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8051F33C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051F340  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051F344  FC 00 00 1E */	fctiwz f0, f0
/* 8051F348  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8051F34C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8051F350  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 8051F354  FC 00 D0 1E */	fctiwz f0, f26
/* 8051F358  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 8051F35C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8051F360  B0 01 00 4E */	sth r0, 0x4e(r1)
/* 8051F364  7F 43 D3 78 */	mr r3, r26
/* 8051F368  3C 80 80 52 */	lis r4, stringBase0@ha
/* 8051F36C  38 84 31 C0 */	addi r4, r4, stringBase0@l
/* 8051F370  38 A0 00 06 */	li r5, 6
/* 8051F374  4B E4 6D 18 */	b memcmp
/* 8051F378  2C 03 00 00 */	cmpwi r3, 0
/* 8051F37C  40 82 00 24 */	bne lbl_8051F3A0
/* 8051F380  38 00 00 00 */	li r0, 0
/* 8051F384  B0 01 00 48 */	sth r0, 0x48(r1)
/* 8051F388  38 00 00 1E */	li r0, 0x1e
/* 8051F38C  B0 01 00 4A */	sth r0, 0x4a(r1)
/* 8051F390  38 00 00 05 */	li r0, 5
/* 8051F394  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 8051F398  38 00 00 50 */	li r0, 0x50
/* 8051F39C  B0 01 00 4E */	sth r0, 0x4e(r1)
lbl_8051F3A0:
/* 8051F3A0  80 61 00 48 */	lwz r3, 0x48(r1)
/* 8051F3A4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051F3A8  90 61 00 40 */	stw r3, 0x40(r1)
/* 8051F3AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8051F3B0  38 60 00 02 */	li r3, 2
/* 8051F3B4  38 81 00 40 */	addi r4, r1, 0x40
/* 8051F3B8  4B DA ED 18 */	b GFSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8051F3BC  7F 23 CB 78 */	mr r3, r25
/* 8051F3C0  7E E4 BB 78 */	mr r4, r23
/* 8051F3C4  4B B0 4F C0 */	b getStatusRoomDt__20dStage_roomControl_cFi
/* 8051F3C8  28 03 00 00 */	cmplwi r3, 0
/* 8051F3CC  41 82 00 24 */	beq lbl_8051F3F0
/* 8051F3D0  7F 23 CB 78 */	mr r3, r25
/* 8051F3D4  7E E4 BB 78 */	mr r4, r23
/* 8051F3D8  4B B0 4F AC */	b getStatusRoomDt__20dStage_roomControl_cFi
/* 8051F3DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8051F3E0  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8051F3E4  7D 89 03 A6 */	mtctr r12
/* 8051F3E8  4E 80 04 21 */	bctrl 
/* 8051F3EC  7C 75 1B 78 */	mr r21, r3
lbl_8051F3F0:
/* 8051F3F0  4B C8 CD 78 */	b dKy_SunMoon_Light_Check__Fv
/* 8051F3F4  2C 03 00 01 */	cmpwi r3, 1
/* 8051F3F8  40 82 00 10 */	bne lbl_8051F408
/* 8051F3FC  2C 15 00 02 */	cmpwi r21, 2
/* 8051F400  40 80 00 08 */	bge lbl_8051F408
/* 8051F404  3A A0 00 02 */	li r21, 2
lbl_8051F408:
/* 8051F408  38 60 00 00 */	li r3, 0
/* 8051F40C  38 00 00 06 */	li r0, 6
/* 8051F410  7C 09 03 A6 */	mtctr r0
lbl_8051F414:
/* 8051F414  38 03 0C 3E */	addi r0, r3, 0xc3e
/* 8051F418  7C 1E 00 AE */	lbzx r0, r30, r0
/* 8051F41C  28 00 00 01 */	cmplwi r0, 1
/* 8051F420  40 82 00 08 */	bne lbl_8051F428
/* 8051F424  3A B5 00 01 */	addi r21, r21, 1
lbl_8051F428:
/* 8051F428  38 63 00 28 */	addi r3, r3, 0x28
/* 8051F42C  42 00 FF E8 */	bdnz lbl_8051F414
/* 8051F430  88 12 00 05 */	lbz r0, 5(r18)
/* 8051F434  28 00 00 03 */	cmplwi r0, 3
/* 8051F438  40 81 00 0C */	ble lbl_8051F444
/* 8051F43C  28 00 00 0A */	cmplwi r0, 0xa
/* 8051F440  41 80 00 34 */	blt lbl_8051F474
lbl_8051F444:
/* 8051F444  2C 15 00 03 */	cmpwi r21, 3
/* 8051F448  41 81 00 18 */	bgt lbl_8051F460
/* 8051F44C  3C 94 00 02 */	addis r4, r20, 2
/* 8051F450  80 64 D6 FC */	lwz r3, -0x2904(r4)
/* 8051F454  80 84 D7 00 */	lwz r4, -0x2900(r4)
/* 8051F458  4B E4 0A 98 */	b GXCallDisplayList
/* 8051F45C  48 00 00 24 */	b lbl_8051F480
lbl_8051F460:
/* 8051F460  3C 94 00 02 */	addis r4, r20, 2
/* 8051F464  80 64 D6 F4 */	lwz r3, -0x290c(r4)
/* 8051F468  80 84 D6 F8 */	lwz r4, -0x2908(r4)
/* 8051F46C  4B E4 0A 84 */	b GXCallDisplayList
/* 8051F470  48 00 00 10 */	b lbl_8051F480
lbl_8051F474:
/* 8051F474  38 7C 17 40 */	addi r3, r28, 0x1740
/* 8051F478  38 80 00 A0 */	li r4, 0xa0
/* 8051F47C  4B E4 0A 74 */	b GXCallDisplayList
lbl_8051F480:
/* 8051F480  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8051F484  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051F488  90 61 00 38 */	stw r3, 0x38(r1)
/* 8051F48C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8051F490  38 60 00 03 */	li r3, 3
/* 8051F494  38 81 00 38 */	addi r4, r1, 0x38
/* 8051F498  4B DA EC 38 */	b GFSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8051F49C  7F 63 DB 78 */	mr r3, r27
/* 8051F4A0  4B C8 81 40 */	b dKy_Global_amb_set__FP12dKy_tevstr_c
/* 8051F4A4  7F 63 DB 78 */	mr r3, r27
/* 8051F4A8  4B C8 92 50 */	b dKy_GfFog_tevstr_set__FP12dKy_tevstr_c
/* 8051F4AC  88 1B 03 80 */	lbz r0, 0x380(r27)
/* 8051F4B0  7C 03 07 74 */	extsb r3, r0
/* 8051F4B4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8051F4B8  4B C8 77 A0 */	b dKy_setLight_nowroom_grass__Fcf
/* 8051F4BC  C3 7D 00 68 */	lfs f27, 0x68(r29)
/* 8051F4C0  CB 9D 00 38 */	lfd f28, 0x38(r29)
/* 8051F4C4  3E 40 43 30 */	lis r18, 0x4330
/* 8051F4C8  C3 BD 00 C0 */	lfs f29, 0xc0(r29)
/* 8051F4CC  C3 DD 00 C4 */	lfs f30, 0xc4(r29)
/* 8051F4D0  C3 FD 00 C8 */	lfs f31, 0xc8(r29)
/* 8051F4D4  48 00 05 78 */	b lbl_8051FA4C
lbl_8051F4D8:
/* 8051F4D8  88 16 00 05 */	lbz r0, 5(r22)
/* 8051F4DC  28 00 00 03 */	cmplwi r0, 3
/* 8051F4E0  40 81 00 0C */	ble lbl_8051F4EC
/* 8051F4E4  28 00 00 0A */	cmplwi r0, 0xa
/* 8051F4E8  41 80 00 34 */	blt lbl_8051F51C
lbl_8051F4EC:
/* 8051F4EC  2C 15 00 02 */	cmpwi r21, 2
/* 8051F4F0  41 81 00 18 */	bgt lbl_8051F508
/* 8051F4F4  3C 94 00 02 */	addis r4, r20, 2
/* 8051F4F8  80 64 D6 FC */	lwz r3, -0x2904(r4)
/* 8051F4FC  80 84 D7 00 */	lwz r4, -0x2900(r4)
/* 8051F500  4B E4 09 F0 */	b GXCallDisplayList
/* 8051F504  48 00 00 24 */	b lbl_8051F528
lbl_8051F508:
/* 8051F508  3C 94 00 02 */	addis r4, r20, 2
/* 8051F50C  80 64 D6 F4 */	lwz r3, -0x290c(r4)
/* 8051F510  80 84 D6 F8 */	lwz r4, -0x2908(r4)
/* 8051F514  4B E4 09 DC */	b GXCallDisplayList
/* 8051F518  48 00 00 10 */	b lbl_8051F528
lbl_8051F51C:
/* 8051F51C  38 7C 17 40 */	addi r3, r28, 0x1740
/* 8051F520  38 80 00 A0 */	li r4, 0xa0
/* 8051F524  4B E4 09 CC */	b GXCallDisplayList
lbl_8051F528:
/* 8051F528  88 16 00 02 */	lbz r0, 2(r22)
/* 8051F52C  7C 00 07 74 */	extsb r0, r0
/* 8051F530  2C 00 FF FF */	cmpwi r0, -1
/* 8051F534  41 81 00 10 */	bgt lbl_8051F544
/* 8051F538  38 00 00 00 */	li r0, 0
/* 8051F53C  B0 01 00 4E */	sth r0, 0x4e(r1)
/* 8051F540  48 00 00 14 */	b lbl_8051F554
lbl_8051F544:
/* 8051F544  FC 00 D0 1E */	fctiwz f0, f26
/* 8051F548  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 8051F54C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8051F550  B0 01 00 4E */	sth r0, 0x4e(r1)
lbl_8051F554:
/* 8051F554  80 61 00 48 */	lwz r3, 0x48(r1)
/* 8051F558  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051F55C  90 61 00 30 */	stw r3, 0x30(r1)
/* 8051F560  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051F564  38 60 00 02 */	li r3, 2
/* 8051F568  38 81 00 30 */	addi r4, r1, 0x30
/* 8051F56C  4B DA EB 64 */	b GFSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8051F570  A8 76 00 08 */	lha r3, 8(r22)
/* 8051F574  54 60 0E BC */	rlwinm r0, r3, 1, 0x1a, 0x1e
/* 8051F578  98 01 00 0C */	stb r0, 0xc(r1)
/* 8051F57C  54 60 E6 BC */	rlwinm r0, r3, 0x1c, 0x1a, 0x1e
/* 8051F580  98 01 00 0D */	stb r0, 0xd(r1)
/* 8051F584  54 60 BE BC */	rlwinm r0, r3, 0x17, 0x1a, 0x1e
/* 8051F588  98 01 00 0E */	stb r0, 0xe(r1)
/* 8051F58C  4B C3 FE 98 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 8051F590  2C 03 00 00 */	cmpwi r3, 0
/* 8051F594  41 82 01 08 */	beq lbl_8051F69C
/* 8051F598  A8 1F 11 08 */	lha r0, 0x1108(r31)
/* 8051F59C  C8 9D 00 38 */	lfd f4, 0x38(r29)
/* 8051F5A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051F5A4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8051F5A8  3C 00 43 30 */	lis r0, 0x4330
/* 8051F5AC  90 01 00 88 */	stw r0, 0x88(r1)
/* 8051F5B0  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8051F5B4  EC 00 20 28 */	fsubs f0, f0, f4
/* 8051F5B8  C0 7D 00 B8 */	lfs f3, 0xb8(r29)
/* 8051F5BC  EC A0 18 24 */	fdivs f5, f0, f3
/* 8051F5C0  A8 96 00 08 */	lha r4, 8(r22)
/* 8051F5C4  54 83 0E BC */	rlwinm r3, r4, 1, 0x1a, 0x1e
/* 8051F5C8  38 63 00 10 */	addi r3, r3, 0x10
/* 8051F5CC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8051F5D0  90 61 00 84 */	stw r3, 0x84(r1)
/* 8051F5D4  90 01 00 80 */	stw r0, 0x80(r1)
/* 8051F5D8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 8051F5DC  EC 20 20 28 */	fsubs f1, f0, f4
/* 8051F5E0  C0 5D 00 BC */	lfs f2, 0xbc(r29)
/* 8051F5E4  EC 02 01 72 */	fmuls f0, f2, f5
/* 8051F5E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051F5EC  FC 00 00 1E */	fctiwz f0, f0
/* 8051F5F0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8051F5F4  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 8051F5F8  98 61 00 0C */	stb r3, 0xc(r1)
/* 8051F5FC  A8 7F 11 0A */	lha r3, 0x110a(r31)
/* 8051F600  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8051F604  90 61 00 74 */	stw r3, 0x74(r1)
/* 8051F608  90 01 00 70 */	stw r0, 0x70(r1)
/* 8051F60C  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8051F610  EC 00 20 28 */	fsubs f0, f0, f4
/* 8051F614  EC A0 18 24 */	fdivs f5, f0, f3
/* 8051F618  54 83 E6 BC */	rlwinm r3, r4, 0x1c, 0x1a, 0x1e
/* 8051F61C  38 63 00 10 */	addi r3, r3, 0x10
/* 8051F620  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8051F624  90 61 00 6C */	stw r3, 0x6c(r1)
/* 8051F628  90 01 00 68 */	stw r0, 0x68(r1)
/* 8051F62C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8051F630  EC 20 20 28 */	fsubs f1, f0, f4
/* 8051F634  EC 02 01 72 */	fmuls f0, f2, f5
/* 8051F638  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051F63C  FC 00 00 1E */	fctiwz f0, f0
/* 8051F640  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8051F644  80 61 00 64 */	lwz r3, 0x64(r1)
/* 8051F648  98 61 00 0D */	stb r3, 0xd(r1)
/* 8051F64C  54 83 BE BC */	rlwinm r3, r4, 0x17, 0x1a, 0x1e
/* 8051F650  38 63 00 10 */	addi r3, r3, 0x10
/* 8051F654  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8051F658  90 61 00 5C */	stw r3, 0x5c(r1)
/* 8051F65C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8051F660  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8051F664  EC 20 20 28 */	fsubs f1, f0, f4
/* 8051F668  A8 7F 11 0C */	lha r3, 0x110c(r31)
/* 8051F66C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8051F670  90 61 00 94 */	stw r3, 0x94(r1)
/* 8051F674  90 01 00 90 */	stw r0, 0x90(r1)
/* 8051F678  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8051F67C  EC 00 20 28 */	fsubs f0, f0, f4
/* 8051F680  EC 00 18 24 */	fdivs f0, f0, f3
/* 8051F684  EC 02 00 32 */	fmuls f0, f2, f0
/* 8051F688  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051F68C  FC 00 00 1E */	fctiwz f0, f0
/* 8051F690  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8051F694  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8051F698  98 01 00 0E */	stb r0, 0xe(r1)
lbl_8051F69C:
/* 8051F69C  C0 16 00 0C */	lfs f0, 0xc(r22)
/* 8051F6A0  FC 00 00 1E */	fctiwz f0, f0
/* 8051F6A4  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8051F6A8  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8051F6AC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8051F6B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051F6B4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8051F6B8  92 41 00 90 */	stw r18, 0x90(r1)
/* 8051F6BC  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8051F6C0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8051F6C4  EC 00 07 72 */	fmuls f0, f0, f29
/* 8051F6C8  EC 1B 00 28 */	fsubs f0, f27, f0
/* 8051F6CC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8051F6D0  92 41 00 88 */	stw r18, 0x88(r1)
/* 8051F6D4  C8 21 00 88 */	lfd f1, 0x88(r1)
/* 8051F6D8  EC 21 E0 28 */	fsubs f1, f1, f28
/* 8051F6DC  EC 21 F8 24 */	fdivs f1, f1, f31
/* 8051F6E0  EC 3E 08 28 */	fsubs f1, f30, f1
/* 8051F6E4  C0 56 00 14 */	lfs f2, 0x14(r22)
/* 8051F6E8  FC 40 10 1E */	fctiwz f2, f2
/* 8051F6EC  D8 41 00 80 */	stfd f2, 0x80(r1)
/* 8051F6F0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8051F6F4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8051F6F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051F6FC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8051F700  92 41 00 78 */	stw r18, 0x78(r1)
/* 8051F704  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 8051F708  EC 42 E0 28 */	fsubs f2, f2, f28
/* 8051F70C  EC 42 F8 24 */	fdivs f2, f2, f31
/* 8051F710  EC 21 10 28 */	fsubs f1, f1, f2
/* 8051F714  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 8051F718  40 81 00 08 */	ble lbl_8051F720
/* 8051F71C  FC 20 D8 90 */	fmr f1, f27
lbl_8051F720:
/* 8051F720  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8051F724  28 00 00 3E */	cmplwi r0, 0x3e
/* 8051F728  40 82 00 38 */	bne lbl_8051F760
/* 8051F72C  A8 1B 03 48 */	lha r0, 0x348(r27)
/* 8051F730  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 8051F734  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051F738  90 01 00 74 */	stw r0, 0x74(r1)
/* 8051F73C  3C 00 43 30 */	lis r0, 0x4330
/* 8051F740  90 01 00 70 */	stw r0, 0x70(r1)
/* 8051F744  C8 41 00 70 */	lfd f2, 0x70(r1)
/* 8051F748  EC 42 18 28 */	fsubs f2, f2, f3
/* 8051F74C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8051F750  FC 40 10 1E */	fctiwz f2, f2
/* 8051F754  D8 41 00 68 */	stfd f2, 0x68(r1)
/* 8051F758  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8051F75C  48 00 00 2C */	b lbl_8051F788
lbl_8051F760:
/* 8051F760  C8 7D 00 D0 */	lfd f3, 0xd0(r29)
/* 8051F764  90 01 00 64 */	stw r0, 0x64(r1)
/* 8051F768  3C 00 43 30 */	lis r0, 0x4330
/* 8051F76C  90 01 00 60 */	stw r0, 0x60(r1)
/* 8051F770  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 8051F774  EC 42 18 28 */	fsubs f2, f2, f3
/* 8051F778  EC 42 00 72 */	fmuls f2, f2, f1
/* 8051F77C  FC 40 10 1E */	fctiwz f2, f2
/* 8051F780  D8 41 00 58 */	stfd f2, 0x58(r1)
/* 8051F784  80 01 00 5C */	lwz r0, 0x5c(r1)
lbl_8051F788:
/* 8051F788  98 01 00 0C */	stb r0, 0xc(r1)
/* 8051F78C  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8051F790  28 00 00 3E */	cmplwi r0, 0x3e
/* 8051F794  40 82 00 3C */	bne lbl_8051F7D0
/* 8051F798  A8 1B 03 4A */	lha r0, 0x34a(r27)
/* 8051F79C  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 8051F7A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051F7A4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8051F7A8  3C 00 43 30 */	lis r0, 0x4330
/* 8051F7AC  90 01 00 98 */	stw r0, 0x98(r1)
/* 8051F7B0  C8 41 00 98 */	lfd f2, 0x98(r1)
/* 8051F7B4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8051F7B8  EC 42 00 32 */	fmuls f2, f2, f0
/* 8051F7BC  FC 40 10 1E */	fctiwz f2, f2
/* 8051F7C0  D8 41 00 90 */	stfd f2, 0x90(r1)
/* 8051F7C4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051F7C8  98 01 00 0D */	stb r0, 0xd(r1)
/* 8051F7CC  48 00 00 30 */	b lbl_8051F7FC
lbl_8051F7D0:
/* 8051F7D0  C8 7D 00 D0 */	lfd f3, 0xd0(r29)
/* 8051F7D4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8051F7D8  3C 00 43 30 */	lis r0, 0x4330
/* 8051F7DC  90 01 00 98 */	stw r0, 0x98(r1)
/* 8051F7E0  C8 41 00 98 */	lfd f2, 0x98(r1)
/* 8051F7E4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8051F7E8  EC 42 00 72 */	fmuls f2, f2, f1
/* 8051F7EC  FC 40 10 1E */	fctiwz f2, f2
/* 8051F7F0  D8 41 00 90 */	stfd f2, 0x90(r1)
/* 8051F7F4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051F7F8  98 01 00 0D */	stb r0, 0xd(r1)
lbl_8051F7FC:
/* 8051F7FC  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8051F800  28 00 00 3E */	cmplwi r0, 0x3e
/* 8051F804  40 82 00 3C */	bne lbl_8051F840
/* 8051F808  A8 1B 03 4C */	lha r0, 0x34c(r27)
/* 8051F80C  C8 5D 00 38 */	lfd f2, 0x38(r29)
/* 8051F810  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051F814  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8051F818  3C 00 43 30 */	lis r0, 0x4330
/* 8051F81C  90 01 00 98 */	stw r0, 0x98(r1)
/* 8051F820  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 8051F824  EC 21 10 28 */	fsubs f1, f1, f2
/* 8051F828  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051F82C  FC 00 00 1E */	fctiwz f0, f0
/* 8051F830  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8051F834  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051F838  98 01 00 0E */	stb r0, 0xe(r1)
/* 8051F83C  48 00 00 30 */	b lbl_8051F86C
lbl_8051F840:
/* 8051F840  C8 5D 00 D0 */	lfd f2, 0xd0(r29)
/* 8051F844  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8051F848  3C 00 43 30 */	lis r0, 0x4330
/* 8051F84C  90 01 00 98 */	stw r0, 0x98(r1)
/* 8051F850  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8051F854  EC 00 10 28 */	fsubs f0, f0, f2
/* 8051F858  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051F85C  FC 00 00 1E */	fctiwz f0, f0
/* 8051F860  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8051F864  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051F868  98 01 00 0E */	stb r0, 0xe(r1)
lbl_8051F86C:
/* 8051F86C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051F870  90 01 00 08 */	stw r0, 8(r1)
/* 8051F874  38 60 00 04 */	li r3, 4
/* 8051F878  38 81 00 08 */	addi r4, r1, 8
/* 8051F87C  4B E3 E0 E4 */	b GXSetChanAmbColor
/* 8051F880  88 16 00 01 */	lbz r0, 1(r22)
/* 8051F884  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8051F888  40 82 01 C0 */	bne lbl_8051FA48
/* 8051F88C  38 76 00 18 */	addi r3, r22, 0x18
/* 8051F890  38 80 00 00 */	li r4, 0
/* 8051F894  4B E4 09 B8 */	b GXLoadPosMtxImm
/* 8051F898  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8051F89C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8051F8A0  38 80 00 00 */	li r4, 0
/* 8051F8A4  4B E4 09 F8 */	b GXLoadNrmMtxImm
/* 8051F8A8  88 16 00 05 */	lbz r0, 5(r22)
/* 8051F8AC  28 00 00 03 */	cmplwi r0, 3
/* 8051F8B0  40 81 00 0C */	ble lbl_8051F8BC
/* 8051F8B4  28 00 00 0A */	cmplwi r0, 0xa
/* 8051F8B8  41 80 00 D0 */	blt lbl_8051F988
lbl_8051F8BC:
/* 8051F8BC  88 76 00 02 */	lbz r3, 2(r22)
/* 8051F8C0  7C 60 07 74 */	extsb r0, r3
/* 8051F8C4  2C 00 FF FF */	cmpwi r0, -1
/* 8051F8C8  40 80 00 90 */	bge lbl_8051F958
/* 8051F8CC  54 03 40 2E */	slwi r3, r0, 8
/* 8051F8D0  38 00 00 28 */	li r0, 0x28
/* 8051F8D4  7C 03 03 D6 */	divw r0, r3, r0
/* 8051F8D8  20 00 FF 00 */	subfic r0, r0, -256
/* 8051F8DC  B0 01 00 56 */	sth r0, 0x56(r1)
/* 8051F8E0  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8051F8E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051F8E8  90 61 00 28 */	stw r3, 0x28(r1)
/* 8051F8EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8051F8F0  38 60 00 03 */	li r3, 3
/* 8051F8F4  38 81 00 28 */	addi r4, r1, 0x28
/* 8051F8F8  4B DA E7 D8 */	b GFSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8051F8FC  88 16 00 02 */	lbz r0, 2(r22)
/* 8051F900  7C 00 07 74 */	extsb r0, r0
/* 8051F904  2C 00 FF FE */	cmpwi r0, -2
/* 8051F908  41 82 00 18 */	beq lbl_8051F920
/* 8051F90C  3C 94 00 02 */	addis r4, r20, 2
/* 8051F910  80 64 D7 04 */	lwz r3, -0x28fc(r4)
/* 8051F914  80 84 D7 08 */	lwz r4, -0x28f8(r4)
/* 8051F918  4B E4 05 D8 */	b GXCallDisplayList
/* 8051F91C  48 00 00 14 */	b lbl_8051F930
lbl_8051F920:
/* 8051F920  3C 94 00 02 */	addis r4, r20, 2
/* 8051F924  80 64 D7 0C */	lwz r3, -0x28f4(r4)
/* 8051F928  80 84 D7 10 */	lwz r4, -0x28f0(r4)
/* 8051F92C  4B E4 05 C4 */	b GXCallDisplayList
lbl_8051F930:
/* 8051F930  38 00 00 00 */	li r0, 0
/* 8051F934  B0 01 00 56 */	sth r0, 0x56(r1)
/* 8051F938  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8051F93C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051F940  90 61 00 20 */	stw r3, 0x20(r1)
/* 8051F944  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051F948  38 60 00 03 */	li r3, 3
/* 8051F94C  38 81 00 20 */	addi r4, r1, 0x20
/* 8051F950  4B DA E7 80 */	b GFSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8051F954  48 00 00 F4 */	b lbl_8051FA48
lbl_8051F958:
/* 8051F958  7C 60 07 75 */	extsb. r0, r3
/* 8051F95C  41 80 00 18 */	blt lbl_8051F974
/* 8051F960  3C 94 00 02 */	addis r4, r20, 2
/* 8051F964  80 64 D7 04 */	lwz r3, -0x28fc(r4)
/* 8051F968  80 84 D7 08 */	lwz r4, -0x28f8(r4)
/* 8051F96C  4B E4 05 84 */	b GXCallDisplayList
/* 8051F970  48 00 00 D8 */	b lbl_8051FA48
lbl_8051F974:
/* 8051F974  3C 94 00 02 */	addis r4, r20, 2
/* 8051F978  80 64 D7 0C */	lwz r3, -0x28f4(r4)
/* 8051F97C  80 84 D7 10 */	lwz r4, -0x28f0(r4)
/* 8051F980  4B E4 05 70 */	b GXCallDisplayList
/* 8051F984  48 00 00 C4 */	b lbl_8051FA48
lbl_8051F988:
/* 8051F988  88 76 00 02 */	lbz r3, 2(r22)
/* 8051F98C  7C 60 07 74 */	extsb r0, r3
/* 8051F990  2C 00 FF FF */	cmpwi r0, -1
/* 8051F994  40 80 00 8C */	bge lbl_8051FA20
/* 8051F998  54 03 40 2E */	slwi r3, r0, 8
/* 8051F99C  38 00 00 28 */	li r0, 0x28
/* 8051F9A0  7C 03 03 D6 */	divw r0, r3, r0
/* 8051F9A4  20 00 FF 00 */	subfic r0, r0, -256
/* 8051F9A8  B0 01 00 56 */	sth r0, 0x56(r1)
/* 8051F9AC  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8051F9B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051F9B4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8051F9B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8051F9BC  38 60 00 03 */	li r3, 3
/* 8051F9C0  38 81 00 18 */	addi r4, r1, 0x18
/* 8051F9C4  4B DA E7 0C */	b GFSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8051F9C8  88 16 00 02 */	lbz r0, 2(r22)
/* 8051F9CC  7C 00 07 74 */	extsb r0, r0
/* 8051F9D0  2C 00 FF FE */	cmpwi r0, -2
/* 8051F9D4  41 82 00 14 */	beq lbl_8051F9E8
/* 8051F9D8  38 7C 16 60 */	addi r3, r28, 0x1660
/* 8051F9DC  38 80 00 C0 */	li r4, 0xc0
/* 8051F9E0  4B E4 05 10 */	b GXCallDisplayList
/* 8051F9E4  48 00 00 14 */	b lbl_8051F9F8
lbl_8051F9E8:
/* 8051F9E8  3C 94 00 02 */	addis r4, r20, 2
/* 8051F9EC  80 64 D7 0C */	lwz r3, -0x28f4(r4)
/* 8051F9F0  80 84 D7 10 */	lwz r4, -0x28f0(r4)
/* 8051F9F4  4B E4 04 FC */	b GXCallDisplayList
lbl_8051F9F8:
/* 8051F9F8  38 00 00 00 */	li r0, 0
/* 8051F9FC  B0 01 00 56 */	sth r0, 0x56(r1)
/* 8051FA00  80 61 00 50 */	lwz r3, 0x50(r1)
/* 8051FA04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051FA08  90 61 00 10 */	stw r3, 0x10(r1)
/* 8051FA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051FA10  38 60 00 03 */	li r3, 3
/* 8051FA14  38 81 00 10 */	addi r4, r1, 0x10
/* 8051FA18  4B DA E6 B8 */	b GFSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8051FA1C  48 00 00 2C */	b lbl_8051FA48
lbl_8051FA20:
/* 8051FA20  7C 60 07 75 */	extsb. r0, r3
/* 8051FA24  41 80 00 14 */	blt lbl_8051FA38
/* 8051FA28  38 7C 16 60 */	addi r3, r28, 0x1660
/* 8051FA2C  38 80 00 C0 */	li r4, 0xc0
/* 8051FA30  4B E4 04 C0 */	b GXCallDisplayList
/* 8051FA34  48 00 00 14 */	b lbl_8051FA48
lbl_8051FA38:
/* 8051FA38  3C 94 00 02 */	addis r4, r20, 2
/* 8051FA3C  80 64 D7 0C */	lwz r3, -0x28f4(r4)
/* 8051FA40  80 84 D7 10 */	lwz r4, -0x28f0(r4)
/* 8051FA44  4B E4 04 AC */	b GXCallDisplayList
lbl_8051FA48:
/* 8051FA48  82 D6 00 48 */	lwz r22, 0x48(r22)
lbl_8051FA4C:
/* 8051FA4C  28 16 00 00 */	cmplwi r22, 0
/* 8051FA50  40 82 FA 88 */	bne lbl_8051F4D8
lbl_8051FA54:
/* 8051FA54  3A F7 00 01 */	addi r23, r23, 1
/* 8051FA58  2C 17 00 40 */	cmpwi r23, 0x40
/* 8051FA5C  3B 18 00 04 */	addi r24, r24, 4
/* 8051FA60  3A 73 04 04 */	addi r19, r19, 0x404
/* 8051FA64  41 80 F8 20 */	blt lbl_8051F284
/* 8051FA68  38 00 00 00 */	li r0, 0
/* 8051FA6C  3C 60 80 45 */	lis r3, sOldVcdVatCmd__8J3DShape@ha
/* 8051FA70  90 03 15 D0 */	stw r0, sOldVcdVatCmd__8J3DShape@l(r3)
/* 8051FA74  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 8051FA78  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8051FA7C  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 8051FA80  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8051FA84  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 8051FA88  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 8051FA8C  E3 81 01 08 */	psq_l f28, 264(r1), 0, 0 /* qr0 */
/* 8051FA90  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 8051FA94  E3 61 00 F8 */	psq_l f27, 248(r1), 0, 0 /* qr0 */
/* 8051FA98  CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 8051FA9C  E3 41 00 E8 */	psq_l f26, 232(r1), 0, 0 /* qr0 */
/* 8051FAA0  CB 41 00 E0 */	lfd f26, 0xe0(r1)
/* 8051FAA4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8051FAA8  4B E4 27 54 */	b _restgpr_18
/* 8051FAAC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8051FAB0  7C 08 03 A6 */	mtlr r0
/* 8051FAB4  38 21 01 40 */	addi r1, r1, 0x140
/* 8051FAB8  4E 80 00 20 */	blr 
