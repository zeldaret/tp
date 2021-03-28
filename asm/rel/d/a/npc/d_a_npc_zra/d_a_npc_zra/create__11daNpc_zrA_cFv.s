lbl_80B79B58:
/* 80B79B58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B79B5C  7C 08 02 A6 */	mflr r0
/* 80B79B60  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B79B64  39 61 00 40 */	addi r11, r1, 0x40
/* 80B79B68  4B 7E 86 60 */	b _savegpr_24
/* 80B79B6C  7C 7C 1B 78 */	mr r28, r3
/* 80B79B70  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B79B74  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l
/* 80B79B78  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B79B7C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B79B80  40 82 00 1C */	bne lbl_80B79B9C
/* 80B79B84  28 1C 00 00 */	cmplwi r28, 0
/* 80B79B88  41 82 00 08 */	beq lbl_80B79B90
/* 80B79B8C  4B FF F9 E1 */	bl __ct__11daNpc_zrA_cFv
lbl_80B79B90:
/* 80B79B90  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80B79B94  60 00 00 08 */	ori r0, r0, 8
/* 80B79B98  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80B79B9C:
/* 80B79B9C  7F 83 E3 78 */	mr r3, r28
/* 80B79BA0  48 00 28 AD */	bl getTypeFromArgument__11daNpc_zrA_cFv
/* 80B79BA4  98 7C 14 E8 */	stb r3, 0x14e8(r28)
/* 80B79BA8  A8 7C 04 B4 */	lha r3, 0x4b4(r28)
/* 80B79BAC  3C 03 00 00 */	addis r0, r3, 0
/* 80B79BB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B79BB4  41 82 00 0C */	beq lbl_80B79BC0
/* 80B79BB8  90 7C 14 E0 */	stw r3, 0x14e0(r28)
/* 80B79BBC  48 00 00 0C */	b lbl_80B79BC8
lbl_80B79BC0:
/* 80B79BC0  38 00 FF FF */	li r0, -1
/* 80B79BC4  90 1C 14 E0 */	stw r0, 0x14e0(r28)
lbl_80B79BC8:
/* 80B79BC8  7F 83 E3 78 */	mr r3, r28
/* 80B79BCC  48 00 28 E9 */	bl getSoldierTypeFromParam__11daNpc_zrA_cFv
/* 80B79BD0  98 7C 14 E9 */	stb r3, 0x14e9(r28)
/* 80B79BD4  7F 83 E3 78 */	mr r3, r28
/* 80B79BD8  48 00 29 29 */	bl getGameModeFromParam__11daNpc_zrA_cFv
/* 80B79BDC  98 7C 15 0D */	stb r3, 0x150d(r28)
/* 80B79BE0  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 80B79BE4  98 1C 15 0E */	stb r0, 0x150e(r28)
/* 80B79BE8  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 80B79BEC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B79BF0  98 1C 15 0F */	stb r0, 0x150f(r28)
/* 80B79BF4  4B 63 29 88 */	b dKy_darkworld_check__Fv
/* 80B79BF8  98 7C 09 F4 */	stb r3, 0x9f4(r28)
/* 80B79BFC  7F 83 E3 78 */	mr r3, r28
/* 80B79C00  48 00 2A 45 */	bl isDelete__11daNpc_zrA_cFv
/* 80B79C04  2C 03 00 00 */	cmpwi r3, 0
/* 80B79C08  41 82 00 0C */	beq lbl_80B79C14
/* 80B79C0C  38 60 00 05 */	li r3, 5
/* 80B79C10  48 00 03 10 */	b lbl_80B79F20
lbl_80B79C14:
/* 80B79C14  3B C0 00 00 */	li r30, 0
/* 80B79C18  3B A0 00 00 */	li r29, 0
/* 80B79C1C  3B 60 00 00 */	li r27, 0
/* 80B79C20  3B 40 00 00 */	li r26, 0
/* 80B79C24  3C 60 80 B9 */	lis r3, l_resNames@ha
/* 80B79C28  3B 03 D3 00 */	addi r24, r3, l_resNames@l
/* 80B79C2C  3C 60 80 B9 */	lis r3, l_loadRes_list@ha
/* 80B79C30  3B 23 D2 E0 */	addi r25, r3, l_loadRes_list@l
/* 80B79C34  48 00 00 80 */	b lbl_80B79CB4
lbl_80B79C38:
/* 80B79C38  7C 04 03 78 */	mr r4, r0
/* 80B79C3C  2C 00 00 04 */	cmpwi r0, 4
/* 80B79C40  40 82 00 18 */	bne lbl_80B79C58
/* 80B79C44  88 1C 09 F4 */	lbz r0, 0x9f4(r28)
/* 80B79C48  28 00 00 00 */	cmplwi r0, 0
/* 80B79C4C  41 82 00 24 */	beq lbl_80B79C70
/* 80B79C50  38 80 00 05 */	li r4, 5
/* 80B79C54  48 00 00 1C */	b lbl_80B79C70
lbl_80B79C58:
/* 80B79C58  2C 00 00 01 */	cmpwi r0, 1
/* 80B79C5C  40 82 00 14 */	bne lbl_80B79C70
/* 80B79C60  88 1C 14 E9 */	lbz r0, 0x14e9(r28)
/* 80B79C64  28 00 00 00 */	cmplwi r0, 0
/* 80B79C68  40 82 00 08 */	bne lbl_80B79C70
/* 80B79C6C  38 80 00 03 */	li r4, 3
lbl_80B79C70:
/* 80B79C70  38 7A 14 8C */	addi r3, r26, 0x148c
/* 80B79C74  7C 7C 1A 14 */	add r3, r28, r3
/* 80B79C78  54 80 10 3A */	slwi r0, r4, 2
/* 80B79C7C  7C 98 00 2E */	lwzx r4, r24, r0
/* 80B79C80  4B 4B 32 3C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B79C84  2C 03 00 05 */	cmpwi r3, 5
/* 80B79C88  41 82 00 0C */	beq lbl_80B79C94
/* 80B79C8C  2C 03 00 03 */	cmpwi r3, 3
/* 80B79C90  40 82 00 0C */	bne lbl_80B79C9C
lbl_80B79C94:
/* 80B79C94  38 60 00 05 */	li r3, 5
/* 80B79C98  48 00 02 88 */	b lbl_80B79F20
lbl_80B79C9C:
/* 80B79C9C  2C 03 00 04 */	cmpwi r3, 4
/* 80B79CA0  40 82 00 08 */	bne lbl_80B79CA8
/* 80B79CA4  3B DE 00 01 */	addi r30, r30, 1
lbl_80B79CA8:
/* 80B79CA8  3B BD 00 01 */	addi r29, r29, 1
/* 80B79CAC  3B 7B 00 04 */	addi r27, r27, 4
/* 80B79CB0  3B 5A 00 08 */	addi r26, r26, 8
lbl_80B79CB4:
/* 80B79CB4  88 1C 14 E8 */	lbz r0, 0x14e8(r28)
/* 80B79CB8  54 00 10 3A */	slwi r0, r0, 2
/* 80B79CBC  7C 79 00 2E */	lwzx r3, r25, r0
/* 80B79CC0  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80B79CC4  2C 00 00 00 */	cmpwi r0, 0
/* 80B79CC8  40 80 FF 70 */	bge lbl_80B79C38
/* 80B79CCC  88 1C 14 E9 */	lbz r0, 0x14e9(r28)
/* 80B79CD0  28 00 00 02 */	cmplwi r0, 2
/* 80B79CD4  41 82 00 74 */	beq lbl_80B79D48
/* 80B79CD8  88 1C 09 F4 */	lbz r0, 0x9f4(r28)
/* 80B79CDC  28 00 00 00 */	cmplwi r0, 0
/* 80B79CE0  41 82 00 24 */	beq lbl_80B79D04
/* 80B79CE4  57 A3 18 38 */	slwi r3, r29, 3
/* 80B79CE8  38 63 14 8C */	addi r3, r3, 0x148c
/* 80B79CEC  7C 7C 1A 14 */	add r3, r28, r3
/* 80B79CF0  3C 80 80 B9 */	lis r4, l_resNames@ha
/* 80B79CF4  38 84 D3 00 */	addi r4, r4, l_resNames@l
/* 80B79CF8  80 84 00 28 */	lwz r4, 0x28(r4)
/* 80B79CFC  4B 4B 31 C0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B79D00  48 00 00 20 */	b lbl_80B79D20
lbl_80B79D04:
/* 80B79D04  57 A3 18 38 */	slwi r3, r29, 3
/* 80B79D08  38 63 14 8C */	addi r3, r3, 0x148c
/* 80B79D0C  7C 7C 1A 14 */	add r3, r28, r3
/* 80B79D10  3C 80 80 B9 */	lis r4, l_resNames@ha
/* 80B79D14  38 84 D3 00 */	addi r4, r4, l_resNames@l
/* 80B79D18  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 80B79D1C  4B 4B 31 A0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
lbl_80B79D20:
/* 80B79D20  2C 03 00 05 */	cmpwi r3, 5
/* 80B79D24  41 82 00 0C */	beq lbl_80B79D30
/* 80B79D28  2C 03 00 03 */	cmpwi r3, 3
/* 80B79D2C  40 82 00 0C */	bne lbl_80B79D38
lbl_80B79D30:
/* 80B79D30  38 60 00 05 */	li r3, 5
/* 80B79D34  48 00 01 EC */	b lbl_80B79F20
lbl_80B79D38:
/* 80B79D38  2C 03 00 04 */	cmpwi r3, 4
/* 80B79D3C  40 82 00 08 */	bne lbl_80B79D44
/* 80B79D40  3B DE 00 01 */	addi r30, r30, 1
lbl_80B79D44:
/* 80B79D44  3B BD 00 01 */	addi r29, r29, 1
lbl_80B79D48:
/* 80B79D48  7C 1E E8 00 */	cmpw r30, r29
/* 80B79D4C  40 82 01 D0 */	bne lbl_80B79F1C
/* 80B79D50  7F 83 E3 78 */	mr r3, r28
/* 80B79D54  3C 80 80 B8 */	lis r4, createHeapCallBack__11daNpc_zrA_cFP10fopAc_ac_c@ha
/* 80B79D58  38 84 AB 9C */	addi r4, r4, createHeapCallBack__11daNpc_zrA_cFP10fopAc_ac_c@l
/* 80B79D5C  3C A0 80 00 */	lis r5, 0x8000 /* 0x80007280@ha */
/* 80B79D60  38 A5 72 80 */	addi r5, r5, 0x7280 /* 0x80007280@l */
/* 80B79D64  4B 4A 07 4C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B79D68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B79D6C  40 82 00 0C */	bne lbl_80B79D78
/* 80B79D70  38 60 00 05 */	li r3, 5
/* 80B79D74  48 00 01 AC */	b lbl_80B79F20
lbl_80B79D78:
/* 80B79D78  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B79D7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B79D80  38 03 00 24 */	addi r0, r3, 0x24
/* 80B79D84  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80B79D88  7F 83 E3 78 */	mr r3, r28
/* 80B79D8C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80B79D90  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 80B79D94  FC 60 08 90 */	fmr f3, f1
/* 80B79D98  C0 9F 00 E8 */	lfs f4, 0xe8(r31)
/* 80B79D9C  C0 BF 00 EC */	lfs f5, 0xec(r31)
/* 80B79DA0  FC C0 20 90 */	fmr f6, f4
/* 80B79DA4  4B 4A 07 A4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B79DA8  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80B79DAC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B79DB0  38 BC 05 38 */	addi r5, r28, 0x538
/* 80B79DB4  38 C0 00 03 */	li r6, 3
/* 80B79DB8  38 E0 00 01 */	li r7, 1
/* 80B79DBC  4B 74 67 74 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B79DC0  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 80B79DC4  38 9F 00 00 */	addi r4, r31, 0
/* 80B79DC8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B79DCC  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80B79DD0  4B 4F C1 88 */	b SetWall__12dBgS_AcchCirFff
/* 80B79DD4  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80B79DD8  90 01 00 08 */	stw r0, 8(r1)
/* 80B79DDC  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80B79DE0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B79DE4  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80B79DE8  7F 86 E3 78 */	mr r6, r28
/* 80B79DEC  38 E0 00 01 */	li r7, 1
/* 80B79DF0  39 1C 07 E4 */	addi r8, r28, 0x7e4
/* 80B79DF4  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80B79DF8  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80B79DFC  4B 4F C4 4C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B79E00  38 7F 00 00 */	addi r3, r31, 0
/* 80B79E04  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80B79E08  38 7C 12 E4 */	addi r3, r28, 0x12e4
/* 80B79E0C  38 9C 05 D0 */	addi r4, r28, 0x5d0
/* 80B79E10  FC 40 08 90 */	fmr f2, f1
/* 80B79E14  4B 4D 6E 88 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80B79E18  38 7C 07 A8 */	addi r3, r28, 0x7a8
/* 80B79E1C  38 9F 00 00 */	addi r4, r31, 0
/* 80B79E20  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B79E24  FC 00 00 1E */	fctiwz f0, f0
/* 80B79E28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B79E2C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B79E30  38 A0 00 00 */	li r5, 0
/* 80B79E34  7F 86 E3 78 */	mr r6, r28
/* 80B79E38  4B 50 9A 28 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B79E3C  38 7C 13 38 */	addi r3, r28, 0x1338
/* 80B79E40  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80B79E44  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80B79E48  4B 50 AA 6C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B79E4C  38 1C 07 A8 */	addi r0, r28, 0x7a8
/* 80B79E50  90 1C 13 7C */	stw r0, 0x137c(r28)
/* 80B79E54  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B79E58  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B79E5C  90 1C 13 DC */	stw r0, 0x13dc(r28)
/* 80B79E60  38 00 00 02 */	li r0, 2
/* 80B79E64  98 1C 07 A4 */	stb r0, 0x7a4(r28)
/* 80B79E68  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80B79E6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B79E70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B79E74  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B79E78  4B 4F CC 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B79E7C  80 1C 06 AC */	lwz r0, 0x6ac(r28)
/* 80B79E80  90 1C 0A 44 */	stw r0, 0xa44(r28)
/* 80B79E84  80 1C 06 B0 */	lwz r0, 0x6b0(r28)
/* 80B79E88  90 1C 0A 48 */	stw r0, 0xa48(r28)
/* 80B79E8C  80 1C 06 B4 */	lwz r0, 0x6b4(r28)
/* 80B79E90  90 1C 0A 4C */	stw r0, 0xa4c(r28)
/* 80B79E94  88 1C 06 B8 */	lbz r0, 0x6b8(r28)
/* 80B79E98  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 80B79E9C  A0 1C 06 C0 */	lhz r0, 0x6c0(r28)
/* 80B79EA0  B0 1C 0A 58 */	sth r0, 0xa58(r28)
/* 80B79EA4  A0 1C 06 C2 */	lhz r0, 0x6c2(r28)
/* 80B79EA8  B0 1C 0A 5A */	sth r0, 0xa5a(r28)
/* 80B79EAC  80 1C 06 C4 */	lwz r0, 0x6c4(r28)
/* 80B79EB0  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 80B79EB4  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 80B79EB8  90 1C 0A 60 */	stw r0, 0xa60(r28)
/* 80B79EBC  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 80B79EC0  D0 1C 0A 68 */	stfs f0, 0xa68(r28)
/* 80B79EC4  C0 1C 06 D4 */	lfs f0, 0x6d4(r28)
/* 80B79EC8  D0 1C 0A 6C */	stfs f0, 0xa6c(r28)
/* 80B79ECC  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 80B79ED0  D0 1C 0A 70 */	stfs f0, 0xa70(r28)
/* 80B79ED4  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80B79ED8  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80B79EDC  C0 1C 06 E0 */	lfs f0, 0x6e0(r28)
/* 80B79EE0  D0 1C 0A 78 */	stfs f0, 0xa78(r28)
/* 80B79EE4  80 1C 06 E4 */	lwz r0, 0x6e4(r28)
/* 80B79EE8  90 1C 0A 7C */	stw r0, 0xa7c(r28)
/* 80B79EEC  C0 1C 06 68 */	lfs f0, 0x668(r28)
/* 80B79EF0  D0 1C 09 80 */	stfs f0, 0x980(r28)
/* 80B79EF4  7F 83 E3 78 */	mr r3, r28
/* 80B79EF8  4B 5D 8E 8C */	b setEnvTevColor__8daNpcF_cFv
/* 80B79EFC  7F 83 E3 78 */	mr r3, r28
/* 80B79F00  4B 5D 8E E0 */	b setRoomNo__8daNpcF_cFv
/* 80B79F04  7F 83 E3 78 */	mr r3, r28
/* 80B79F08  48 00 28 15 */	bl reset__11daNpc_zrA_cFv
/* 80B79F0C  7F 83 E3 78 */	mr r3, r28
/* 80B79F10  48 00 06 41 */	bl Execute__11daNpc_zrA_cFv
/* 80B79F14  38 60 00 04 */	li r3, 4
/* 80B79F18  48 00 00 08 */	b lbl_80B79F20
lbl_80B79F1C:
/* 80B79F1C  38 60 00 00 */	li r3, 0
lbl_80B79F20:
/* 80B79F20  39 61 00 40 */	addi r11, r1, 0x40
/* 80B79F24  4B 7E 82 F0 */	b _restgpr_24
/* 80B79F28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B79F2C  7C 08 03 A6 */	mtlr r0
/* 80B79F30  38 21 00 40 */	addi r1, r1, 0x40
/* 80B79F34  4E 80 00 20 */	blr 
