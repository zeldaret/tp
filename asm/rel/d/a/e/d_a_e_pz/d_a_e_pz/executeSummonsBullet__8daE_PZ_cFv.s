lbl_8075D94C:
/* 8075D94C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8075D950  7C 08 02 A6 */	mflr r0
/* 8075D954  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8075D958  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8075D95C  4B C0 48 6D */	bl _savegpr_24
/* 8075D960  7C 7F 1B 78 */	mr r31, r3
/* 8075D964  3C 60 80 76 */	lis r3, lit_1109@ha /* 0x80761DC0@ha */
/* 8075D968  3B 63 1D C0 */	addi r27, r3, lit_1109@l /* 0x80761DC0@l */
/* 8075D96C  3C 60 80 76 */	lis r3, cNullVec__6Z2Calc@ha /* 0x807617BC@ha */
/* 8075D970  3B 83 17 BC */	addi r28, r3, cNullVec__6Z2Calc@l /* 0x807617BC@l */
/* 8075D974  3C 60 80 76 */	lis r3, lit_3906@ha /* 0x807614FC@ha */
/* 8075D978  3B C3 14 FC */	addi r30, r3, lit_3906@l /* 0x807614FC@l */
/* 8075D97C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075D980  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075D984  83 3D 5D AC */	lwz r25, 0x5dac(r29)
/* 8075D988  3B 5B 00 4C */	addi r26, r27, 0x4c
/* 8075D98C  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8075D990  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8075D994  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8075D998  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8075D99C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075D9A0  38 81 00 6C */	addi r4, r1, 0x6c
/* 8075D9A4  4B 8B C0 19 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075D9A8  2C 03 00 00 */	cmpwi r3, 0
/* 8075D9AC  41 82 00 1C */	beq lbl_8075D9C8
/* 8075D9B0  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075D9B4  28 03 00 00 */	cmplwi r3, 0
/* 8075D9B8  41 82 00 20 */	beq lbl_8075D9D8
/* 8075D9BC  A8 03 05 62 */	lha r0, 0x562(r3)
/* 8075D9C0  2C 00 00 01 */	cmpwi r0, 1
/* 8075D9C4  41 81 00 14 */	bgt lbl_8075D9D8
lbl_8075D9C8:
/* 8075D9C8  38 00 00 00 */	li r0, 0
/* 8075D9CC  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075D9D0  38 00 00 04 */	li r0, 4
/* 8075D9D4  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075D9D8:
/* 8075D9D8  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075D9DC  28 00 00 21 */	cmplwi r0, 0x21
/* 8075D9E0  41 81 16 C4 */	bgt lbl_8075F0A4
/* 8075D9E4  3C 60 80 76 */	lis r3, lit_6713@ha /* 0x80761C3C@ha */
/* 8075D9E8  38 63 1C 3C */	addi r3, r3, lit_6713@l /* 0x80761C3C@l */
/* 8075D9EC  54 00 10 3A */	slwi r0, r0, 2
/* 8075D9F0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8075D9F4  7C 09 03 A6 */	mtctr r0
/* 8075D9F8  4E 80 04 20 */	bctr 
lbl_8075D9FC:
/* 8075D9FC  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075DA00  28 00 00 00 */	cmplwi r0, 0
/* 8075DA04  40 82 01 90 */	bne lbl_8075DB94
/* 8075DA08  3C 60 80 76 */	lis r3, d_a_e_pz__stringBase0@ha /* 0x807617B4@ha */
/* 8075DA0C  38 63 17 B4 */	addi r3, r3, d_a_e_pz__stringBase0@l /* 0x807617B4@l */
/* 8075DA10  38 80 00 07 */	li r4, 7
/* 8075DA14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075DA18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075DA1C  3C A5 00 02 */	addis r5, r5, 2
/* 8075DA20  38 C0 00 80 */	li r6, 0x80
/* 8075DA24  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8075DA28  4B 8D E8 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075DA2C  7C 64 1B 78 */	mr r4, r3
/* 8075DA30  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8075DA34  38 A0 00 00 */	li r5, 0
/* 8075DA38  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DA3C  FC 40 08 90 */	fmr f2, f1
/* 8075DA40  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8075DA44  C0 9E 00 3C */	lfs f4, 0x3c(r30)
/* 8075DA48  4B 8B 34 29 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8075DA4C  3B A0 00 00 */	li r29, 0
/* 8075DA50  3B 40 00 00 */	li r26, 0
/* 8075DA54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075DA58  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075DA5C  3B 3C 04 70 */	addi r25, r28, 0x470
lbl_8075DA60:
/* 8075DA60  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8075DA64  38 80 00 00 */	li r4, 0
/* 8075DA68  90 81 00 08 */	stw r4, 8(r1)
/* 8075DA6C  38 00 FF FF */	li r0, -1
/* 8075DA70  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075DA74  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075DA78  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075DA7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075DA80  38 80 00 00 */	li r4, 0
/* 8075DA84  7C B9 D2 2E */	lhzx r5, r25, r26
/* 8075DA88  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075DA8C  38 E0 00 00 */	li r7, 0
/* 8075DA90  39 00 00 00 */	li r8, 0
/* 8075DA94  39 20 00 00 */	li r9, 0
/* 8075DA98  39 40 00 FF */	li r10, 0xff
/* 8075DA9C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DAA0  4B 8E EF F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075DAA4  3B BD 00 01 */	addi r29, r29, 1
/* 8075DAA8  2C 1D 00 02 */	cmpwi r29, 2
/* 8075DAAC  3B 5A 00 02 */	addi r26, r26, 2
/* 8075DAB0  41 80 FF B0 */	blt lbl_8075DA60
/* 8075DAB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F2@ha */
/* 8075DAB8  38 03 03 F2 */	addi r0, r3, 0x03F2 /* 0x000703F2@l */
/* 8075DABC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8075DAC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075DAC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075DAC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8075DACC  38 81 00 64 */	addi r4, r1, 0x64
/* 8075DAD0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075DAD4  38 C0 00 00 */	li r6, 0
/* 8075DAD8  38 E0 00 00 */	li r7, 0
/* 8075DADC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DAE0  FC 40 08 90 */	fmr f2, f1
/* 8075DAE4  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075DAE8  FC 80 18 90 */	fmr f4, f3
/* 8075DAEC  39 00 00 00 */	li r8, 0
/* 8075DAF0  4B B4 DE 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075DAF4  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075DAF8  38 81 00 6C */	addi r4, r1, 0x6c
/* 8075DAFC  4B 8B BE C1 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075DB00  2C 03 00 00 */	cmpwi r3, 0
/* 8075DB04  41 82 00 34 */	beq lbl_8075DB38
/* 8075DB08  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075DB0C  28 03 00 00 */	cmplwi r3, 0
/* 8075DB10  41 82 00 28 */	beq lbl_8075DB38
/* 8075DB14  88 03 07 D8 */	lbz r0, 0x7d8(r3)
/* 8075DB18  28 00 00 02 */	cmplwi r0, 2
/* 8075DB1C  40 82 00 1C */	bne lbl_8075DB38
/* 8075DB20  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075DB24  D0 1F 07 A8 */	stfs f0, 0x7a8(r31)
/* 8075DB28  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
/* 8075DB2C  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8075DB30  D0 1F 07 B0 */	stfs f0, 0x7b0(r31)
/* 8075DB34  48 00 00 60 */	b lbl_8075DB94
lbl_8075DB38:
/* 8075DB38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8075DB3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8075DB40  80 63 00 00 */	lwz r3, 0(r3)
/* 8075DB44  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8075DB48  4B 8A E8 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 8075DB4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075DB50  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075DB54  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075DB58  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8075DB5C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075DB60  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8075DB64  38 81 00 9C */	addi r4, r1, 0x9c
/* 8075DB68  4B B1 33 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8075DB6C  38 61 00 9C */	addi r3, r1, 0x9c
/* 8075DB70  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075DB74  7C 65 1B 78 */	mr r5, r3
/* 8075DB78  4B BE 95 19 */	bl PSVECAdd
/* 8075DB7C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8075DB80  D0 1F 07 A8 */	stfs f0, 0x7a8(r31)
/* 8075DB84  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8075DB88  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
/* 8075DB8C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8075DB90  D0 1F 07 B0 */	stfs f0, 0x7b0(r31)
lbl_8075DB94:
/* 8075DB94  38 00 00 C8 */	li r0, 0xc8
/* 8075DB98  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075DB9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075DBA0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075DBA4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075DBA8  38 00 00 FF */	li r0, 0xff
/* 8075DBAC  90 01 00 08 */	stw r0, 8(r1)
/* 8075DBB0  38 80 00 00 */	li r4, 0
/* 8075DBB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075DBB8  38 00 FF FF */	li r0, -1
/* 8075DBBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075DBC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075DBC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075DBC8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075DBCC  80 9F 0A 68 */	lwz r4, 0xa68(r31)
/* 8075DBD0  38 A0 00 00 */	li r5, 0
/* 8075DBD4  38 DC 04 70 */	addi r6, r28, 0x470
/* 8075DBD8  A0 C6 00 04 */	lhz r6, 4(r6)
/* 8075DBDC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8075DBE0  39 00 00 00 */	li r8, 0
/* 8075DBE4  39 20 00 00 */	li r9, 0
/* 8075DBE8  39 40 00 00 */	li r10, 0
/* 8075DBEC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DBF0  4B 8E F8 DD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075DBF4  90 7F 0A 68 */	stw r3, 0xa68(r31)
/* 8075DBF8  3B 00 00 00 */	li r24, 0
/* 8075DBFC  3B 40 00 00 */	li r26, 0
/* 8075DC00  3B 60 00 00 */	li r27, 0
/* 8075DC04  3B 3C 04 78 */	addi r25, r28, 0x478
lbl_8075DC08:
/* 8075DC08  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075DC0C  38 00 00 FF */	li r0, 0xff
/* 8075DC10  90 01 00 08 */	stw r0, 8(r1)
/* 8075DC14  38 80 00 00 */	li r4, 0
/* 8075DC18  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075DC1C  38 00 FF FF */	li r0, -1
/* 8075DC20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075DC24  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075DC28  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075DC2C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075DC30  3B 9B 0A B4 */	addi r28, r27, 0xab4
/* 8075DC34  7C 9F E0 2E */	lwzx r4, r31, r28
/* 8075DC38  38 A0 00 00 */	li r5, 0
/* 8075DC3C  7C D9 D2 2E */	lhzx r6, r25, r26
/* 8075DC40  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8075DC44  39 00 00 00 */	li r8, 0
/* 8075DC48  39 20 00 00 */	li r9, 0
/* 8075DC4C  39 40 00 00 */	li r10, 0
/* 8075DC50  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DC54  4B 8E F8 79 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075DC58  7C 7F E1 2E */	stwx r3, r31, r28
/* 8075DC5C  3B 18 00 01 */	addi r24, r24, 1
/* 8075DC60  2C 18 00 02 */	cmpwi r24, 2
/* 8075DC64  3B 5A 00 02 */	addi r26, r26, 2
/* 8075DC68  3B 7B 00 04 */	addi r27, r27, 4
/* 8075DC6C  41 80 FF 9C */	blt lbl_8075DC08
/* 8075DC70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F3@ha */
/* 8075DC74  38 03 03 F3 */	addi r0, r3, 0x03F3 /* 0x000703F3@l */
/* 8075DC78  90 01 00 60 */	stw r0, 0x60(r1)
/* 8075DC7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075DC80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075DC84  80 63 00 00 */	lwz r3, 0(r3)
/* 8075DC88  38 81 00 60 */	addi r4, r1, 0x60
/* 8075DC8C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075DC90  38 C0 00 00 */	li r6, 0
/* 8075DC94  38 E0 00 00 */	li r7, 0
/* 8075DC98  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DC9C  FC 40 08 90 */	fmr f2, f1
/* 8075DCA0  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075DCA4  FC 80 18 90 */	fmr f4, f3
/* 8075DCA8  39 00 00 00 */	li r8, 0
/* 8075DCAC  4B B4 E8 61 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075DCB0  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075DCB4  38 81 00 6C */	addi r4, r1, 0x6c
/* 8075DCB8  4B 8B BD 05 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075DCBC  2C 03 00 00 */	cmpwi r3, 0
/* 8075DCC0  41 82 13 E4 */	beq lbl_8075F0A4
/* 8075DCC4  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075DCC8  28 03 00 00 */	cmplwi r3, 0
/* 8075DCCC  41 82 13 D8 */	beq lbl_8075F0A4
/* 8075DCD0  80 03 06 8C */	lwz r0, 0x68c(r3)
/* 8075DCD4  2C 00 00 0C */	cmpwi r0, 0xc
/* 8075DCD8  41 82 13 CC */	beq lbl_8075F0A4
/* 8075DCDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8075DCE0  41 82 13 C4 */	beq lbl_8075F0A4
/* 8075DCE4  2C 00 00 09 */	cmpwi r0, 9
/* 8075DCE8  41 82 13 BC */	beq lbl_8075F0A4
/* 8075DCEC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8075DCF0  41 82 13 B4 */	beq lbl_8075F0A4
/* 8075DCF4  38 00 00 00 */	li r0, 0
/* 8075DCF8  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075DCFC  38 00 00 04 */	li r0, 4
/* 8075DD00  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075DD04  48 00 13 A0 */	b lbl_8075F0A4
lbl_8075DD08:
/* 8075DD08  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075DD0C  38 81 00 6C */	addi r4, r1, 0x6c
/* 8075DD10  4B 8B BC AD */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075DD14  2C 03 00 00 */	cmpwi r3, 0
/* 8075DD18  41 82 01 60 */	beq lbl_8075DE78
/* 8075DD1C  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075DD20  28 03 00 00 */	cmplwi r3, 0
/* 8075DD24  41 82 01 54 */	beq lbl_8075DE78
/* 8075DD28  88 03 07 D8 */	lbz r0, 0x7d8(r3)
/* 8075DD2C  28 00 00 05 */	cmplwi r0, 5
/* 8075DD30  40 82 01 48 */	bne lbl_8075DE78
/* 8075DD34  3B 00 00 00 */	li r24, 0
/* 8075DD38  3B 40 00 00 */	li r26, 0
/* 8075DD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075DD40  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8075DD44:
/* 8075DD44  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8075DD48  38 63 02 10 */	addi r3, r3, 0x210
/* 8075DD4C  38 1A 0A B4 */	addi r0, r26, 0xab4
/* 8075DD50  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8075DD54  4B 8E DB C5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8075DD58  28 03 00 00 */	cmplwi r3, 0
/* 8075DD5C  41 82 00 10 */	beq lbl_8075DD6C
/* 8075DD60  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8075DD64  60 00 00 04 */	ori r0, r0, 4
/* 8075DD68  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8075DD6C:
/* 8075DD6C  3B 18 00 01 */	addi r24, r24, 1
/* 8075DD70  2C 18 00 02 */	cmpwi r24, 2
/* 8075DD74  3B 5A 00 04 */	addi r26, r26, 4
/* 8075DD78  41 80 FF CC */	blt lbl_8075DD44
/* 8075DD7C  3B 00 00 00 */	li r24, 0
/* 8075DD80  3B 40 00 00 */	li r26, 0
/* 8075DD84  3B 7C 04 7C */	addi r27, r28, 0x47c
lbl_8075DD88:
/* 8075DD88  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8075DD8C  38 80 00 00 */	li r4, 0
/* 8075DD90  90 81 00 08 */	stw r4, 8(r1)
/* 8075DD94  38 00 FF FF */	li r0, -1
/* 8075DD98  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075DD9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075DDA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075DDA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075DDA8  38 80 00 00 */	li r4, 0
/* 8075DDAC  7C BB D2 2E */	lhzx r5, r27, r26
/* 8075DDB0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075DDB4  38 E0 00 00 */	li r7, 0
/* 8075DDB8  39 00 00 00 */	li r8, 0
/* 8075DDBC  39 20 00 00 */	li r9, 0
/* 8075DDC0  39 40 00 FF */	li r10, 0xff
/* 8075DDC4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DDC8  4B 8E EC C9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075DDCC  3B 18 00 01 */	addi r24, r24, 1
/* 8075DDD0  2C 18 00 02 */	cmpwi r24, 2
/* 8075DDD4  3B 5A 00 02 */	addi r26, r26, 2
/* 8075DDD8  41 80 FF B0 */	blt lbl_8075DD88
/* 8075DDDC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8075DDE0  B0 01 00 70 */	sth r0, 0x70(r1)
/* 8075DDE4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8075DDE8  B0 01 00 72 */	sth r0, 0x72(r1)
/* 8075DDEC  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8075DDF0  B0 01 00 74 */	sth r0, 0x74(r1)
/* 8075DDF4  3B 20 F0 00 */	li r25, -4096
/* 8075DDF8  3B 00 00 00 */	li r24, 0
lbl_8075DDFC:
/* 8075DDFC  7F E3 FB 78 */	mr r3, r31
/* 8075DE00  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8075DE04  4B 8B C9 35 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8075DE08  7C 03 00 D0 */	neg r0, r3
/* 8075DE0C  B0 01 00 70 */	sth r0, 0x70(r1)
/* 8075DE10  7F E3 FB 78 */	mr r3, r31
/* 8075DE14  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8075DE18  4B 8B C8 F9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8075DE1C  7C 19 1A 14 */	add r0, r25, r3
/* 8075DE20  B0 01 00 72 */	sth r0, 0x72(r1)
/* 8075DE24  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075DE28  88 03 07 D8 */	lbz r0, 0x7d8(r3)
/* 8075DE2C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8075DE30  38 9E 02 04 */	addi r4, r30, 0x204
/* 8075DE34  7C 84 02 14 */	add r4, r4, r0
/* 8075DE38  A8 64 00 00 */	lha r3, 0(r4)
/* 8075DE3C  80 84 00 04 */	lwz r4, 4(r4)
/* 8075DE40  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075DE44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075DE48  7C 06 07 74 */	extsb r6, r0
/* 8075DE4C  38 E1 00 70 */	addi r7, r1, 0x70
/* 8075DE50  39 00 00 00 */	li r8, 0
/* 8075DE54  39 20 FF FF */	li r9, -1
/* 8075DE58  4B 8B BF 41 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8075DE5C  3B 18 00 01 */	addi r24, r24, 1
/* 8075DE60  2C 18 00 05 */	cmpwi r24, 5
/* 8075DE64  3B 39 08 00 */	addi r25, r25, 0x800
/* 8075DE68  41 80 FF 94 */	blt lbl_8075DDFC
/* 8075DE6C  7F E3 FB 78 */	mr r3, r31
/* 8075DE70  4B 8B BE 0D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8075DE74  48 00 12 30 */	b lbl_8075F0A4
lbl_8075DE78:
/* 8075DE78  C0 1F 07 A8 */	lfs f0, 0x7a8(r31)
/* 8075DE7C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075DE80  C0 3F 07 AC */	lfs f1, 0x7ac(r31)
/* 8075DE84  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8075DE88  C0 1F 07 B0 */	lfs f0, 0x7b0(r31)
/* 8075DE8C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075DE90  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8075DE94  EC 01 00 2A */	fadds f0, f1, f0
/* 8075DE98  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075DE9C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075DEA0  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8075DEA4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8075DEA8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8075DEAC  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8075DEB0  4B B1 1C 09 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075DEB4  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8075DEB8  28 00 00 00 */	cmplwi r0, 0
/* 8075DEBC  40 82 00 AC */	bne lbl_8075DF68
/* 8075DEC0  3B 00 00 00 */	li r24, 0
/* 8075DEC4  3B 40 00 00 */	li r26, 0
/* 8075DEC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075DECC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075DED0  3B 7C 04 7C */	addi r27, r28, 0x47c
lbl_8075DED4:
/* 8075DED4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075DED8  38 80 00 00 */	li r4, 0
/* 8075DEDC  90 81 00 08 */	stw r4, 8(r1)
/* 8075DEE0  38 00 FF FF */	li r0, -1
/* 8075DEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075DEE8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075DEEC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075DEF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075DEF4  38 80 00 00 */	li r4, 0
/* 8075DEF8  7C BB D2 2E */	lhzx r5, r27, r26
/* 8075DEFC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075DF00  38 E0 00 00 */	li r7, 0
/* 8075DF04  39 00 00 00 */	li r8, 0
/* 8075DF08  39 20 00 00 */	li r9, 0
/* 8075DF0C  39 40 00 FF */	li r10, 0xff
/* 8075DF10  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DF14  4B 8E EB 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075DF18  3B 18 00 01 */	addi r24, r24, 1
/* 8075DF1C  2C 18 00 02 */	cmpwi r24, 2
/* 8075DF20  3B 5A 00 02 */	addi r26, r26, 2
/* 8075DF24  41 80 FF B0 */	blt lbl_8075DED4
/* 8075DF28  3B 00 00 00 */	li r24, 0
/* 8075DF2C  3B 40 00 00 */	li r26, 0
lbl_8075DF30:
/* 8075DF30  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075DF34  38 63 02 10 */	addi r3, r3, 0x210
/* 8075DF38  38 1A 0A B4 */	addi r0, r26, 0xab4
/* 8075DF3C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8075DF40  4B 8E D9 D9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8075DF44  28 03 00 00 */	cmplwi r3, 0
/* 8075DF48  41 82 00 10 */	beq lbl_8075DF58
/* 8075DF4C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8075DF50  60 00 00 04 */	ori r0, r0, 4
/* 8075DF54  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8075DF58:
/* 8075DF58  3B 18 00 01 */	addi r24, r24, 1
/* 8075DF5C  2C 18 00 02 */	cmpwi r24, 2
/* 8075DF60  3B 5A 00 04 */	addi r26, r26, 4
/* 8075DF64  41 80 FF CC */	blt lbl_8075DF30
lbl_8075DF68:
/* 8075DF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075DF6C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075DF70  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075DF74  38 00 00 FF */	li r0, 0xff
/* 8075DF78  90 01 00 08 */	stw r0, 8(r1)
/* 8075DF7C  38 80 00 00 */	li r4, 0
/* 8075DF80  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075DF84  38 00 FF FF */	li r0, -1
/* 8075DF88  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075DF8C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075DF90  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075DF94  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075DF98  80 9F 0A 6C */	lwz r4, 0xa6c(r31)
/* 8075DF9C  38 A0 00 00 */	li r5, 0
/* 8075DFA0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000889C@ha */
/* 8075DFA4  38 C6 88 9C */	addi r6, r6, 0x889C /* 0x0000889C@l */
/* 8075DFA8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8075DFAC  39 00 00 00 */	li r8, 0
/* 8075DFB0  39 20 00 00 */	li r9, 0
/* 8075DFB4  39 40 00 00 */	li r10, 0
/* 8075DFB8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DFBC  4B 8E F5 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075DFC0  90 7F 0A 6C */	stw r3, 0xa6c(r31)
/* 8075DFC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F3@ha */
/* 8075DFC8  38 03 03 F3 */	addi r0, r3, 0x03F3 /* 0x000703F3@l */
/* 8075DFCC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8075DFD0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075DFD4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075DFD8  80 63 00 00 */	lwz r3, 0(r3)
/* 8075DFDC  38 81 00 5C */	addi r4, r1, 0x5c
/* 8075DFE0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075DFE4  38 C0 00 00 */	li r6, 0
/* 8075DFE8  38 E0 00 00 */	li r7, 0
/* 8075DFEC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075DFF0  FC 40 08 90 */	fmr f2, f1
/* 8075DFF4  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075DFF8  FC 80 18 90 */	fmr f4, f3
/* 8075DFFC  39 00 00 00 */	li r8, 0
/* 8075E000  4B B4 E5 0D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075E004  38 61 00 90 */	addi r3, r1, 0x90
/* 8075E008  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8075E00C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075E010  4B B0 8B 25 */	bl __mi__4cXyzCFRC3Vec
/* 8075E014  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8075E018  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8075E01C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8075E020  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8075E024  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8075E028  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8075E02C  80 7F 08 BC */	lwz r3, 0x8bc(r31)
/* 8075E030  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8075E034  40 82 01 10 */	bne lbl_8075E144
/* 8075E038  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8075E03C  40 82 01 08 */	bne lbl_8075E144
/* 8075E040  38 61 00 9C */	addi r3, r1, 0x9c
/* 8075E044  4B BE 90 F5 */	bl PSVECSquareMag
/* 8075E048  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075E04C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075E050  40 81 00 58 */	ble lbl_8075E0A8
/* 8075E054  FC 00 08 34 */	frsqrte f0, f1
/* 8075E058  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075E05C  FC 44 00 32 */	fmul f2, f4, f0
/* 8075E060  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075E064  FC 00 00 32 */	fmul f0, f0, f0
/* 8075E068  FC 01 00 32 */	fmul f0, f1, f0
/* 8075E06C  FC 03 00 28 */	fsub f0, f3, f0
/* 8075E070  FC 02 00 32 */	fmul f0, f2, f0
/* 8075E074  FC 44 00 32 */	fmul f2, f4, f0
/* 8075E078  FC 00 00 32 */	fmul f0, f0, f0
/* 8075E07C  FC 01 00 32 */	fmul f0, f1, f0
/* 8075E080  FC 03 00 28 */	fsub f0, f3, f0
/* 8075E084  FC 02 00 32 */	fmul f0, f2, f0
/* 8075E088  FC 44 00 32 */	fmul f2, f4, f0
/* 8075E08C  FC 00 00 32 */	fmul f0, f0, f0
/* 8075E090  FC 01 00 32 */	fmul f0, f1, f0
/* 8075E094  FC 03 00 28 */	fsub f0, f3, f0
/* 8075E098  FC 02 00 32 */	fmul f0, f2, f0
/* 8075E09C  FC 21 00 32 */	fmul f1, f1, f0
/* 8075E0A0  FC 20 08 18 */	frsp f1, f1
/* 8075E0A4  48 00 00 88 */	b lbl_8075E12C
lbl_8075E0A8:
/* 8075E0A8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075E0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075E0B0  40 80 00 10 */	bge lbl_8075E0C0
/* 8075E0B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8075E0B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8075E0BC  48 00 00 70 */	b lbl_8075E12C
lbl_8075E0C0:
/* 8075E0C0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8075E0C4  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8075E0C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075E0CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075E0D0  7C 03 00 00 */	cmpw r3, r0
/* 8075E0D4  41 82 00 14 */	beq lbl_8075E0E8
/* 8075E0D8  40 80 00 40 */	bge lbl_8075E118
/* 8075E0DC  2C 03 00 00 */	cmpwi r3, 0
/* 8075E0E0  41 82 00 20 */	beq lbl_8075E100
/* 8075E0E4  48 00 00 34 */	b lbl_8075E118
lbl_8075E0E8:
/* 8075E0E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075E0EC  41 82 00 0C */	beq lbl_8075E0F8
/* 8075E0F0  38 00 00 01 */	li r0, 1
/* 8075E0F4  48 00 00 28 */	b lbl_8075E11C
lbl_8075E0F8:
/* 8075E0F8  38 00 00 02 */	li r0, 2
/* 8075E0FC  48 00 00 20 */	b lbl_8075E11C
lbl_8075E100:
/* 8075E100  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075E104  41 82 00 0C */	beq lbl_8075E110
/* 8075E108  38 00 00 05 */	li r0, 5
/* 8075E10C  48 00 00 10 */	b lbl_8075E11C
lbl_8075E110:
/* 8075E110  38 00 00 03 */	li r0, 3
/* 8075E114  48 00 00 08 */	b lbl_8075E11C
lbl_8075E118:
/* 8075E118  38 00 00 04 */	li r0, 4
lbl_8075E11C:
/* 8075E11C  2C 00 00 01 */	cmpwi r0, 1
/* 8075E120  40 82 00 0C */	bne lbl_8075E12C
/* 8075E124  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8075E128  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8075E12C:
/* 8075E12C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8075E130  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075E134  41 80 00 10 */	blt lbl_8075E144
/* 8075E138  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075E13C  28 00 00 00 */	cmplwi r0, 0
/* 8075E140  40 82 0F 64 */	bne lbl_8075F0A4
lbl_8075E144:
/* 8075E144  38 00 00 0A */	li r0, 0xa
/* 8075E148  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075E14C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075E150  D0 1F 07 C8 */	stfs f0, 0x7c8(r31)
/* 8075E154  38 80 00 00 */	li r4, 0
/* 8075E158  98 9F 07 D7 */	stb r4, 0x7d7(r31)
/* 8075E15C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075E160  90 81 00 08 */	stw r4, 8(r1)
/* 8075E164  38 00 FF FF */	li r0, -1
/* 8075E168  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075E16C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075E170  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075E174  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075E178  38 80 00 00 */	li r4, 0
/* 8075E17C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000889B@ha */
/* 8075E180  38 A5 88 9B */	addi r5, r5, 0x889B /* 0x0000889B@l */
/* 8075E184  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075E188  38 E0 00 00 */	li r7, 0
/* 8075E18C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8075E190  39 21 00 B4 */	addi r9, r1, 0xb4
/* 8075E194  39 40 00 FF */	li r10, 0xff
/* 8075E198  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E19C  4B 8E E8 F5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075E1A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F4@ha */
/* 8075E1A4  38 03 03 F4 */	addi r0, r3, 0x03F4 /* 0x000703F4@l */
/* 8075E1A8  90 01 00 58 */	stw r0, 0x58(r1)
/* 8075E1AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075E1B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075E1B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E1B8  38 81 00 58 */	addi r4, r1, 0x58
/* 8075E1BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075E1C0  38 C0 00 00 */	li r6, 0
/* 8075E1C4  38 E0 00 00 */	li r7, 0
/* 8075E1C8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E1CC  FC 40 08 90 */	fmr f2, f1
/* 8075E1D0  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075E1D4  FC 80 18 90 */	fmr f4, f3
/* 8075E1D8  39 00 00 00 */	li r8, 0
/* 8075E1DC  4B B4 D7 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075E1E0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075E1E4  38 03 00 01 */	addi r0, r3, 1
/* 8075E1E8  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075E1EC  48 00 0E B8 */	b lbl_8075F0A4
lbl_8075E1F0:
/* 8075E1F0  88 1F 08 42 */	lbz r0, 0x842(r31)
/* 8075E1F4  28 00 00 00 */	cmplwi r0, 0
/* 8075E1F8  40 82 00 AC */	bne lbl_8075E2A4
/* 8075E1FC  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8075E200  D0 1F 07 C8 */	stfs f0, 0x7c8(r31)
/* 8075E204  38 00 00 01 */	li r0, 1
/* 8075E208  98 1F 08 42 */	stb r0, 0x842(r31)
/* 8075E20C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075E210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075E214  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8075E218  38 80 00 00 */	li r4, 0
/* 8075E21C  90 81 00 08 */	stw r4, 8(r1)
/* 8075E220  38 00 FF FF */	li r0, -1
/* 8075E224  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075E228  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075E22C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075E230  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075E234  38 80 00 00 */	li r4, 0
/* 8075E238  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A4@ha */
/* 8075E23C  38 A5 84 A4 */	addi r5, r5, 0x84A4 /* 0x000084A4@l */
/* 8075E240  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075E244  38 E0 00 00 */	li r7, 0
/* 8075E248  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8075E24C  39 21 00 B4 */	addi r9, r1, 0xb4
/* 8075E250  39 40 00 FF */	li r10, 0xff
/* 8075E254  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E258  4B 8E E8 39 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075E25C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F5@ha */
/* 8075E260  38 03 03 F5 */	addi r0, r3, 0x03F5 /* 0x000703F5@l */
/* 8075E264  90 01 00 54 */	stw r0, 0x54(r1)
/* 8075E268  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075E26C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075E270  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E274  38 81 00 54 */	addi r4, r1, 0x54
/* 8075E278  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075E27C  38 C0 00 00 */	li r6, 0
/* 8075E280  38 E0 00 00 */	li r7, 0
/* 8075E284  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E288  FC 40 08 90 */	fmr f2, f1
/* 8075E28C  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075E290  FC 80 18 90 */	fmr f4, f3
/* 8075E294  39 00 00 00 */	li r8, 0
/* 8075E298  4B B4 D6 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075E29C  38 00 00 28 */	li r0, 0x28
/* 8075E2A0  98 1F 07 D0 */	stb r0, 0x7d0(r31)
lbl_8075E2A4:
/* 8075E2A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F6@ha */
/* 8075E2A8  38 03 03 F6 */	addi r0, r3, 0x03F6 /* 0x000703F6@l */
/* 8075E2AC  90 01 00 50 */	stw r0, 0x50(r1)
/* 8075E2B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075E2B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075E2B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E2BC  38 81 00 50 */	addi r4, r1, 0x50
/* 8075E2C0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075E2C4  38 C0 00 00 */	li r6, 0
/* 8075E2C8  38 E0 00 00 */	li r7, 0
/* 8075E2CC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E2D0  FC 40 08 90 */	fmr f2, f1
/* 8075E2D4  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075E2D8  FC 80 18 90 */	fmr f4, f3
/* 8075E2DC  39 00 00 00 */	li r8, 0
/* 8075E2E0  4B B4 E2 2D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075E2E4  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075E2E8  28 00 00 00 */	cmplwi r0, 0
/* 8075E2EC  40 82 0D B8 */	bne lbl_8075F0A4
/* 8075E2F0  38 00 00 00 */	li r0, 0
/* 8075E2F4  B0 01 00 70 */	sth r0, 0x70(r1)
/* 8075E2F8  7F E3 FB 78 */	mr r3, r31
/* 8075E2FC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8075E300  4B 8B C4 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8075E304  B0 61 00 72 */	sth r3, 0x72(r1)
/* 8075E308  38 00 00 00 */	li r0, 0
/* 8075E30C  B0 01 00 74 */	sth r0, 0x74(r1)
/* 8075E310  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E314  54 00 68 24 */	slwi r0, r0, 0xd
/* 8075E318  7C 19 07 34 */	extsh r25, r0
/* 8075E31C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075E320  38 81 00 6C */	addi r4, r1, 0x6c
/* 8075E324  4B 8B B6 99 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075E328  2C 03 00 00 */	cmpwi r3, 0
/* 8075E32C  41 82 01 C0 */	beq lbl_8075E4EC
/* 8075E330  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075E334  28 03 00 00 */	cmplwi r3, 0
/* 8075E338  41 82 01 B4 */	beq lbl_8075E4EC
/* 8075E33C  88 03 07 D8 */	lbz r0, 0x7d8(r3)
/* 8075E340  28 00 00 02 */	cmplwi r0, 2
/* 8075E344  40 82 00 14 */	bne lbl_8075E358
/* 8075E348  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E34C  54 00 08 3C */	slwi r0, r0, 1
/* 8075E350  38 7E 02 4C */	addi r3, r30, 0x24c
/* 8075E354  7F 23 02 AE */	lhax r25, r3, r0
lbl_8075E358:
/* 8075E358  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8075E35C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8075E360  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E364  7F 24 CB 78 */	mr r4, r25
/* 8075E368  4B 8A E0 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 8075E36C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075E370  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075E374  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8075E378  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075E37C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8075E380  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075E384  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075E388  88 03 07 D8 */	lbz r0, 0x7d8(r3)
/* 8075E38C  28 00 00 02 */	cmplwi r0, 2
/* 8075E390  40 82 00 1C */	bne lbl_8075E3AC
/* 8075E394  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075E398  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8075E39C  4B B0 95 B9 */	bl cM_rndF__Ff
/* 8075E3A0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8075E3A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8075E3A8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
lbl_8075E3AC:
/* 8075E3AC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8075E3B0  38 81 00 9C */	addi r4, r1, 0x9c
/* 8075E3B4  4B B1 2B 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8075E3B8  38 61 00 9C */	addi r3, r1, 0x9c
/* 8075E3BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075E3C0  7C 65 1B 78 */	mr r5, r3
/* 8075E3C4  4B BE 8C CD */	bl PSVECAdd
/* 8075E3C8  80 81 00 6C */	lwz r4, 0x6c(r1)
/* 8075E3CC  88 04 07 D8 */	lbz r0, 0x7d8(r4)
/* 8075E3D0  28 00 00 02 */	cmplwi r0, 2
/* 8075E3D4  40 82 00 14 */	bne lbl_8075E3E8
/* 8075E3D8  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 8075E3DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8075E3E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8075E3E4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
lbl_8075E3E8:
/* 8075E3E8  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E3EC  54 03 10 3A */	slwi r3, r0, 2
/* 8075E3F0  38 03 07 DC */	addi r0, r3, 0x7dc
/* 8075E3F4  7C 04 00 2E */	lwzx r0, r4, r0
/* 8075E3F8  28 00 00 00 */	cmplwi r0, 0
/* 8075E3FC  40 82 00 CC */	bne lbl_8075E4C8
/* 8075E400  38 7E 02 04 */	addi r3, r30, 0x204
/* 8075E404  88 C4 07 D8 */	lbz r6, 0x7d8(r4)
/* 8075E408  1C 06 00 0C */	mulli r0, r6, 0xc
/* 8075E40C  7C 63 02 14 */	add r3, r3, r0
/* 8075E410  80 A3 00 04 */	lwz r5, 4(r3)
/* 8075E414  98 DB 00 69 */	stb r6, 0x69(r27)
/* 8075E418  88 64 07 D8 */	lbz r3, 0x7d8(r4)
/* 8075E41C  28 03 00 02 */	cmplwi r3, 2
/* 8075E420  40 82 00 10 */	bne lbl_8075E430
/* 8075E424  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E428  54 00 40 2E */	slwi r0, r0, 8
/* 8075E42C  7C A5 03 78 */	or r5, r5, r0
lbl_8075E430:
/* 8075E430  28 03 00 03 */	cmplwi r3, 3
/* 8075E434  40 82 00 0C */	bne lbl_8075E440
/* 8075E438  38 00 00 C8 */	li r0, 0xc8
/* 8075E43C  B0 01 00 74 */	sth r0, 0x74(r1)
lbl_8075E440:
/* 8075E440  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075E444  7C 07 07 74 */	extsb r7, r0
/* 8075E448  38 00 00 00 */	li r0, 0
/* 8075E44C  90 01 00 08 */	stw r0, 8(r1)
/* 8075E450  88 04 07 D8 */	lbz r0, 0x7d8(r4)
/* 8075E454  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8075E458  38 7E 02 04 */	addi r3, r30, 0x204
/* 8075E45C  7C 63 02 AE */	lhax r3, r3, r0
/* 8075E460  28 1F 00 00 */	cmplwi r31, 0
/* 8075E464  41 82 00 0C */	beq lbl_8075E470
/* 8075E468  80 9F 00 04 */	lwz r4, 4(r31)
/* 8075E46C  48 00 00 08 */	b lbl_8075E474
lbl_8075E470:
/* 8075E470  38 80 FF FF */	li r4, -1
lbl_8075E474:
/* 8075E474  38 C1 00 9C */	addi r6, r1, 0x9c
/* 8075E478  39 01 00 70 */	addi r8, r1, 0x70
/* 8075E47C  39 20 00 00 */	li r9, 0
/* 8075E480  39 40 FF FF */	li r10, -1
/* 8075E484  4B 8B BA 6D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8075E488  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8075E48C  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E490  54 04 10 3A */	slwi r4, r0, 2
/* 8075E494  38 04 07 DC */	addi r0, r4, 0x7dc
/* 8075E498  7C 65 01 2E */	stwx r3, r5, r0
/* 8075E49C  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8075E4A0  88 9F 07 D7 */	lbz r4, 0x7d7(r31)
/* 8075E4A4  54 83 10 3A */	slwi r3, r4, 2
/* 8075E4A8  38 03 07 DC */	addi r0, r3, 0x7dc
/* 8075E4AC  7C 05 00 2E */	lwzx r0, r5, r0
/* 8075E4B0  28 00 00 00 */	cmplwi r0, 0
/* 8075E4B4  41 82 00 14 */	beq lbl_8075E4C8
/* 8075E4B8  38 04 00 01 */	addi r0, r4, 1
/* 8075E4BC  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075E4C0  38 00 00 02 */	li r0, 2
/* 8075E4C4  98 1F 07 D0 */	stb r0, 0x7d0(r31)
lbl_8075E4C8:
/* 8075E4C8  88 BF 07 D7 */	lbz r5, 0x7d7(r31)
/* 8075E4CC  38 9E 02 04 */	addi r4, r30, 0x204
/* 8075E4D0  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075E4D4  88 03 07 D8 */	lbz r0, 0x7d8(r3)
/* 8075E4D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8075E4DC  7C 64 02 14 */	add r3, r4, r0
/* 8075E4E0  80 03 00 08 */	lwz r0, 8(r3)
/* 8075E4E4  7C 05 00 00 */	cmpw r5, r0
/* 8075E4E8  41 80 0B BC */	blt lbl_8075F0A4
lbl_8075E4EC:
/* 8075E4EC  38 00 00 64 */	li r0, 0x64
/* 8075E4F0  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075E4F4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075E4F8  38 03 00 01 */	addi r0, r3, 1
/* 8075E4FC  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075E500  48 00 0B A4 */	b lbl_8075F0A4
lbl_8075E504:
/* 8075E504  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F6@ha */
/* 8075E508  38 03 03 F6 */	addi r0, r3, 0x03F6 /* 0x000703F6@l */
/* 8075E50C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8075E510  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075E514  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075E518  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E51C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8075E520  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075E524  38 C0 00 00 */	li r6, 0
/* 8075E528  38 E0 00 00 */	li r7, 0
/* 8075E52C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E530  FC 40 08 90 */	fmr f2, f1
/* 8075E534  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075E538  FC 80 18 90 */	fmr f4, f3
/* 8075E53C  39 00 00 00 */	li r8, 0
/* 8075E540  4B B4 DF CD */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075E544  48 00 0B 60 */	b lbl_8075F0A4
lbl_8075E548:
/* 8075E548  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075E54C  28 00 00 00 */	cmplwi r0, 0
/* 8075E550  41 82 00 48 */	beq lbl_8075E598
/* 8075E554  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F6@ha */
/* 8075E558  38 03 03 F6 */	addi r0, r3, 0x03F6 /* 0x000703F6@l */
/* 8075E55C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8075E560  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075E564  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075E568  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E56C  38 81 00 48 */	addi r4, r1, 0x48
/* 8075E570  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075E574  38 C0 00 00 */	li r6, 0
/* 8075E578  38 E0 00 00 */	li r7, 0
/* 8075E57C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E580  FC 40 08 90 */	fmr f2, f1
/* 8075E584  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075E588  FC 80 18 90 */	fmr f4, f3
/* 8075E58C  39 00 00 00 */	li r8, 0
/* 8075E590  4B B4 DF 7D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075E594  48 00 0B 10 */	b lbl_8075F0A4
lbl_8075E598:
/* 8075E598  38 00 00 01 */	li r0, 1
/* 8075E59C  90 1F 05 D8 */	stw r0, 0x5d8(r31)
/* 8075E5A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F7@ha */
/* 8075E5A4  38 03 03 F7 */	addi r0, r3, 0x03F7 /* 0x000703F7@l */
/* 8075E5A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8075E5AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075E5B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075E5B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E5B8  38 81 00 44 */	addi r4, r1, 0x44
/* 8075E5BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075E5C0  38 C0 00 00 */	li r6, 0
/* 8075E5C4  38 E0 00 00 */	li r7, 0
/* 8075E5C8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E5CC  FC 40 08 90 */	fmr f2, f1
/* 8075E5D0  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075E5D4  FC 80 18 90 */	fmr f4, f3
/* 8075E5D8  39 00 00 00 */	li r8, 0
/* 8075E5DC  4B B4 D3 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075E5E0  38 00 00 32 */	li r0, 0x32
/* 8075E5E4  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075E5E8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075E5EC  38 03 00 01 */	addi r0, r3, 1
/* 8075E5F0  90 1F 06 84 */	stw r0, 0x684(r31)
/* 8075E5F4  48 00 0A B0 */	b lbl_8075F0A4
lbl_8075E5F8:
/* 8075E5F8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8075E5FC  4B 8A EE 2D */	bl play__14mDoExt_baseAnmFv
/* 8075E600  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075E604  28 00 00 00 */	cmplwi r0, 0
/* 8075E608  40 82 0A 9C */	bne lbl_8075F0A4
/* 8075E60C  7F E3 FB 78 */	mr r3, r31
/* 8075E610  4B 8B B6 6D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8075E614  48 00 0A 90 */	b lbl_8075F0A4
lbl_8075E618:
/* 8075E618  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075E61C  28 00 00 00 */	cmplwi r0, 0
/* 8075E620  40 82 0A 84 */	bne lbl_8075F0A4
/* 8075E624  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 8075E628  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075E62C  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 8075E630  4B B1 14 51 */	bl cLib_addCalc0__FPfff
/* 8075E634  C0 3F 07 C8 */	lfs f1, 0x7c8(r31)
/* 8075E638  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8075E63C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075E640  40 80 0A 64 */	bge lbl_8075F0A4
/* 8075E644  7F E3 FB 78 */	mr r3, r31
/* 8075E648  4B 8B B6 35 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8075E64C  48 00 0A 58 */	b lbl_8075F0A4
lbl_8075E650:
/* 8075E650  88 1F 07 D5 */	lbz r0, 0x7d5(r31)
/* 8075E654  28 00 00 FF */	cmplwi r0, 0xff
/* 8075E658  40 82 00 10 */	bne lbl_8075E668
/* 8075E65C  7F E3 FB 78 */	mr r3, r31
/* 8075E660  4B 8B B6 1D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8075E664  48 00 0A 40 */	b lbl_8075F0A4
lbl_8075E668:
/* 8075E668  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075E66C  38 81 00 6C */	addi r4, r1, 0x6c
/* 8075E670  4B 8B B3 4D */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075E674  2C 03 00 00 */	cmpwi r3, 0
/* 8075E678  41 82 00 44 */	beq lbl_8075E6BC
/* 8075E67C  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075E680  28 03 00 00 */	cmplwi r3, 0
/* 8075E684  41 82 00 38 */	beq lbl_8075E6BC
/* 8075E688  80 63 04 A4 */	lwz r3, 0x4a4(r3)
/* 8075E68C  38 81 00 68 */	addi r4, r1, 0x68
/* 8075E690  4B 8B B3 2D */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075E694  2C 03 00 00 */	cmpwi r3, 0
/* 8075E698  41 82 00 24 */	beq lbl_8075E6BC
/* 8075E69C  80 61 00 68 */	lwz r3, 0x68(r1)
/* 8075E6A0  28 03 00 00 */	cmplwi r3, 0
/* 8075E6A4  41 82 00 18 */	beq lbl_8075E6BC
/* 8075E6A8  88 03 08 41 */	lbz r0, 0x841(r3)
/* 8075E6AC  28 00 00 00 */	cmplwi r0, 0
/* 8075E6B0  41 82 00 0C */	beq lbl_8075E6BC
/* 8075E6B4  38 00 00 14 */	li r0, 0x14
/* 8075E6B8  98 1F 07 D0 */	stb r0, 0x7d0(r31)
lbl_8075E6BC:
/* 8075E6BC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075E6C0  38 03 00 01 */	addi r0, r3, 1
/* 8075E6C4  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075E6C8:
/* 8075E6C8  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E6CC  28 00 00 00 */	cmplwi r0, 0
/* 8075E6D0  40 82 00 60 */	bne lbl_8075E730
/* 8075E6D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075E6D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075E6DC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8075E6E0  38 00 00 FF */	li r0, 0xff
/* 8075E6E4  90 01 00 08 */	stw r0, 8(r1)
/* 8075E6E8  38 80 00 00 */	li r4, 0
/* 8075E6EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075E6F0  38 00 FF FF */	li r0, -1
/* 8075E6F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075E6F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075E6FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075E700  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075E704  80 9F 0A 68 */	lwz r4, 0xa68(r31)
/* 8075E708  38 A0 00 00 */	li r5, 0
/* 8075E70C  3C C0 00 01 */	lis r6, 0x0001 /* 0x000088A2@ha */
/* 8075E710  38 C6 88 A2 */	addi r6, r6, 0x88A2 /* 0x000088A2@l */
/* 8075E714  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8075E718  39 00 00 00 */	li r8, 0
/* 8075E71C  39 20 00 00 */	li r9, 0
/* 8075E720  39 40 00 00 */	li r10, 0
/* 8075E724  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E728  4B 8E ED A5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075E72C  90 7F 0A 68 */	stw r3, 0xa68(r31)
lbl_8075E730:
/* 8075E730  88 1F 07 D5 */	lbz r0, 0x7d5(r31)
/* 8075E734  54 00 08 3C */	slwi r0, r0, 1
/* 8075E738  38 7E 02 4C */	addi r3, r30, 0x24c
/* 8075E73C  7C 83 02 AE */	lhax r4, r3, r0
/* 8075E740  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8075E744  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8075E748  80 63 00 00 */	lwz r3, 0(r3)
/* 8075E74C  4B 8A DC 91 */	bl mDoMtx_YrotS__FPA4_fs
/* 8075E750  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075E754  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075E758  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 8075E75C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075E760  88 1F 07 D5 */	lbz r0, 0x7d5(r31)
/* 8075E764  54 00 10 3A */	slwi r0, r0, 2
/* 8075E768  38 7E 02 64 */	addi r3, r30, 0x264
/* 8075E76C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8075E770  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075E774  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8075E778  38 81 00 9C */	addi r4, r1, 0x9c
/* 8075E77C  4B B1 27 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8075E780  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 8075E784  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8075E788  EC 01 00 2A */	fadds f0, f1, f0
/* 8075E78C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8075E790  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E794  28 00 00 00 */	cmplwi r0, 0
/* 8075E798  40 82 00 40 */	bne lbl_8075E7D8
/* 8075E79C  88 1F 07 D0 */	lbz r0, 0x7d0(r31)
/* 8075E7A0  28 00 00 00 */	cmplwi r0, 0
/* 8075E7A4  41 82 00 1C */	beq lbl_8075E7C0
/* 8075E7A8  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 8075E7AC  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 8075E7B0  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8075E7B4  C0 7E 01 FC */	lfs f3, 0x1fc(r30)
/* 8075E7B8  4B B1 12 85 */	bl cLib_addCalc2__FPffff
/* 8075E7BC  48 00 08 E8 */	b lbl_8075F0A4
lbl_8075E7C0:
/* 8075E7C0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075E7C4  38 81 00 9C */	addi r4, r1, 0x9c
/* 8075E7C8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8075E7CC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8075E7D0  C0 7E 01 FC */	lfs f3, 0x1fc(r30)
/* 8075E7D4  4B B1 12 E5 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8075E7D8:
/* 8075E7D8  38 61 00 84 */	addi r3, r1, 0x84
/* 8075E7DC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8075E7E0  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8075E7E4  4B B0 83 51 */	bl __mi__4cXyzCFRC3Vec
/* 8075E7E8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8075E7EC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075E7F0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8075E7F4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075E7F8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8075E7FC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075E800  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075E804  28 00 00 00 */	cmplwi r0, 0
/* 8075E808  40 82 01 08 */	bne lbl_8075E910
/* 8075E80C  80 1F 08 BC */	lwz r0, 0x8bc(r31)
/* 8075E810  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8075E814  40 82 00 FC */	bne lbl_8075E910
/* 8075E818  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8075E81C  4B BE 89 1D */	bl PSVECSquareMag
/* 8075E820  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075E824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075E828  40 81 00 58 */	ble lbl_8075E880
/* 8075E82C  FC 00 08 34 */	frsqrte f0, f1
/* 8075E830  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075E834  FC 44 00 32 */	fmul f2, f4, f0
/* 8075E838  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075E83C  FC 00 00 32 */	fmul f0, f0, f0
/* 8075E840  FC 01 00 32 */	fmul f0, f1, f0
/* 8075E844  FC 03 00 28 */	fsub f0, f3, f0
/* 8075E848  FC 02 00 32 */	fmul f0, f2, f0
/* 8075E84C  FC 44 00 32 */	fmul f2, f4, f0
/* 8075E850  FC 00 00 32 */	fmul f0, f0, f0
/* 8075E854  FC 01 00 32 */	fmul f0, f1, f0
/* 8075E858  FC 03 00 28 */	fsub f0, f3, f0
/* 8075E85C  FC 02 00 32 */	fmul f0, f2, f0
/* 8075E860  FC 44 00 32 */	fmul f2, f4, f0
/* 8075E864  FC 00 00 32 */	fmul f0, f0, f0
/* 8075E868  FC 01 00 32 */	fmul f0, f1, f0
/* 8075E86C  FC 03 00 28 */	fsub f0, f3, f0
/* 8075E870  FC 02 00 32 */	fmul f0, f2, f0
/* 8075E874  FC 21 00 32 */	fmul f1, f1, f0
/* 8075E878  FC 20 08 18 */	frsp f1, f1
/* 8075E87C  48 00 00 88 */	b lbl_8075E904
lbl_8075E880:
/* 8075E880  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075E884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075E888  40 80 00 10 */	bge lbl_8075E898
/* 8075E88C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8075E890  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8075E894  48 00 00 70 */	b lbl_8075E904
lbl_8075E898:
/* 8075E898  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8075E89C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8075E8A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075E8A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075E8A8  7C 03 00 00 */	cmpw r3, r0
/* 8075E8AC  41 82 00 14 */	beq lbl_8075E8C0
/* 8075E8B0  40 80 00 40 */	bge lbl_8075E8F0
/* 8075E8B4  2C 03 00 00 */	cmpwi r3, 0
/* 8075E8B8  41 82 00 20 */	beq lbl_8075E8D8
/* 8075E8BC  48 00 00 34 */	b lbl_8075E8F0
lbl_8075E8C0:
/* 8075E8C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075E8C4  41 82 00 0C */	beq lbl_8075E8D0
/* 8075E8C8  38 00 00 01 */	li r0, 1
/* 8075E8CC  48 00 00 28 */	b lbl_8075E8F4
lbl_8075E8D0:
/* 8075E8D0  38 00 00 02 */	li r0, 2
/* 8075E8D4  48 00 00 20 */	b lbl_8075E8F4
lbl_8075E8D8:
/* 8075E8D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075E8DC  41 82 00 0C */	beq lbl_8075E8E8
/* 8075E8E0  38 00 00 05 */	li r0, 5
/* 8075E8E4  48 00 00 10 */	b lbl_8075E8F4
lbl_8075E8E8:
/* 8075E8E8  38 00 00 03 */	li r0, 3
/* 8075E8EC  48 00 00 08 */	b lbl_8075E8F4
lbl_8075E8F0:
/* 8075E8F0  38 00 00 04 */	li r0, 4
lbl_8075E8F4:
/* 8075E8F4  2C 00 00 01 */	cmpwi r0, 1
/* 8075E8F8  40 82 00 0C */	bne lbl_8075E904
/* 8075E8FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8075E900  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8075E904:
/* 8075E904  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8075E908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075E90C  40 80 07 98 */	bge lbl_8075F0A4
lbl_8075E910:
/* 8075E910  88 7F 07 D7 */	lbz r3, 0x7d7(r31)
/* 8075E914  38 03 00 01 */	addi r0, r3, 1
/* 8075E918  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075E91C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 8075E920  38 81 00 6C */	addi r4, r1, 0x6c
/* 8075E924  4B 8B B0 99 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075E928  2C 03 00 00 */	cmpwi r3, 0
/* 8075E92C  41 82 02 80 */	beq lbl_8075EBAC
/* 8075E930  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8075E934  28 03 00 00 */	cmplwi r3, 0
/* 8075E938  41 82 02 74 */	beq lbl_8075EBAC
/* 8075E93C  80 63 04 A4 */	lwz r3, 0x4a4(r3)
/* 8075E940  38 81 00 68 */	addi r4, r1, 0x68
/* 8075E944  4B 8B B0 79 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075E948  2C 03 00 00 */	cmpwi r3, 0
/* 8075E94C  41 82 02 60 */	beq lbl_8075EBAC
/* 8075E950  80 61 00 68 */	lwz r3, 0x68(r1)
/* 8075E954  28 03 00 00 */	cmplwi r3, 0
/* 8075E958  41 82 02 54 */	beq lbl_8075EBAC
/* 8075E95C  88 03 08 41 */	lbz r0, 0x841(r3)
/* 8075E960  28 00 00 00 */	cmplwi r0, 0
/* 8075E964  41 82 00 E4 */	beq lbl_8075EA48
/* 8075E968  38 00 00 01 */	li r0, 1
/* 8075E96C  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075E970  88 1B 00 68 */	lbz r0, 0x68(r27)
/* 8075E974  28 00 00 00 */	cmplwi r0, 0
/* 8075E978  41 82 07 2C */	beq lbl_8075F0A4
/* 8075E97C  3B 00 00 00 */	li r24, 0
/* 8075E980  3B 40 00 00 */	li r26, 0
/* 8075E984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075E988  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075E98C  3B 7C 04 6C */	addi r27, r28, 0x46c
lbl_8075E990:
/* 8075E990  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075E994  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075E998  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8075E99C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075E9A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8075E9A4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075E9A8  C0 1F 09 28 */	lfs f0, 0x928(r31)
/* 8075E9AC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075E9B0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075E9B4  38 80 00 00 */	li r4, 0
/* 8075E9B8  90 81 00 08 */	stw r4, 8(r1)
/* 8075E9BC  38 00 FF FF */	li r0, -1
/* 8075E9C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075E9C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075E9C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075E9CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075E9D0  38 80 00 00 */	li r4, 0
/* 8075E9D4  7C BB D2 2E */	lhzx r5, r27, r26
/* 8075E9D8  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 8075E9DC  38 E0 00 00 */	li r7, 0
/* 8075E9E0  39 00 00 00 */	li r8, 0
/* 8075E9E4  39 20 00 00 */	li r9, 0
/* 8075E9E8  39 40 00 FF */	li r10, 0xff
/* 8075E9EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075E9F0  4B 8E E0 A1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075E9F4  3B 18 00 01 */	addi r24, r24, 1
/* 8075E9F8  2C 18 00 02 */	cmpwi r24, 2
/* 8075E9FC  3B 5A 00 02 */	addi r26, r26, 2
/* 8075EA00  41 80 FF 90 */	blt lbl_8075E990
/* 8075EA04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F8@ha */
/* 8075EA08  38 03 03 F8 */	addi r0, r3, 0x03F8 /* 0x000703F8@l */
/* 8075EA0C  90 01 00 40 */	stw r0, 0x40(r1)
/* 8075EA10  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075EA14  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075EA18  80 63 00 00 */	lwz r3, 0(r3)
/* 8075EA1C  38 81 00 40 */	addi r4, r1, 0x40
/* 8075EA20  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075EA24  38 C0 00 00 */	li r6, 0
/* 8075EA28  38 E0 00 00 */	li r7, 0
/* 8075EA2C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075EA30  FC 40 08 90 */	fmr f2, f1
/* 8075EA34  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075EA38  FC 80 18 90 */	fmr f4, f3
/* 8075EA3C  39 00 00 00 */	li r8, 0
/* 8075EA40  4B B4 CF 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075EA44  48 00 00 E4 */	b lbl_8075EB28
lbl_8075EA48:
/* 8075EA48  88 1F 07 D7 */	lbz r0, 0x7d7(r31)
/* 8075EA4C  28 00 00 1E */	cmplwi r0, 0x1e
/* 8075EA50  40 80 00 D8 */	bge lbl_8075EB28
/* 8075EA54  28 00 00 01 */	cmplwi r0, 1
/* 8075EA58  40 82 06 4C */	bne lbl_8075F0A4
/* 8075EA5C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075EA60  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075EA64  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8075EA68  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075EA6C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8075EA70  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075EA74  C0 1F 09 28 */	lfs f0, 0x928(r31)
/* 8075EA78  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075EA7C  3B 00 00 00 */	li r24, 0
/* 8075EA80  3B 40 00 00 */	li r26, 0
/* 8075EA84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075EA88  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075EA8C  3B 7C 04 6C */	addi r27, r28, 0x46c
lbl_8075EA90:
/* 8075EA90  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075EA94  38 80 00 00 */	li r4, 0
/* 8075EA98  90 81 00 08 */	stw r4, 8(r1)
/* 8075EA9C  38 00 FF FF */	li r0, -1
/* 8075EAA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075EAA4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075EAA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075EAAC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075EAB0  38 80 00 00 */	li r4, 0
/* 8075EAB4  7C BB D2 2E */	lhzx r5, r27, r26
/* 8075EAB8  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 8075EABC  38 E0 00 00 */	li r7, 0
/* 8075EAC0  39 00 00 00 */	li r8, 0
/* 8075EAC4  39 20 00 00 */	li r9, 0
/* 8075EAC8  39 40 00 FF */	li r10, 0xff
/* 8075EACC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075EAD0  4B 8E DF C1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075EAD4  3B 18 00 01 */	addi r24, r24, 1
/* 8075EAD8  2C 18 00 02 */	cmpwi r24, 2
/* 8075EADC  3B 5A 00 02 */	addi r26, r26, 2
/* 8075EAE0  41 80 FF B0 */	blt lbl_8075EA90
/* 8075EAE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F8@ha */
/* 8075EAE8  38 03 03 F8 */	addi r0, r3, 0x03F8 /* 0x000703F8@l */
/* 8075EAEC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8075EAF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075EAF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075EAF8  80 63 00 00 */	lwz r3, 0(r3)
/* 8075EAFC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8075EB00  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075EB04  38 C0 00 00 */	li r6, 0
/* 8075EB08  38 E0 00 00 */	li r7, 0
/* 8075EB0C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075EB10  FC 40 08 90 */	fmr f2, f1
/* 8075EB14  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075EB18  FC 80 18 90 */	fmr f4, f3
/* 8075EB1C  39 00 00 00 */	li r8, 0
/* 8075EB20  4B B4 CE 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075EB24  48 00 05 80 */	b lbl_8075F0A4
lbl_8075EB28:
/* 8075EB28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075EB2C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8075EB30  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8075EB34  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8075EB38  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8075EB3C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8075EB40  C0 1F 09 28 */	lfs f0, 0x928(r31)
/* 8075EB44  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8075EB48  38 9E 02 04 */	addi r4, r30, 0x204
/* 8075EB4C  A8 64 00 30 */	lha r3, 0x30(r4)
/* 8075EB50  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 8075EB54  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8075EB58  28 00 00 00 */	cmplwi r0, 0
/* 8075EB5C  41 82 00 50 */	beq lbl_8075EBAC
/* 8075EB60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075EB64  7C 07 07 74 */	extsb r7, r0
/* 8075EB68  38 00 00 00 */	li r0, 0
/* 8075EB6C  90 01 00 08 */	stw r0, 8(r1)
/* 8075EB70  28 1F 00 00 */	cmplwi r31, 0
/* 8075EB74  41 82 00 0C */	beq lbl_8075EB80
/* 8075EB78  80 9F 00 04 */	lwz r4, 4(r31)
/* 8075EB7C  48 00 00 08 */	b lbl_8075EB84
lbl_8075EB80:
/* 8075EB80  38 80 FF FF */	li r4, -1
lbl_8075EB84:
/* 8075EB84  38 C1 00 9C */	addi r6, r1, 0x9c
/* 8075EB88  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 8075EB8C  39 20 00 00 */	li r9, 0
/* 8075EB90  39 40 FF FF */	li r10, -1
/* 8075EB94  4B 8B B3 5D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8075EB98  80 A1 00 68 */	lwz r5, 0x68(r1)
/* 8075EB9C  88 1F 07 D5 */	lbz r0, 0x7d5(r31)
/* 8075EBA0  54 04 10 3A */	slwi r4, r0, 2
/* 8075EBA4  38 04 07 DC */	addi r0, r4, 0x7dc
/* 8075EBA8  7C 65 01 2E */	stwx r3, r5, r0
lbl_8075EBAC:
/* 8075EBAC  7F E3 FB 78 */	mr r3, r31
/* 8075EBB0  4B 8B B0 CD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8075EBB4  48 00 04 F0 */	b lbl_8075F0A4
lbl_8075EBB8:
/* 8075EBB8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075EBBC  D0 1F 07 A8 */	stfs f0, 0x7a8(r31)
/* 8075EBC0  D0 1F 07 AC */	stfs f0, 0x7ac(r31)
/* 8075EBC4  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 8075EBC8  D0 1F 07 B0 */	stfs f0, 0x7b0(r31)
/* 8075EBCC  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 8075EBD0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075EBD4  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 8075EBD8  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8075EBDC  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 8075EBE0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075EBE4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8075EBE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8075EBEC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075EBF0  88 7F 07 D7 */	lbz r3, 0x7d7(r31)
/* 8075EBF4  28 03 00 08 */	cmplwi r3, 8
/* 8075EBF8  40 80 00 24 */	bge lbl_8075EC1C
/* 8075EBFC  38 03 00 01 */	addi r0, r3, 1
/* 8075EC00  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075EC04  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075EC08  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8075EC0C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8075EC10  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8075EC14  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8075EC18  4B B1 0E A1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8075EC1C:
/* 8075EC1C  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8075EC20  28 00 00 00 */	cmplwi r0, 0
/* 8075EC24  40 82 00 AC */	bne lbl_8075ECD0
/* 8075EC28  3B 00 00 00 */	li r24, 0
/* 8075EC2C  3B 40 00 00 */	li r26, 0
/* 8075EC30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075EC34  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8075EC38:
/* 8075EC38  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075EC3C  38 63 02 10 */	addi r3, r3, 0x210
/* 8075EC40  38 1A 0A B4 */	addi r0, r26, 0xab4
/* 8075EC44  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8075EC48  4B 8E CC D1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8075EC4C  28 03 00 00 */	cmplwi r3, 0
/* 8075EC50  41 82 00 10 */	beq lbl_8075EC60
/* 8075EC54  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8075EC58  60 00 00 04 */	ori r0, r0, 4
/* 8075EC5C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8075EC60:
/* 8075EC60  3B 18 00 01 */	addi r24, r24, 1
/* 8075EC64  2C 18 00 02 */	cmpwi r24, 2
/* 8075EC68  3B 5A 00 04 */	addi r26, r26, 4
/* 8075EC6C  41 80 FF CC */	blt lbl_8075EC38
/* 8075EC70  3B 00 00 00 */	li r24, 0
/* 8075EC74  3B 40 00 00 */	li r26, 0
/* 8075EC78  3B 7C 04 7C */	addi r27, r28, 0x47c
lbl_8075EC7C:
/* 8075EC7C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075EC80  38 80 00 00 */	li r4, 0
/* 8075EC84  90 81 00 08 */	stw r4, 8(r1)
/* 8075EC88  38 00 FF FF */	li r0, -1
/* 8075EC8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075EC90  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075EC94  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075EC98  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075EC9C  38 80 00 00 */	li r4, 0
/* 8075ECA0  7C BB D2 2E */	lhzx r5, r27, r26
/* 8075ECA4  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075ECA8  38 E0 00 00 */	li r7, 0
/* 8075ECAC  39 00 00 00 */	li r8, 0
/* 8075ECB0  39 20 00 00 */	li r9, 0
/* 8075ECB4  39 40 00 FF */	li r10, 0xff
/* 8075ECB8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075ECBC  4B 8E DD D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075ECC0  3B 18 00 01 */	addi r24, r24, 1
/* 8075ECC4  2C 18 00 02 */	cmpwi r24, 2
/* 8075ECC8  3B 5A 00 02 */	addi r26, r26, 2
/* 8075ECCC  41 80 FF B0 */	blt lbl_8075EC7C
lbl_8075ECD0:
/* 8075ECD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075ECD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075ECD8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8075ECDC  38 00 00 FF */	li r0, 0xff
/* 8075ECE0  90 01 00 08 */	stw r0, 8(r1)
/* 8075ECE4  38 80 00 00 */	li r4, 0
/* 8075ECE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075ECEC  38 00 FF FF */	li r0, -1
/* 8075ECF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075ECF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075ECF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075ECFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075ED00  80 9F 0A 6C */	lwz r4, 0xa6c(r31)
/* 8075ED04  38 A0 00 00 */	li r5, 0
/* 8075ED08  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000889C@ha */
/* 8075ED0C  38 C6 88 9C */	addi r6, r6, 0x889C /* 0x0000889C@l */
/* 8075ED10  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8075ED14  39 00 00 00 */	li r8, 0
/* 8075ED18  39 20 00 00 */	li r9, 0
/* 8075ED1C  39 40 00 00 */	li r10, 0
/* 8075ED20  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075ED24  4B 8E E7 A9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075ED28  90 7F 0A 6C */	stw r3, 0xa6c(r31)
/* 8075ED2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F3@ha */
/* 8075ED30  38 03 03 F3 */	addi r0, r3, 0x03F3 /* 0x000703F3@l */
/* 8075ED34  90 01 00 38 */	stw r0, 0x38(r1)
/* 8075ED38  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075ED3C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075ED40  80 63 00 00 */	lwz r3, 0(r3)
/* 8075ED44  38 81 00 38 */	addi r4, r1, 0x38
/* 8075ED48  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075ED4C  38 C0 00 00 */	li r6, 0
/* 8075ED50  38 E0 00 00 */	li r7, 0
/* 8075ED54  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075ED58  FC 40 08 90 */	fmr f2, f1
/* 8075ED5C  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075ED60  FC 80 18 90 */	fmr f4, f3
/* 8075ED64  39 00 00 00 */	li r8, 0
/* 8075ED68  4B B4 D7 A5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075ED6C  48 00 03 38 */	b lbl_8075F0A4
lbl_8075ED70:
/* 8075ED70  C0 1F 07 A8 */	lfs f0, 0x7a8(r31)
/* 8075ED74  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8075ED78  C0 3F 07 AC */	lfs f1, 0x7ac(r31)
/* 8075ED7C  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8075ED80  C0 1F 07 B0 */	lfs f0, 0x7b0(r31)
/* 8075ED84  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8075ED88  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8075ED8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8075ED90  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8075ED94  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8075ED98  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8075ED9C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8075EDA0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8075EDA4  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8075EDA8  4B B1 0D 11 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075EDAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8075EDB0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8075EDB4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075EDB8  38 00 00 FF */	li r0, 0xff
/* 8075EDBC  90 01 00 08 */	stw r0, 8(r1)
/* 8075EDC0  38 80 00 00 */	li r4, 0
/* 8075EDC4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8075EDC8  38 00 FF FF */	li r0, -1
/* 8075EDCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075EDD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075EDD4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075EDD8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8075EDDC  80 9F 0A 6C */	lwz r4, 0xa6c(r31)
/* 8075EDE0  38 A0 00 00 */	li r5, 0
/* 8075EDE4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000889C@ha */
/* 8075EDE8  38 C6 88 9C */	addi r6, r6, 0x889C /* 0x0000889C@l */
/* 8075EDEC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8075EDF0  39 00 00 00 */	li r8, 0
/* 8075EDF4  39 20 00 00 */	li r9, 0
/* 8075EDF8  39 40 00 00 */	li r10, 0
/* 8075EDFC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075EE00  4B 8E E6 CD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075EE04  90 7F 0A 6C */	stw r3, 0xa6c(r31)
/* 8075EE08  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F3@ha */
/* 8075EE0C  38 03 03 F3 */	addi r0, r3, 0x03F3 /* 0x000703F3@l */
/* 8075EE10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8075EE14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075EE18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075EE1C  80 63 00 00 */	lwz r3, 0(r3)
/* 8075EE20  38 81 00 34 */	addi r4, r1, 0x34
/* 8075EE24  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075EE28  38 C0 00 00 */	li r6, 0
/* 8075EE2C  38 E0 00 00 */	li r7, 0
/* 8075EE30  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075EE34  FC 40 08 90 */	fmr f2, f1
/* 8075EE38  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075EE3C  FC 80 18 90 */	fmr f4, f3
/* 8075EE40  39 00 00 00 */	li r8, 0
/* 8075EE44  4B B4 D6 C9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075EE48  38 61 00 78 */	addi r3, r1, 0x78
/* 8075EE4C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8075EE50  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075EE54  4B B0 7C E1 */	bl __mi__4cXyzCFRC3Vec
/* 8075EE58  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8075EE5C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8075EE60  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8075EE64  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8075EE68  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8075EE6C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8075EE70  38 61 00 9C */	addi r3, r1, 0x9c
/* 8075EE74  4B BE 82 C5 */	bl PSVECSquareMag
/* 8075EE78  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075EE7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075EE80  40 81 00 58 */	ble lbl_8075EED8
/* 8075EE84  FC 00 08 34 */	frsqrte f0, f1
/* 8075EE88  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075EE8C  FC 44 00 32 */	fmul f2, f4, f0
/* 8075EE90  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075EE94  FC 00 00 32 */	fmul f0, f0, f0
/* 8075EE98  FC 01 00 32 */	fmul f0, f1, f0
/* 8075EE9C  FC 03 00 28 */	fsub f0, f3, f0
/* 8075EEA0  FC 02 00 32 */	fmul f0, f2, f0
/* 8075EEA4  FC 44 00 32 */	fmul f2, f4, f0
/* 8075EEA8  FC 00 00 32 */	fmul f0, f0, f0
/* 8075EEAC  FC 01 00 32 */	fmul f0, f1, f0
/* 8075EEB0  FC 03 00 28 */	fsub f0, f3, f0
/* 8075EEB4  FC 02 00 32 */	fmul f0, f2, f0
/* 8075EEB8  FC 44 00 32 */	fmul f2, f4, f0
/* 8075EEBC  FC 00 00 32 */	fmul f0, f0, f0
/* 8075EEC0  FC 01 00 32 */	fmul f0, f1, f0
/* 8075EEC4  FC 03 00 28 */	fsub f0, f3, f0
/* 8075EEC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8075EECC  FC 21 00 32 */	fmul f1, f1, f0
/* 8075EED0  FC 20 08 18 */	frsp f1, f1
/* 8075EED4  48 00 00 88 */	b lbl_8075EF5C
lbl_8075EED8:
/* 8075EED8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075EEDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075EEE0  40 80 00 10 */	bge lbl_8075EEF0
/* 8075EEE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8075EEE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8075EEEC  48 00 00 70 */	b lbl_8075EF5C
lbl_8075EEF0:
/* 8075EEF0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8075EEF4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8075EEF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075EEFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075EF00  7C 03 00 00 */	cmpw r3, r0
/* 8075EF04  41 82 00 14 */	beq lbl_8075EF18
/* 8075EF08  40 80 00 40 */	bge lbl_8075EF48
/* 8075EF0C  2C 03 00 00 */	cmpwi r3, 0
/* 8075EF10  41 82 00 20 */	beq lbl_8075EF30
/* 8075EF14  48 00 00 34 */	b lbl_8075EF48
lbl_8075EF18:
/* 8075EF18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075EF1C  41 82 00 0C */	beq lbl_8075EF28
/* 8075EF20  38 00 00 01 */	li r0, 1
/* 8075EF24  48 00 00 28 */	b lbl_8075EF4C
lbl_8075EF28:
/* 8075EF28  38 00 00 02 */	li r0, 2
/* 8075EF2C  48 00 00 20 */	b lbl_8075EF4C
lbl_8075EF30:
/* 8075EF30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075EF34  41 82 00 0C */	beq lbl_8075EF40
/* 8075EF38  38 00 00 05 */	li r0, 5
/* 8075EF3C  48 00 00 10 */	b lbl_8075EF4C
lbl_8075EF40:
/* 8075EF40  38 00 00 03 */	li r0, 3
/* 8075EF44  48 00 00 08 */	b lbl_8075EF4C
lbl_8075EF48:
/* 8075EF48  38 00 00 04 */	li r0, 4
lbl_8075EF4C:
/* 8075EF4C  2C 00 00 01 */	cmpwi r0, 1
/* 8075EF50  40 82 00 0C */	bne lbl_8075EF5C
/* 8075EF54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8075EF58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8075EF5C:
/* 8075EF5C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8075EF60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075EF64  41 81 01 40 */	bgt lbl_8075F0A4
/* 8075EF68  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075EF6C  38 80 00 00 */	li r4, 0
/* 8075EF70  90 81 00 08 */	stw r4, 8(r1)
/* 8075EF74  38 00 FF FF */	li r0, -1
/* 8075EF78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075EF7C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075EF80  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075EF84  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075EF88  38 80 00 00 */	li r4, 0
/* 8075EF8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000889B@ha */
/* 8075EF90  38 A5 88 9B */	addi r5, r5, 0x889B /* 0x0000889B@l */
/* 8075EF94  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075EF98  38 E0 00 00 */	li r7, 0
/* 8075EF9C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8075EFA0  39 21 00 B4 */	addi r9, r1, 0xb4
/* 8075EFA4  39 40 00 FF */	li r10, 0xff
/* 8075EFA8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075EFAC  4B 8E DA E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075EFB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F4@ha */
/* 8075EFB4  38 03 03 F4 */	addi r0, r3, 0x03F4 /* 0x000703F4@l */
/* 8075EFB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8075EFBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075EFC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075EFC4  80 63 00 00 */	lwz r3, 0(r3)
/* 8075EFC8  38 81 00 30 */	addi r4, r1, 0x30
/* 8075EFCC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075EFD0  38 C0 00 00 */	li r6, 0
/* 8075EFD4  38 E0 00 00 */	li r7, 0
/* 8075EFD8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075EFDC  FC 40 08 90 */	fmr f2, f1
/* 8075EFE0  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075EFE4  FC 80 18 90 */	fmr f4, f3
/* 8075EFE8  39 00 00 00 */	li r8, 0
/* 8075EFEC  4B B4 C9 99 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075EFF0  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8075EFF4  D0 1F 07 C8 */	stfs f0, 0x7c8(r31)
/* 8075EFF8  38 00 00 01 */	li r0, 1
/* 8075EFFC  98 1F 08 42 */	stb r0, 0x842(r31)
/* 8075F000  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8075F004  38 80 00 00 */	li r4, 0
/* 8075F008  90 81 00 08 */	stw r4, 8(r1)
/* 8075F00C  38 00 FF FF */	li r0, -1
/* 8075F010  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075F014  90 81 00 10 */	stw r4, 0x10(r1)
/* 8075F018  90 81 00 14 */	stw r4, 0x14(r1)
/* 8075F01C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8075F020  38 80 00 00 */	li r4, 0
/* 8075F024  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A4@ha */
/* 8075F028  38 A5 84 A4 */	addi r5, r5, 0x84A4 /* 0x000084A4@l */
/* 8075F02C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8075F030  38 E0 00 00 */	li r7, 0
/* 8075F034  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8075F038  39 21 00 B4 */	addi r9, r1, 0xb4
/* 8075F03C  39 40 00 FF */	li r10, 0xff
/* 8075F040  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075F044  4B 8E DA 4D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8075F048  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F5@ha */
/* 8075F04C  38 03 03 F5 */	addi r0, r3, 0x03F5 /* 0x000703F5@l */
/* 8075F050  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8075F054  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8075F058  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8075F05C  80 63 00 00 */	lwz r3, 0(r3)
/* 8075F060  38 81 00 2C */	addi r4, r1, 0x2c
/* 8075F064  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8075F068  38 C0 00 00 */	li r6, 0
/* 8075F06C  38 E0 00 00 */	li r7, 0
/* 8075F070  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8075F074  FC 40 08 90 */	fmr f2, f1
/* 8075F078  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 8075F07C  FC 80 18 90 */	fmr f4, f3
/* 8075F080  39 00 00 00 */	li r8, 0
/* 8075F084  4B B4 C9 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075F088  38 00 00 00 */	li r0, 0
/* 8075F08C  98 1F 07 D7 */	stb r0, 0x7d7(r31)
/* 8075F090  38 00 00 1E */	li r0, 0x1e
/* 8075F094  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 8075F098  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8075F09C  38 03 00 01 */	addi r0, r3, 1
/* 8075F0A0  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_8075F0A4:
/* 8075F0A4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8075F0A8  4B C0 31 6D */	bl _restgpr_24
/* 8075F0AC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8075F0B0  7C 08 03 A6 */	mtlr r0
/* 8075F0B4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8075F0B8  4E 80 00 20 */	blr 
