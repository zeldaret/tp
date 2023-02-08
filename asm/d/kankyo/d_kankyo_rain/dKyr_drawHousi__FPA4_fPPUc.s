lbl_8006653C:
/* 8006653C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80066540  7C 08 02 A6 */	mflr r0
/* 80066544  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 80066548  DB E1 02 D0 */	stfd f31, 0x2d0(r1)
/* 8006654C  F3 E1 02 D8 */	psq_st f31, 728(r1), 0, 0 /* qr0 */
/* 80066550  DB C1 02 C0 */	stfd f30, 0x2c0(r1)
/* 80066554  F3 C1 02 C8 */	psq_st f30, 712(r1), 0, 0 /* qr0 */
/* 80066558  DB A1 02 B0 */	stfd f29, 0x2b0(r1)
/* 8006655C  F3 A1 02 B8 */	psq_st f29, 696(r1), 0, 0 /* qr0 */
/* 80066560  DB 81 02 A0 */	stfd f28, 0x2a0(r1)
/* 80066564  F3 81 02 A8 */	psq_st f28, 680(r1), 0, 0 /* qr0 */
/* 80066568  DB 61 02 90 */	stfd f27, 0x290(r1)
/* 8006656C  F3 61 02 98 */	psq_st f27, 664(r1), 0, 0 /* qr0 */
/* 80066570  DB 41 02 80 */	stfd f26, 0x280(r1)
/* 80066574  F3 41 02 88 */	psq_st f26, 648(r1), 0, 0 /* qr0 */
/* 80066578  DB 21 02 70 */	stfd f25, 0x270(r1)
/* 8006657C  F3 21 02 78 */	psq_st f25, 632(r1), 0, 0 /* qr0 */
/* 80066580  DB 01 02 60 */	stfd f24, 0x260(r1)
/* 80066584  F3 01 02 68 */	psq_st f24, 616(r1), 0, 0 /* qr0 */
/* 80066588  39 61 02 60 */	addi r11, r1, 0x260
/* 8006658C  48 2F BC 21 */	bl _savegpr_17
/* 80066590  7C 78 1B 78 */	mr r24, r3
/* 80066594  7C 97 23 78 */	mr r23, r4
/* 80066598  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006659C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 800665A0  83 A3 0E B0 */	lwz r29, 0xeb0(r3)
/* 800665A4  88 0D 89 84 */	lbz r0, data_80450F04(r13)
/* 800665A8  7C 00 07 75 */	extsb. r0, r0
/* 800665AC  40 82 00 14 */	bne lbl_800665C0
/* 800665B0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 800665B4  D0 0D 89 80 */	stfs f0, rot_8366(r13)
/* 800665B8  38 00 00 01 */	li r0, 1
/* 800665BC  98 0D 89 84 */	stb r0, data_80450F04(r13)
lbl_800665C0:
/* 800665C0  3B 80 00 00 */	li r28, 0
/* 800665C4  A8 1D 5D EC */	lha r0, 0x5dec(r29)
/* 800665C8  2C 00 00 00 */	cmpwi r0, 0
/* 800665CC  41 82 0E 64 */	beq lbl_80067430
/* 800665D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800665D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800665D8  3A C3 4E 00 */	addi r22, r3, 0x4e00
/* 800665DC  7E C3 B3 78 */	mr r3, r22
/* 800665E0  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 800665E4  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 800665E8  38 84 00 45 */	addi r4, r4, 0x45
/* 800665EC  48 30 23 A9 */	bl strcmp
/* 800665F0  2C 03 00 00 */	cmpwi r3, 0
/* 800665F4  40 82 00 08 */	bne lbl_800665FC
/* 800665F8  3B 80 00 01 */	li r28, 1
lbl_800665FC:
/* 800665FC  7E C3 B3 78 */	mr r3, r22
/* 80066600  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80066604  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80066608  38 84 00 45 */	addi r4, r4, 0x45
/* 8006660C  48 30 23 89 */	bl strcmp
/* 80066610  2C 03 00 00 */	cmpwi r3, 0
/* 80066614  40 82 00 18 */	bne lbl_8006662C
/* 80066618  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8006661C  7C 00 07 75 */	extsb. r0, r0
/* 80066620  41 82 00 0C */	beq lbl_8006662C
/* 80066624  2C 00 00 0B */	cmpwi r0, 0xb
/* 80066628  40 82 0E 08 */	bne lbl_80067430
lbl_8006662C:
/* 8006662C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80066630  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80066634  48 2A A1 09 */	bl reinitGX__6J3DSysFv
/* 80066638  C3 22 89 FC */	lfs f25, lit_6726(r2)
/* 8006663C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80066640  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 80066644  88 1F 0E A9 */	lbz r0, 0xea9(r31)
/* 80066648  28 00 00 01 */	cmplwi r0, 1
/* 8006664C  40 82 00 0C */	bne lbl_80066658
/* 80066650  C3 22 8A A4 */	lfs f25, lit_7892(r2)
/* 80066654  48 00 00 10 */	b lbl_80066664
lbl_80066658:
/* 80066658  88 1F 12 D8 */	lbz r0, 0x12d8(r31)
/* 8006665C  28 00 00 00 */	cmplwi r0, 0
/* 80066660  40 82 0D D0 */	bne lbl_80067430
lbl_80066664:
/* 80066664  38 00 00 E5 */	li r0, 0xe5
/* 80066668  98 01 00 24 */	stb r0, 0x24(r1)
/* 8006666C  38 60 00 FF */	li r3, 0xff
/* 80066670  98 61 00 25 */	stb r3, 0x25(r1)
/* 80066674  38 00 00 C8 */	li r0, 0xc8
/* 80066678  98 01 00 26 */	stb r0, 0x26(r1)
/* 8006667C  FC 00 C8 1E */	fctiwz f0, f25
/* 80066680  D8 01 01 F0 */	stfd f0, 0x1f0(r1)
/* 80066684  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 80066688  98 01 00 27 */	stb r0, 0x27(r1)
/* 8006668C  38 00 00 43 */	li r0, 0x43
/* 80066690  98 01 00 20 */	stb r0, 0x20(r1)
/* 80066694  38 00 00 D2 */	li r0, 0xd2
/* 80066698  98 01 00 21 */	stb r0, 0x21(r1)
/* 8006669C  38 00 00 CA */	li r0, 0xca
/* 800666A0  98 01 00 22 */	stb r0, 0x22(r1)
/* 800666A4  98 61 00 23 */	stb r3, 0x23(r1)
/* 800666A8  48 14 5E D5 */	bl dKy_darkworld_check__Fv
/* 800666AC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800666B0  28 00 00 01 */	cmplwi r0, 1
/* 800666B4  41 82 00 10 */	beq lbl_800666C4
/* 800666B8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 800666BC  28 00 00 01 */	cmplwi r0, 1
/* 800666C0  40 82 00 40 */	bne lbl_80066700
lbl_800666C4:
/* 800666C4  38 60 00 00 */	li r3, 0
/* 800666C8  98 61 00 24 */	stb r3, 0x24(r1)
/* 800666CC  98 61 00 25 */	stb r3, 0x25(r1)
/* 800666D0  98 61 00 26 */	stb r3, 0x26(r1)
/* 800666D4  FC 00 C8 1E */	fctiwz f0, f25
/* 800666D8  D8 01 01 F0 */	stfd f0, 0x1f0(r1)
/* 800666DC  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 800666E0  98 01 00 27 */	stb r0, 0x27(r1)
/* 800666E4  98 61 00 20 */	stb r3, 0x20(r1)
/* 800666E8  98 61 00 21 */	stb r3, 0x21(r1)
/* 800666EC  98 61 00 22 */	stb r3, 0x22(r1)
/* 800666F0  38 00 00 FF */	li r0, 0xff
/* 800666F4  98 01 00 23 */	stb r0, 0x23(r1)
/* 800666F8  C3 22 88 4C */	lfs f25, lit_4368(r2)
/* 800666FC  48 00 00 D0 */	b lbl_800667CC
lbl_80066700:
/* 80066700  88 1F 0E A9 */	lbz r0, 0xea9(r31)
/* 80066704  28 00 00 01 */	cmplwi r0, 1
/* 80066708  40 82 00 2C */	bne lbl_80066734
/* 8006670C  38 00 00 FF */	li r0, 0xff
/* 80066710  98 01 00 24 */	stb r0, 0x24(r1)
/* 80066714  98 01 00 25 */	stb r0, 0x25(r1)
/* 80066718  98 01 00 26 */	stb r0, 0x26(r1)
/* 8006671C  38 00 00 00 */	li r0, 0
/* 80066720  98 01 00 20 */	stb r0, 0x20(r1)
/* 80066724  38 00 00 50 */	li r0, 0x50
/* 80066728  98 01 00 21 */	stb r0, 0x21(r1)
/* 8006672C  98 01 00 22 */	stb r0, 0x22(r1)
/* 80066730  48 00 00 9C */	b lbl_800667CC
lbl_80066734:
/* 80066734  28 00 00 02 */	cmplwi r0, 2
/* 80066738  40 82 00 94 */	bne lbl_800667CC
/* 8006673C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80066740  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80066744  88 83 12 FE */	lbz r4, 0x12fe(r3)
/* 80066748  28 04 00 01 */	cmplwi r4, 1
/* 8006674C  41 82 00 0C */	beq lbl_80066758
/* 80066750  28 04 00 03 */	cmplwi r4, 3
/* 80066754  40 82 00 78 */	bne lbl_800667CC
lbl_80066758:
/* 80066758  80 02 8A CC */	lwz r0, lit_8393(r2)
/* 8006675C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80066760  80 02 8A D0 */	lwz r0, lit_8394(r2)
/* 80066764  90 01 00 18 */	stw r0, 0x18(r1)
/* 80066768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006676C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80066770  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80066774  28 04 00 03 */	cmplwi r4, 3
/* 80066778  40 82 00 30 */	bne lbl_800667A8
/* 8006677C  38 00 00 78 */	li r0, 0x78
/* 80066780  98 01 00 1C */	stb r0, 0x1c(r1)
/* 80066784  38 00 00 0A */	li r0, 0xa
/* 80066788  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006678C  38 00 00 14 */	li r0, 0x14
/* 80066790  98 01 00 1E */	stb r0, 0x1e(r1)
/* 80066794  98 01 00 18 */	stb r0, 0x18(r1)
/* 80066798  38 00 00 3C */	li r0, 0x3c
/* 8006679C  98 01 00 19 */	stb r0, 0x19(r1)
/* 800667A0  38 00 00 00 */	li r0, 0
/* 800667A4  98 01 00 1A */	stb r0, 0x1a(r1)
lbl_800667A8:
/* 800667A8  38 63 00 D8 */	addi r3, r3, 0xd8
/* 800667AC  38 80 00 00 */	li r4, 0
/* 800667B0  38 A1 00 20 */	addi r5, r1, 0x20
/* 800667B4  38 C1 00 24 */	addi r6, r1, 0x24
/* 800667B8  38 E1 00 1C */	addi r7, r1, 0x1c
/* 800667BC  39 01 00 18 */	addi r8, r1, 0x18
/* 800667C0  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 800667C4  48 14 34 F9 */	bl dKy_ParticleColor_get_bg__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
/* 800667C8  C3 22 88 4C */	lfs f25, lit_4368(r2)
lbl_800667CC:
/* 800667CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800667D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800667D4  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 800667D8  28 03 00 00 */	cmplwi r3, 0
/* 800667DC  41 82 0C 54 */	beq lbl_80067430
/* 800667E0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 800667E4  38 81 01 BC */	addi r4, r1, 0x1bc
/* 800667E8  48 2D FD C9 */	bl PSMTXInverse
/* 800667EC  48 00 00 08 */	b lbl_800667F4
/* 800667F0  48 00 0C 40 */	b lbl_80067430
lbl_800667F4:
/* 800667F4  3A 80 00 00 */	li r20, 0
/* 800667F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800667FC  3A 63 61 C0 */	addi r19, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80066800  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80066804  3A A3 CA 54 */	addi r21, r3, g_env_light@l /* 0x8042CA54@l */
/* 80066808  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006680C  3A 23 A5 78 */	addi r17, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80066810  C3 42 89 A8 */	lfs f26, lit_6356(r2)
/* 80066814  C3 02 8A 60 */	lfs f24, lit_7211(r2)
/* 80066818  38 61 00 DC */	addi r3, r1, 0xdc
/* 8006681C  80 97 00 00 */	lwz r4, 0(r23)
/* 80066820  4B FF 52 05 */	bl dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
/* 80066824  38 60 00 00 */	li r3, 0
/* 80066828  48 2F 73 09 */	bl GXSetNumChans
/* 8006682C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80066830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80066834  38 60 00 01 */	li r3, 1
/* 80066838  38 81 00 14 */	addi r4, r1, 0x14
/* 8006683C  48 2F 8B 41 */	bl GXSetTevColor
/* 80066840  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80066844  90 01 00 10 */	stw r0, 0x10(r1)
/* 80066848  38 60 00 02 */	li r3, 2
/* 8006684C  38 81 00 10 */	addi r4, r1, 0x10
/* 80066850  48 2F 8B 2D */	bl GXSetTevColor
/* 80066854  38 60 00 01 */	li r3, 1
/* 80066858  48 2F 55 A5 */	bl GXSetNumTexGens
/* 8006685C  38 60 00 00 */	li r3, 0
/* 80066860  38 80 00 01 */	li r4, 1
/* 80066864  38 A0 00 04 */	li r5, 4
/* 80066868  38 C0 00 3C */	li r6, 0x3c
/* 8006686C  38 E0 00 00 */	li r7, 0
/* 80066870  39 00 00 7D */	li r8, 0x7d
/* 80066874  48 2F 53 09 */	bl GXSetTexCoordGen2
/* 80066878  38 60 00 01 */	li r3, 1
/* 8006687C  48 2F 90 15 */	bl GXSetNumTevStages
/* 80066880  38 60 00 00 */	li r3, 0
/* 80066884  38 80 00 00 */	li r4, 0
/* 80066888  38 A0 00 00 */	li r5, 0
/* 8006688C  38 C0 00 FF */	li r6, 0xff
/* 80066890  48 2F 8E 65 */	bl GXSetTevOrder
/* 80066894  38 60 00 00 */	li r3, 0
/* 80066898  38 80 00 04 */	li r4, 4
/* 8006689C  38 A0 00 02 */	li r5, 2
/* 800668A0  38 C0 00 08 */	li r6, 8
/* 800668A4  38 E0 00 0F */	li r7, 0xf
/* 800668A8  48 2F 89 7D */	bl GXSetTevColorIn
/* 800668AC  38 60 00 00 */	li r3, 0
/* 800668B0  38 80 00 00 */	li r4, 0
/* 800668B4  38 A0 00 00 */	li r5, 0
/* 800668B8  38 C0 00 00 */	li r6, 0
/* 800668BC  38 E0 00 01 */	li r7, 1
/* 800668C0  39 00 00 00 */	li r8, 0
/* 800668C4  48 2F 89 E9 */	bl GXSetTevColorOp
/* 800668C8  38 60 00 00 */	li r3, 0
/* 800668CC  38 80 00 07 */	li r4, 7
/* 800668D0  38 A0 00 01 */	li r5, 1
/* 800668D4  38 C0 00 04 */	li r6, 4
/* 800668D8  38 E0 00 07 */	li r7, 7
/* 800668DC  48 2F 89 8D */	bl GXSetTevAlphaIn
/* 800668E0  38 60 00 00 */	li r3, 0
/* 800668E4  38 80 00 00 */	li r4, 0
/* 800668E8  38 A0 00 00 */	li r5, 0
/* 800668EC  38 C0 00 00 */	li r6, 0
/* 800668F0  38 E0 00 01 */	li r7, 1
/* 800668F4  39 00 00 00 */	li r8, 0
/* 800668F8  48 2F 8A 1D */	bl GXSetTevAlphaOp
/* 800668FC  7E C3 B3 78 */	mr r3, r22
/* 80066900  38 91 00 7A */	addi r4, r17, 0x7a
/* 80066904  48 30 20 91 */	bl strcmp
/* 80066908  2C 03 00 00 */	cmpwi r3, 0
/* 8006690C  41 82 00 10 */	beq lbl_8006691C
/* 80066910  88 1F 0E A9 */	lbz r0, 0xea9(r31)
/* 80066914  28 00 00 01 */	cmplwi r0, 1
/* 80066918  40 82 00 1C */	bne lbl_80066934
lbl_8006691C:
/* 8006691C  38 60 00 01 */	li r3, 1
/* 80066920  38 80 00 04 */	li r4, 4
/* 80066924  38 A0 00 01 */	li r5, 1
/* 80066928  38 C0 00 03 */	li r6, 3
/* 8006692C  48 2F 92 C5 */	bl GXSetBlendMode
/* 80066930  48 00 00 18 */	b lbl_80066948
lbl_80066934:
/* 80066934  38 60 00 01 */	li r3, 1
/* 80066938  38 80 00 04 */	li r4, 4
/* 8006693C  38 A0 00 05 */	li r5, 5
/* 80066940  38 C0 00 0F */	li r6, 0xf
/* 80066944  48 2F 92 AD */	bl GXSetBlendMode
lbl_80066948:
/* 80066948  38 60 00 04 */	li r3, 4
/* 8006694C  38 80 00 00 */	li r4, 0
/* 80066950  38 A0 00 01 */	li r5, 1
/* 80066954  38 C0 00 04 */	li r6, 4
/* 80066958  38 E0 00 00 */	li r7, 0
/* 8006695C  48 2F 8C C9 */	bl GXSetAlphaCompare
/* 80066960  2C 14 00 01 */	cmpwi r20, 1
/* 80066964  40 82 00 18 */	bne lbl_8006697C
/* 80066968  38 60 00 01 */	li r3, 1
/* 8006696C  38 80 00 06 */	li r4, 6
/* 80066970  38 A0 00 00 */	li r5, 0
/* 80066974  48 2F 93 29 */	bl GXSetZMode
/* 80066978  48 00 00 14 */	b lbl_8006698C
lbl_8006697C:
/* 8006697C  38 60 00 01 */	li r3, 1
/* 80066980  38 80 00 03 */	li r4, 3
/* 80066984  38 A0 00 00 */	li r5, 0
/* 80066988  48 2F 93 15 */	bl GXSetZMode
lbl_8006698C:
/* 8006698C  38 60 00 01 */	li r3, 1
/* 80066990  48 2F 9C 41 */	bl GXSetClipMode
/* 80066994  38 60 00 00 */	li r3, 0
/* 80066998  48 2F 87 3D */	bl GXSetNumIndStages
/* 8006699C  4B FF C1 41 */	bl dKr_cullVtx_Set__Fv
/* 800669A0  C0 0D 89 80 */	lfs f0, rot_8366(r13)
/* 800669A4  EC 00 D0 2A */	fadds f0, f0, f26
/* 800669A8  D0 0D 89 80 */	stfs f0, rot_8366(r13)
/* 800669AC  38 61 01 8C */	addi r3, r1, 0x18c
/* 800669B0  38 80 00 5A */	li r4, 0x5a
/* 800669B4  EC 38 00 32 */	fmuls f1, f24, f0
/* 800669B8  48 2D FC F1 */	bl PSMTXRotRad
/* 800669BC  38 61 01 BC */	addi r3, r1, 0x1bc
/* 800669C0  38 81 01 8C */	addi r4, r1, 0x18c
/* 800669C4  7C 65 1B 78 */	mr r5, r3
/* 800669C8  48 2D FB 1D */	bl PSMTXConcat
/* 800669CC  7F 03 C3 78 */	mr r3, r24
/* 800669D0  38 80 00 00 */	li r4, 0
/* 800669D4  48 2F 98 79 */	bl GXLoadPosMtxImm
/* 800669D8  38 60 00 00 */	li r3, 0
/* 800669DC  48 2F 99 11 */	bl GXSetCurrentMtx
/* 800669E0  3B 60 00 00 */	li r27, 0
/* 800669E4  3B 20 00 00 */	li r25, 0
/* 800669E8  48 00 0A 2C */	b lbl_80067414
lbl_800669EC:
/* 800669EC  82 33 5D AC */	lwz r17, 0x5dac(r19)
/* 800669F0  7F DD CA 14 */	add r30, r29, r25
/* 800669F4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 800669F8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 800669FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80066A00  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80066A04  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80066A08  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80066A0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80066A10  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80066A14  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80066A18  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80066A1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80066A20  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80066A24  2C 14 00 01 */	cmpwi r20, 1
/* 80066A28  40 82 00 3C */	bne lbl_80066A64
/* 80066A2C  2C 1B 00 00 */	cmpwi r27, 0
/* 80066A30  40 82 00 34 */	bne lbl_80066A64
/* 80066A34  38 00 00 00 */	li r0, 0
/* 80066A38  98 01 00 24 */	stb r0, 0x24(r1)
/* 80066A3C  98 01 00 25 */	stb r0, 0x25(r1)
/* 80066A40  98 01 00 26 */	stb r0, 0x26(r1)
/* 80066A44  98 01 00 20 */	stb r0, 0x20(r1)
/* 80066A48  98 01 00 21 */	stb r0, 0x21(r1)
/* 80066A4C  98 01 00 22 */	stb r0, 0x22(r1)
/* 80066A50  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80066A54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80066A58  38 60 00 02 */	li r3, 2
/* 80066A5C  38 81 00 0C */	addi r4, r1, 0xc
/* 80066A60  48 2F 89 1D */	bl GXSetTevColor
lbl_80066A64:
/* 80066A64  2C 14 00 01 */	cmpwi r20, 1
/* 80066A68  40 82 00 74 */	bne lbl_80066ADC
/* 80066A6C  C0 C1 00 D4 */	lfs f6, 0xd4(r1)
/* 80066A70  C0 B1 04 D4 */	lfs f5, 0x4d4(r17)
/* 80066A74  C0 82 89 A4 */	lfs f4, lit_6355(r2)
/* 80066A78  EC 05 20 2A */	fadds f0, f5, f4
/* 80066A7C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80066A80  41 81 09 8C */	bgt lbl_8006740C
/* 80066A84  C0 02 88 8C */	lfs f0, lit_5098(r2)
/* 80066A88  EC 65 00 28 */	fsubs f3, f5, f0
/* 80066A8C  FC 06 18 40 */	fcmpo cr0, f6, f3
/* 80066A90  41 80 09 7C */	blt lbl_8006740C
/* 80066A94  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80066A98  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80066A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80066AA0  4C 40 13 82 */	cror 2, 0, 2
/* 80066AA4  41 82 09 68 */	beq lbl_8006740C
/* 80066AA8  C0 02 88 B8 */	lfs f0, lit_5109(r2)
/* 80066AAC  EC 40 00 72 */	fmuls f2, f0, f1
/* 80066AB0  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 80066AB4  EC 06 28 28 */	fsubs f0, f6, f5
/* 80066AB8  EC 00 20 24 */	fdivs f0, f0, f4
/* 80066ABC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80066AC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80066AC4  FC 00 00 1E */	fctiwz f0, f0
/* 80066AC8  D8 01 01 F0 */	stfd f0, 0x1f0(r1)
/* 80066ACC  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 80066AD0  98 01 00 27 */	stb r0, 0x27(r1)
/* 80066AD4  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 80066AD8  48 00 00 1C */	b lbl_80066AF4
lbl_80066ADC:
/* 80066ADC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80066AE0  EC 00 06 72 */	fmuls f0, f0, f25
/* 80066AE4  FC 00 00 1E */	fctiwz f0, f0
/* 80066AE8  D8 01 01 F0 */	stfd f0, 0x1f0(r1)
/* 80066AEC  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 80066AF0  98 01 00 27 */	stb r0, 0x27(r1)
lbl_80066AF4:
/* 80066AF4  38 61 00 DC */	addi r3, r1, 0xdc
/* 80066AF8  38 80 00 00 */	li r4, 0
/* 80066AFC  48 2F 79 19 */	bl GXLoadTexObj
/* 80066B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80066B04  90 01 00 08 */	stw r0, 8(r1)
/* 80066B08  38 60 00 01 */	li r3, 1
/* 80066B0C  38 81 00 08 */	addi r4, r1, 8
/* 80066B10  48 2F 88 6D */	bl GXSetTevColor
/* 80066B14  C0 02 89 84 */	lfs f0, lit_5741(r2)
/* 80066B18  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80066B1C  EF 60 00 72 */	fmuls f27, f0, f1
/* 80066B20  88 1F 0E A9 */	lbz r0, 0xea9(r31)
/* 80066B24  28 00 00 01 */	cmplwi r0, 1
/* 80066B28  40 82 00 0C */	bne lbl_80066B34
/* 80066B2C  C0 02 8A D4 */	lfs f0, lit_8917(r2)
/* 80066B30  EF 60 00 72 */	fmuls f27, f0, f1
lbl_80066B34:
/* 80066B34  C0 22 89 50 */	lfs f1, lit_5728(r2)
/* 80066B38  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80066B3C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80066B40  48 20 0A A5 */	bl cM_rad2s__Ff
/* 80066B44  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80066B48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80066B4C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80066B50  7C 23 04 2E */	lfsx f1, r3, r0
/* 80066B54  C0 02 88 40 */	lfs f0, lit_4365(r2)
/* 80066B58  EF 00 06 F2 */	fmuls f24, f0, f27
/* 80066B5C  EF 98 00 72 */	fmuls f28, f24, f1
/* 80066B60  C0 22 88 64 */	lfs f1, lit_4374(r2)
/* 80066B64  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80066B68  EC 21 00 32 */	fmuls f1, f1, f0
/* 80066B6C  48 20 0A 79 */	bl cM_rad2s__Ff
/* 80066B70  54 64 04 38 */	rlwinm r4, r3, 0, 0x10, 0x1c
/* 80066B74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80066B78  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80066B7C  7C 60 22 14 */	add r3, r0, r4
/* 80066B80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80066B84  EF D8 00 32 */	fmuls f30, f24, f0
/* 80066B88  48 14 59 F5 */	bl dKy_darkworld_check__Fv
/* 80066B8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80066B90  28 00 00 01 */	cmplwi r0, 1
/* 80066B94  41 82 00 10 */	beq lbl_80066BA4
/* 80066B98  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80066B9C  28 00 00 01 */	cmplwi r0, 1
/* 80066BA0  40 82 01 A8 */	bne lbl_80066D48
lbl_80066BA4:
/* 80066BA4  C0 62 8A 54 */	lfs f3, lit_7208(r2)
/* 80066BA8  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 80066BAC  C0 42 8A D8 */	lfs f2, lit_8918(r2)
/* 80066BB0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80066BB4  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 80066BB8  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80066BBC  D0 61 01 2C */	stfs f3, 0x12c(r1)
/* 80066BC0  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 80066BC4  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 80066BC8  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 80066BCC  C0 02 89 34 */	lfs f0, lit_5721(r2)
/* 80066BD0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80066BD4  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80066BD8  D0 61 01 38 */	stfs f3, 0x138(r1)
/* 80066BDC  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 80066BE0  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 80066BE4  C3 82 88 14 */	lfs f28, lit_4354(r2)
/* 80066BE8  D3 81 00 64 */	stfs f28, 0x64(r1)
/* 80066BEC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80066BF0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80066BF4  D3 81 01 44 */	stfs f28, 0x144(r1)
/* 80066BF8  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 80066BFC  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 80066C00  D3 81 00 58 */	stfs f28, 0x58(r1)
/* 80066C04  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80066C08  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80066C0C  D3 81 01 50 */	stfs f28, 0x150(r1)
/* 80066C10  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80066C14  D0 21 01 58 */	stfs f1, 0x158(r1)
/* 80066C18  3B 00 00 00 */	li r24, 0
/* 80066C1C  3B 40 00 00 */	li r26, 0
/* 80066C20  C0 42 8A DC */	lfs f2, lit_8919(r2)
/* 80066C24  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 80066C28  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80066C2C  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80066C30  3E E0 43 30 */	lis r23, 0x4330
/* 80066C34  92 E1 01 F0 */	stw r23, 0x1f0(r1)
/* 80066C38  C8 01 01 F0 */	lfd f0, 0x1f0(r1)
/* 80066C3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80066C40  EF 62 00 32 */	fmuls f27, f2, f0
/* 80066C44  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80066C48  3A C3 0C D8 */	addi r22, r3, g_Counter@l /* 0x80430CD8@l */
/* 80066C4C  CB A2 88 70 */	lfd f29, lit_4379(r2)
/* 80066C50  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80066C54  3A 23 9A 20 */	addi r17, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80066C58  C3 E2 8A E0 */	lfs f31, lit_8920(r2)
/* 80066C5C  C3 C2 88 44 */	lfs f30, lit_4366(r2)
/* 80066C60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80066C64  3A 43 D4 70 */	addi r18, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80066C68  C3 02 89 38 */	lfs f24, lit_5722(r2)
/* 80066C6C  7E 5E 93 78 */	mr r30, r18
lbl_80066C70:
/* 80066C70  80 16 00 00 */	lwz r0, 0(r22)
/* 80066C74  1C 00 02 58 */	mulli r0, r0, 0x258
/* 80066C78  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80066C7C  92 E1 01 F0 */	stw r23, 0x1f0(r1)
/* 80066C80  C8 01 01 F0 */	lfd f0, 0x1f0(r1)
/* 80066C84  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80066C88  EC 1B 00 2A */	fadds f0, f27, f0
/* 80066C8C  FC 00 00 1E */	fctiwz f0, f0
/* 80066C90  D8 01 01 F8 */	stfd f0, 0x1f8(r1)
/* 80066C94  80 01 01 FC */	lwz r0, 0x1fc(r1)
/* 80066C98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80066C9C  7F 51 04 2E */	lfsx f26, r17, r0
/* 80066CA0  38 61 01 2C */	addi r3, r1, 0x12c
/* 80066CA4  7C 63 D2 14 */	add r3, r3, r26
/* 80066CA8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80066CAC  EC 1E 06 B2 */	fmuls f0, f30, f26
/* 80066CB0  EC 1C 00 2A */	fadds f0, f28, f0
/* 80066CB4  EC 5F 00 32 */	fmuls f2, f31, f0
/* 80066CB8  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80066CBC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80066CC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80066CC4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80066CC8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80066CCC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80066CD0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80066CD4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80066CD8  7E 43 93 78 */	mr r3, r18
/* 80066CDC  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 80066CE0  C0 41 00 D4 */	lfs f2, 0xd4(r1)
/* 80066CE4  C0 61 00 D8 */	lfs f3, 0xd8(r1)
/* 80066CE8  48 2D FC 01 */	bl PSMTXTrans
/* 80066CEC  7E 43 93 78 */	mr r3, r18
/* 80066CF0  EC 18 06 B2 */	fmuls f0, f24, f26
/* 80066CF4  FC 00 00 1E */	fctiwz f0, f0
/* 80066CF8  D8 01 02 00 */	stfd f0, 0x200(r1)
/* 80066CFC  80 81 02 04 */	lwz r4, 0x204(r1)
/* 80066D00  4B FA 57 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 80066D04  7F C3 F3 78 */	mr r3, r30
/* 80066D08  38 81 00 AC */	addi r4, r1, 0xac
/* 80066D0C  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80066D10  48 2E 00 5D */	bl PSMTXMultVec
/* 80066D14  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80066D18  38 61 01 5C */	addi r3, r1, 0x15c
/* 80066D1C  7C 63 D2 14 */	add r3, r3, r26
/* 80066D20  D0 03 00 00 */	stfs f0, 0(r3)
/* 80066D24  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80066D28  D0 03 00 04 */	stfs f0, 4(r3)
/* 80066D2C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80066D30  D0 03 00 08 */	stfs f0, 8(r3)
/* 80066D34  3B 18 00 01 */	addi r24, r24, 1
/* 80066D38  2C 18 00 04 */	cmpwi r24, 4
/* 80066D3C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80066D40  41 80 FF 30 */	blt lbl_80066C70
/* 80066D44  48 00 06 0C */	b lbl_80067350
lbl_80066D48:
/* 80066D48  88 1F 0E A9 */	lbz r0, 0xea9(r31)
/* 80066D4C  28 00 00 02 */	cmplwi r0, 2
/* 80066D50  40 82 04 AC */	bne lbl_800671FC
/* 80066D54  C0 62 8A 54 */	lfs f3, lit_7208(r2)
/* 80066D58  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80066D5C  C0 42 8A E4 */	lfs f2, lit_8921(r2)
/* 80066D60  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80066D64  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 80066D68  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80066D6C  D0 61 00 FC */	stfs f3, 0xfc(r1)
/* 80066D70  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 80066D74  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80066D78  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80066D7C  C0 02 8A 90 */	lfs f0, lit_7887(r2)
/* 80066D80  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80066D84  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80066D88  D0 61 01 08 */	stfs f3, 0x108(r1)
/* 80066D8C  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80066D90  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80066D94  C3 C2 88 14 */	lfs f30, lit_4354(r2)
/* 80066D98  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80066D9C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80066DA0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80066DA4  D3 C1 01 14 */	stfs f30, 0x114(r1)
/* 80066DA8  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80066DAC  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 80066DB0  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 80066DB4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80066DB8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80066DBC  D3 C1 01 20 */	stfs f30, 0x120(r1)
/* 80066DC0  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 80066DC4  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 80066DC8  3B 40 00 00 */	li r26, 0
/* 80066DCC  3B 00 00 00 */	li r24, 0
/* 80066DD0  C0 22 8A E8 */	lfs f1, lit_8922(r2)
/* 80066DD4  C8 42 87 C8 */	lfd f2, lit_3995(r2)
/* 80066DD8  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 80066DDC  90 61 02 04 */	stw r3, 0x204(r1)
/* 80066DE0  3C 00 43 30 */	lis r0, 0x4330
/* 80066DE4  90 01 02 00 */	stw r0, 0x200(r1)
/* 80066DE8  C8 01 02 00 */	lfd f0, 0x200(r1)
/* 80066DEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80066DF0  EF 61 00 32 */	fmuls f27, f1, f0
/* 80066DF4  C0 22 8A DC */	lfs f1, lit_8919(r2)
/* 80066DF8  90 61 01 FC */	stw r3, 0x1fc(r1)
/* 80066DFC  90 01 01 F8 */	stw r0, 0x1f8(r1)
/* 80066E00  C8 01 01 F8 */	lfd f0, 0x1f8(r1)
/* 80066E04  EC 00 10 28 */	fsubs f0, f0, f2
/* 80066E08  EF 81 00 32 */	fmuls f28, f1, f0
/* 80066E0C  C0 22 87 F8 */	lfs f1, lit_4111(r2)
/* 80066E10  90 61 01 F4 */	stw r3, 0x1f4(r1)
/* 80066E14  90 01 01 F0 */	stw r0, 0x1f0(r1)
/* 80066E18  C8 01 01 F0 */	lfd f0, 0x1f0(r1)
/* 80066E1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80066E20  EF A1 00 32 */	fmuls f29, f1, f0
/* 80066E24  C0 22 8A EC */	lfs f1, lit_8923(r2)
/* 80066E28  90 61 02 0C */	stw r3, 0x20c(r1)
/* 80066E2C  90 01 02 08 */	stw r0, 0x208(r1)
/* 80066E30  C8 01 02 08 */	lfd f0, 0x208(r1)
/* 80066E34  EC 00 10 28 */	fsubs f0, f0, f2
/* 80066E38  EF 41 00 32 */	fmuls f26, f1, f0
/* 80066E3C  3A DE 00 64 */	addi r22, r30, 0x64
/* 80066E40  C3 E2 88 44 */	lfs f31, lit_4366(r2)
/* 80066E44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80066E48  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80066E4C:
/* 80066E4C  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 80066E50  7C 00 07 74 */	extsb r0, r0
/* 80066E54  2C 00 00 01 */	cmpwi r0, 1
/* 80066E58  41 82 00 0C */	beq lbl_80066E64
/* 80066E5C  2C 00 00 03 */	cmpwi r0, 3
/* 80066E60  40 82 00 6C */	bne lbl_80066ECC
lbl_80066E64:
/* 80066E64  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80066E68  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 80066E6C  1C 00 01 4A */	mulli r0, r0, 0x14a
/* 80066E70  C8 22 88 70 */	lfd f1, lit_4379(r2)
/* 80066E74  90 01 02 0C */	stw r0, 0x20c(r1)
/* 80066E78  3C 00 43 30 */	lis r0, 0x4330
/* 80066E7C  90 01 02 08 */	stw r0, 0x208(r1)
/* 80066E80  C8 01 02 08 */	lfd f0, 0x208(r1)
/* 80066E84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80066E88  EC 1B 00 2A */	fadds f0, f27, f0
/* 80066E8C  FC 00 00 1E */	fctiwz f0, f0
/* 80066E90  D8 01 02 00 */	stfd f0, 0x200(r1)
/* 80066E94  80 01 02 04 */	lwz r0, 0x204(r1)
/* 80066E98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80066E9C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80066EA0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80066EA4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80066EA8  FC 00 02 10 */	fabs f0, f0
/* 80066EAC  FC 60 00 18 */	frsp f3, f0
/* 80066EB0  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 80066EB4  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80066EB8  C0 02 88 48 */	lfs f0, lit_4367(r2)
/* 80066EBC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80066EC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80066EC4  EF 02 00 2A */	fadds f24, f2, f0
/* 80066EC8  48 00 00 48 */	b lbl_80066F10
lbl_80066ECC:
/* 80066ECC  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80066ED0  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 80066ED4  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80066ED8  C8 22 88 70 */	lfd f1, lit_4379(r2)
/* 80066EDC  90 01 02 0C */	stw r0, 0x20c(r1)
/* 80066EE0  3C 00 43 30 */	lis r0, 0x4330
/* 80066EE4  90 01 02 08 */	stw r0, 0x208(r1)
/* 80066EE8  C8 01 02 08 */	lfd f0, 0x208(r1)
/* 80066EEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80066EF0  EC 1C 00 2A */	fadds f0, f28, f0
/* 80066EF4  FC 00 00 1E */	fctiwz f0, f0
/* 80066EF8  D8 01 02 00 */	stfd f0, 0x200(r1)
/* 80066EFC  80 01 02 04 */	lwz r0, 0x204(r1)
/* 80066F00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80066F04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80066F08  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80066F0C  7F 03 04 2E */	lfsx f24, r3, r0
lbl_80066F10:
/* 80066F10  88 15 12 FE */	lbz r0, 0x12fe(r21)
/* 80066F14  28 00 00 03 */	cmplwi r0, 3
/* 80066F18  40 82 00 B4 */	bne lbl_80066FCC
/* 80066F1C  C0 42 88 90 */	lfs f2, lit_5099(r2)
/* 80066F20  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 80066F24  2C 00 00 01 */	cmpwi r0, 1
/* 80066F28  40 82 00 5C */	bne lbl_80066F84
/* 80066F2C  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80066F30  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 80066F34  1C 00 00 58 */	mulli r0, r0, 0x58
/* 80066F38  C8 22 88 70 */	lfd f1, lit_4379(r2)
/* 80066F3C  90 01 02 0C */	stw r0, 0x20c(r1)
/* 80066F40  3C 00 43 30 */	lis r0, 0x4330
/* 80066F44  90 01 02 08 */	stw r0, 0x208(r1)
/* 80066F48  C8 01 02 08 */	lfd f0, 0x208(r1)
/* 80066F4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80066F50  EC 1D 00 2A */	fadds f0, f29, f0
/* 80066F54  FC 00 00 1E */	fctiwz f0, f0
/* 80066F58  D8 01 02 00 */	stfd f0, 0x200(r1)
/* 80066F5C  80 01 02 04 */	lwz r0, 0x204(r1)
/* 80066F60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80066F64  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80066F68  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80066F6C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80066F70  FC 00 02 10 */	fabs f0, f0
/* 80066F74  FC 20 00 18 */	frsp f1, f0
/* 80066F78  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80066F7C  EF 00 00 72 */	fmuls f24, f0, f1
/* 80066F80  48 00 00 50 */	b lbl_80066FD0
lbl_80066F84:
/* 80066F84  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80066F88  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 80066F8C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80066F90  C8 22 88 70 */	lfd f1, lit_4379(r2)
/* 80066F94  90 01 02 0C */	stw r0, 0x20c(r1)
/* 80066F98  3C 00 43 30 */	lis r0, 0x4330
/* 80066F9C  90 01 02 08 */	stw r0, 0x208(r1)
/* 80066FA0  C8 01 02 08 */	lfd f0, 0x208(r1)
/* 80066FA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80066FA8  EC 1A 00 2A */	fadds f0, f26, f0
/* 80066FAC  FC 00 00 1E */	fctiwz f0, f0
/* 80066FB0  D8 01 02 00 */	stfd f0, 0x200(r1)
/* 80066FB4  80 01 02 04 */	lwz r0, 0x204(r1)
/* 80066FB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80066FBC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80066FC0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80066FC4  7F 03 04 2E */	lfsx f24, r3, r0
/* 80066FC8  48 00 00 08 */	b lbl_80066FD0
lbl_80066FCC:
/* 80066FCC  C0 42 88 64 */	lfs f2, lit_4374(r2)
lbl_80066FD0:
/* 80066FD0  38 61 00 FC */	addi r3, r1, 0xfc
/* 80066FD4  7C 63 C2 14 */	add r3, r3, r24
/* 80066FD8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80066FDC  EC 1F 06 32 */	fmuls f0, f31, f24
/* 80066FE0  EC 1E 00 2A */	fadds f0, f30, f0
/* 80066FE4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80066FE8  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80066FEC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80066FF0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80066FF4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80066FF8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80066FFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80067000  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80067004  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80067008  7E E3 BB 78 */	mr r3, r23
/* 8006700C  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 80067010  C0 41 00 D4 */	lfs f2, 0xd4(r1)
/* 80067014  C0 61 00 D8 */	lfs f3, 0xd8(r1)
/* 80067018  48 2D F8 D1 */	bl PSMTXTrans
/* 8006701C  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 80067020  7C 00 07 74 */	extsb r0, r0
/* 80067024  2C 00 00 01 */	cmpwi r0, 1
/* 80067028  41 82 00 0C */	beq lbl_80067034
/* 8006702C  2C 00 00 03 */	cmpwi r0, 3
/* 80067030  40 82 00 B0 */	bne lbl_800670E0
lbl_80067034:
/* 80067034  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80067038  C0 42 8A F0 */	lfs f2, lit_8924(r2)
/* 8006703C  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 80067040  EC 01 06 32 */	fmuls f0, f1, f24
/* 80067044  EC 01 00 2A */	fadds f0, f1, f0
/* 80067048  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006704C  EC 03 00 2A */	fadds f0, f3, f0
/* 80067050  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 80067054  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80067058  FC 00 00 1E */	fctiwz f0, f0
/* 8006705C  D8 01 02 08 */	stfd f0, 0x208(r1)
/* 80067060  80 01 02 0C */	lwz r0, 0x20c(r1)
/* 80067064  7C 00 07 34 */	extsh r0, r0
/* 80067068  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006706C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80067070  90 01 02 04 */	stw r0, 0x204(r1)
/* 80067074  3C 00 43 30 */	lis r0, 0x4330
/* 80067078  90 01 02 00 */	stw r0, 0x200(r1)
/* 8006707C  C8 01 02 00 */	lfd f0, 0x200(r1)
/* 80067080  EC 00 08 28 */	fsubs f0, f0, f1
/* 80067084  D0 16 00 00 */	stfs f0, 0(r22)
/* 80067088  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8006708C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80067090  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80067094  FC 00 00 1E */	fctiwz f0, f0
/* 80067098  D8 01 01 F8 */	stfd f0, 0x1f8(r1)
/* 8006709C  80 81 01 FC */	lwz r4, 0x1fc(r1)
/* 800670A0  4B FA 53 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 800670A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800670A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800670AC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 800670B0  FC 00 00 1E */	fctiwz f0, f0
/* 800670B4  D8 01 01 F0 */	stfd f0, 0x1f0(r1)
/* 800670B8  80 81 01 F4 */	lwz r4, 0x1f4(r1)
/* 800670BC  4B FA 52 E1 */	bl mDoMtx_XrotM__FPA4_fs
/* 800670C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800670C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800670C8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 800670CC  FC 00 00 1E */	fctiwz f0, f0
/* 800670D0  D8 01 02 10 */	stfd f0, 0x210(r1)
/* 800670D4  80 81 02 14 */	lwz r4, 0x214(r1)
/* 800670D8  4B FA 53 F5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 800670DC  48 00 00 DC */	b lbl_800671B8
lbl_800670E0:
/* 800670E0  2C 00 00 02 */	cmpwi r0, 2
/* 800670E4  40 82 00 3C */	bne lbl_80067120
/* 800670E8  88 15 12 FE */	lbz r0, 0x12fe(r21)
/* 800670EC  28 00 00 03 */	cmplwi r0, 3
/* 800670F0  40 82 00 1C */	bne lbl_8006710C
/* 800670F4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 800670F8  C0 02 89 80 */	lfs f0, lit_5740(r2)
/* 800670FC  EC 00 06 32 */	fmuls f0, f0, f24
/* 80067100  EC 01 00 2A */	fadds f0, f1, f0
/* 80067104  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 80067108  48 00 00 18 */	b lbl_80067120
lbl_8006710C:
/* 8006710C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80067110  C0 02 89 A4 */	lfs f0, lit_6355(r2)
/* 80067114  EC 00 06 32 */	fmuls f0, f0, f24
/* 80067118  EC 01 00 2A */	fadds f0, f1, f0
/* 8006711C  D0 1E 00 58 */	stfs f0, 0x58(r30)
lbl_80067120:
/* 80067120  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80067124  C0 02 8A F4 */	lfs f0, lit_8925(r2)
/* 80067128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006712C  40 81 00 20 */	ble lbl_8006714C
/* 80067130  7E C3 B3 78 */	mr r3, r22
/* 80067134  C0 22 8A F8 */	lfs f1, lit_8926(r2)
/* 80067138  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8006713C  C0 62 88 E0 */	lfs f3, lit_5119(r2)
/* 80067140  C0 82 87 D0 */	lfs f4, lit_4103(r2)
/* 80067144  48 20 88 39 */	bl cLib_addCalc__FPfffff
/* 80067148  48 00 00 1C */	b lbl_80067164
lbl_8006714C:
/* 8006714C  7E C3 B3 78 */	mr r3, r22
/* 80067150  C0 22 8A FC */	lfs f1, lit_8927(r2)
/* 80067154  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 80067158  C0 62 88 E0 */	lfs f3, lit_5119(r2)
/* 8006715C  C0 82 87 D0 */	lfs f4, lit_4103(r2)
/* 80067160  48 20 88 1D */	bl cLib_addCalc__FPfffff
lbl_80067164:
/* 80067164  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80067168  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8006716C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80067170  FC 00 00 1E */	fctiwz f0, f0
/* 80067174  D8 01 02 10 */	stfd f0, 0x210(r1)
/* 80067178  80 81 02 14 */	lwz r4, 0x214(r1)
/* 8006717C  4B FA 52 B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80067180  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80067184  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80067188  C0 16 00 00 */	lfs f0, 0(r22)
/* 8006718C  FC 00 00 1E */	fctiwz f0, f0
/* 80067190  D8 01 02 08 */	stfd f0, 0x208(r1)
/* 80067194  80 81 02 0C */	lwz r4, 0x20c(r1)
/* 80067198  4B FA 52 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 8006719C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800671A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800671A4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 800671A8  FC 00 00 1E */	fctiwz f0, f0
/* 800671AC  D8 01 02 00 */	stfd f0, 0x200(r1)
/* 800671B0  80 81 02 04 */	lwz r4, 0x204(r1)
/* 800671B4  4B FA 53 19 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_800671B8:
/* 800671B8  7E E3 BB 78 */	mr r3, r23
/* 800671BC  38 81 00 94 */	addi r4, r1, 0x94
/* 800671C0  38 A1 00 88 */	addi r5, r1, 0x88
/* 800671C4  48 2D FB A9 */	bl PSMTXMultVec
/* 800671C8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 800671CC  38 61 01 5C */	addi r3, r1, 0x15c
/* 800671D0  7C 63 C2 14 */	add r3, r3, r24
/* 800671D4  D0 03 00 00 */	stfs f0, 0(r3)
/* 800671D8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800671DC  D0 03 00 04 */	stfs f0, 4(r3)
/* 800671E0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 800671E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 800671E8  3B 5A 00 01 */	addi r26, r26, 1
/* 800671EC  2C 1A 00 04 */	cmpwi r26, 4
/* 800671F0  3B 18 00 0C */	addi r24, r24, 0xc
/* 800671F4  41 80 FC 58 */	blt lbl_80066E4C
/* 800671F8  48 00 01 58 */	b lbl_80067350
lbl_800671FC:
/* 800671FC  EF 5B F0 28 */	fsubs f26, f27, f30
/* 80067200  D3 41 00 C4 */	stfs f26, 0xc4(r1)
/* 80067204  EF 1B E0 28 */	fsubs f24, f27, f28
/* 80067208  D3 01 00 C8 */	stfs f24, 0xc8(r1)
/* 8006720C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80067210  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80067214  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80067218  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8006721C  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80067220  48 2D FB 4D */	bl PSMTXMultVec
/* 80067224  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 80067228  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8006722C  EC 01 00 2A */	fadds f0, f1, f0
/* 80067230  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80067234  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80067238  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8006723C  EC 01 00 2A */	fadds f0, f1, f0
/* 80067240  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 80067244  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 80067248  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8006724C  EC 01 00 2A */	fadds f0, f1, f0
/* 80067250  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 80067254  FF A0 D8 50 */	fneg f29, f27
/* 80067258  EF 7D F0 2A */	fadds f27, f29, f30
/* 8006725C  D3 61 00 C4 */	stfs f27, 0xc4(r1)
/* 80067260  D3 01 00 C8 */	stfs f24, 0xc8(r1)
/* 80067264  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80067268  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8006726C  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80067270  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80067274  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80067278  48 2D FA F5 */	bl PSMTXMultVec
/* 8006727C  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 80067280  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80067284  EC 01 00 2A */	fadds f0, f1, f0
/* 80067288  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 8006728C  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80067290  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80067294  EC 01 00 2A */	fadds f0, f1, f0
/* 80067298  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 8006729C  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 800672A0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 800672A4  EC 01 00 2A */	fadds f0, f1, f0
/* 800672A8  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 800672AC  D3 61 00 C4 */	stfs f27, 0xc4(r1)
/* 800672B0  EF 1D E0 2A */	fadds f24, f29, f28
/* 800672B4  D3 01 00 C8 */	stfs f24, 0xc8(r1)
/* 800672B8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 800672BC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 800672C0  38 61 01 BC */	addi r3, r1, 0x1bc
/* 800672C4  38 81 00 C4 */	addi r4, r1, 0xc4
/* 800672C8  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 800672CC  48 2D FA A1 */	bl PSMTXMultVec
/* 800672D0  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 800672D4  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 800672D8  EC 01 00 2A */	fadds f0, f1, f0
/* 800672DC  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 800672E0  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 800672E4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 800672E8  EC 01 00 2A */	fadds f0, f1, f0
/* 800672EC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 800672F0  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 800672F4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 800672F8  EC 01 00 2A */	fadds f0, f1, f0
/* 800672FC  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80067300  D3 41 00 C4 */	stfs f26, 0xc4(r1)
/* 80067304  D3 01 00 C8 */	stfs f24, 0xc8(r1)
/* 80067308  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006730C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80067310  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80067314  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80067318  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8006731C  48 2D FA 51 */	bl PSMTXMultVec
/* 80067320  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 80067324  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80067328  EC 01 00 2A */	fadds f0, f1, f0
/* 8006732C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80067330  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80067334  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80067338  EC 01 00 2A */	fadds f0, f1, f0
/* 8006733C  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 80067340  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 80067344  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80067348  EC 01 00 2A */	fadds f0, f1, f0
/* 8006734C  D0 01 01 88 */	stfs f0, 0x188(r1)
lbl_80067350:
/* 80067350  38 60 00 80 */	li r3, 0x80
/* 80067354  38 80 00 00 */	li r4, 0
/* 80067358  38 A0 00 04 */	li r5, 4
/* 8006735C  48 2F 54 09 */	bl GXBegin
/* 80067360  3A 20 01 FF */	li r17, 0x1ff
/* 80067364  48 14 52 19 */	bl dKy_darkworld_check__Fv
/* 80067368  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8006736C  28 00 00 01 */	cmplwi r0, 1
/* 80067370  41 82 00 10 */	beq lbl_80067380
/* 80067374  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80067378  28 00 00 01 */	cmplwi r0, 1
/* 8006737C  40 82 00 08 */	bne lbl_80067384
lbl_80067380:
/* 80067380  3A 20 00 FA */	li r17, 0xfa
lbl_80067384:
/* 80067384  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80067388  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8006738C  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 80067390  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 80067394  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80067398  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 8006739C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673A0  38 00 00 00 */	li r0, 0
/* 800673A4  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800673A8  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800673AC  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 800673B0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673B4  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 800673B8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673BC  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 800673C0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673C4  B2 23 80 00 */	sth r17, -0x8000(r3)
/* 800673C8  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800673CC  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 800673D0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673D4  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 800673D8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673DC  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 800673E0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673E4  B2 23 80 00 */	sth r17, -0x8000(r3)
/* 800673E8  B2 23 80 00 */	sth r17, -0x8000(r3)
/* 800673EC  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 800673F0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673F4  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 800673F8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800673FC  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 80067400  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80067404  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 80067408  B2 23 80 00 */	sth r17, -0x8000(r3)
lbl_8006740C:
/* 8006740C  3B 7B 00 01 */	addi r27, r27, 1
/* 80067410  3B 39 00 50 */	addi r25, r25, 0x50
lbl_80067414:
/* 80067414  A8 1D 5D EC */	lha r0, 0x5dec(r29)
/* 80067418  7C 1B 00 00 */	cmpw r27, r0
/* 8006741C  41 80 F5 D0 */	blt lbl_800669EC
/* 80067420  38 60 00 00 */	li r3, 0
/* 80067424  48 2F 91 AD */	bl GXSetClipMode
/* 80067428  38 00 00 00 */	li r0, 0
/* 8006742C  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_80067430:
/* 80067430  E3 E1 02 D8 */	psq_l f31, 728(r1), 0, 0 /* qr0 */
/* 80067434  CB E1 02 D0 */	lfd f31, 0x2d0(r1)
/* 80067438  E3 C1 02 C8 */	psq_l f30, 712(r1), 0, 0 /* qr0 */
/* 8006743C  CB C1 02 C0 */	lfd f30, 0x2c0(r1)
/* 80067440  E3 A1 02 B8 */	psq_l f29, 696(r1), 0, 0 /* qr0 */
/* 80067444  CB A1 02 B0 */	lfd f29, 0x2b0(r1)
/* 80067448  E3 81 02 A8 */	psq_l f28, 680(r1), 0, 0 /* qr0 */
/* 8006744C  CB 81 02 A0 */	lfd f28, 0x2a0(r1)
/* 80067450  E3 61 02 98 */	psq_l f27, 664(r1), 0, 0 /* qr0 */
/* 80067454  CB 61 02 90 */	lfd f27, 0x290(r1)
/* 80067458  E3 41 02 88 */	psq_l f26, 648(r1), 0, 0 /* qr0 */
/* 8006745C  CB 41 02 80 */	lfd f26, 0x280(r1)
/* 80067460  E3 21 02 78 */	psq_l f25, 632(r1), 0, 0 /* qr0 */
/* 80067464  CB 21 02 70 */	lfd f25, 0x270(r1)
/* 80067468  E3 01 02 68 */	psq_l f24, 616(r1), 0, 0 /* qr0 */
/* 8006746C  CB 01 02 60 */	lfd f24, 0x260(r1)
/* 80067470  39 61 02 60 */	addi r11, r1, 0x260
/* 80067474  48 2F AD 85 */	bl _restgpr_17
/* 80067478  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8006747C  7C 08 03 A6 */	mtlr r0
/* 80067480  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80067484  4E 80 00 20 */	blr 
