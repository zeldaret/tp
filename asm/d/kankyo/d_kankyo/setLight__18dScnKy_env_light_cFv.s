lbl_801A040C:
/* 801A040C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 801A0410  7C 08 02 A6 */	mflr r0
/* 801A0414  90 01 01 54 */	stw r0, 0x154(r1)
/* 801A0418  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 801A041C  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 801A0420  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 801A0424  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 801A0428  39 61 01 30 */	addi r11, r1, 0x130
/* 801A042C  48 1C 1D 75 */	bl _savegpr_14
/* 801A0430  7C 6F 1B 78 */	mr r15, r3
/* 801A0434  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0438  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A043C  3B 24 12 D2 */	addi r25, r4, 0x12d2
/* 801A0440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A0444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A0448  81 C3 5D 74 */	lwz r14, 0x5d74(r3)
/* 801A044C  38 00 00 00 */	li r0, 0
/* 801A0450  B0 01 00 60 */	sth r0, 0x60(r1)
/* 801A0454  B0 01 00 62 */	sth r0, 0x62(r1)
/* 801A0458  B0 01 00 64 */	sth r0, 0x64(r1)
/* 801A045C  B0 01 00 66 */	sth r0, 0x66(r1)
/* 801A0460  28 0E 00 00 */	cmplwi r14, 0
/* 801A0464  41 82 0E B0 */	beq lbl_801A1314
/* 801A0468  88 04 12 D8 */	lbz r0, 0x12d8(r4)
/* 801A046C  28 00 00 00 */	cmplwi r0, 0
/* 801A0470  41 82 00 A8 */	beq lbl_801A0518
/* 801A0474  38 61 00 74 */	addi r3, r1, 0x74
/* 801A0478  4B ED 75 89 */	bl __ct__18dBgS_CamGndChk_WtrFv
/* 801A047C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A0480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A0484  88 03 00 13 */	lbz r0, 0x13(r3)
/* 801A0488  28 00 00 31 */	cmplwi r0, 0x31
/* 801A048C  40 82 00 18 */	bne lbl_801A04A4
/* 801A0490  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801A0494  80 03 05 74 */	lwz r0, 0x574(r3)
/* 801A0498  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801A049C  40 82 00 08 */	bne lbl_801A04A4
/* 801A04A0  48 00 AB 7D */	bl dKy_WaterIn_Light_set__Fv
lbl_801A04A4:
/* 801A04A4  C0 0E 00 D8 */	lfs f0, 0xd8(r14)
/* 801A04A8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801A04AC  C0 2E 00 DC */	lfs f1, 0xdc(r14)
/* 801A04B0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801A04B4  C0 0E 00 E0 */	lfs f0, 0xe0(r14)
/* 801A04B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801A04BC  C0 02 A2 E8 */	lfs f0, lit_6032(r2)
/* 801A04C0  EC 01 00 2A */	fadds f0, f1, f0
/* 801A04C4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801A04C8  38 61 00 74 */	addi r3, r1, 0x74
/* 801A04CC  38 81 00 68 */	addi r4, r1, 0x68
/* 801A04D0  48 0C 78 59 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 801A04D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A04D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A04DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 801A04E0  38 81 00 74 */	addi r4, r1, 0x74
/* 801A04E4  4B ED 3F BD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 801A04E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A04EC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A04F0  38 63 12 58 */	addi r3, r3, 0x1258
/* 801A04F4  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A04F8  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A04FC  C0 62 A2 68 */	lfs f3, lit_4731(r2)
/* 801A0500  C0 82 A2 F0 */	lfs f4, lit_6034(r2)
/* 801A0504  48 0C F4 79 */	bl cLib_addCalc__FPfffff
/* 801A0508  38 61 00 74 */	addi r3, r1, 0x74
/* 801A050C  38 80 FF FF */	li r4, -1
/* 801A0510  4B ED 75 89 */	bl __dt__18dBgS_CamGndChk_WtrFv
/* 801A0514  48 00 00 0C */	b lbl_801A0520
lbl_801A0518:
/* 801A0518  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A051C  D0 04 12 58 */	stfs f0, 0x1258(r4)
lbl_801A0520:
/* 801A0520  38 01 00 20 */	addi r0, r1, 0x20
/* 801A0524  90 01 00 08 */	stw r0, 8(r1)
/* 801A0528  38 01 00 3C */	addi r0, r1, 0x3c
/* 801A052C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A0530  38 01 00 38 */	addi r0, r1, 0x38
/* 801A0534  90 01 00 10 */	stw r0, 0x10(r1)
/* 801A0538  38 01 00 34 */	addi r0, r1, 0x34
/* 801A053C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A0540  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0544  38 E3 CA 54 */	addi r7, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A0548  3B 47 11 DC */	addi r26, r7, 0x11dc
/* 801A054C  93 41 00 18 */	stw r26, 0x18(r1)
/* 801A0550  93 21 00 1C */	stw r25, 0x1c(r1)
/* 801A0554  7D E3 7B 78 */	mr r3, r15
/* 801A0558  38 87 12 C6 */	addi r4, r7, 0x12c6
/* 801A055C  38 A7 12 C7 */	addi r5, r7, 0x12c7
/* 801A0560  38 C7 12 C2 */	addi r6, r7, 0x12c2
/* 801A0564  38 E7 12 C3 */	addi r7, r7, 0x12c3
/* 801A0568  39 01 00 23 */	addi r8, r1, 0x23
/* 801A056C  39 21 00 21 */	addi r9, r1, 0x21
/* 801A0570  39 41 00 22 */	addi r10, r1, 0x22
/* 801A0574  4B FF F6 61 */	bl setLight_palno_get__18dScnKy_env_light_cFPUcPUcPUcPUcPUcPUcPUcPUcPfPiPiPfPUc
/* 801A0578  88 01 00 23 */	lbz r0, 0x23(r1)
/* 801A057C  28 00 00 FF */	cmplwi r0, 0xff
/* 801A0580  40 82 00 44 */	bne lbl_801A05C4
/* 801A0584  38 A0 00 FF */	li r5, 0xff
/* 801A0588  B0 AF 11 00 */	sth r5, 0x1100(r15)
/* 801A058C  38 80 00 00 */	li r4, 0
/* 801A0590  B0 8F 11 02 */	sth r4, 0x1102(r15)
/* 801A0594  B0 8F 11 04 */	sth r4, 0x1104(r15)
/* 801A0598  7C 83 23 78 */	mr r3, r4
/* 801A059C  38 00 00 04 */	li r0, 4
/* 801A05A0  7C 09 03 A6 */	mtctr r0
lbl_801A05A4:
/* 801A05A4  7C CF 1A 14 */	add r6, r15, r3
/* 801A05A8  B0 A6 11 08 */	sth r5, 0x1108(r6)
/* 801A05AC  B0 86 11 0A */	sth r4, 0x110a(r6)
/* 801A05B0  B0 86 11 0C */	sth r4, 0x110c(r6)
/* 801A05B4  B0 86 11 0E */	sth r4, 0x110e(r6)
/* 801A05B8  38 63 00 08 */	addi r3, r3, 8
/* 801A05BC  42 00 FF E8 */	bdnz lbl_801A05A4
/* 801A05C0  48 00 0D 54 */	b lbl_801A1314
lbl_801A05C4:
/* 801A05C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A05C8  39 23 CA 54 */	addi r9, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A05CC  80 69 00 04 */	lwz r3, 4(r9)
/* 801A05D0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A05D4  7F 03 02 14 */	add r24, r3, r0
/* 801A05D8  88 01 00 21 */	lbz r0, 0x21(r1)
/* 801A05DC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A05E0  7E E3 02 14 */	add r23, r3, r0
/* 801A05E4  88 01 00 22 */	lbz r0, 0x22(r1)
/* 801A05E8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A05EC  7E C3 02 14 */	add r22, r3, r0
/* 801A05F0  88 01 00 20 */	lbz r0, 0x20(r1)
/* 801A05F4  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A05F8  7E A3 02 14 */	add r21, r3, r0
/* 801A05FC  80 61 00 60 */	lwz r3, 0x60(r1)
/* 801A0600  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801A0604  90 61 00 58 */	stw r3, 0x58(r1)
/* 801A0608  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801A060C  38 6F 11 00 */	addi r3, r15, 0x1100
/* 801A0610  7F 04 C3 78 */	mr r4, r24
/* 801A0614  7E C5 B3 78 */	mr r5, r22
/* 801A0618  7E E6 BB 78 */	mr r6, r23
/* 801A061C  7E A7 AB 78 */	mr r7, r21
/* 801A0620  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0624  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0628  39 01 00 58 */	addi r8, r1, 0x58
/* 801A062C  C0 69 12 10 */	lfs f3, 0x1210(r9)
/* 801A0630  C0 09 11 FC */	lfs f0, 0x11fc(r9)
/* 801A0634  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A0638  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A063C  4B FF FD 05 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A0640  3A 00 00 00 */	li r16, 0
/* 801A0644  3A 20 00 00 */	li r17, 0
/* 801A0648  3A 60 00 00 */	li r19, 0
/* 801A064C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A0650  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A0654  39 C3 4E 00 */	addi r14, r3, 0x4e00
/* 801A0658  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A065C  3A 43 CA 54 */	addi r18, r3, g_env_light@l /* 0x8042CA54@l */
lbl_801A0660:
/* 801A0660  2C 10 00 03 */	cmpwi r16, 3
/* 801A0664  40 82 00 3C */	bne lbl_801A06A0
/* 801A0668  7D C3 73 78 */	mr r3, r14
/* 801A066C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A0670  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A0674  38 84 01 5C */	addi r4, r4, 0x15c
/* 801A0678  48 1C 83 1D */	bl strcmp
/* 801A067C  2C 03 00 00 */	cmpwi r3, 0
/* 801A0680  41 82 00 6C */	beq lbl_801A06EC
/* 801A0684  7D C3 73 78 */	mr r3, r14
/* 801A0688  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A068C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A0690  38 84 01 7A */	addi r4, r4, 0x17a
/* 801A0694  48 1C 83 01 */	bl strcmp
/* 801A0698  2C 03 00 00 */	cmpwi r3, 0
/* 801A069C  41 82 00 50 */	beq lbl_801A06EC
lbl_801A06A0:
/* 801A06A0  80 61 00 60 */	lwz r3, 0x60(r1)
/* 801A06A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801A06A8  90 61 00 50 */	stw r3, 0x50(r1)
/* 801A06AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A06B0  38 71 11 08 */	addi r3, r17, 0x1108
/* 801A06B4  7C 6F 1A 14 */	add r3, r15, r3
/* 801A06B8  38 93 00 03 */	addi r4, r19, 3
/* 801A06BC  7C 98 22 14 */	add r4, r24, r4
/* 801A06C0  38 B3 00 03 */	addi r5, r19, 3
/* 801A06C4  7C B6 2A 14 */	add r5, r22, r5
/* 801A06C8  38 D3 00 03 */	addi r6, r19, 3
/* 801A06CC  7C D7 32 14 */	add r6, r23, r6
/* 801A06D0  38 F3 00 03 */	addi r7, r19, 3
/* 801A06D4  7C F5 3A 14 */	add r7, r21, r7
/* 801A06D8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A06DC  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A06E0  39 01 00 50 */	addi r8, r1, 0x50
/* 801A06E4  C0 72 12 00 */	lfs f3, 0x1200(r18)
/* 801A06E8  4B FF FC 59 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
lbl_801A06EC:
/* 801A06EC  3A 10 00 01 */	addi r16, r16, 1
/* 801A06F0  2C 10 00 04 */	cmpwi r16, 4
/* 801A06F4  3A 31 00 08 */	addi r17, r17, 8
/* 801A06F8  3A 73 00 03 */	addi r19, r19, 3
/* 801A06FC  41 80 FF 64 */	blt lbl_801A0660
/* 801A0700  4B FB ED 25 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A0704  2C 03 00 00 */	cmpwi r3, 0
/* 801A0708  41 82 00 14 */	beq lbl_801A071C
/* 801A070C  38 6F 11 00 */	addi r3, r15, 0x1100
/* 801A0710  4B FF BC 79 */	bl dKy_WolfPowerup_AmbCol__FP11_GXColorS10
/* 801A0714  38 6F 11 08 */	addi r3, r15, 0x1108
/* 801A0718  4B FF C3 F5 */	bl dKy_WolfPowerup_BgAmbCol__FP11_GXColorS10
lbl_801A071C:
/* 801A071C  88 78 00 31 */	lbz r3, 0x31(r24)
/* 801A0720  88 97 00 31 */	lbz r4, 0x31(r23)
/* 801A0724  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0728  88 B6 00 31 */	lbz r5, 0x31(r22)
/* 801A072C  88 D5 00 31 */	lbz r6, 0x31(r21)
/* 801A0730  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0734  38 E0 00 00 */	li r7, 0
/* 801A0738  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A073C  4B FF CF 51 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0740  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801A0744  B0 0F 11 16 */	sth r0, 0x1116(r15)
/* 801A0748  88 78 00 32 */	lbz r3, 0x32(r24)
/* 801A074C  88 97 00 32 */	lbz r4, 0x32(r23)
/* 801A0750  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0754  88 B6 00 32 */	lbz r5, 0x32(r22)
/* 801A0758  88 D5 00 32 */	lbz r6, 0x32(r21)
/* 801A075C  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0760  38 E0 00 00 */	li r7, 0
/* 801A0764  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0768  4B FF CF 25 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A076C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801A0770  B0 0F 11 1E */	sth r0, 0x111e(r15)
/* 801A0774  88 78 00 33 */	lbz r3, 0x33(r24)
/* 801A0778  88 97 00 33 */	lbz r4, 0x33(r23)
/* 801A077C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0780  88 B6 00 33 */	lbz r5, 0x33(r22)
/* 801A0784  88 D5 00 33 */	lbz r6, 0x33(r21)
/* 801A0788  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A078C  38 E0 00 00 */	li r7, 0
/* 801A0790  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0794  4B FF CE F9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0798  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801A079C  B0 0F 11 26 */	sth r0, 0x1126(r15)
/* 801A07A0  88 78 00 2D */	lbz r3, 0x2d(r24)
/* 801A07A4  88 97 00 2D */	lbz r4, 0x2d(r23)
/* 801A07A8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A07AC  88 B6 00 2D */	lbz r5, 0x2d(r22)
/* 801A07B0  88 D5 00 2D */	lbz r6, 0x2d(r21)
/* 801A07B4  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A07B8  38 E0 00 00 */	li r7, 0
/* 801A07BC  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A07C0  4B FF CE CD */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A07C4  C0 42 A2 68 */	lfs f2, lit_4731(r2)
/* 801A07C8  7C 60 07 34 */	extsh r0, r3
/* 801A07CC  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A07D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A07D4  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801A07D8  3C 00 43 30 */	lis r0, 0x4330
/* 801A07DC  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 801A07E0  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 801A07E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A07E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A07EC  D0 0F 12 5C */	stfs f0, 0x125c(r15)
/* 801A07F0  C0 2F 12 5C */	lfs f1, 0x125c(r15)
/* 801A07F4  C0 02 A2 4C */	lfs f0, lit_4506(r2)
/* 801A07F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A07FC  40 81 00 0C */	ble lbl_801A0808
/* 801A0800  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A0804  D0 0F 12 5C */	stfs f0, 0x125c(r15)
lbl_801A0808:
/* 801A0808  88 78 00 2E */	lbz r3, 0x2e(r24)
/* 801A080C  88 97 00 2E */	lbz r4, 0x2e(r23)
/* 801A0810  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0814  88 B6 00 2E */	lbz r5, 0x2e(r22)
/* 801A0818  88 D5 00 2E */	lbz r6, 0x2e(r21)
/* 801A081C  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0820  38 E0 00 00 */	li r7, 0
/* 801A0824  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0828  4B FF CE 65 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A082C  98 6F 12 F8 */	stb r3, 0x12f8(r15)
/* 801A0830  4B FB EB F5 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A0834  2C 03 00 00 */	cmpwi r3, 0
/* 801A0838  41 82 00 0C */	beq lbl_801A0844
/* 801A083C  38 00 00 FF */	li r0, 0xff
/* 801A0840  98 0F 12 F8 */	stb r0, 0x12f8(r15)
lbl_801A0844:
/* 801A0844  3A 80 00 00 */	li r20, 0
/* 801A0848  3B 60 00 00 */	li r27, 0
/* 801A084C  3B 80 00 00 */	li r28, 0
/* 801A0850  3B A0 00 00 */	li r29, 0
/* 801A0854  82 21 00 60 */	lwz r17, 0x60(r1)
/* 801A0858  82 01 00 64 */	lwz r16, 0x64(r1)
/* 801A085C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0860  39 C3 CA 54 */	addi r14, r3, g_env_light@l /* 0x8042CA54@l */
lbl_801A0864:
/* 801A0864  92 21 00 48 */	stw r17, 0x48(r1)
/* 801A0868  92 01 00 4C */	stw r16, 0x4c(r1)
/* 801A086C  7E 6F E2 14 */	add r19, r15, r28
/* 801A0870  38 73 11 28 */	addi r3, r19, 0x1128
/* 801A0874  38 9D 00 0F */	addi r4, r29, 0xf
/* 801A0878  7C 98 22 14 */	add r4, r24, r4
/* 801A087C  38 BD 00 0F */	addi r5, r29, 0xf
/* 801A0880  7C B6 2A 14 */	add r5, r22, r5
/* 801A0884  38 DD 00 0F */	addi r6, r29, 0xf
/* 801A0888  7C D7 32 14 */	add r6, r23, r6
/* 801A088C  38 FD 00 0F */	addi r7, r29, 0xf
/* 801A0890  7C F5 3A 14 */	add r7, r21, r7
/* 801A0894  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0898  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A089C  39 01 00 48 */	addi r8, r1, 0x48
/* 801A08A0  C0 72 12 00 */	lfs f3, 0x1200(r18)
/* 801A08A4  4B FF FA 9D */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A08A8  4B FB EB 7D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A08AC  2C 03 00 00 */	cmpwi r3, 0
/* 801A08B0  41 82 00 14 */	beq lbl_801A08C4
/* 801A08B4  38 00 00 00 */	li r0, 0
/* 801A08B8  B0 13 11 28 */	sth r0, 0x1128(r19)
/* 801A08BC  B0 13 11 2A */	sth r0, 0x112a(r19)
/* 801A08C0  B0 13 11 2C */	sth r0, 0x112c(r19)
lbl_801A08C4:
/* 801A08C4  A8 13 11 28 */	lha r0, 0x1128(r19)
/* 801A08C8  7C 6E DA 14 */	add r3, r14, r27
/* 801A08CC  98 03 09 C4 */	stb r0, 0x9c4(r3)
/* 801A08D0  A8 13 11 2A */	lha r0, 0x112a(r19)
/* 801A08D4  98 03 09 C5 */	stb r0, 0x9c5(r3)
/* 801A08D8  A8 13 11 2C */	lha r0, 0x112c(r19)
/* 801A08DC  98 03 09 C6 */	stb r0, 0x9c6(r3)
/* 801A08E0  3A 94 00 01 */	addi r20, r20, 1
/* 801A08E4  2C 14 00 06 */	cmpwi r20, 6
/* 801A08E8  3B 7B 00 4C */	addi r27, r27, 0x4c
/* 801A08EC  3B 9C 00 08 */	addi r28, r28, 8
/* 801A08F0  3B BD 00 03 */	addi r29, r29, 3
/* 801A08F4  41 80 FF 70 */	blt lbl_801A0864
/* 801A08F8  80 6F 11 B0 */	lwz r3, 0x11b0(r15)
/* 801A08FC  80 0F 11 B4 */	lwz r0, 0x11b4(r15)
/* 801A0900  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A0904  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A0908  38 6F 11 58 */	addi r3, r15, 0x1158
/* 801A090C  38 98 00 21 */	addi r4, r24, 0x21
/* 801A0910  38 B6 00 21 */	addi r5, r22, 0x21
/* 801A0914  38 D7 00 21 */	addi r6, r23, 0x21
/* 801A0918  38 F5 00 21 */	addi r7, r21, 0x21
/* 801A091C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0920  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0924  39 01 00 40 */	addi r8, r1, 0x40
/* 801A0928  3D 20 80 43 */	lis r9, g_env_light@ha /* 0x8042CA54@ha */
/* 801A092C  39 29 CA 54 */	addi r9, r9, g_env_light@l /* 0x8042CA54@l */
/* 801A0930  C0 69 12 04 */	lfs f3, 0x1204(r9)
/* 801A0934  4B FF FA 0D */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A0938  C0 38 00 24 */	lfs f1, 0x24(r24)
/* 801A093C  C0 57 00 24 */	lfs f2, 0x24(r23)
/* 801A0940  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801A0944  C0 96 00 24 */	lfs f4, 0x24(r22)
/* 801A0948  C0 B5 00 24 */	lfs f5, 0x24(r21)
/* 801A094C  C0 DA 00 00 */	lfs f6, 0(r26)
/* 801A0950  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0954  39 C3 CA 54 */	addi r14, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A0958  C0 EE 11 EC */	lfs f7, 0x11ec(r14)
/* 801A095C  C1 0E 11 F4 */	lfs f8, 0x11f4(r14)
/* 801A0960  4B FF CE 41 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A0964  D0 2F 11 E4 */	stfs f1, 0x11e4(r15)
/* 801A0968  C0 38 00 28 */	lfs f1, 0x28(r24)
/* 801A096C  C0 57 00 28 */	lfs f2, 0x28(r23)
/* 801A0970  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801A0974  C0 96 00 28 */	lfs f4, 0x28(r22)
/* 801A0978  C0 B5 00 28 */	lfs f5, 0x28(r21)
/* 801A097C  C0 DA 00 00 */	lfs f6, 0(r26)
/* 801A0980  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0984  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A0988  C0 E3 11 F0 */	lfs f7, 0x11f0(r3)
/* 801A098C  C1 0E 11 F4 */	lfs f8, 0x11f4(r14)
/* 801A0990  4B FF CE 11 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A0994  D0 2F 11 E8 */	stfs f1, 0x11e8(r15)
/* 801A0998  4B FB EA 8D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A099C  2C 03 00 00 */	cmpwi r3, 0
/* 801A09A0  41 82 00 20 */	beq lbl_801A09C0
/* 801A09A4  38 00 00 00 */	li r0, 0
/* 801A09A8  B0 0F 11 58 */	sth r0, 0x1158(r15)
/* 801A09AC  B0 0F 11 5A */	sth r0, 0x115a(r15)
/* 801A09B0  B0 0F 11 5C */	sth r0, 0x115c(r15)
/* 801A09B4  38 6F 11 E4 */	addi r3, r15, 0x11e4
/* 801A09B8  38 8F 11 E8 */	addi r4, r15, 0x11e8
/* 801A09BC  4B FF C3 21 */	bl dKy_WolfPowerup_FogNearFar__FPfPf
lbl_801A09C0:
/* 801A09C0  8A 98 00 30 */	lbz r20, 0x30(r24)
/* 801A09C4  8A 76 00 30 */	lbz r19, 0x30(r22)
/* 801A09C8  8A 57 00 30 */	lbz r18, 0x30(r23)
/* 801A09CC  8A 35 00 30 */	lbz r17, 0x30(r21)
/* 801A09D0  4B FB EA 55 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A09D4  2C 03 00 00 */	cmpwi r3, 0
/* 801A09D8  41 82 00 14 */	beq lbl_801A09EC
/* 801A09DC  3A 20 00 03 */	li r17, 3
/* 801A09E0  3A 40 00 03 */	li r18, 3
/* 801A09E4  3A 60 00 03 */	li r19, 3
/* 801A09E8  3A 80 00 03 */	li r20, 3
lbl_801A09EC:
/* 801A09EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A09F0  3B 63 CA 54 */	addi r27, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A09F4  88 7B 12 FC */	lbz r3, 0x12fc(r27)
/* 801A09F8  7C 60 07 75 */	extsb. r0, r3
/* 801A09FC  41 80 00 18 */	blt lbl_801A0A14
/* 801A0A00  7C 72 1B 78 */	mr r18, r3
/* 801A0A04  7C 71 1B 78 */	mr r17, r3
/* 801A0A08  C3 E1 00 3C */	lfs f31, 0x3c(r1)
/* 801A0A0C  C0 1B 12 78 */	lfs f0, 0x1278(r27)
/* 801A0A10  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_801A0A14:
/* 801A0A14  56 83 06 3E */	clrlwi r3, r20, 0x18
/* 801A0A18  4B EB 60 7D */	bl dKyd_BloomInf_tbl_getp__Fi
/* 801A0A1C  7C 7C 1B 78 */	mr r28, r3
/* 801A0A20  56 63 06 3E */	clrlwi r3, r19, 0x18
/* 801A0A24  4B EB 60 71 */	bl dKyd_BloomInf_tbl_getp__Fi
/* 801A0A28  7C 7D 1B 78 */	mr r29, r3
/* 801A0A2C  56 43 06 3E */	clrlwi r3, r18, 0x18
/* 801A0A30  4B EB 60 65 */	bl dKyd_BloomInf_tbl_getp__Fi
/* 801A0A34  7C 7E 1B 78 */	mr r30, r3
/* 801A0A38  56 23 06 3E */	clrlwi r3, r17, 0x18
/* 801A0A3C  4B EB 60 59 */	bl dKyd_BloomInf_tbl_getp__Fi
/* 801A0A40  7C 7F 1B 78 */	mr r31, r3
/* 801A0A44  88 7C 00 01 */	lbz r3, 1(r28)
/* 801A0A48  88 9E 00 01 */	lbz r4, 1(r30)
/* 801A0A4C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0A50  88 BD 00 01 */	lbz r5, 1(r29)
/* 801A0A54  88 DF 00 01 */	lbz r6, 1(r31)
/* 801A0A58  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0A5C  38 E0 00 00 */	li r7, 0
/* 801A0A60  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0A64  4B FF CC 29 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0A68  54 6E 06 3E */	clrlwi r14, r3, 0x18
/* 801A0A6C  3C 80 80 3E */	lis r4, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 801A0A70  38 84 D4 28 */	addi r4, r4, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 801A0A74  98 64 00 0A */	stb r3, 0xa(r4)
/* 801A0A78  88 7C 00 02 */	lbz r3, 2(r28)
/* 801A0A7C  88 9E 00 02 */	lbz r4, 2(r30)
/* 801A0A80  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0A84  88 BD 00 02 */	lbz r5, 2(r29)
/* 801A0A88  88 DF 00 02 */	lbz r6, 2(r31)
/* 801A0A8C  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0A90  38 E0 00 00 */	li r7, 0
/* 801A0A94  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0A98  4B FF CB F5 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0A9C  54 70 06 3E */	clrlwi r16, r3, 0x18
/* 801A0AA0  48 00 BA DD */	bl dKy_darkworld_check__Fv
/* 801A0AA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A0AA8  41 82 00 70 */	beq lbl_801A0B18
/* 801A0AAC  A8 0D 8A E8 */	lha r0, S_fuwan_sin+0x0(r13)
/* 801A0AB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801A0AB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801A0AB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801A0ABC  7F C3 04 2E */	lfsx f30, r3, r0
/* 801A0AC0  C0 22 A1 EC */	lfs f1, lit_4356(r2)
/* 801A0AC4  48 0C 6E 91 */	bl cM_rndF__Ff
/* 801A0AC8  FC 00 08 1E */	fctiwz f0, f1
/* 801A0ACC  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 801A0AD0  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 801A0AD4  A8 0D 8A E8 */	lha r0, S_fuwan_sin+0x0(r13)
/* 801A0AD8  7C 63 02 14 */	add r3, r3, r0
/* 801A0ADC  38 03 01 F4 */	addi r0, r3, 0x1f4
/* 801A0AE0  B0 0D 8A E8 */	sth r0, S_fuwan_sin+0x0(r13)
/* 801A0AE4  C0 42 A2 F4 */	lfs f2, lit_6035(r2)
/* 801A0AE8  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A0AEC  92 01 00 D4 */	stw r16, 0xd4(r1)
/* 801A0AF0  3C 00 43 30 */	lis r0, 0x4330
/* 801A0AF4  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 801A0AF8  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 801A0AFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A0B00  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A0B04  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801A0B08  FC 00 00 1E */	fctiwz f0, f0
/* 801A0B0C  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 801A0B10  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 801A0B14  7E 10 02 14 */	add r16, r16, r0
lbl_801A0B18:
/* 801A0B18  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 801A0B1C  38 63 D4 28 */	addi r3, r3, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 801A0B20  9A 03 00 0B */	stb r16, 0xb(r3)
/* 801A0B24  88 7C 00 03 */	lbz r3, 3(r28)
/* 801A0B28  88 9E 00 03 */	lbz r4, 3(r30)
/* 801A0B2C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0B30  88 BD 00 03 */	lbz r5, 3(r29)
/* 801A0B34  88 DF 00 03 */	lbz r6, 3(r31)
/* 801A0B38  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0B3C  38 E0 00 00 */	li r7, 0
/* 801A0B40  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0B44  4B FF CB 49 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0B48  3C 80 80 3E */	lis r4, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 801A0B4C  38 84 D4 28 */	addi r4, r4, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 801A0B50  98 64 00 0C */	stb r3, 0xc(r4)
/* 801A0B54  88 7C 00 04 */	lbz r3, 4(r28)
/* 801A0B58  88 9E 00 04 */	lbz r4, 4(r30)
/* 801A0B5C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0B60  88 BD 00 04 */	lbz r5, 4(r29)
/* 801A0B64  88 DF 00 04 */	lbz r6, 4(r31)
/* 801A0B68  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0B6C  38 E0 00 00 */	li r7, 0
/* 801A0B70  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0B74  4B FF CB 19 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0B78  98 61 00 30 */	stb r3, 0x30(r1)
/* 801A0B7C  88 7C 00 05 */	lbz r3, 5(r28)
/* 801A0B80  88 9E 00 05 */	lbz r4, 5(r30)
/* 801A0B84  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0B88  88 BD 00 05 */	lbz r5, 5(r29)
/* 801A0B8C  88 DF 00 05 */	lbz r6, 5(r31)
/* 801A0B90  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0B94  38 E0 00 00 */	li r7, 0
/* 801A0B98  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0B9C  4B FF CA F1 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0BA0  98 61 00 31 */	stb r3, 0x31(r1)
/* 801A0BA4  88 7C 00 06 */	lbz r3, 6(r28)
/* 801A0BA8  88 9E 00 06 */	lbz r4, 6(r30)
/* 801A0BAC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0BB0  88 BD 00 06 */	lbz r5, 6(r29)
/* 801A0BB4  88 DF 00 06 */	lbz r6, 6(r31)
/* 801A0BB8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0BBC  38 E0 00 00 */	li r7, 0
/* 801A0BC0  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0BC4  4B FF CA C9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0BC8  98 61 00 32 */	stb r3, 0x32(r1)
/* 801A0BCC  88 7C 00 07 */	lbz r3, 7(r28)
/* 801A0BD0  88 9E 00 07 */	lbz r4, 7(r30)
/* 801A0BD4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0BD8  88 BD 00 07 */	lbz r5, 7(r29)
/* 801A0BDC  88 DF 00 07 */	lbz r6, 7(r31)
/* 801A0BE0  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0BE4  38 E0 00 00 */	li r7, 0
/* 801A0BE8  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0BEC  4B FF CA A1 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0BF0  98 61 00 33 */	stb r3, 0x33(r1)
/* 801A0BF4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801A0BF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 801A0BFC  88 01 00 28 */	lbz r0, 0x28(r1)
/* 801A0C00  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 801A0C04  9C 03 D4 28 */	stbu r0, m_bloom__13mDoGph_gInf_c@l(r3)  /* 0x803DD428@l */
/* 801A0C08  88 01 00 29 */	lbz r0, 0x29(r1)
/* 801A0C0C  98 03 00 01 */	stb r0, 1(r3)
/* 801A0C10  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 801A0C14  98 03 00 02 */	stb r0, 2(r3)
/* 801A0C18  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 801A0C1C  98 03 00 03 */	stb r0, 3(r3)
/* 801A0C20  88 1B 12 FC */	lbz r0, 0x12fc(r27)
/* 801A0C24  7C 00 07 75 */	extsb. r0, r0
/* 801A0C28  41 80 00 08 */	blt lbl_801A0C30
/* 801A0C2C  D3 E1 00 3C */	stfs f31, 0x3c(r1)
lbl_801A0C30:
/* 801A0C30  88 7C 00 08 */	lbz r3, 8(r28)
/* 801A0C34  88 9E 00 08 */	lbz r4, 8(r30)
/* 801A0C38  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0C3C  88 BD 00 08 */	lbz r5, 8(r29)
/* 801A0C40  88 DF 00 08 */	lbz r6, 8(r31)
/* 801A0C44  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0C48  38 E0 00 00 */	li r7, 0
/* 801A0C4C  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0C50  4B FF CA 3D */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0C54  98 61 00 2C */	stb r3, 0x2c(r1)
/* 801A0C58  88 7C 00 09 */	lbz r3, 9(r28)
/* 801A0C5C  88 9E 00 09 */	lbz r4, 9(r30)
/* 801A0C60  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0C64  88 BD 00 09 */	lbz r5, 9(r29)
/* 801A0C68  88 DF 00 09 */	lbz r6, 9(r31)
/* 801A0C6C  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0C70  38 E0 00 00 */	li r7, 0
/* 801A0C74  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0C78  4B FF CA 15 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0C7C  98 61 00 2D */	stb r3, 0x2d(r1)
/* 801A0C80  88 7C 00 0A */	lbz r3, 0xa(r28)
/* 801A0C84  88 9E 00 0A */	lbz r4, 0xa(r30)
/* 801A0C88  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0C8C  88 BD 00 0A */	lbz r5, 0xa(r29)
/* 801A0C90  88 DF 00 0A */	lbz r6, 0xa(r31)
/* 801A0C94  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0C98  38 E0 00 00 */	li r7, 0
/* 801A0C9C  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0CA0  4B FF C9 ED */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0CA4  98 61 00 2E */	stb r3, 0x2e(r1)
/* 801A0CA8  88 7C 00 0B */	lbz r3, 0xb(r28)
/* 801A0CAC  88 9E 00 0B */	lbz r4, 0xb(r30)
/* 801A0CB0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0CB4  88 BD 00 0B */	lbz r5, 0xb(r29)
/* 801A0CB8  88 DF 00 0B */	lbz r6, 0xb(r31)
/* 801A0CBC  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0CC0  38 E0 00 00 */	li r7, 0
/* 801A0CC4  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A0CC8  4B FF C9 C5 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0CCC  98 61 00 2F */	stb r3, 0x2f(r1)
/* 801A0CD0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801A0CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A0CD8  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801A0CDC  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 801A0CE0  38 63 D4 28 */	addi r3, r3, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 801A0CE4  98 03 00 04 */	stb r0, 4(r3)
/* 801A0CE8  88 01 00 25 */	lbz r0, 0x25(r1)
/* 801A0CEC  98 03 00 05 */	stb r0, 5(r3)
/* 801A0CF0  88 01 00 26 */	lbz r0, 0x26(r1)
/* 801A0CF4  98 03 00 06 */	stb r0, 6(r3)
/* 801A0CF8  88 01 00 27 */	lbz r0, 0x27(r1)
/* 801A0CFC  98 03 00 07 */	stb r0, 7(r3)
/* 801A0D00  28 0E 00 FF */	cmplwi r14, 0xff
/* 801A0D04  41 80 00 10 */	blt lbl_801A0D14
/* 801A0D08  38 00 00 00 */	li r0, 0
/* 801A0D0C  98 03 00 08 */	stb r0, 8(r3)
/* 801A0D10  48 00 00 88 */	b lbl_801A0D98
lbl_801A0D14:
/* 801A0D14  38 80 00 00 */	li r4, 0
/* 801A0D18  38 00 00 01 */	li r0, 1
/* 801A0D1C  98 03 00 08 */	stb r0, 8(r3)
/* 801A0D20  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 801A0D24  41 82 00 18 */	beq lbl_801A0D3C
/* 801A0D28  88 1C 00 00 */	lbz r0, 0(r28)
/* 801A0D2C  28 00 00 00 */	cmplwi r0, 0
/* 801A0D30  41 82 00 0C */	beq lbl_801A0D3C
/* 801A0D34  38 80 00 01 */	li r4, 1
/* 801A0D38  48 00 00 54 */	b lbl_801A0D8C
lbl_801A0D3C:
/* 801A0D3C  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 801A0D40  41 82 00 18 */	beq lbl_801A0D58
/* 801A0D44  88 1D 00 00 */	lbz r0, 0(r29)
/* 801A0D48  28 00 00 00 */	cmplwi r0, 0
/* 801A0D4C  41 82 00 0C */	beq lbl_801A0D58
/* 801A0D50  38 80 00 01 */	li r4, 1
/* 801A0D54  48 00 00 38 */	b lbl_801A0D8C
lbl_801A0D58:
/* 801A0D58  56 40 06 3F */	clrlwi. r0, r18, 0x18
/* 801A0D5C  41 82 00 18 */	beq lbl_801A0D74
/* 801A0D60  88 1E 00 00 */	lbz r0, 0(r30)
/* 801A0D64  28 00 00 00 */	cmplwi r0, 0
/* 801A0D68  41 82 00 0C */	beq lbl_801A0D74
/* 801A0D6C  38 80 00 01 */	li r4, 1
/* 801A0D70  48 00 00 1C */	b lbl_801A0D8C
lbl_801A0D74:
/* 801A0D74  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 801A0D78  41 82 00 14 */	beq lbl_801A0D8C
/* 801A0D7C  88 1F 00 00 */	lbz r0, 0(r31)
/* 801A0D80  28 00 00 00 */	cmplwi r0, 0
/* 801A0D84  41 82 00 08 */	beq lbl_801A0D8C
/* 801A0D88  38 80 00 01 */	li r4, 1
lbl_801A0D8C:
/* 801A0D8C  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 801A0D90  38 63 D4 28 */	addi r3, r3, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 801A0D94  98 83 00 09 */	stb r4, 9(r3)
lbl_801A0D98:
/* 801A0D98  48 00 B4 91 */	bl dKy_Outdoor_check__Fv
/* 801A0D9C  2C 03 00 01 */	cmpwi r3, 1
/* 801A0DA0  40 82 00 9C */	bne lbl_801A0E3C
/* 801A0DA4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801A0DA8  2C 00 00 06 */	cmpwi r0, 6
/* 801A0DAC  40 80 00 18 */	bge lbl_801A0DC4
/* 801A0DB0  54 00 10 3A */	slwi r0, r0, 2
/* 801A0DB4  3C 60 80 3C */	lis r3, now_shadow_alpha@ha /* 0x803BC010@ha */
/* 801A0DB8  38 63 C0 10 */	addi r3, r3, now_shadow_alpha@l /* 0x803BC010@l */
/* 801A0DBC  7C 23 04 2E */	lfsx f1, r3, r0
/* 801A0DC0  48 00 00 08 */	b lbl_801A0DC8
lbl_801A0DC4:
/* 801A0DC4  C0 22 A2 EC */	lfs f1, lit_6033(r2)
lbl_801A0DC8:
/* 801A0DC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A0DCC  2C 00 00 06 */	cmpwi r0, 6
/* 801A0DD0  40 80 00 18 */	bge lbl_801A0DE8
/* 801A0DD4  54 00 10 3A */	slwi r0, r0, 2
/* 801A0DD8  3C 60 80 3C */	lis r3, now_shadow_alpha@ha /* 0x803BC010@ha */
/* 801A0DDC  38 63 C0 10 */	addi r3, r3, now_shadow_alpha@l /* 0x803BC010@l */
/* 801A0DE0  7C 43 04 2E */	lfsx f2, r3, r0
/* 801A0DE4  48 00 00 08 */	b lbl_801A0DEC
lbl_801A0DE8:
/* 801A0DE8  C0 42 A2 EC */	lfs f2, lit_6033(r2)
lbl_801A0DEC:
/* 801A0DEC  C0 82 A2 EC */	lfs f4, lit_6033(r2)
/* 801A0DF0  FC A0 20 90 */	fmr f5, f4
/* 801A0DF4  7C 18 B0 40 */	cmplw r24, r22
/* 801A0DF8  40 82 00 0C */	bne lbl_801A0E04
/* 801A0DFC  FC 80 08 90 */	fmr f4, f1
/* 801A0E00  FC A0 10 90 */	fmr f5, f2
lbl_801A0E04:
/* 801A0E04  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801A0E08  C0 DA 00 00 */	lfs f6, 0(r26)
/* 801A0E0C  C0 E2 A2 0C */	lfs f7, lit_4409(r2)
/* 801A0E10  FD 00 38 90 */	fmr f8, f7
/* 801A0E14  4B FF C9 8D */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A0E18  FF C0 08 90 */	fmr f30, f1
/* 801A0E1C  C0 02 A2 F8 */	lfs f0, lit_6036(r2)
/* 801A0E20  D0 0F 12 3C */	stfs f0, 0x123c(r15)
/* 801A0E24  88 0F 12 C8 */	lbz r0, 0x12c8(r15)
/* 801A0E28  28 00 00 00 */	cmplwi r0, 0
/* 801A0E2C  41 82 00 1C */	beq lbl_801A0E48
/* 801A0E30  C0 02 A2 FC */	lfs f0, lit_6037(r2)
/* 801A0E34  EF DE 00 32 */	fmuls f30, f30, f0
/* 801A0E38  48 00 00 10 */	b lbl_801A0E48
lbl_801A0E3C:
/* 801A0E3C  C3 C2 A2 FC */	lfs f30, lit_6037(r2)
/* 801A0E40  C0 02 A3 00 */	lfs f0, lit_6038(r2)
/* 801A0E44  D0 0F 12 3C */	stfs f0, 0x123c(r15)
lbl_801A0E48:
/* 801A0E48  48 00 B7 35 */	bl dKy_darkworld_check__Fv
/* 801A0E4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A0E50  41 82 00 0C */	beq lbl_801A0E5C
/* 801A0E54  C3 C2 A3 04 */	lfs f30, lit_6039(r2)
/* 801A0E58  D3 CF 12 3C */	stfs f30, 0x123c(r15)
lbl_801A0E5C:
/* 801A0E5C  88 19 00 00 */	lbz r0, 0(r25)
/* 801A0E60  28 00 00 00 */	cmplwi r0, 0
/* 801A0E64  41 82 00 0C */	beq lbl_801A0E70
/* 801A0E68  D3 CF 12 38 */	stfs f30, 0x1238(r15)
/* 801A0E6C  48 00 00 1C */	b lbl_801A0E88
lbl_801A0E70:
/* 801A0E70  38 6F 12 38 */	addi r3, r15, 0x1238
/* 801A0E74  FC 20 F0 90 */	fmr f1, f30
/* 801A0E78  C0 42 A3 08 */	lfs f2, lit_6040(r2)
/* 801A0E7C  C0 62 A3 0C */	lfs f3, lit_6041(r2)
/* 801A0E80  C0 82 A3 10 */	lfs f4, lit_6042(r2)
/* 801A0E84  48 0C EA F9 */	bl cLib_addCalc__FPfffff
lbl_801A0E88:
/* 801A0E88  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0E8C  39 C3 CA 54 */	addi r14, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A0E90  80 6E 00 10 */	lwz r3, 0x10(r14)
/* 801A0E94  88 18 00 2C */	lbz r0, 0x2c(r24)
/* 801A0E98  1C 00 00 15 */	mulli r0, r0, 0x15
/* 801A0E9C  7E 03 02 14 */	add r16, r3, r0
/* 801A0EA0  88 17 00 2C */	lbz r0, 0x2c(r23)
/* 801A0EA4  1C 00 00 15 */	mulli r0, r0, 0x15
/* 801A0EA8  7E 23 02 14 */	add r17, r3, r0
/* 801A0EAC  88 16 00 2C */	lbz r0, 0x2c(r22)
/* 801A0EB0  1C 00 00 15 */	mulli r0, r0, 0x15
/* 801A0EB4  7E C3 02 14 */	add r22, r3, r0
/* 801A0EB8  88 15 00 2C */	lbz r0, 0x2c(r21)
/* 801A0EBC  1C 00 00 15 */	mulli r0, r0, 0x15
/* 801A0EC0  7E A3 02 14 */	add r21, r3, r0
/* 801A0EC4  88 70 00 00 */	lbz r3, 0(r16)
/* 801A0EC8  88 91 00 00 */	lbz r4, 0(r17)
/* 801A0ECC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0ED0  88 B6 00 00 */	lbz r5, 0(r22)
/* 801A0ED4  88 D5 00 00 */	lbz r6, 0(r21)
/* 801A0ED8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0EDC  A8 EF 11 B8 */	lha r7, 0x11b8(r15)
/* 801A0EE0  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A0EE4  C0 0E 11 C8 */	lfs f0, 0x11c8(r14)
/* 801A0EE8  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A0EEC  4B FF C7 A1 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0EF0  B0 6F 10 C0 */	sth r3, 0x10c0(r15)
/* 801A0EF4  88 70 00 01 */	lbz r3, 1(r16)
/* 801A0EF8  88 91 00 01 */	lbz r4, 1(r17)
/* 801A0EFC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0F00  88 B6 00 01 */	lbz r5, 1(r22)
/* 801A0F04  88 D5 00 01 */	lbz r6, 1(r21)
/* 801A0F08  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0F0C  A8 EF 11 BA */	lha r7, 0x11ba(r15)
/* 801A0F10  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A0F14  3D 00 80 43 */	lis r8, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0F18  3A 88 CA 54 */	addi r20, r8, g_env_light@l /* 0x8042CA54@l */
/* 801A0F1C  C0 14 11 CC */	lfs f0, 0x11cc(r20)
/* 801A0F20  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A0F24  4B FF C7 69 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0F28  B0 6F 10 C2 */	sth r3, 0x10c2(r15)
/* 801A0F2C  88 70 00 02 */	lbz r3, 2(r16)
/* 801A0F30  88 91 00 02 */	lbz r4, 2(r17)
/* 801A0F34  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0F38  88 B6 00 02 */	lbz r5, 2(r22)
/* 801A0F3C  88 D5 00 02 */	lbz r6, 2(r21)
/* 801A0F40  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0F44  A8 EF 11 BC */	lha r7, 0x11bc(r15)
/* 801A0F48  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A0F4C  3D 00 80 43 */	lis r8, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0F50  3A 68 CA 54 */	addi r19, r8, g_env_light@l /* 0x8042CA54@l */
/* 801A0F54  C0 13 11 D0 */	lfs f0, 0x11d0(r19)
/* 801A0F58  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A0F5C  4B FF C7 31 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0F60  B0 6F 10 C4 */	sth r3, 0x10c4(r15)
/* 801A0F64  38 00 00 FF */	li r0, 0xff
/* 801A0F68  B0 0F 10 C6 */	sth r0, 0x10c6(r15)
/* 801A0F6C  88 70 00 03 */	lbz r3, 3(r16)
/* 801A0F70  88 91 00 03 */	lbz r4, 3(r17)
/* 801A0F74  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0F78  88 B6 00 03 */	lbz r5, 3(r22)
/* 801A0F7C  88 D5 00 03 */	lbz r6, 3(r21)
/* 801A0F80  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0F84  A8 EF 11 B8 */	lha r7, 0x11b8(r15)
/* 801A0F88  3D 00 80 43 */	lis r8, g_env_light@ha /* 0x8042CA54@ha */
/* 801A0F8C  3A 48 CA 54 */	addi r18, r8, g_env_light@l /* 0x8042CA54@l */
/* 801A0F90  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A0F94  C0 0E 11 C8 */	lfs f0, 0x11c8(r14)
/* 801A0F98  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A0F9C  4B FF C6 F1 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0FA0  B0 6F 10 C8 */	sth r3, 0x10c8(r15)
/* 801A0FA4  88 70 00 04 */	lbz r3, 4(r16)
/* 801A0FA8  88 91 00 04 */	lbz r4, 4(r17)
/* 801A0FAC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0FB0  88 B6 00 04 */	lbz r5, 4(r22)
/* 801A0FB4  88 D5 00 04 */	lbz r6, 4(r21)
/* 801A0FB8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0FBC  A8 EF 11 BA */	lha r7, 0x11ba(r15)
/* 801A0FC0  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A0FC4  C0 14 11 CC */	lfs f0, 0x11cc(r20)
/* 801A0FC8  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A0FCC  4B FF C6 C1 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A0FD0  B0 6F 10 CA */	sth r3, 0x10ca(r15)
/* 801A0FD4  88 70 00 05 */	lbz r3, 5(r16)
/* 801A0FD8  88 91 00 05 */	lbz r4, 5(r17)
/* 801A0FDC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A0FE0  88 B6 00 05 */	lbz r5, 5(r22)
/* 801A0FE4  88 D5 00 05 */	lbz r6, 5(r21)
/* 801A0FE8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A0FEC  A8 EF 11 BC */	lha r7, 0x11bc(r15)
/* 801A0FF0  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A0FF4  C0 13 11 D0 */	lfs f0, 0x11d0(r19)
/* 801A0FF8  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A0FFC  4B FF C6 91 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1000  B0 6F 10 CC */	sth r3, 0x10cc(r15)
/* 801A1004  88 70 00 0C */	lbz r3, 0xc(r16)
/* 801A1008  88 91 00 0C */	lbz r4, 0xc(r17)
/* 801A100C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1010  88 B6 00 0C */	lbz r5, 0xc(r22)
/* 801A1014  88 D5 00 0C */	lbz r6, 0xc(r21)
/* 801A1018  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A101C  38 E0 00 00 */	li r7, 0
/* 801A1020  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A1024  4B FF C6 69 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1028  B0 6F 10 CE */	sth r3, 0x10ce(r15)
/* 801A102C  88 70 00 06 */	lbz r3, 6(r16)
/* 801A1030  88 91 00 06 */	lbz r4, 6(r17)
/* 801A1034  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1038  88 B6 00 06 */	lbz r5, 6(r22)
/* 801A103C  88 D5 00 06 */	lbz r6, 6(r21)
/* 801A1040  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A1044  A8 EF 11 B8 */	lha r7, 0x11b8(r15)
/* 801A1048  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A104C  C0 0E 11 C8 */	lfs f0, 0x11c8(r14)
/* 801A1050  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A1054  4B FF C6 39 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1058  B0 6F 10 D0 */	sth r3, 0x10d0(r15)
/* 801A105C  88 70 00 07 */	lbz r3, 7(r16)
/* 801A1060  88 91 00 07 */	lbz r4, 7(r17)
/* 801A1064  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1068  88 B6 00 07 */	lbz r5, 7(r22)
/* 801A106C  88 D5 00 07 */	lbz r6, 7(r21)
/* 801A1070  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A1074  A8 EF 11 BA */	lha r7, 0x11ba(r15)
/* 801A1078  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A107C  C0 14 11 CC */	lfs f0, 0x11cc(r20)
/* 801A1080  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A1084  4B FF C6 09 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1088  B0 6F 10 D2 */	sth r3, 0x10d2(r15)
/* 801A108C  88 70 00 08 */	lbz r3, 8(r16)
/* 801A1090  88 91 00 08 */	lbz r4, 8(r17)
/* 801A1094  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1098  88 B6 00 08 */	lbz r5, 8(r22)
/* 801A109C  88 D5 00 08 */	lbz r6, 8(r21)
/* 801A10A0  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A10A4  A8 EF 11 BC */	lha r7, 0x11bc(r15)
/* 801A10A8  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A10AC  C0 13 11 D0 */	lfs f0, 0x11d0(r19)
/* 801A10B0  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A10B4  4B FF C5 D9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A10B8  B0 6F 10 D4 */	sth r3, 0x10d4(r15)
/* 801A10BC  88 70 00 09 */	lbz r3, 9(r16)
/* 801A10C0  88 91 00 09 */	lbz r4, 9(r17)
/* 801A10C4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A10C8  88 B6 00 09 */	lbz r5, 9(r22)
/* 801A10CC  88 D5 00 09 */	lbz r6, 9(r21)
/* 801A10D0  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A10D4  A8 EF 11 B8 */	lha r7, 0x11b8(r15)
/* 801A10D8  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A10DC  C0 0E 11 C8 */	lfs f0, 0x11c8(r14)
/* 801A10E0  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A10E4  4B FF C5 A9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A10E8  B0 6F 10 D8 */	sth r3, 0x10d8(r15)
/* 801A10EC  88 70 00 0A */	lbz r3, 0xa(r16)
/* 801A10F0  88 91 00 0A */	lbz r4, 0xa(r17)
/* 801A10F4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A10F8  88 B6 00 0A */	lbz r5, 0xa(r22)
/* 801A10FC  88 D5 00 0A */	lbz r6, 0xa(r21)
/* 801A1100  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A1104  A8 EF 11 BA */	lha r7, 0x11ba(r15)
/* 801A1108  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A110C  C0 14 11 CC */	lfs f0, 0x11cc(r20)
/* 801A1110  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A1114  4B FF C5 79 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1118  B0 6F 10 DA */	sth r3, 0x10da(r15)
/* 801A111C  88 70 00 0B */	lbz r3, 0xb(r16)
/* 801A1120  88 91 00 0B */	lbz r4, 0xb(r17)
/* 801A1124  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1128  88 B6 00 0B */	lbz r5, 0xb(r22)
/* 801A112C  88 D5 00 0B */	lbz r6, 0xb(r21)
/* 801A1130  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A1134  A8 EF 11 BC */	lha r7, 0x11bc(r15)
/* 801A1138  C0 72 12 0C */	lfs f3, 0x120c(r18)
/* 801A113C  C0 13 11 D0 */	lfs f0, 0x11d0(r19)
/* 801A1140  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A1144  4B FF C5 49 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1148  B0 6F 10 DC */	sth r3, 0x10dc(r15)
/* 801A114C  88 70 00 0D */	lbz r3, 0xd(r16)
/* 801A1150  88 91 00 0D */	lbz r4, 0xd(r17)
/* 801A1154  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1158  88 B6 00 0D */	lbz r5, 0xd(r22)
/* 801A115C  88 D5 00 0D */	lbz r6, 0xd(r21)
/* 801A1160  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A1164  A8 EF 11 C0 */	lha r7, 0x11c0(r15)
/* 801A1168  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A116C  C0 0E 11 C8 */	lfs f0, 0x11c8(r14)
/* 801A1170  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A1174  4B FF C5 19 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1178  B0 6F 10 E0 */	sth r3, 0x10e0(r15)
/* 801A117C  88 70 00 0E */	lbz r3, 0xe(r16)
/* 801A1180  88 91 00 0E */	lbz r4, 0xe(r17)
/* 801A1184  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1188  88 B6 00 0E */	lbz r5, 0xe(r22)
/* 801A118C  88 D5 00 0E */	lbz r6, 0xe(r21)
/* 801A1190  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A1194  A8 EF 11 C2 */	lha r7, 0x11c2(r15)
/* 801A1198  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A119C  C0 14 11 CC */	lfs f0, 0x11cc(r20)
/* 801A11A0  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A11A4  4B FF C4 E9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A11A8  B0 6F 10 E2 */	sth r3, 0x10e2(r15)
/* 801A11AC  88 70 00 0F */	lbz r3, 0xf(r16)
/* 801A11B0  88 91 00 0F */	lbz r4, 0xf(r17)
/* 801A11B4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A11B8  88 B6 00 0F */	lbz r5, 0xf(r22)
/* 801A11BC  88 D5 00 0F */	lbz r6, 0xf(r21)
/* 801A11C0  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A11C4  A8 EF 11 C4 */	lha r7, 0x11c4(r15)
/* 801A11C8  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A11CC  C0 13 11 D0 */	lfs f0, 0x11d0(r19)
/* 801A11D0  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A11D4  4B FF C4 B9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A11D8  B0 6F 10 E4 */	sth r3, 0x10e4(r15)
/* 801A11DC  88 70 00 10 */	lbz r3, 0x10(r16)
/* 801A11E0  88 91 00 10 */	lbz r4, 0x10(r17)
/* 801A11E4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A11E8  88 B6 00 10 */	lbz r5, 0x10(r22)
/* 801A11EC  88 D5 00 10 */	lbz r6, 0x10(r21)
/* 801A11F0  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A11F4  38 E0 00 00 */	li r7, 0
/* 801A11F8  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A11FC  4B FF C4 91 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1200  B0 6F 10 E6 */	sth r3, 0x10e6(r15)
/* 801A1204  88 70 00 11 */	lbz r3, 0x11(r16)
/* 801A1208  88 91 00 11 */	lbz r4, 0x11(r17)
/* 801A120C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1210  88 B6 00 11 */	lbz r5, 0x11(r22)
/* 801A1214  88 D5 00 11 */	lbz r6, 0x11(r21)
/* 801A1218  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A121C  A8 EF 11 C0 */	lha r7, 0x11c0(r15)
/* 801A1220  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A1224  C0 0E 11 C8 */	lfs f0, 0x11c8(r14)
/* 801A1228  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A122C  4B FF C4 61 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1230  B0 6F 10 E8 */	sth r3, 0x10e8(r15)
/* 801A1234  88 70 00 12 */	lbz r3, 0x12(r16)
/* 801A1238  88 91 00 12 */	lbz r4, 0x12(r17)
/* 801A123C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1240  88 B6 00 12 */	lbz r5, 0x12(r22)
/* 801A1244  88 D5 00 12 */	lbz r6, 0x12(r21)
/* 801A1248  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A124C  A8 EF 11 C2 */	lha r7, 0x11c2(r15)
/* 801A1250  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A1254  C0 14 11 CC */	lfs f0, 0x11cc(r20)
/* 801A1258  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A125C  4B FF C4 31 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1260  B0 6F 10 EA */	sth r3, 0x10ea(r15)
/* 801A1264  88 70 00 13 */	lbz r3, 0x13(r16)
/* 801A1268  88 91 00 13 */	lbz r4, 0x13(r17)
/* 801A126C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1270  88 B6 00 13 */	lbz r5, 0x13(r22)
/* 801A1274  88 D5 00 13 */	lbz r6, 0x13(r21)
/* 801A1278  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A127C  A8 EF 11 C4 */	lha r7, 0x11c4(r15)
/* 801A1280  C0 6E 12 08 */	lfs f3, 0x1208(r14)
/* 801A1284  C0 13 11 D0 */	lfs f0, 0x11d0(r19)
/* 801A1288  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A128C  4B FF C4 01 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A1290  B0 6F 10 EC */	sth r3, 0x10ec(r15)
/* 801A1294  88 70 00 14 */	lbz r3, 0x14(r16)
/* 801A1298  88 91 00 14 */	lbz r4, 0x14(r17)
/* 801A129C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A12A0  88 B6 00 14 */	lbz r5, 0x14(r22)
/* 801A12A4  88 D5 00 14 */	lbz r6, 0x14(r21)
/* 801A12A8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 801A12AC  38 E0 00 00 */	li r7, 0
/* 801A12B0  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A12B4  4B FF C3 D9 */	bl kankyo_color_ratio_set__FUcUcfUcUcfsf
/* 801A12B8  B0 6F 10 EE */	sth r3, 0x10ee(r15)
/* 801A12BC  4B FB E1 69 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A12C0  2C 03 00 00 */	cmpwi r3, 0
/* 801A12C4  41 82 00 50 */	beq lbl_801A1314
/* 801A12C8  38 00 00 00 */	li r0, 0
/* 801A12CC  B0 0F 10 C0 */	sth r0, 0x10c0(r15)
/* 801A12D0  B0 0F 10 C2 */	sth r0, 0x10c2(r15)
/* 801A12D4  B0 0F 10 C4 */	sth r0, 0x10c4(r15)
/* 801A12D8  B0 0F 10 C8 */	sth r0, 0x10c8(r15)
/* 801A12DC  B0 0F 10 CA */	sth r0, 0x10ca(r15)
/* 801A12E0  B0 0F 10 CC */	sth r0, 0x10cc(r15)
/* 801A12E4  B0 0F 10 D0 */	sth r0, 0x10d0(r15)
/* 801A12E8  B0 0F 10 D2 */	sth r0, 0x10d2(r15)
/* 801A12EC  B0 0F 10 D4 */	sth r0, 0x10d4(r15)
/* 801A12F0  B0 0F 10 D8 */	sth r0, 0x10d8(r15)
/* 801A12F4  B0 0F 10 DA */	sth r0, 0x10da(r15)
/* 801A12F8  B0 0F 10 DC */	sth r0, 0x10dc(r15)
/* 801A12FC  B0 0F 10 E0 */	sth r0, 0x10e0(r15)
/* 801A1300  B0 0F 10 E2 */	sth r0, 0x10e2(r15)
/* 801A1304  B0 0F 10 E4 */	sth r0, 0x10e4(r15)
/* 801A1308  B0 0F 10 E8 */	sth r0, 0x10e8(r15)
/* 801A130C  B0 0F 10 EA */	sth r0, 0x10ea(r15)
/* 801A1310  B0 0F 10 EC */	sth r0, 0x10ec(r15)
lbl_801A1314:
/* 801A1314  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 801A1318  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 801A131C  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 801A1320  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 801A1324  39 61 01 30 */	addi r11, r1, 0x130
/* 801A1328  48 1C 0E C5 */	bl _restgpr_14
/* 801A132C  80 01 01 54 */	lwz r0, 0x154(r1)
/* 801A1330  7C 08 03 A6 */	mtlr r0
/* 801A1334  38 21 01 50 */	addi r1, r1, 0x150
/* 801A1338  4E 80 00 20 */	blr 
