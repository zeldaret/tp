lbl_8006B1A8:
/* 8006B1A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8006B1AC  7C 08 02 A6 */	mflr r0
/* 8006B1B0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8006B1B4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8006B1B8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8006B1BC  39 61 00 60 */	addi r11, r1, 0x60
/* 8006B1C0  48 2F 70 15 */	bl _savegpr_27
/* 8006B1C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B1C8  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8006B1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8006B1D0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8006B1D4  83 DC 5D 74 */	lwz r30, 0x5d74(r28)
/* 8006B1D8  3B A0 00 00 */	li r29, 0
/* 8006B1DC  3B 7C 4E 00 */	addi r27, r28, 0x4e00
/* 8006B1E0  7F 63 DB 78 */	mr r3, r27
/* 8006B1E4  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8006B1E8  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8006B1EC  38 84 00 8F */	addi r4, r4, 0x8f
/* 8006B1F0  38 A0 00 04 */	li r5, 4
/* 8006B1F4  48 2F AE 99 */	bl memcmp
/* 8006B1F8  2C 03 00 00 */	cmpwi r3, 0
/* 8006B1FC  40 82 00 34 */	bne lbl_8006B230
/* 8006B200  3B A0 00 01 */	li r29, 1
/* 8006B204  7F 63 DB 78 */	mr r3, r27
/* 8006B208  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8006B20C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8006B210  38 84 00 1F */	addi r4, r4, 0x1f
/* 8006B214  48 2F D7 81 */	bl strcmp
/* 8006B218  2C 03 00 00 */	cmpwi r3, 0
/* 8006B21C  40 82 00 14 */	bne lbl_8006B230
/* 8006B220  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8006B224  2C 00 00 04 */	cmpwi r0, 4
/* 8006B228  40 82 00 08 */	bne lbl_8006B230
/* 8006B22C  3B A0 00 02 */	li r29, 2
lbl_8006B230:
/* 8006B230  88 1F 0E D5 */	lbz r0, 0xed5(r31)
/* 8006B234  2C 00 00 02 */	cmpwi r0, 2
/* 8006B238  41 82 03 30 */	beq lbl_8006B568
/* 8006B23C  40 80 00 14 */	bge lbl_8006B250
/* 8006B240  2C 00 00 00 */	cmpwi r0, 0
/* 8006B244  41 82 00 24 */	beq lbl_8006B268
/* 8006B248  40 80 02 C8 */	bge lbl_8006B510
/* 8006B24C  48 00 03 FC */	b lbl_8006B648
lbl_8006B250:
/* 8006B250  2C 00 00 0C */	cmpwi r0, 0xc
/* 8006B254  41 82 03 14 */	beq lbl_8006B568
/* 8006B258  40 80 03 F0 */	bge lbl_8006B648
/* 8006B25C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8006B260  40 80 02 B0 */	bge lbl_8006B510
/* 8006B264  48 00 03 E4 */	b lbl_8006B648
lbl_8006B268:
/* 8006B268  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006B26C  D0 1F 0E DC */	stfs f0, 0xedc(r31)
/* 8006B270  D0 1F 0E E0 */	stfs f0, 0xee0(r31)
/* 8006B274  D0 1F 0E E4 */	stfs f0, 0xee4(r31)
/* 8006B278  C0 22 88 80 */	lfs f1, lit_4468(r2)
/* 8006B27C  48 1F C7 11 */	bl cM_rndFX__Ff
/* 8006B280  D0 3F 0E E8 */	stfs f1, 0xee8(r31)
/* 8006B284  C0 22 88 80 */	lfs f1, lit_4468(r2)
/* 8006B288  48 1F C7 05 */	bl cM_rndFX__Ff
/* 8006B28C  D0 3F 0E EC */	stfs f1, 0xeec(r31)
/* 8006B290  80 0D 88 B8 */	lwz r0, m_mode__7dDemo_c(r13)
/* 8006B294  2C 00 00 00 */	cmpwi r0, 0
/* 8006B298  41 82 00 B0 */	beq lbl_8006B348
/* 8006B29C  38 80 00 00 */	li r4, 0
/* 8006B2A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B2A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006B2A8  88 03 0E D6 */	lbz r0, 0xed6(r3)
/* 8006B2AC  28 00 00 00 */	cmplwi r0, 0
/* 8006B2B0  41 82 00 10 */	beq lbl_8006B2C0
/* 8006B2B4  38 80 00 01 */	li r4, 1
/* 8006B2B8  38 00 00 00 */	li r0, 0
/* 8006B2BC  98 03 0E D6 */	stb r0, 0xed6(r3)
lbl_8006B2C0:
/* 8006B2C0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8006B2C4  28 00 00 01 */	cmplwi r0, 1
/* 8006B2C8  40 82 03 80 */	bne lbl_8006B648
/* 8006B2CC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8006B2D0  D0 1F 0E F8 */	stfs f0, 0xef8(r31)
/* 8006B2D4  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8006B2D8  D0 1F 0E FC */	stfs f0, 0xefc(r31)
/* 8006B2DC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8006B2E0  D0 1F 0F 00 */	stfs f0, 0xf00(r31)
/* 8006B2E4  38 00 00 00 */	li r0, 0
/* 8006B2E8  B0 1F 0F 04 */	sth r0, 0xf04(r31)
/* 8006B2EC  B0 1F 0F 06 */	sth r0, 0xf06(r31)
/* 8006B2F0  B0 1F 0F 08 */	sth r0, 0xf08(r31)
/* 8006B2F4  C0 02 8B AC */	lfs f0, lit_10732(r2)
/* 8006B2F8  D0 1F 0F 0C */	stfs f0, 0xf0c(r31)
/* 8006B2FC  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006B300  D0 1F 0F 10 */	stfs f0, 0xf10(r31)
/* 8006B304  38 7F 0E F8 */	addi r3, r31, 0xef8
/* 8006B308  48 13 C6 75 */	bl dKy_efplight_set__FP15LIGHT_INFLUENCE
/* 8006B30C  C0 22 89 30 */	lfs f1, lit_5720(r2)
/* 8006B310  48 1F C6 45 */	bl cM_rndF__Ff
/* 8006B314  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 8006B318  EC 00 08 2A */	fadds f0, f0, f1
/* 8006B31C  D0 1F 0E F0 */	stfs f0, 0xef0(r31)
/* 8006B320  38 60 02 D9 */	li r3, 0x2d9
/* 8006B324  38 80 FF FF */	li r4, -1
/* 8006B328  38 A0 00 00 */	li r5, 0
/* 8006B32C  38 C0 00 00 */	li r6, 0
/* 8006B330  38 E0 00 00 */	li r7, 0
/* 8006B334  4B FB 44 85 */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
/* 8006B338  88 7F 0E D5 */	lbz r3, 0xed5(r31)
/* 8006B33C  38 03 00 01 */	addi r0, r3, 1
/* 8006B340  98 1F 0E D5 */	stb r0, 0xed5(r31)
/* 8006B344  48 00 03 04 */	b lbl_8006B648
lbl_8006B348:
/* 8006B348  7F 63 DB 78 */	mr r3, r27
/* 8006B34C  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha
/* 8006B350  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l
/* 8006B354  38 84 00 08 */	addi r4, r4, 8
/* 8006B358  48 2F D6 3D */	bl strcmp
/* 8006B35C  2C 03 00 00 */	cmpwi r3, 0
/* 8006B360  40 82 00 A4 */	bne lbl_8006B404
/* 8006B364  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 8006B368  28 00 00 00 */	cmplwi r0, 0
/* 8006B36C  41 82 00 98 */	beq lbl_8006B404
/* 8006B370  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B374  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006B378  88 03 0E D6 */	lbz r0, 0xed6(r3)
/* 8006B37C  28 00 00 00 */	cmplwi r0, 0
/* 8006B380  41 82 02 C8 */	beq lbl_8006B648
/* 8006B384  38 00 00 00 */	li r0, 0
/* 8006B388  98 03 0E D6 */	stb r0, 0xed6(r3)
/* 8006B38C  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8006B390  D0 1F 0E F8 */	stfs f0, 0xef8(r31)
/* 8006B394  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8006B398  D0 1F 0E FC */	stfs f0, 0xefc(r31)
/* 8006B39C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8006B3A0  D0 1F 0F 00 */	stfs f0, 0xf00(r31)
/* 8006B3A4  B0 1F 0F 04 */	sth r0, 0xf04(r31)
/* 8006B3A8  B0 1F 0F 06 */	sth r0, 0xf06(r31)
/* 8006B3AC  B0 1F 0F 08 */	sth r0, 0xf08(r31)
/* 8006B3B0  C0 02 8B AC */	lfs f0, lit_10732(r2)
/* 8006B3B4  D0 1F 0F 0C */	stfs f0, 0xf0c(r31)
/* 8006B3B8  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006B3BC  D0 1F 0F 10 */	stfs f0, 0xf10(r31)
/* 8006B3C0  38 7F 0E F8 */	addi r3, r31, 0xef8
/* 8006B3C4  48 13 C5 B9 */	bl dKy_efplight_set__FP15LIGHT_INFLUENCE
/* 8006B3C8  C0 22 89 30 */	lfs f1, lit_5720(r2)
/* 8006B3CC  48 1F C5 89 */	bl cM_rndF__Ff
/* 8006B3D0  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 8006B3D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8006B3D8  D0 1F 0E F0 */	stfs f0, 0xef0(r31)
/* 8006B3DC  38 60 02 D9 */	li r3, 0x2d9
/* 8006B3E0  38 80 FF FF */	li r4, -1
/* 8006B3E4  38 A0 00 00 */	li r5, 0
/* 8006B3E8  38 C0 00 00 */	li r6, 0
/* 8006B3EC  38 E0 00 00 */	li r7, 0
/* 8006B3F0  4B FB 43 C9 */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
/* 8006B3F4  88 7F 0E D5 */	lbz r3, 0xed5(r31)
/* 8006B3F8  38 03 00 01 */	addi r0, r3, 1
/* 8006B3FC  98 1F 0E D5 */	stb r0, 0xed5(r31)
/* 8006B400  48 00 02 48 */	b lbl_8006B648
lbl_8006B404:
/* 8006B404  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B408  48 1F C5 4D */	bl cM_rndF__Ff
/* 8006B40C  C0 02 8B B0 */	lfs f0, lit_10733(r2)
/* 8006B410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B414  40 80 00 50 */	bge lbl_8006B464
/* 8006B418  C0 22 89 30 */	lfs f1, lit_5720(r2)
/* 8006B41C  48 1F C5 39 */	bl cM_rndF__Ff
/* 8006B420  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 8006B424  EC 00 08 2A */	fadds f0, f0, f1
/* 8006B428  D0 1F 0E F0 */	stfs f0, 0xef0(r31)
/* 8006B42C  38 00 00 0B */	li r0, 0xb
/* 8006B430  98 1F 0E D5 */	stb r0, 0xed5(r31)
/* 8006B434  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B438  48 1F C5 1D */	bl cM_rndF__Ff
/* 8006B43C  C0 02 88 40 */	lfs f0, lit_4365(r2)
/* 8006B440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B444  40 80 02 04 */	bge lbl_8006B648
/* 8006B448  38 60 02 D9 */	li r3, 0x2d9
/* 8006B44C  38 80 FF FF */	li r4, -1
/* 8006B450  38 A0 00 00 */	li r5, 0
/* 8006B454  38 C0 00 00 */	li r6, 0
/* 8006B458  38 E0 00 00 */	li r7, 0
/* 8006B45C  4B FB 43 5D */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
/* 8006B460  48 00 01 E8 */	b lbl_8006B648
lbl_8006B464:
/* 8006B464  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B468  48 1F C4 ED */	bl cM_rndF__Ff
/* 8006B46C  C0 02 89 E4 */	lfs f0, lit_6720(r2)
/* 8006B470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B474  40 80 01 D4 */	bge lbl_8006B648
/* 8006B478  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B47C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006B480  80 03 0E D8 */	lwz r0, 0xed8(r3)
/* 8006B484  2C 00 00 0A */	cmpwi r0, 0xa
/* 8006B488  40 80 01 C0 */	bge lbl_8006B648
/* 8006B48C  2C 1D 00 01 */	cmpwi r29, 1
/* 8006B490  41 82 01 B8 */	beq lbl_8006B648
/* 8006B494  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8006B498  D0 1F 0E F8 */	stfs f0, 0xef8(r31)
/* 8006B49C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8006B4A0  D0 1F 0E FC */	stfs f0, 0xefc(r31)
/* 8006B4A4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8006B4A8  D0 1F 0F 00 */	stfs f0, 0xf00(r31)
/* 8006B4AC  38 00 00 00 */	li r0, 0
/* 8006B4B0  B0 1F 0F 04 */	sth r0, 0xf04(r31)
/* 8006B4B4  B0 1F 0F 06 */	sth r0, 0xf06(r31)
/* 8006B4B8  B0 1F 0F 08 */	sth r0, 0xf08(r31)
/* 8006B4BC  C0 02 8B AC */	lfs f0, lit_10732(r2)
/* 8006B4C0  D0 1F 0F 0C */	stfs f0, 0xf0c(r31)
/* 8006B4C4  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006B4C8  D0 1F 0F 10 */	stfs f0, 0xf10(r31)
/* 8006B4CC  38 7F 0E F8 */	addi r3, r31, 0xef8
/* 8006B4D0  48 13 C4 AD */	bl dKy_efplight_set__FP15LIGHT_INFLUENCE
/* 8006B4D4  C0 22 89 30 */	lfs f1, lit_5720(r2)
/* 8006B4D8  48 1F C4 7D */	bl cM_rndF__Ff
/* 8006B4DC  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 8006B4E0  EC 00 08 2A */	fadds f0, f0, f1
/* 8006B4E4  D0 1F 0E F0 */	stfs f0, 0xef0(r31)
/* 8006B4E8  38 60 02 D9 */	li r3, 0x2d9
/* 8006B4EC  38 80 FF FF */	li r4, -1
/* 8006B4F0  38 A0 00 00 */	li r5, 0
/* 8006B4F4  38 C0 00 00 */	li r6, 0
/* 8006B4F8  38 E0 00 00 */	li r7, 0
/* 8006B4FC  4B FB 42 BD */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
/* 8006B500  88 7F 0E D5 */	lbz r3, 0xed5(r31)
/* 8006B504  38 03 00 01 */	addi r0, r3, 1
/* 8006B508  98 1F 0E D5 */	stb r0, 0xed5(r31)
/* 8006B50C  48 00 01 3C */	b lbl_8006B648
lbl_8006B510:
/* 8006B510  38 7F 0E DC */	addi r3, r31, 0xedc
/* 8006B514  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B518  C0 42 88 44 */	lfs f2, lit_4366(r2)
/* 8006B51C  C0 62 88 40 */	lfs f3, lit_4365(r2)
/* 8006B520  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8006B524  48 20 44 59 */	bl cLib_addCalc__FPfffff
/* 8006B528  C0 3F 0E DC */	lfs f1, 0xedc(r31)
/* 8006B52C  C0 1F 0E F0 */	lfs f0, 0xef0(r31)
/* 8006B530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B534  4C 41 13 82 */	cror 2, 1, 2
/* 8006B538  40 82 01 10 */	bne lbl_8006B648
/* 8006B53C  88 1F 0E D5 */	lbz r0, 0xed5(r31)
/* 8006B540  28 00 00 0A */	cmplwi r0, 0xa
/* 8006B544  40 80 00 14 */	bge lbl_8006B558
/* 8006B548  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 8006B54C  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 8006B550  38 80 00 00 */	li r4, 0
/* 8006B554  48 25 C7 A1 */	bl startNearThunderSe__10Z2EnvSeMgrFSc
lbl_8006B558:
/* 8006B558  88 7F 0E D5 */	lbz r3, 0xed5(r31)
/* 8006B55C  38 03 00 01 */	addi r0, r3, 1
/* 8006B560  98 1F 0E D5 */	stb r0, 0xed5(r31)
/* 8006B564  48 00 00 E4 */	b lbl_8006B648
lbl_8006B568:
/* 8006B568  38 7F 0E DC */	addi r3, r31, 0xedc
/* 8006B56C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006B570  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8006B574  C0 62 88 1C */	lfs f3, lit_4356(r2)
/* 8006B578  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8006B57C  48 20 44 01 */	bl cLib_addCalc__FPfffff
/* 8006B580  C0 3F 0E DC */	lfs f1, 0xedc(r31)
/* 8006B584  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006B588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B58C  4C 40 13 82 */	cror 2, 0, 2
/* 8006B590  40 82 00 3C */	bne lbl_8006B5CC
/* 8006B594  88 1F 0E D5 */	lbz r0, 0xed5(r31)
/* 8006B598  28 00 00 0A */	cmplwi r0, 0xa
/* 8006B59C  40 80 00 0C */	bge lbl_8006B5A8
/* 8006B5A0  38 7F 0E F8 */	addi r3, r31, 0xef8
/* 8006B5A4  48 13 C4 5D */	bl dKy_efplight_cut__FP15LIGHT_INFLUENCE
lbl_8006B5A8:
/* 8006B5A8  38 80 00 00 */	li r4, 0
/* 8006B5AC  98 9F 0E D5 */	stb r4, 0xed5(r31)
/* 8006B5B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B5B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006B5B8  80 03 0E D8 */	lwz r0, 0xed8(r3)
/* 8006B5BC  2C 00 00 00 */	cmpwi r0, 0
/* 8006B5C0  40 82 00 88 */	bne lbl_8006B648
/* 8006B5C4  98 9F 0E D4 */	stb r4, 0xed4(r31)
/* 8006B5C8  48 00 00 80 */	b lbl_8006B648
lbl_8006B5CC:
/* 8006B5CC  C0 02 88 3C */	lfs f0, lit_4364(r2)
/* 8006B5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B5D4  4C 40 13 82 */	cror 2, 0, 2
/* 8006B5D8  40 82 00 70 */	bne lbl_8006B648
/* 8006B5DC  C0 02 89 30 */	lfs f0, lit_5720(r2)
/* 8006B5E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B5E4  40 81 00 64 */	ble lbl_8006B648
/* 8006B5E8  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B5EC  48 1F C3 69 */	bl cM_rndF__Ff
/* 8006B5F0  C0 02 88 44 */	lfs f0, lit_4366(r2)
/* 8006B5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B5F8  40 80 00 50 */	bge lbl_8006B648
/* 8006B5FC  C0 22 89 30 */	lfs f1, lit_5720(r2)
/* 8006B600  48 1F C3 55 */	bl cM_rndF__Ff
/* 8006B604  C0 02 89 54 */	lfs f0, lit_5729(r2)
/* 8006B608  EC 00 08 2A */	fadds f0, f0, f1
/* 8006B60C  D0 1F 0E F0 */	stfs f0, 0xef0(r31)
/* 8006B610  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B614  48 1F C3 41 */	bl cM_rndF__Ff
/* 8006B618  C0 02 88 1C */	lfs f0, lit_4356(r2)
/* 8006B61C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006B620  40 80 00 1C */	bge lbl_8006B63C
/* 8006B624  38 60 02 D9 */	li r3, 0x2d9
/* 8006B628  38 80 FF FF */	li r4, -1
/* 8006B62C  38 A0 00 00 */	li r5, 0
/* 8006B630  38 C0 00 00 */	li r6, 0
/* 8006B634  38 E0 00 00 */	li r7, 0
/* 8006B638  4B FB 41 81 */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
lbl_8006B63C:
/* 8006B63C  88 7F 0E D5 */	lbz r3, 0xed5(r31)
/* 8006B640  38 03 FF FF */	addi r0, r3, -1
/* 8006B644  98 1F 0E D5 */	stb r0, 0xed5(r31)
lbl_8006B648:
/* 8006B648  88 1F 0E D5 */	lbz r0, 0xed5(r31)
/* 8006B64C  28 00 00 00 */	cmplwi r0, 0
/* 8006B650  41 82 02 6C */	beq lbl_8006B8BC
/* 8006B654  28 00 00 0A */	cmplwi r0, 0xa
/* 8006B658  40 80 01 F8 */	bge lbl_8006B850
/* 8006B65C  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 8006B660  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 8006B664  38 A1 00 08 */	addi r5, r1, 8
/* 8006B668  4B FF 00 F9 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8006B66C  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 8006B670  C0 21 00 08 */	lfs f1, 8(r1)
/* 8006B674  C0 1F 0E E8 */	lfs f0, 0xee8(r31)
/* 8006B678  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006B67C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8006B680  D0 1F 0E F8 */	stfs f0, 0xef8(r31)
/* 8006B684  C0 22 89 A0 */	lfs f1, lit_5748(r2)
/* 8006B688  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8006B68C  EC 01 00 2A */	fadds f0, f1, f0
/* 8006B690  D0 1F 0E FC */	stfs f0, 0xefc(r31)
/* 8006B694  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 8006B698  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8006B69C  C0 1F 0E EC */	lfs f0, 0xeec(r31)
/* 8006B6A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006B6A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8006B6A8  D0 1F 0F 00 */	stfs f0, 0xf00(r31)
/* 8006B6AC  2C 1D 00 02 */	cmpwi r29, 2
/* 8006B6B0  40 82 00 1C */	bne lbl_8006B6CC
/* 8006B6B4  C0 02 8B B4 */	lfs f0, lit_10734(r2)
/* 8006B6B8  D0 1F 0E F8 */	stfs f0, 0xef8(r31)
/* 8006B6BC  C0 02 8B B8 */	lfs f0, lit_10735(r2)
/* 8006B6C0  D0 1F 0E FC */	stfs f0, 0xefc(r31)
/* 8006B6C4  C0 02 8B BC */	lfs f0, lit_10736(r2)
/* 8006B6C8  D0 1F 0F 00 */	stfs f0, 0xf00(r31)
lbl_8006B6CC:
/* 8006B6CC  C0 02 8B C0 */	lfs f0, lit_10737(r2)
/* 8006B6D0  C0 3F 0E DC */	lfs f1, 0xedc(r31)
/* 8006B6D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006B6D8  FC 00 00 1E */	fctiwz f0, f0
/* 8006B6DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8006B6E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006B6E4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8006B6E8  B0 1F 0F 04 */	sth r0, 0xf04(r31)
/* 8006B6EC  C0 02 89 74 */	lfs f0, lit_5737(r2)
/* 8006B6F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006B6F4  FC 00 00 1E */	fctiwz f0, f0
/* 8006B6F8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8006B6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006B700  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8006B704  B0 1F 0F 06 */	sth r0, 0xf06(r31)
/* 8006B708  C0 02 8A B8 */	lfs f0, lit_8213(r2)
/* 8006B70C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006B710  FC 00 00 1E */	fctiwz f0, f0
/* 8006B714  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8006B718  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8006B71C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8006B720  B0 1F 0F 08 */	sth r0, 0xf08(r31)
/* 8006B724  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B728  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006B72C  88 03 12 D6 */	lbz r0, 0x12d6(r3)
/* 8006B730  28 00 00 00 */	cmplwi r0, 0
/* 8006B734  40 82 01 88 */	bne lbl_8006B8BC
/* 8006B738  2C 1D 00 00 */	cmpwi r29, 0
/* 8006B73C  40 82 00 A4 */	bne lbl_8006B7E0
/* 8006B740  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 8006B744  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 8006B748  38 A1 00 08 */	addi r5, r1, 8
/* 8006B74C  4B FF 00 15 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8006B750  C0 3F 0E DC */	lfs f1, 0xedc(r31)
/* 8006B754  EC 01 00 72 */	fmuls f0, f1, f1
/* 8006B758  EF E1 00 32 */	fmuls f31, f1, f0
/* 8006B75C  2C 1D 00 00 */	cmpwi r29, 0
/* 8006B760  40 82 00 2C */	bne lbl_8006B78C
/* 8006B764  C0 02 8B C4 */	lfs f0, lit_10738(r2)
/* 8006B768  FC 00 00 1E */	fctiwz f0, f0
/* 8006B76C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8006B770  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8006B774  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8006B778  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8006B77C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8006B780  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8006B784  FC 20 F8 90 */	fmr f1, f31
/* 8006B788  48 13 C3 41 */	bl dKy_actor_addcol_amb_set__Fsssf
lbl_8006B78C:
/* 8006B78C  C0 02 8B C4 */	lfs f0, lit_10738(r2)
/* 8006B790  FC 00 00 1E */	fctiwz f0, f0
/* 8006B794  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8006B798  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8006B79C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8006B7A0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8006B7A4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8006B7A8  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8006B7AC  FC 20 F8 90 */	fmr f1, f31
/* 8006B7B0  48 13 C3 B9 */	bl dKy_bg_addcol_amb_set__Fsssf
/* 8006B7B4  C0 02 8B C4 */	lfs f0, lit_10738(r2)
/* 8006B7B8  FC 00 00 1E */	fctiwz f0, f0
/* 8006B7BC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8006B7C0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8006B7C4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8006B7C8  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8006B7CC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8006B7D0  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8006B7D4  C0 02 89 30 */	lfs f0, lit_5720(r2)
/* 8006B7D8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8006B7DC  48 13 C4 2D */	bl dKy_bg1_addcol_amb_set__Fsssf
lbl_8006B7E0:
/* 8006B7E0  38 60 00 4B */	li r3, 0x4b
/* 8006B7E4  38 80 00 82 */	li r4, 0x82
/* 8006B7E8  38 A0 00 96 */	li r5, 0x96
/* 8006B7EC  C0 22 89 54 */	lfs f1, lit_5729(r2)
/* 8006B7F0  C0 1F 0E DC */	lfs f0, 0xedc(r31)
/* 8006B7F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006B7F8  48 13 C7 29 */	bl dKy_vrbox_addcol_sky0_set__Fsssf
/* 8006B7FC  38 60 00 4B */	li r3, 0x4b
/* 8006B800  38 80 00 82 */	li r4, 0x82
/* 8006B804  38 A0 00 96 */	li r5, 0x96
/* 8006B808  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 8006B80C  C0 1F 0E DC */	lfs f0, 0xedc(r31)
/* 8006B810  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006B814  48 13 C7 AD */	bl dKy_vrbox_addcol_kasumi_set__Fsssf
/* 8006B818  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B81C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B820  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006B824  C0 03 12 10 */	lfs f0, 0x1210(r3)
/* 8006B828  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8006B82C  40 82 00 90 */	bne lbl_8006B8BC
/* 8006B830  38 60 00 4B */	li r3, 0x4b
/* 8006B834  38 80 00 82 */	li r4, 0x82
/* 8006B838  38 A0 00 96 */	li r5, 0x96
/* 8006B83C  C0 22 89 30 */	lfs f1, lit_5720(r2)
/* 8006B840  C0 1F 0E DC */	lfs f0, 0xedc(r31)
/* 8006B844  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006B848  48 13 C5 A1 */	bl dKy_addcol_fog_set__Fsssf
/* 8006B84C  48 00 00 70 */	b lbl_8006B8BC
lbl_8006B850:
/* 8006B850  38 60 00 4B */	li r3, 0x4b
/* 8006B854  38 80 00 82 */	li r4, 0x82
/* 8006B858  38 A0 00 96 */	li r5, 0x96
/* 8006B85C  C0 22 8B C8 */	lfs f1, lit_10739(r2)
/* 8006B860  C0 1F 0E DC */	lfs f0, 0xedc(r31)
/* 8006B864  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006B868  48 13 C6 B9 */	bl dKy_vrbox_addcol_sky0_set__Fsssf
/* 8006B86C  38 60 00 4B */	li r3, 0x4b
/* 8006B870  38 80 00 82 */	li r4, 0x82
/* 8006B874  38 A0 00 96 */	li r5, 0x96
/* 8006B878  C0 22 89 B8 */	lfs f1, lit_6360(r2)
/* 8006B87C  C0 1F 0E DC */	lfs f0, 0xedc(r31)
/* 8006B880  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006B884  48 13 C7 3D */	bl dKy_vrbox_addcol_kasumi_set__Fsssf
/* 8006B888  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006B88C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8006B890  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8006B894  C0 03 12 10 */	lfs f0, 0x1210(r3)
/* 8006B898  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8006B89C  40 82 00 20 */	bne lbl_8006B8BC
/* 8006B8A0  38 60 00 4B */	li r3, 0x4b
/* 8006B8A4  38 80 00 82 */	li r4, 0x82
/* 8006B8A8  38 A0 00 96 */	li r5, 0x96
/* 8006B8AC  C0 22 8A 10 */	lfs f1, lit_6731(r2)
/* 8006B8B0  C0 1F 0E DC */	lfs f0, 0xedc(r31)
/* 8006B8B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006B8B8  48 13 C5 31 */	bl dKy_addcol_fog_set__Fsssf
lbl_8006B8BC:
/* 8006B8BC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8006B8C0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8006B8C4  39 61 00 60 */	addi r11, r1, 0x60
/* 8006B8C8  48 2F 69 59 */	bl _restgpr_27
/* 8006B8CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8006B8D0  7C 08 03 A6 */	mtlr r0
/* 8006B8D4  38 21 00 70 */	addi r1, r1, 0x70
/* 8006B8D8  4E 80 00 20 */	blr 
