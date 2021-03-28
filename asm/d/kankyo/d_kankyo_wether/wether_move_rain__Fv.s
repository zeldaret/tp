lbl_80058894:
/* 80058894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80058898  7C 08 02 A6 */	mflr r0
/* 8005889C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800588A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800588A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800588A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800588AC  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 800588B0  88 1F 0E 7C */	lbz r0, 0xe7c(r31)
/* 800588B4  2C 00 00 01 */	cmpwi r0, 1
/* 800588B8  41 82 00 EC */	beq lbl_800589A4
/* 800588BC  40 80 02 2C */	bge lbl_80058AE8
/* 800588C0  2C 00 00 00 */	cmpwi r0, 0
/* 800588C4  40 80 00 08 */	bge lbl_800588CC
/* 800588C8  48 00 02 20 */	b lbl_80058AE8
lbl_800588CC:
/* 800588CC  80 1F 0E 80 */	lwz r0, 0xe80(r31)
/* 800588D0  2C 00 00 03 */	cmpwi r0, 3
/* 800588D4  40 81 02 14 */	ble lbl_80058AE8
/* 800588D8  38 60 37 18 */	li r3, 0x3718
/* 800588DC  38 80 00 20 */	li r4, 0x20
/* 800588E0  48 27 63 95 */	bl __nw__FUli
/* 800588E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 800588E8  41 82 00 50 */	beq lbl_80058938
/* 800588EC  7F C4 F3 78 */	mr r4, r30
/* 800588F0  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 800588F4  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 800588F8  90 1E 00 00 */	stw r0, 0(r30)
/* 800588FC  38 00 00 00 */	li r0, 0
/* 80058900  90 1E 00 04 */	stw r0, 4(r30)
/* 80058904  90 1E 00 08 */	stw r0, 8(r30)
/* 80058908  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8005890C  3C 60 80 3B */	lis r3, __vt__19dKankyo_rain_Packet@ha
/* 80058910  38 03 9B 60 */	addi r0, r3, __vt__19dKankyo_rain_Packet@l
/* 80058914  90 1E 00 00 */	stw r0, 0(r30)
/* 80058918  38 64 00 18 */	addi r3, r4, 0x18
/* 8005891C  3C 80 80 05 */	lis r4, __ct__8RAIN_EFFFv@ha
/* 80058920  38 84 6D 0C */	addi r4, r4, __ct__8RAIN_EFFFv@l
/* 80058924  3C A0 80 05 */	lis r5, __dt__8RAIN_EFFFv@ha
/* 80058928  38 A5 6C D0 */	addi r5, r5, __dt__8RAIN_EFFFv@l
/* 8005892C  38 C0 00 38 */	li r6, 0x38
/* 80058930  38 E0 00 FA */	li r7, 0xfa
/* 80058934  48 30 94 2D */	bl __construct_array
lbl_80058938:
/* 80058938  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005893C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80058940  93 C3 0E 84 */	stw r30, 0xe84(r3)
/* 80058944  28 1E 00 00 */	cmplwi r30, 0
/* 80058948  41 82 01 A0 */	beq lbl_80058AE8
/* 8005894C  48 00 43 11 */	bl dKyr_rain_init__Fv
/* 80058950  48 00 48 3D */	bl dKyr_rain_move__Fv
/* 80058954  38 00 00 01 */	li r0, 1
/* 80058958  98 1F 0E 7C */	stb r0, 0xe7c(r31)
/* 8005895C  80 1F 0E 80 */	lwz r0, 0xe80(r31)
/* 80058960  2C 00 00 FA */	cmpwi r0, 0xfa
/* 80058964  41 82 01 84 */	beq lbl_80058AE8
/* 80058968  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009000C@ha */
/* 8005896C  38 03 00 0C */	addi r0, r3, 0x000C /* 0x0009000C@l */
/* 80058970  90 01 00 0C */	stw r0, 0xc(r1)
/* 80058974  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80058978  38 81 00 0C */	addi r4, r1, 0xc
/* 8005897C  38 A0 00 00 */	li r5, 0
/* 80058980  38 C0 00 00 */	li r6, 0
/* 80058984  38 E0 00 00 */	li r7, 0
/* 80058988  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005898C  FC 40 08 90 */	fmr f2, f1
/* 80058990  C0 62 86 F0 */	lfs f3, lit_4668(r2)
/* 80058994  FC 80 18 90 */	fmr f4, f3
/* 80058998  39 00 00 00 */	li r8, 0
/* 8005899C  48 25 2F E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800589A0  48 00 01 48 */	b lbl_80058AE8
lbl_800589A4:
/* 800589A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800589A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800589AC  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 800589B0  48 00 47 DD */	bl dKyr_rain_move__Fv
/* 800589B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800589B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800589BC  80 03 0E 8C */	lwz r0, 0xe8c(r3)
/* 800589C0  2C 00 00 00 */	cmpwi r0, 0
/* 800589C4  40 82 00 A0 */	bne lbl_80058A64
/* 800589C8  28 1E 00 00 */	cmplwi r30, 0
/* 800589CC  41 82 00 98 */	beq lbl_80058A64
/* 800589D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800589D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800589D8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 800589DC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 800589E0  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 800589E4  38 84 00 89 */	addi r4, r4, 0x89
/* 800589E8  48 30 FF AD */	bl strcmp
/* 800589EC  2C 03 00 00 */	cmpwi r3, 0
/* 800589F0  40 82 00 14 */	bne lbl_80058A04
/* 800589F4  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 800589F8  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 800589FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058A00  40 81 00 64 */	ble lbl_80058A64
lbl_80058A04:
/* 80058A04  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80058A08  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80058A0C  80 03 0E 80 */	lwz r0, 0xe80(r3)
/* 80058A10  C8 22 86 F8 */	lfd f1, lit_4671(r2)
/* 80058A14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80058A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80058A1C  3C 00 43 30 */	lis r0, 0x4330
/* 80058A20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80058A24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80058A28  EC 20 08 28 */	fsubs f1, f0, f1
/* 80058A2C  C0 02 86 F4 */	lfs f0, lit_4669(r2)
/* 80058A30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058A34  40 80 00 1C */	bge lbl_80058A50
/* 80058A38  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80058A3C  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 80058A40  38 80 00 00 */	li r4, 0
/* 80058A44  38 A0 00 00 */	li r5, 0
/* 80058A48  48 26 ED E9 */	bl startRainSe__10Z2EnvSeMgrFlSc
/* 80058A4C  48 00 00 18 */	b lbl_80058A64
lbl_80058A50:
/* 80058A50  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 80058A54  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l
/* 80058A58  38 80 00 01 */	li r4, 1
/* 80058A5C  38 A0 00 00 */	li r5, 0
/* 80058A60  48 26 ED D1 */	bl startRainSe__10Z2EnvSeMgrFlSc
lbl_80058A64:
/* 80058A64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80058A68  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80058A6C  80 03 0E 80 */	lwz r0, 0xe80(r3)
/* 80058A70  2C 00 00 03 */	cmpwi r0, 3
/* 80058A74  41 81 00 74 */	bgt lbl_80058AE8
/* 80058A78  38 00 00 00 */	li r0, 0
/* 80058A7C  98 1F 0E 7C */	stb r0, 0xe7c(r31)
/* 80058A80  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009000D@ha */
/* 80058A84  38 03 00 0D */	addi r0, r3, 0x000D /* 0x0009000D@l */
/* 80058A88  90 01 00 08 */	stw r0, 8(r1)
/* 80058A8C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80058A90  38 81 00 08 */	addi r4, r1, 8
/* 80058A94  38 A0 00 00 */	li r5, 0
/* 80058A98  38 C0 00 00 */	li r6, 0
/* 80058A9C  38 E0 00 00 */	li r7, 0
/* 80058AA0  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80058AA4  FC 40 08 90 */	fmr f2, f1
/* 80058AA8  C0 62 86 F0 */	lfs f3, lit_4668(r2)
/* 80058AAC  FC 80 18 90 */	fmr f4, f3
/* 80058AB0  39 00 00 00 */	li r8, 0
/* 80058AB4  48 25 2E D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80058AB8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80058ABC  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 80058AC0  80 7F 0E 84 */	lwz r3, 0xe84(r31)
/* 80058AC4  28 03 00 00 */	cmplwi r3, 0
/* 80058AC8  41 82 00 18 */	beq lbl_80058AE0
/* 80058ACC  38 80 00 01 */	li r4, 1
/* 80058AD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80058AD4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80058AD8  7D 89 03 A6 */	mtctr r12
/* 80058ADC  4E 80 04 21 */	bctrl 
lbl_80058AE0:
/* 80058AE0  38 00 00 00 */	li r0, 0
/* 80058AE4  90 1F 0E 84 */	stw r0, 0xe84(r31)
lbl_80058AE8:
/* 80058AE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80058AEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80058AF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80058AF4  7C 08 03 A6 */	mtlr r0
/* 80058AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80058AFC  4E 80 00 20 */	blr 
