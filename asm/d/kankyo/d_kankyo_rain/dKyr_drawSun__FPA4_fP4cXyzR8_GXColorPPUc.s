lbl_80063670:
/* 80063670  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 80063674  7C 08 02 A6 */	mflr r0
/* 80063678  90 01 02 24 */	stw r0, 0x224(r1)
/* 8006367C  DB E1 02 10 */	stfd f31, 0x210(r1)
/* 80063680  F3 E1 02 18 */	psq_st f31, 536(r1), 0, 0 /* qr0 */
/* 80063684  DB C1 02 00 */	stfd f30, 0x200(r1)
/* 80063688  F3 C1 02 08 */	psq_st f30, 520(r1), 0, 0 /* qr0 */
/* 8006368C  DB A1 01 F0 */	stfd f29, 0x1f0(r1)
/* 80063690  F3 A1 01 F8 */	psq_st f29, 504(r1), 0, 0 /* qr0 */
/* 80063694  DB 81 01 E0 */	stfd f28, 0x1e0(r1)
/* 80063698  F3 81 01 E8 */	psq_st f28, 488(r1), 0, 0 /* qr0 */
/* 8006369C  DB 61 01 D0 */	stfd f27, 0x1d0(r1)
/* 800636A0  F3 61 01 D8 */	psq_st f27, 472(r1), 0, 0 /* qr0 */
/* 800636A4  DB 41 01 C0 */	stfd f26, 0x1c0(r1)
/* 800636A8  F3 41 01 C8 */	psq_st f26, 456(r1), 0, 0 /* qr0 */
/* 800636AC  DB 21 01 B0 */	stfd f25, 0x1b0(r1)
/* 800636B0  F3 21 01 B8 */	psq_st f25, 440(r1), 0, 0 /* qr0 */
/* 800636B4  DB 01 01 A0 */	stfd f24, 0x1a0(r1)
/* 800636B8  F3 01 01 A8 */	psq_st f24, 424(r1), 0, 0 /* qr0 */
/* 800636BC  DA E1 01 90 */	stfd f23, 0x190(r1)
/* 800636C0  F2 E1 01 98 */	psq_st f23, 408(r1), 0, 0 /* qr0 */
/* 800636C4  DA C1 01 80 */	stfd f22, 0x180(r1)
/* 800636C8  F2 C1 01 88 */	psq_st f22, 392(r1), 0, 0 /* qr0 */
/* 800636CC  39 61 01 80 */	addi r11, r1, 0x180
/* 800636D0  48 2F EA E9 */	bl _savegpr_20
/* 800636D4  7C 7B 1B 78 */	mr r27, r3
/* 800636D8  7C 95 23 78 */	mr r21, r4
/* 800636DC  7C DC 33 78 */	mr r28, r6
/* 800636E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800636E4  3B 43 CA 54 */	addi r26, r3, g_env_light@l /* 0x8042CA54@l */
/* 800636E8  83 DA 0E 74 */	lwz r30, 0xe74(r26)
/* 800636EC  83 BA 0E 78 */	lwz r29, 0xe78(r26)
/* 800636F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800636F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800636F8  82 E3 5D 74 */	lwz r23, 0x5d74(r3)
/* 800636FC  C3 22 87 B8 */	lfs f25, lit_3954(r2)
/* 80063700  3A C0 00 00 */	li r22, 0
/* 80063704  3A 80 00 00 */	li r20, 0
/* 80063708  A3 23 00 38 */	lhz r25, 0x38(r3)
/* 8006370C  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 80063710  3B F8 3E C8 */	addi r31, r24, 0x3ec8
/* 80063714  7F E3 FB 78 */	mr r3, r31
/* 80063718  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006371C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80063720  48 30 52 75 */	bl strcmp
/* 80063724  2C 03 00 00 */	cmpwi r3, 0
/* 80063728  40 82 00 14 */	bne lbl_8006373C
/* 8006372C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80063730  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80063734  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80063738  D0 1E 00 60 */	stfs f0, 0x60(r30)
lbl_8006373C:
/* 8006373C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80063740  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80063744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80063748  40 81 00 08 */	ble lbl_80063750
/* 8006374C  3A 80 00 01 */	li r20, 1
lbl_80063750:
/* 80063750  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80063754  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80063758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006375C  40 81 00 08 */	ble lbl_80063764
/* 80063760  3A C0 00 01 */	li r22, 1
lbl_80063764:
/* 80063764  56 83 06 3E */	clrlwi r3, r20, 0x18
/* 80063768  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 8006376C  7C 60 03 79 */	or. r0, r3, r0
/* 80063770  41 82 0C 74 */	beq lbl_800643E4
/* 80063774  C0 15 00 00 */	lfs f0, 0(r21)
/* 80063778  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8006377C  C0 15 00 04 */	lfs f0, 4(r21)
/* 80063780  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80063784  C0 15 00 08 */	lfs f0, 8(r21)
/* 80063788  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8006378C  38 78 3E E8 */	addi r3, r24, 0x3ee8
/* 80063790  81 98 3E E8 */	lwz r12, 0x3ee8(r24)
/* 80063794  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80063798  7D 89 03 A6 */	mtctr r12
/* 8006379C  4E 80 04 21 */	bctrl 
/* 800637A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800637A4  54 04 87 7E */	rlwinm r4, r0, 0x10, 0x1d, 0x1f
/* 800637A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800637AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 800637B0  A8 03 00 24 */	lha r0, 0x24(r3)
/* 800637B4  2C 00 00 00 */	cmpwi r0, 0
/* 800637B8  40 82 00 48 */	bne lbl_80063800
/* 800637BC  28 04 00 02 */	cmplwi r4, 2
/* 800637C0  41 82 00 40 */	beq lbl_80063800
/* 800637C4  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 800637C8  C0 02 88 08 */	lfs f0, lit_4126(r2)
/* 800637CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800637D0  41 81 00 10 */	bgt lbl_800637E0
/* 800637D4  C0 02 88 54 */	lfs f0, lit_4370(r2)
/* 800637D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800637DC  40 80 00 08 */	bge lbl_800637E4
lbl_800637E0:
/* 800637E0  3A C0 00 00 */	li r22, 0
lbl_800637E4:
/* 800637E4  C0 15 00 00 */	lfs f0, 0(r21)
/* 800637E8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800637EC  C0 15 00 04 */	lfs f0, 4(r21)
/* 800637F0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800637F4  C0 15 00 08 */	lfs f0, 8(r21)
/* 800637F8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800637FC  48 00 00 A0 */	b lbl_8006389C
lbl_80063800:
/* 80063800  7F E3 FB 78 */	mr r3, r31
/* 80063804  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063808  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006380C  48 30 51 89 */	bl strcmp
/* 80063810  2C 03 00 00 */	cmpwi r3, 0
/* 80063814  40 82 00 3C */	bne lbl_80063850
/* 80063818  38 60 00 00 */	li r3, 0
/* 8006381C  4B FC 91 61 */	bl getLayerNo__14dComIfG_play_cFi
/* 80063820  2C 03 00 00 */	cmpwi r3, 0
/* 80063824  40 82 00 2C */	bne lbl_80063850
/* 80063828  C0 5A 10 94 */	lfs f2, 0x1094(r26)
/* 8006382C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80063830  C0 3A 10 98 */	lfs f1, 0x1098(r26)
/* 80063834  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80063838  C0 1A 10 9C */	lfs f0, 0x109c(r26)
/* 8006383C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80063840  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80063844  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80063848  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8006384C  48 00 00 50 */	b lbl_8006389C
lbl_80063850:
/* 80063850  38 61 00 24 */	addi r3, r1, 0x24
/* 80063854  38 97 00 D8 */	addi r4, r23, 0xd8
/* 80063858  38 BA 10 94 */	addi r5, r26, 0x1094
/* 8006385C  48 20 32 89 */	bl __pl__4cXyzCFRC3Vec
/* 80063860  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80063864  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 80063868  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8006386C  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80063870  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80063874  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80063878  C0 17 00 D8 */	lfs f0, 0xd8(r23)
/* 8006387C  EC 03 00 28 */	fsubs f0, f3, f0
/* 80063880  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80063884  C0 17 00 DC */	lfs f0, 0xdc(r23)
/* 80063888  EC 02 00 28 */	fsubs f0, f2, f0
/* 8006388C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80063890  C0 17 00 E0 */	lfs f0, 0xe0(r23)
/* 80063894  EC 01 00 28 */	fsubs f0, f1, f0
/* 80063898  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_8006389C:
/* 8006389C  7F E3 FB 78 */	mr r3, r31
/* 800638A0  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 800638A4  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 800638A8  38 84 00 64 */	addi r4, r4, 0x64
/* 800638AC  48 30 50 E9 */	bl strcmp
/* 800638B0  2C 03 00 00 */	cmpwi r3, 0
/* 800638B4  40 82 00 58 */	bne lbl_8006390C
/* 800638B8  48 13 C2 01 */	bl dKy_daynight_check__Fv
/* 800638BC  2C 03 00 00 */	cmpwi r3, 0
/* 800638C0  41 82 00 4C */	beq lbl_8006390C
/* 800638C4  C0 02 8A 6C */	lfs f0, lit_7545(r2)
/* 800638C8  C0 D7 00 D8 */	lfs f6, 0xd8(r23)
/* 800638CC  EC A0 30 2A */	fadds f5, f0, f6
/* 800638D0  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 800638D4  C0 02 8A 70 */	lfs f0, lit_7546(r2)
/* 800638D8  C0 97 00 DC */	lfs f4, 0xdc(r23)
/* 800638DC  EC 60 20 2A */	fadds f3, f0, f4
/* 800638E0  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 800638E4  C0 02 8A 74 */	lfs f0, lit_7547(r2)
/* 800638E8  C0 57 00 E0 */	lfs f2, 0xe0(r23)
/* 800638EC  EC 20 10 2A */	fadds f1, f0, f2
/* 800638F0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 800638F4  EC 05 30 28 */	fsubs f0, f5, f6
/* 800638F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800638FC  EC 03 20 28 */	fsubs f0, f3, f4
/* 80063900  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80063904  EC 01 10 28 */	fsubs f0, f1, f2
/* 80063908  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_8006390C:
/* 8006390C  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 80063910  57 20 E8 04 */	slwi r0, r25, 0x1d
/* 80063914  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80063918  7C 03 00 50 */	subf r0, r3, r0
/* 8006391C  54 00 18 3E */	rotlwi r0, r0, 3
/* 80063920  7F 20 1A 14 */	add r25, r0, r3
/* 80063924  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80063928  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006392C  48 13 C0 DD */	bl getDaytime__18dScnKy_env_light_cFv
/* 80063930  C0 02 87 E4 */	lfs f0, lit_4108(r2)
/* 80063934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80063938  40 80 00 18 */	bge lbl_80063950
/* 8006393C  2C 19 00 00 */	cmpwi r25, 0
/* 80063940  41 82 00 0C */	beq lbl_8006394C
/* 80063944  3B 39 FF FF */	addi r25, r25, -1
/* 80063948  48 00 00 08 */	b lbl_80063950
lbl_8006394C:
/* 8006394C  3B 20 00 07 */	li r25, 7
lbl_80063950:
/* 80063950  7F E3 FB 78 */	mr r3, r31
/* 80063954  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063958  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006395C  48 30 50 39 */	bl strcmp
/* 80063960  2C 03 00 00 */	cmpwi r3, 0
/* 80063964  40 82 00 38 */	bne lbl_8006399C
/* 80063968  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006396C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80063970  48 13 C0 99 */	bl getDaytime__18dScnKy_env_light_cFv
/* 80063974  C0 02 87 E4 */	lfs f0, lit_4108(r2)
/* 80063978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006397C  40 80 00 14 */	bge lbl_80063990
/* 80063980  3B 39 00 01 */	addi r25, r25, 1
/* 80063984  2C 19 00 08 */	cmpwi r25, 8
/* 80063988  41 80 00 08 */	blt lbl_80063990
/* 8006398C  3B 20 00 00 */	li r25, 0
lbl_80063990:
/* 80063990  2C 19 00 04 */	cmpwi r25, 4
/* 80063994  40 82 00 08 */	bne lbl_8006399C
/* 80063998  3B 20 00 03 */	li r25, 3
lbl_8006399C:
/* 8006399C  2C 19 00 04 */	cmpwi r25, 4
/* 800639A0  41 82 0A 44 */	beq lbl_800643E4
/* 800639A4  28 19 00 07 */	cmplwi r25, 7
/* 800639A8  41 81 00 70 */	bgt lbl_80063A18
/* 800639AC  3C 60 80 3B */	lis r3, lit_7549@ha /* 0x803A9BD8@ha */
/* 800639B0  38 63 9B D8 */	addi r3, r3, lit_7549@l /* 0x803A9BD8@l */
/* 800639B4  57 20 10 3A */	slwi r0, r25, 2
/* 800639B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 800639BC  7C 09 03 A6 */	mtctr r0
/* 800639C0  4E 80 04 20 */	bctr 
/* 800639C4  3B 40 00 00 */	li r26, 0
/* 800639C8  C3 02 88 14 */	lfs f24, lit_4354(r2)
/* 800639CC  48 00 00 54 */	b lbl_80063A20
/* 800639D0  3B 40 00 01 */	li r26, 1
/* 800639D4  C3 02 88 14 */	lfs f24, lit_4354(r2)
/* 800639D8  48 00 00 48 */	b lbl_80063A20
/* 800639DC  3B 40 00 02 */	li r26, 2
/* 800639E0  C3 02 88 14 */	lfs f24, lit_4354(r2)
/* 800639E4  48 00 00 3C */	b lbl_80063A20
/* 800639E8  3B 40 00 03 */	li r26, 3
/* 800639EC  C3 02 88 14 */	lfs f24, lit_4354(r2)
/* 800639F0  48 00 00 30 */	b lbl_80063A20
/* 800639F4  3B 40 00 00 */	li r26, 0
/* 800639F8  C3 02 88 14 */	lfs f24, lit_4354(r2)
/* 800639FC  48 00 00 24 */	b lbl_80063A20
/* 80063A00  3B 40 00 03 */	li r26, 3
/* 80063A04  C3 02 8A 54 */	lfs f24, lit_7208(r2)
/* 80063A08  48 00 00 18 */	b lbl_80063A20
/* 80063A0C  3B 40 00 02 */	li r26, 2
/* 80063A10  C3 02 8A 54 */	lfs f24, lit_7208(r2)
/* 80063A14  48 00 00 0C */	b lbl_80063A20
lbl_80063A18:
/* 80063A18  3B 40 00 01 */	li r26, 1
/* 80063A1C  C3 02 8A 54 */	lfs f24, lit_7208(r2)
lbl_80063A20:
/* 80063A20  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80063A24  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80063A28  A8 03 11 58 */	lha r0, 0x1158(r3)
/* 80063A2C  98 01 00 20 */	stb r0, 0x20(r1)
/* 80063A30  A8 03 11 5A */	lha r0, 0x115a(r3)
/* 80063A34  98 01 00 21 */	stb r0, 0x21(r1)
/* 80063A38  A8 03 11 5C */	lha r0, 0x115c(r3)
/* 80063A3C  98 01 00 22 */	stb r0, 0x22(r1)
/* 80063A40  38 60 00 FF */	li r3, 0xff
/* 80063A44  98 61 00 23 */	stb r3, 0x23(r1)
/* 80063A48  38 00 00 00 */	li r0, 0
/* 80063A4C  98 01 00 1C */	stb r0, 0x1c(r1)
/* 80063A50  98 01 00 1D */	stb r0, 0x1d(r1)
/* 80063A54  98 01 00 1E */	stb r0, 0x1e(r1)
/* 80063A58  98 61 00 1F */	stb r3, 0x1f(r1)
/* 80063A5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80063A60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80063A64  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80063A68  28 03 00 00 */	cmplwi r3, 0
/* 80063A6C  41 82 00 14 */	beq lbl_80063A80
/* 80063A70  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80063A74  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80063A78  48 2E 2B 39 */	bl PSMTXInverse
/* 80063A7C  48 00 00 24 */	b lbl_80063AA0
lbl_80063A80:
/* 80063A80  88 7E 00 28 */	lbz r3, 0x28(r30)
/* 80063A84  28 03 00 05 */	cmplwi r3, 5
/* 80063A88  40 80 00 0C */	bge lbl_80063A94
/* 80063A8C  38 03 00 02 */	addi r0, r3, 2
/* 80063A90  98 1E 00 28 */	stb r0, 0x28(r30)
lbl_80063A94:
/* 80063A94  38 00 00 01 */	li r0, 1
/* 80063A98  98 1E 00 29 */	stb r0, 0x29(r30)
/* 80063A9C  48 00 09 48 */	b lbl_800643E4
lbl_80063AA0:
/* 80063AA0  38 61 00 98 */	addi r3, r1, 0x98
/* 80063AA4  80 9C 00 00 */	lwz r4, 0(r28)
/* 80063AA8  38 A0 00 00 */	li r5, 0
/* 80063AAC  4B FF 7E 81 */	bl dKyr_set_btitex_common__FP9_GXTexObjP7ResTIMG11_GXTexMapID
/* 80063AB0  38 61 00 98 */	addi r3, r1, 0x98
/* 80063AB4  80 9C 00 04 */	lwz r4, 4(r28)
/* 80063AB8  38 A0 00 01 */	li r5, 1
/* 80063ABC  4B FF 7E 71 */	bl dKyr_set_btitex_common__FP9_GXTexObjP7ResTIMG11_GXTexMapID
/* 80063AC0  38 61 00 98 */	addi r3, r1, 0x98
/* 80063AC4  57 40 10 3A */	slwi r0, r26, 2
/* 80063AC8  7C 9C 02 14 */	add r4, r28, r0
/* 80063ACC  80 84 00 08 */	lwz r4, 8(r4)
/* 80063AD0  38 A0 00 02 */	li r5, 2
/* 80063AD4  4B FF 7E 59 */	bl dKyr_set_btitex_common__FP9_GXTexObjP7ResTIMG11_GXTexMapID
/* 80063AD8  38 60 00 00 */	li r3, 0
/* 80063ADC  48 2F A0 55 */	bl GXSetNumChans
/* 80063AE0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80063AE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80063AE8  38 60 00 01 */	li r3, 1
/* 80063AEC  38 81 00 18 */	addi r4, r1, 0x18
/* 80063AF0  48 2F B8 8D */	bl GXSetTevColor
/* 80063AF4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80063AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80063AFC  38 60 00 02 */	li r3, 2
/* 80063B00  38 81 00 14 */	addi r4, r1, 0x14
/* 80063B04  48 2F B8 79 */	bl GXSetTevColor
/* 80063B08  38 60 00 03 */	li r3, 3
/* 80063B0C  48 2F 82 F1 */	bl GXSetNumTexGens
/* 80063B10  38 60 00 00 */	li r3, 0
/* 80063B14  38 80 00 01 */	li r4, 1
/* 80063B18  38 A0 00 04 */	li r5, 4
/* 80063B1C  38 C0 00 3C */	li r6, 0x3c
/* 80063B20  38 E0 00 00 */	li r7, 0
/* 80063B24  39 00 00 7D */	li r8, 0x7d
/* 80063B28  48 2F 80 55 */	bl GXSetTexCoordGen2
/* 80063B2C  38 60 00 01 */	li r3, 1
/* 80063B30  38 80 00 01 */	li r4, 1
/* 80063B34  38 A0 00 04 */	li r5, 4
/* 80063B38  38 C0 00 3C */	li r6, 0x3c
/* 80063B3C  38 E0 00 00 */	li r7, 0
/* 80063B40  39 00 00 7D */	li r8, 0x7d
/* 80063B44  48 2F 80 39 */	bl GXSetTexCoordGen2
/* 80063B48  38 60 00 02 */	li r3, 2
/* 80063B4C  38 80 00 01 */	li r4, 1
/* 80063B50  38 A0 00 04 */	li r5, 4
/* 80063B54  38 C0 00 3C */	li r6, 0x3c
/* 80063B58  38 E0 00 00 */	li r7, 0
/* 80063B5C  39 00 00 7D */	li r8, 0x7d
/* 80063B60  48 2F 80 1D */	bl GXSetTexCoordGen2
/* 80063B64  38 60 00 03 */	li r3, 3
/* 80063B68  48 2F BD 29 */	bl GXSetNumTevStages
/* 80063B6C  38 60 00 00 */	li r3, 0
/* 80063B70  38 80 00 00 */	li r4, 0
/* 80063B74  38 A0 00 00 */	li r5, 0
/* 80063B78  38 C0 00 FF */	li r6, 0xff
/* 80063B7C  48 2F BB 79 */	bl GXSetTevOrder
/* 80063B80  38 60 00 00 */	li r3, 0
/* 80063B84  38 80 00 08 */	li r4, 8
/* 80063B88  38 A0 00 0F */	li r5, 0xf
/* 80063B8C  38 C0 00 0F */	li r6, 0xf
/* 80063B90  38 E0 00 02 */	li r7, 2
/* 80063B94  48 2F B6 91 */	bl GXSetTevColorIn
/* 80063B98  38 60 00 00 */	li r3, 0
/* 80063B9C  38 80 00 00 */	li r4, 0
/* 80063BA0  38 A0 00 00 */	li r5, 0
/* 80063BA4  38 C0 00 00 */	li r6, 0
/* 80063BA8  38 E0 00 01 */	li r7, 1
/* 80063BAC  39 00 00 00 */	li r8, 0
/* 80063BB0  48 2F B6 FD */	bl GXSetTevColorOp
/* 80063BB4  38 60 00 00 */	li r3, 0
/* 80063BB8  38 80 00 07 */	li r4, 7
/* 80063BBC  38 A0 00 07 */	li r5, 7
/* 80063BC0  38 C0 00 07 */	li r6, 7
/* 80063BC4  38 E0 00 07 */	li r7, 7
/* 80063BC8  48 2F B6 A1 */	bl GXSetTevAlphaIn
/* 80063BCC  38 60 00 00 */	li r3, 0
/* 80063BD0  38 80 00 00 */	li r4, 0
/* 80063BD4  38 A0 00 00 */	li r5, 0
/* 80063BD8  38 C0 00 00 */	li r6, 0
/* 80063BDC  38 E0 00 01 */	li r7, 1
/* 80063BE0  39 00 00 00 */	li r8, 0
/* 80063BE4  48 2F B7 31 */	bl GXSetTevAlphaOp
/* 80063BE8  38 60 00 01 */	li r3, 1
/* 80063BEC  38 80 00 01 */	li r4, 1
/* 80063BF0  38 A0 00 01 */	li r5, 1
/* 80063BF4  38 C0 00 FF */	li r6, 0xff
/* 80063BF8  48 2F BA FD */	bl GXSetTevOrder
/* 80063BFC  38 60 00 01 */	li r3, 1
/* 80063C00  38 80 00 00 */	li r4, 0
/* 80063C04  38 A0 00 0F */	li r5, 0xf
/* 80063C08  38 C0 00 0F */	li r6, 0xf
/* 80063C0C  38 E0 00 0F */	li r7, 0xf
/* 80063C10  48 2F B6 15 */	bl GXSetTevColorIn
/* 80063C14  38 60 00 01 */	li r3, 1
/* 80063C18  38 80 00 00 */	li r4, 0
/* 80063C1C  38 A0 00 00 */	li r5, 0
/* 80063C20  38 C0 00 00 */	li r6, 0
/* 80063C24  38 E0 00 00 */	li r7, 0
/* 80063C28  39 00 00 00 */	li r8, 0
/* 80063C2C  48 2F B6 81 */	bl GXSetTevColorOp
/* 80063C30  38 60 00 01 */	li r3, 1
/* 80063C34  38 80 00 07 */	li r4, 7
/* 80063C38  38 A0 00 01 */	li r5, 1
/* 80063C3C  38 C0 00 04 */	li r6, 4
/* 80063C40  38 E0 00 07 */	li r7, 7
/* 80063C44  48 2F B6 25 */	bl GXSetTevAlphaIn
/* 80063C48  38 60 00 01 */	li r3, 1
/* 80063C4C  38 80 00 00 */	li r4, 0
/* 80063C50  38 A0 00 00 */	li r5, 0
/* 80063C54  38 C0 00 00 */	li r6, 0
/* 80063C58  38 E0 00 00 */	li r7, 0
/* 80063C5C  39 00 00 00 */	li r8, 0
/* 80063C60  48 2F B6 B5 */	bl GXSetTevAlphaOp
/* 80063C64  38 60 00 02 */	li r3, 2
/* 80063C68  38 80 00 02 */	li r4, 2
/* 80063C6C  38 A0 00 02 */	li r5, 2
/* 80063C70  38 C0 00 FF */	li r6, 0xff
/* 80063C74  48 2F BA 81 */	bl GXSetTevOrder
/* 80063C78  38 60 00 02 */	li r3, 2
/* 80063C7C  38 80 00 00 */	li r4, 0
/* 80063C80  38 A0 00 0F */	li r5, 0xf
/* 80063C84  38 C0 00 0F */	li r6, 0xf
/* 80063C88  38 E0 00 0F */	li r7, 0xf
/* 80063C8C  48 2F B5 99 */	bl GXSetTevColorIn
/* 80063C90  38 60 00 02 */	li r3, 2
/* 80063C94  38 80 00 00 */	li r4, 0
/* 80063C98  38 A0 00 00 */	li r5, 0
/* 80063C9C  38 C0 00 00 */	li r6, 0
/* 80063CA0  38 E0 00 00 */	li r7, 0
/* 80063CA4  39 00 00 00 */	li r8, 0
/* 80063CA8  48 2F B6 05 */	bl GXSetTevColorOp
/* 80063CAC  38 60 00 02 */	li r3, 2
/* 80063CB0  38 80 00 07 */	li r4, 7
/* 80063CB4  38 A0 00 04 */	li r5, 4
/* 80063CB8  38 C0 00 00 */	li r6, 0
/* 80063CBC  38 E0 00 07 */	li r7, 7
/* 80063CC0  48 2F B5 A9 */	bl GXSetTevAlphaIn
/* 80063CC4  38 60 00 02 */	li r3, 2
/* 80063CC8  38 80 00 00 */	li r4, 0
/* 80063CCC  38 A0 00 00 */	li r5, 0
/* 80063CD0  38 C0 00 00 */	li r6, 0
/* 80063CD4  38 E0 00 00 */	li r7, 0
/* 80063CD8  39 00 00 00 */	li r8, 0
/* 80063CDC  48 2F B6 39 */	bl GXSetTevAlphaOp
/* 80063CE0  38 60 00 01 */	li r3, 1
/* 80063CE4  38 80 00 04 */	li r4, 4
/* 80063CE8  38 A0 00 05 */	li r5, 5
/* 80063CEC  38 C0 00 03 */	li r6, 3
/* 80063CF0  48 2F BF 01 */	bl GXSetBlendMode
/* 80063CF4  38 60 00 04 */	li r3, 4
/* 80063CF8  38 80 00 00 */	li r4, 0
/* 80063CFC  38 A0 00 01 */	li r5, 1
/* 80063D00  38 C0 00 04 */	li r6, 4
/* 80063D04  38 E0 00 00 */	li r7, 0
/* 80063D08  48 2F B9 1D */	bl GXSetAlphaCompare
/* 80063D0C  38 60 00 01 */	li r3, 1
/* 80063D10  38 80 00 03 */	li r4, 3
/* 80063D14  38 A0 00 00 */	li r5, 0
/* 80063D18  48 2F BF 85 */	bl GXSetZMode
/* 80063D1C  38 60 00 00 */	li r3, 0
/* 80063D20  48 2F B3 B5 */	bl GXSetNumIndStages
/* 80063D24  38 60 00 00 */	li r3, 0
/* 80063D28  48 2F 8C 5D */	bl GXSetCullMode
/* 80063D2C  38 60 00 00 */	li r3, 0
/* 80063D30  38 80 00 09 */	li r4, 9
/* 80063D34  38 A0 00 01 */	li r5, 1
/* 80063D38  38 C0 00 04 */	li r6, 4
/* 80063D3C  38 E0 00 00 */	li r7, 0
/* 80063D40  48 2F 78 85 */	bl GXSetVtxAttrFmt
/* 80063D44  38 60 00 00 */	li r3, 0
/* 80063D48  38 80 00 0D */	li r4, 0xd
/* 80063D4C  38 A0 00 01 */	li r5, 1
/* 80063D50  38 C0 00 03 */	li r6, 3
/* 80063D54  38 E0 00 08 */	li r7, 8
/* 80063D58  48 2F 78 6D */	bl GXSetVtxAttrFmt
/* 80063D5C  38 60 00 00 */	li r3, 0
/* 80063D60  38 80 00 0E */	li r4, 0xe
/* 80063D64  38 A0 00 01 */	li r5, 1
/* 80063D68  38 C0 00 03 */	li r6, 3
/* 80063D6C  38 E0 00 08 */	li r7, 8
/* 80063D70  48 2F 78 55 */	bl GXSetVtxAttrFmt
/* 80063D74  38 60 00 00 */	li r3, 0
/* 80063D78  38 80 00 0F */	li r4, 0xf
/* 80063D7C  38 A0 00 01 */	li r5, 1
/* 80063D80  38 C0 00 03 */	li r6, 3
/* 80063D84  38 E0 00 08 */	li r7, 8
/* 80063D88  48 2F 78 3D */	bl GXSetVtxAttrFmt
/* 80063D8C  48 2F 78 01 */	bl GXClearVtxDesc
/* 80063D90  38 60 00 09 */	li r3, 9
/* 80063D94  38 80 00 01 */	li r4, 1
/* 80063D98  48 2F 71 21 */	bl GXSetVtxDesc
/* 80063D9C  38 60 00 0D */	li r3, 0xd
/* 80063DA0  38 80 00 01 */	li r4, 1
/* 80063DA4  48 2F 71 15 */	bl GXSetVtxDesc
/* 80063DA8  38 60 00 0E */	li r3, 0xe
/* 80063DAC  38 80 00 01 */	li r4, 1
/* 80063DB0  48 2F 71 09 */	bl GXSetVtxDesc
/* 80063DB4  38 60 00 0F */	li r3, 0xf
/* 80063DB8  38 80 00 01 */	li r4, 1
/* 80063DBC  48 2F 70 FD */	bl GXSetVtxDesc
/* 80063DC0  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 80063DC4  28 00 00 01 */	cmplwi r0, 1
/* 80063DC8  40 82 06 14 */	bne lbl_800643DC
/* 80063DCC  38 A1 00 74 */	addi r5, r1, 0x74
/* 80063DD0  3C 60 80 38 */	lis r3, lit_7275@ha /* 0x8037A508@ha */
/* 80063DD4  38 63 A5 08 */	addi r3, r3, lit_7275@l /* 0x8037A508@l */
/* 80063DD8  38 83 FF FC */	addi r4, r3, -4
/* 80063DDC  38 00 00 04 */	li r0, 4
/* 80063DE0  7C 09 03 A6 */	mtctr r0
lbl_80063DE4:
/* 80063DE4  80 64 00 04 */	lwz r3, 4(r4)
/* 80063DE8  84 04 00 08 */	lwzu r0, 8(r4)
/* 80063DEC  90 65 00 04 */	stw r3, 4(r5)
/* 80063DF0  94 05 00 08 */	stwu r0, 8(r5)
/* 80063DF4  42 00 FF F0 */	bdnz lbl_80063DE4
/* 80063DF8  7F E3 FB 78 */	mr r3, r31
/* 80063DFC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063E00  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80063E04  48 30 4B 91 */	bl strcmp
/* 80063E08  2C 03 00 00 */	cmpwi r3, 0
/* 80063E0C  41 82 00 A8 */	beq lbl_80063EB4
/* 80063E10  38 77 00 D8 */	addi r3, r23, 0xd8
/* 80063E14  38 97 00 E4 */	addi r4, r23, 0xe4
/* 80063E18  38 A1 00 30 */	addi r5, r1, 0x30
/* 80063E1C  4B FF 79 45 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 80063E20  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80063E24  EC 61 00 72 */	fmuls f3, f1, f1
/* 80063E28  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80063E2C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80063E30  EE E3 00 2A */	fadds f23, f3, f0
/* 80063E34  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80063E38  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 80063E3C  40 81 00 0C */	ble lbl_80063E48
/* 80063E40  FC 00 B8 34 */	frsqrte f0, f23
/* 80063E44  EE E0 05 F2 */	fmuls f23, f0, f23
lbl_80063E48:
/* 80063E48  48 30 88 D9 */	bl atan2
/* 80063E4C  FF 20 08 18 */	frsp f25, f1
/* 80063E50  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80063E54  FC 40 B8 90 */	fmr f2, f23
/* 80063E58  48 30 88 C9 */	bl atan2
/* 80063E5C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80063E60  EC 61 00 72 */	fmuls f3, f1, f1
/* 80063E64  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80063E68  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80063E6C  EE E3 00 2A */	fadds f23, f3, f0
/* 80063E70  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80063E74  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 80063E78  40 81 00 0C */	ble lbl_80063E84
/* 80063E7C  FC 00 B8 34 */	frsqrte f0, f23
/* 80063E80  EE E0 05 F2 */	fmuls f23, f0, f23
lbl_80063E84:
/* 80063E84  48 30 88 9D */	bl atan2
/* 80063E88  FF 40 08 18 */	frsp f26, f1
/* 80063E8C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80063E90  FC 40 B8 90 */	fmr f2, f23
/* 80063E94  48 30 88 8D */	bl atan2
/* 80063E98  C0 62 8A 58 */	lfs f3, lit_7209(r2)
/* 80063E9C  C0 42 88 A8 */	lfs f2, lit_5105(r2)
/* 80063EA0  EC 3A C8 28 */	fsubs f1, f26, f25
/* 80063EA4  C0 02 8A 5C */	lfs f0, lit_7210(r2)
/* 80063EA8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80063EAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80063EB0  EF 23 00 2A */	fadds f25, f3, f0
lbl_80063EB4:
/* 80063EB4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80063EB8  38 80 00 5A */	li r4, 0x5a
/* 80063EBC  C0 02 8A 60 */	lfs f0, lit_7211(r2)
/* 80063EC0  EC 20 06 72 */	fmuls f1, f0, f25
/* 80063EC4  48 2E 27 E5 */	bl PSMTXRotRad
/* 80063EC8  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80063ECC  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80063ED0  7C 65 1B 78 */	mr r5, r3
/* 80063ED4  48 2E 26 11 */	bl PSMTXConcat
/* 80063ED8  7F 63 DB 78 */	mr r3, r27
/* 80063EDC  38 80 00 00 */	li r4, 0
/* 80063EE0  48 2F C3 6D */	bl GXLoadPosMtxImm
/* 80063EE4  38 60 00 00 */	li r3, 0
/* 80063EE8  48 2F C4 05 */	bl GXSetCurrentMtx
/* 80063EEC  38 00 00 00 */	li r0, 0
/* 80063EF0  98 01 00 20 */	stb r0, 0x20(r1)
/* 80063EF4  98 01 00 21 */	stb r0, 0x21(r1)
/* 80063EF8  98 01 00 22 */	stb r0, 0x22(r1)
/* 80063EFC  C2 E2 88 10 */	lfs f23, lit_4353(r2)
/* 80063F00  7F E3 FB 78 */	mr r3, r31
/* 80063F04  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063F08  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80063F0C  38 84 00 4C */	addi r4, r4, 0x4c
/* 80063F10  48 30 4A 85 */	bl strcmp
/* 80063F14  2C 03 00 00 */	cmpwi r3, 0
/* 80063F18  40 82 00 0C */	bne lbl_80063F24
/* 80063F1C  C2 E2 8A 64 */	lfs f23, lit_7212(r2)
/* 80063F20  48 00 00 20 */	b lbl_80063F40
lbl_80063F24:
/* 80063F24  7F E3 FB 78 */	mr r3, r31
/* 80063F28  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063F2C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80063F30  48 30 4A 65 */	bl strcmp
/* 80063F34  2C 03 00 00 */	cmpwi r3, 0
/* 80063F38  40 82 00 08 */	bne lbl_80063F40
/* 80063F3C  C2 E2 88 80 */	lfs f23, lit_4468(r2)
lbl_80063F40:
/* 80063F40  7F E3 FB 78 */	mr r3, r31
/* 80063F44  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063F48  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80063F4C  38 84 00 64 */	addi r4, r4, 0x64
/* 80063F50  48 30 4A 45 */	bl strcmp
/* 80063F54  2C 03 00 00 */	cmpwi r3, 0
/* 80063F58  40 82 00 3C */	bne lbl_80063F94
/* 80063F5C  48 13 BB 5D */	bl dKy_daynight_check__Fv
/* 80063F60  2C 03 00 00 */	cmpwi r3, 0
/* 80063F64  41 82 00 30 */	beq lbl_80063F94
/* 80063F68  C2 E2 88 9C */	lfs f23, lit_5102(r2)
/* 80063F6C  34 78 40 C0 */	addic. r3, r24, 0x40c0
/* 80063F70  41 82 00 24 */	beq lbl_80063F94
/* 80063F74  4B FE 44 75 */	bl getRunEventName__16dEvent_manager_cFv
/* 80063F78  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063F7C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80063F80  38 84 00 6C */	addi r4, r4, 0x6c
/* 80063F84  48 30 4A 11 */	bl strcmp
/* 80063F88  2C 03 00 00 */	cmpwi r3, 0
/* 80063F8C  40 82 00 08 */	bne lbl_80063F94
/* 80063F90  C2 E2 8A 78 */	lfs f23, lit_7548(r2)
lbl_80063F94:
/* 80063F94  C0 22 88 4C */	lfs f1, lit_4368(r2)
/* 80063F98  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80063F9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80063FA0  FC 00 00 1E */	fctiwz f0, f0
/* 80063FA4  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 80063FA8  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 80063FAC  98 01 00 23 */	stb r0, 0x23(r1)
/* 80063FB0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80063FB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80063FB8  38 60 00 01 */	li r3, 1
/* 80063FBC  38 81 00 10 */	addi r4, r1, 0x10
/* 80063FC0  48 2F B3 BD */	bl GXSetTevColor
/* 80063FC4  3A C0 00 00 */	li r22, 0
/* 80063FC8  C0 02 88 7C */	lfs f0, lit_4467(r2)
/* 80063FCC  EF 60 06 32 */	fmuls f27, f0, f24
/* 80063FD0  57 39 10 3A */	slwi r25, r25, 2
/* 80063FD4  3B 01 00 78 */	addi r24, r1, 0x78
/* 80063FD8  C3 82 87 B8 */	lfs f28, lit_3954(r2)
/* 80063FDC  C3 A1 00 60 */	lfs f29, 0x60(r1)
/* 80063FE0  C3 C1 00 64 */	lfs f30, 0x64(r1)
/* 80063FE4  C3 E1 00 68 */	lfs f31, 0x68(r1)
/* 80063FE8  3F 40 CC 01 */	lis r26, 0xcc01
/* 80063FEC  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80063FF0  3A A3 A5 78 */	addi r21, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
lbl_80063FF4:
/* 80063FF4  2C 16 00 01 */	cmpwi r22, 1
/* 80063FF8  40 82 01 4C */	bne lbl_80064144
/* 80063FFC  38 61 00 98 */	addi r3, r1, 0x98
/* 80064000  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 80064004  4B FF 7A 21 */	bl dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
/* 80064008  48 2F 75 85 */	bl GXClearVtxDesc
/* 8006400C  38 60 00 09 */	li r3, 9
/* 80064010  38 80 00 01 */	li r4, 1
/* 80064014  48 2F 6E A5 */	bl GXSetVtxDesc
/* 80064018  38 60 00 0D */	li r3, 0xd
/* 8006401C  38 80 00 01 */	li r4, 1
/* 80064020  48 2F 6E 99 */	bl GXSetVtxDesc
/* 80064024  38 60 00 01 */	li r3, 1
/* 80064028  48 2F B8 69 */	bl GXSetNumTevStages
/* 8006402C  38 60 00 00 */	li r3, 0
/* 80064030  38 80 00 00 */	li r4, 0
/* 80064034  38 A0 00 00 */	li r5, 0
/* 80064038  38 C0 00 FF */	li r6, 0xff
/* 8006403C  48 2F B6 B9 */	bl GXSetTevOrder
/* 80064040  38 60 00 00 */	li r3, 0
/* 80064044  38 80 00 04 */	li r4, 4
/* 80064048  38 A0 00 02 */	li r5, 2
/* 8006404C  38 C0 00 08 */	li r6, 8
/* 80064050  38 E0 00 0F */	li r7, 0xf
/* 80064054  48 2F B1 D1 */	bl GXSetTevColorIn
/* 80064058  38 60 00 00 */	li r3, 0
/* 8006405C  38 80 00 00 */	li r4, 0
/* 80064060  38 A0 00 00 */	li r5, 0
/* 80064064  38 C0 00 00 */	li r6, 0
/* 80064068  38 E0 00 01 */	li r7, 1
/* 8006406C  39 00 00 00 */	li r8, 0
/* 80064070  48 2F B2 3D */	bl GXSetTevColorOp
/* 80064074  38 60 00 00 */	li r3, 0
/* 80064078  38 80 00 07 */	li r4, 7
/* 8006407C  38 A0 00 01 */	li r5, 1
/* 80064080  38 C0 00 04 */	li r6, 4
/* 80064084  38 E0 00 07 */	li r7, 7
/* 80064088  48 2F B1 E1 */	bl GXSetTevAlphaIn
/* 8006408C  38 60 00 00 */	li r3, 0
/* 80064090  38 80 00 00 */	li r4, 0
/* 80064094  38 A0 00 00 */	li r5, 0
/* 80064098  38 C0 00 00 */	li r6, 0
/* 8006409C  38 E0 00 01 */	li r7, 1
/* 800640A0  39 00 00 00 */	li r8, 0
/* 800640A4  48 2F B2 71 */	bl GXSetTevAlphaOp
/* 800640A8  38 60 00 01 */	li r3, 1
/* 800640AC  38 80 00 04 */	li r4, 4
/* 800640B0  38 A0 00 01 */	li r5, 1
/* 800640B4  38 C0 00 03 */	li r6, 3
/* 800640B8  48 2F BB 39 */	bl GXSetBlendMode
/* 800640BC  C0 02 8A 68 */	lfs f0, lit_7213(r2)
/* 800640C0  EE F7 00 32 */	fmuls f23, f23, f0
/* 800640C4  C0 22 88 B8 */	lfs f1, lit_5109(r2)
/* 800640C8  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 800640CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800640D0  FC 00 00 1E */	fctiwz f0, f0
/* 800640D4  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 800640D8  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 800640DC  98 01 00 23 */	stb r0, 0x23(r1)
/* 800640E0  38 00 00 FF */	li r0, 0xff
/* 800640E4  98 01 00 20 */	stb r0, 0x20(r1)
/* 800640E8  98 01 00 21 */	stb r0, 0x21(r1)
/* 800640EC  38 00 00 CF */	li r0, 0xcf
/* 800640F0  98 01 00 22 */	stb r0, 0x22(r1)
/* 800640F4  38 00 00 C5 */	li r0, 0xc5
/* 800640F8  98 01 00 1C */	stb r0, 0x1c(r1)
/* 800640FC  38 00 00 69 */	li r0, 0x69
/* 80064100  98 01 00 1D */	stb r0, 0x1d(r1)
/* 80064104  38 00 00 23 */	li r0, 0x23
/* 80064108  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8006410C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80064110  38 80 00 5A */	li r4, 0x5a
/* 80064114  C0 02 8A 60 */	lfs f0, lit_7211(r2)
/* 80064118  EC 20 06 F2 */	fmuls f1, f0, f27
/* 8006411C  48 2E 25 8D */	bl PSMTXRotRad
/* 80064120  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80064124  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80064128  7C 65 1B 78 */	mr r5, r3
/* 8006412C  48 2E 23 B9 */	bl PSMTXConcat
/* 80064130  7F 63 DB 78 */	mr r3, r27
/* 80064134  38 80 00 00 */	li r4, 0
/* 80064138  48 2F C1 15 */	bl GXLoadPosMtxImm
/* 8006413C  38 60 00 00 */	li r3, 0
/* 80064140  48 2F C1 AD */	bl GXSetCurrentMtx
lbl_80064144:
/* 80064144  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80064148  90 01 00 0C */	stw r0, 0xc(r1)
/* 8006414C  38 60 00 01 */	li r3, 1
/* 80064150  38 81 00 0C */	addi r4, r1, 0xc
/* 80064154  48 2F B2 29 */	bl GXSetTevColor
/* 80064158  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006415C  90 01 00 08 */	stw r0, 8(r1)
/* 80064160  38 60 00 02 */	li r3, 2
/* 80064164  38 81 00 08 */	addi r4, r1, 8
/* 80064168  48 2F B2 15 */	bl GXSetTevColor
/* 8006416C  FF 40 B8 50 */	fneg f26, f23
/* 80064170  EF 3A 06 32 */	fmuls f25, f26, f24
/* 80064174  D3 21 00 48 */	stfs f25, 0x48(r1)
/* 80064178  D2 E1 00 4C */	stfs f23, 0x4c(r1)
/* 8006417C  D3 81 00 50 */	stfs f28, 0x50(r1)
/* 80064180  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80064184  38 81 00 48 */	addi r4, r1, 0x48
/* 80064188  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8006418C  48 2E 2B E1 */	bl PSMTXMultVec
/* 80064190  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80064194  EC 1D 00 2A */	fadds f0, f29, f0
/* 80064198  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8006419C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800641A0  EC 1E 00 2A */	fadds f0, f30, f0
/* 800641A4  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 800641A8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800641AC  EC 1F 00 2A */	fadds f0, f31, f0
/* 800641B0  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 800641B4  EE D7 06 32 */	fmuls f22, f23, f24
/* 800641B8  D2 C1 00 48 */	stfs f22, 0x48(r1)
/* 800641BC  D2 E1 00 4C */	stfs f23, 0x4c(r1)
/* 800641C0  D3 81 00 50 */	stfs f28, 0x50(r1)
/* 800641C4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 800641C8  38 81 00 48 */	addi r4, r1, 0x48
/* 800641CC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800641D0  48 2E 2B 9D */	bl PSMTXMultVec
/* 800641D4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800641D8  EC 1D 00 2A */	fadds f0, f29, f0
/* 800641DC  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 800641E0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800641E4  EC 1E 00 2A */	fadds f0, f30, f0
/* 800641E8  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 800641EC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800641F0  EC 1F 00 2A */	fadds f0, f31, f0
/* 800641F4  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 800641F8  2C 16 00 00 */	cmpwi r22, 0
/* 800641FC  40 82 00 10 */	bne lbl_8006420C
/* 80064200  D2 C1 00 48 */	stfs f22, 0x48(r1)
/* 80064204  D3 41 00 4C */	stfs f26, 0x4c(r1)
/* 80064208  48 00 00 18 */	b lbl_80064220
lbl_8006420C:
/* 8006420C  7C 38 CC 2E */	lfsx f1, r24, r25
/* 80064210  EC 16 00 72 */	fmuls f0, f22, f1
/* 80064214  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80064218  EC 1A 00 72 */	fmuls f0, f26, f1
/* 8006421C  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80064220:
/* 80064220  D3 81 00 50 */	stfs f28, 0x50(r1)
/* 80064224  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80064228  38 81 00 48 */	addi r4, r1, 0x48
/* 8006422C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80064230  48 2E 2B 3D */	bl PSMTXMultVec
/* 80064234  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80064238  EC 1D 00 2A */	fadds f0, f29, f0
/* 8006423C  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80064240  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80064244  EC 1E 00 2A */	fadds f0, f30, f0
/* 80064248  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 8006424C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80064250  EC 1F 00 2A */	fadds f0, f31, f0
/* 80064254  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80064258  D3 21 00 48 */	stfs f25, 0x48(r1)
/* 8006425C  D3 41 00 4C */	stfs f26, 0x4c(r1)
/* 80064260  D3 81 00 50 */	stfs f28, 0x50(r1)
/* 80064264  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80064268  38 81 00 48 */	addi r4, r1, 0x48
/* 8006426C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80064270  48 2E 2A FD */	bl PSMTXMultVec
/* 80064274  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80064278  EC 1D 00 2A */	fadds f0, f29, f0
/* 8006427C  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 80064280  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80064284  EC 1E 00 2A */	fadds f0, f30, f0
/* 80064288  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 8006428C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80064290  EC 1F 00 2A */	fadds f0, f31, f0
/* 80064294  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80064298  38 60 00 80 */	li r3, 0x80
/* 8006429C  38 80 00 00 */	li r4, 0
/* 800642A0  38 A0 00 04 */	li r5, 4
/* 800642A4  48 2F 84 C1 */	bl GXBegin
/* 800642A8  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 800642AC  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 800642B0  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 800642B4  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 800642B8  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 800642BC  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 800642C0  38 00 00 00 */	li r0, 0
/* 800642C4  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 800642C8  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 800642CC  2C 16 00 00 */	cmpwi r22, 0
/* 800642D0  40 82 00 18 */	bne lbl_800642E8
/* 800642D4  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 800642D8  B0 03 80 00 */	sth r0, 0x8000(r3)  /* 0xCC008000@l */
/* 800642DC  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800642E0  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800642E4  B0 03 80 00 */	sth r0, -0x8000(r3)
lbl_800642E8:
/* 800642E8  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 800642EC  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 800642F0  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 800642F4  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 800642F8  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 800642FC  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80064300  38 80 00 FF */	li r4, 0xff
/* 80064304  B0 9A 80 00 */	sth r4, -0x8000(r26)
/* 80064308  38 00 00 00 */	li r0, 0
/* 8006430C  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 80064310  2C 16 00 00 */	cmpwi r22, 0
/* 80064314  40 82 00 18 */	bne lbl_8006432C
/* 80064318  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8006431C  B0 83 80 00 */	sth r4, 0x8000(r3)  /* 0xCC008000@l */
/* 80064320  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 80064324  B0 83 80 00 */	sth r4, -0x8000(r3)
/* 80064328  B0 03 80 00 */	sth r0, -0x8000(r3)
lbl_8006432C:
/* 8006432C  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 80064330  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80064334  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 80064338  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 8006433C  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 80064340  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80064344  38 00 00 FF */	li r0, 0xff
/* 80064348  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 8006434C  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 80064350  2C 16 00 00 */	cmpwi r22, 0
/* 80064354  40 82 00 18 */	bne lbl_8006436C
/* 80064358  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8006435C  B0 03 80 00 */	sth r0, 0x8000(r3)  /* 0xCC008000@l */
/* 80064360  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 80064364  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 80064368  B0 03 80 00 */	sth r0, -0x8000(r3)
lbl_8006436C:
/* 8006436C  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 80064370  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80064374  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 80064378  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 8006437C  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 80064380  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80064384  38 80 00 00 */	li r4, 0
/* 80064388  B0 9A 80 00 */	sth r4, -0x8000(r26)
/* 8006438C  38 00 00 FF */	li r0, 0xff
/* 80064390  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 80064394  2C 16 00 00 */	cmpwi r22, 0
/* 80064398  40 82 00 18 */	bne lbl_800643B0
/* 8006439C  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 800643A0  B0 83 80 00 */	sth r4, 0x8000(r3)  /* 0xCC008000@l */
/* 800643A4  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 800643A8  B0 83 80 00 */	sth r4, -0x8000(r3)
/* 800643AC  B0 03 80 00 */	sth r0, -0x8000(r3)
lbl_800643B0:
/* 800643B0  7F E3 FB 78 */	mr r3, r31
/* 800643B4  38 95 00 4C */	addi r4, r21, 0x4c
/* 800643B8  48 30 45 DD */	bl strcmp
/* 800643BC  2C 03 00 00 */	cmpwi r3, 0
/* 800643C0  40 82 00 10 */	bne lbl_800643D0
/* 800643C4  7F 63 DB 78 */	mr r3, r27
/* 800643C8  7F 84 E3 78 */	mr r4, r28
/* 800643CC  4B FF E7 81 */	bl dKyr_draw_rev_moon__FPA4_fPPUc
lbl_800643D0:
/* 800643D0  3A D6 00 01 */	addi r22, r22, 1
/* 800643D4  2C 16 00 02 */	cmpwi r22, 2
/* 800643D8  41 80 FC 1C */	blt lbl_80063FF4
lbl_800643DC:
/* 800643DC  38 00 00 00 */	li r0, 0
/* 800643E0  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_800643E4:
/* 800643E4  E3 E1 02 18 */	psq_l f31, 536(r1), 0, 0 /* qr0 */
/* 800643E8  CB E1 02 10 */	lfd f31, 0x210(r1)
/* 800643EC  E3 C1 02 08 */	psq_l f30, 520(r1), 0, 0 /* qr0 */
/* 800643F0  CB C1 02 00 */	lfd f30, 0x200(r1)
/* 800643F4  E3 A1 01 F8 */	psq_l f29, 504(r1), 0, 0 /* qr0 */
/* 800643F8  CB A1 01 F0 */	lfd f29, 0x1f0(r1)
/* 800643FC  E3 81 01 E8 */	psq_l f28, 488(r1), 0, 0 /* qr0 */
/* 80064400  CB 81 01 E0 */	lfd f28, 0x1e0(r1)
/* 80064404  E3 61 01 D8 */	psq_l f27, 472(r1), 0, 0 /* qr0 */
/* 80064408  CB 61 01 D0 */	lfd f27, 0x1d0(r1)
/* 8006440C  E3 41 01 C8 */	psq_l f26, 456(r1), 0, 0 /* qr0 */
/* 80064410  CB 41 01 C0 */	lfd f26, 0x1c0(r1)
/* 80064414  E3 21 01 B8 */	psq_l f25, 440(r1), 0, 0 /* qr0 */
/* 80064418  CB 21 01 B0 */	lfd f25, 0x1b0(r1)
/* 8006441C  E3 01 01 A8 */	psq_l f24, 424(r1), 0, 0 /* qr0 */
/* 80064420  CB 01 01 A0 */	lfd f24, 0x1a0(r1)
/* 80064424  E2 E1 01 98 */	psq_l f23, 408(r1), 0, 0 /* qr0 */
/* 80064428  CA E1 01 90 */	lfd f23, 0x190(r1)
/* 8006442C  E2 C1 01 88 */	psq_l f22, 392(r1), 0, 0 /* qr0 */
/* 80064430  CA C1 01 80 */	lfd f22, 0x180(r1)
/* 80064434  39 61 01 80 */	addi r11, r1, 0x180
/* 80064438  48 2F DD CD */	bl _restgpr_20
/* 8006443C  80 01 02 24 */	lwz r0, 0x224(r1)
/* 80064440  7C 08 03 A6 */	mtlr r0
/* 80064444  38 21 02 20 */	addi r1, r1, 0x220
/* 80064448  4E 80 00 20 */	blr 
