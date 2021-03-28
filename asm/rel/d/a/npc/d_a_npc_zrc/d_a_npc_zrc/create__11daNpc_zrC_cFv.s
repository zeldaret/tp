lbl_80B8E03C:
/* 80B8E03C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B8E040  7C 08 02 A6 */	mflr r0
/* 80B8E044  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B8E048  39 61 00 40 */	addi r11, r1, 0x40
/* 80B8E04C  4B 7D 41 7C */	b _savegpr_24
/* 80B8E050  7C 7E 1B 78 */	mr r30, r3
/* 80B8E054  3C 80 80 B9 */	lis r4, m__17daNpc_zrC_Param_c@ha
/* 80B8E058  3B E4 31 FC */	addi r31, r4, m__17daNpc_zrC_Param_c@l
/* 80B8E05C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B8E060  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B8E064  40 82 00 1C */	bne lbl_80B8E080
/* 80B8E068  28 1E 00 00 */	cmplwi r30, 0
/* 80B8E06C  41 82 00 08 */	beq lbl_80B8E074
/* 80B8E070  4B FF FB 9D */	bl __ct__11daNpc_zrC_cFv
lbl_80B8E074:
/* 80B8E074  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80B8E078  60 00 00 08 */	ori r0, r0, 8
/* 80B8E07C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80B8E080:
/* 80B8E080  7F C3 F3 78 */	mr r3, r30
/* 80B8E084  48 00 1B B1 */	bl getTypeFromParam__11daNpc_zrC_cFv
/* 80B8E088  98 7E 0E 28 */	stb r3, 0xe28(r30)
/* 80B8E08C  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 80B8E090  3C 03 00 00 */	addis r0, r3, 0
/* 80B8E094  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B8E098  41 82 00 0C */	beq lbl_80B8E0A4
/* 80B8E09C  90 7E 0E 20 */	stw r3, 0xe20(r30)
/* 80B8E0A0  48 00 00 0C */	b lbl_80B8E0AC
lbl_80B8E0A4:
/* 80B8E0A4  38 00 FF FF */	li r0, -1
/* 80B8E0A8  90 1E 0E 20 */	stw r0, 0xe20(r30)
lbl_80B8E0AC:
/* 80B8E0AC  4B 61 E4 D0 */	b dKy_darkworld_check__Fv
/* 80B8E0B0  98 7E 09 F4 */	stb r3, 0x9f4(r30)
/* 80B8E0B4  7F C3 F3 78 */	mr r3, r30
/* 80B8E0B8  48 00 1B D5 */	bl isDelete__11daNpc_zrC_cFv
/* 80B8E0BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B8E0C0  41 82 00 0C */	beq lbl_80B8E0CC
/* 80B8E0C4  38 60 00 05 */	li r3, 5
/* 80B8E0C8  48 00 02 58 */	b lbl_80B8E320
lbl_80B8E0CC:
/* 80B8E0CC  3B 20 00 00 */	li r25, 0
/* 80B8E0D0  3B 00 00 00 */	li r24, 0
/* 80B8E0D4  3B A0 00 00 */	li r29, 0
/* 80B8E0D8  3B 80 00 00 */	li r28, 0
/* 80B8E0DC  3C 60 80 B9 */	lis r3, l_resNames@ha
/* 80B8E0E0  3B 43 39 48 */	addi r26, r3, l_resNames@l
/* 80B8E0E4  3C 60 80 B9 */	lis r3, l_loadRes_list@ha
/* 80B8E0E8  3B 63 39 34 */	addi r27, r3, l_loadRes_list@l
/* 80B8E0EC  48 00 00 64 */	b lbl_80B8E150
lbl_80B8E0F0:
/* 80B8E0F0  7C 04 03 78 */	mr r4, r0
/* 80B8E0F4  2C 00 00 03 */	cmpwi r0, 3
/* 80B8E0F8  40 82 00 14 */	bne lbl_80B8E10C
/* 80B8E0FC  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80B8E100  28 00 00 00 */	cmplwi r0, 0
/* 80B8E104  41 82 00 08 */	beq lbl_80B8E10C
/* 80B8E108  38 80 00 04 */	li r4, 4
lbl_80B8E10C:
/* 80B8E10C  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80B8E110  7C 7E 1A 14 */	add r3, r30, r3
/* 80B8E114  54 80 10 3A */	slwi r0, r4, 2
/* 80B8E118  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80B8E11C  4B 49 ED A0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B8E120  2C 03 00 05 */	cmpwi r3, 5
/* 80B8E124  41 82 00 0C */	beq lbl_80B8E130
/* 80B8E128  2C 03 00 03 */	cmpwi r3, 3
/* 80B8E12C  40 82 00 0C */	bne lbl_80B8E138
lbl_80B8E130:
/* 80B8E130  38 60 00 05 */	li r3, 5
/* 80B8E134  48 00 01 EC */	b lbl_80B8E320
lbl_80B8E138:
/* 80B8E138  2C 03 00 04 */	cmpwi r3, 4
/* 80B8E13C  40 82 00 08 */	bne lbl_80B8E144
/* 80B8E140  3B 39 00 01 */	addi r25, r25, 1
lbl_80B8E144:
/* 80B8E144  3B 18 00 01 */	addi r24, r24, 1
/* 80B8E148  3B BD 00 04 */	addi r29, r29, 4
/* 80B8E14C  3B 9C 00 08 */	addi r28, r28, 8
lbl_80B8E150:
/* 80B8E150  88 1E 0E 28 */	lbz r0, 0xe28(r30)
/* 80B8E154  54 06 10 3A */	slwi r6, r0, 2
/* 80B8E158  7C 7B 30 2E */	lwzx r3, r27, r6
/* 80B8E15C  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80B8E160  2C 00 00 00 */	cmpwi r0, 0
/* 80B8E164  40 80 FF 8C */	bge lbl_80B8E0F0
/* 80B8E168  7C 19 C0 00 */	cmpw r25, r24
/* 80B8E16C  40 82 01 B0 */	bne lbl_80B8E31C
/* 80B8E170  7F C3 F3 78 */	mr r3, r30
/* 80B8E174  3C 80 80 B9 */	lis r4, createHeapCallBack__11daNpc_zrC_cFP10fopAc_ac_c@ha
/* 80B8E178  38 84 EB 48 */	addi r4, r4, createHeapCallBack__11daNpc_zrC_cFP10fopAc_ac_c@l
/* 80B8E17C  38 BF 00 74 */	addi r5, r31, 0x74
/* 80B8E180  7C A5 30 2E */	lwzx r5, r5, r6
/* 80B8E184  4B 48 C3 2C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B8E188  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B8E18C  40 82 00 0C */	bne lbl_80B8E198
/* 80B8E190  38 60 00 05 */	li r3, 5
/* 80B8E194  48 00 01 8C */	b lbl_80B8E320
lbl_80B8E198:
/* 80B8E198  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B8E19C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8E1A0  38 03 00 24 */	addi r0, r3, 0x24
/* 80B8E1A4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80B8E1A8  7F C3 F3 78 */	mr r3, r30
/* 80B8E1AC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80B8E1B0  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80B8E1B4  FC 60 08 90 */	fmr f3, f1
/* 80B8E1B8  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80B8E1BC  C0 BF 00 94 */	lfs f5, 0x94(r31)
/* 80B8E1C0  FC C0 20 90 */	fmr f6, f4
/* 80B8E1C4  4B 48 C3 84 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B8E1C8  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B8E1CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B8E1D0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B8E1D4  38 C0 00 03 */	li r6, 3
/* 80B8E1D8  38 E0 00 01 */	li r7, 1
/* 80B8E1DC  4B 73 23 54 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B8E1E0  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B8E1E4  38 9F 00 00 */	addi r4, r31, 0
/* 80B8E1E8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B8E1EC  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80B8E1F0  4B 4E 7D 68 */	b SetWall__12dBgS_AcchCirFff
/* 80B8E1F4  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80B8E1F8  90 01 00 08 */	stw r0, 8(r1)
/* 80B8E1FC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B8E200  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B8E204  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80B8E208  7F C6 F3 78 */	mr r6, r30
/* 80B8E20C  38 E0 00 01 */	li r7, 1
/* 80B8E210  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 80B8E214  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80B8E218  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80B8E21C  4B 4E 80 2C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B8E220  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80B8E224  38 9F 00 00 */	addi r4, r31, 0
/* 80B8E228  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B8E22C  FC 00 00 1E */	fctiwz f0, f0
/* 80B8E230  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B8E234  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B8E238  38 A0 00 00 */	li r5, 0
/* 80B8E23C  7F C6 F3 78 */	mr r6, r30
/* 80B8E240  4B 4F 56 20 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B8E244  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80B8E248  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80B8E24C  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80B8E250  4B 4F 66 64 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B8E254  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 80B8E258  90 1E 0C D8 */	stw r0, 0xcd8(r30)
/* 80B8E25C  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B8E260  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B8E264  90 1E 0D 38 */	stw r0, 0xd38(r30)
/* 80B8E268  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B8E26C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B8E270  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B8E274  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B8E278  4B 4E 88 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B8E27C  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 80B8E280  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 80B8E284  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B8E288  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 80B8E28C  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80B8E290  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80B8E294  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 80B8E298  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 80B8E29C  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 80B8E2A0  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 80B8E2A4  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 80B8E2A8  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 80B8E2AC  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 80B8E2B0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B8E2B4  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80B8E2B8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80B8E2BC  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 80B8E2C0  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 80B8E2C4  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 80B8E2C8  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 80B8E2CC  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 80B8E2D0  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 80B8E2D4  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80B8E2D8  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 80B8E2DC  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80B8E2E0  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80B8E2E4  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 80B8E2E8  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80B8E2EC  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 80B8E2F0  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80B8E2F4  7F C3 F3 78 */	mr r3, r30
/* 80B8E2F8  4B 5C 4A 8C */	b setEnvTevColor__8daNpcF_cFv
/* 80B8E2FC  7F C3 F3 78 */	mr r3, r30
/* 80B8E300  4B 5C 4A E0 */	b setRoomNo__8daNpcF_cFv
/* 80B8E304  7F C3 F3 78 */	mr r3, r30
/* 80B8E308  48 00 1A 09 */	bl reset__11daNpc_zrC_cFv
/* 80B8E30C  7F C3 F3 78 */	mr r3, r30
/* 80B8E310  48 00 05 55 */	bl Execute__11daNpc_zrC_cFv
/* 80B8E314  38 60 00 04 */	li r3, 4
/* 80B8E318  48 00 00 08 */	b lbl_80B8E320
lbl_80B8E31C:
/* 80B8E31C  38 60 00 00 */	li r3, 0
lbl_80B8E320:
/* 80B8E320  39 61 00 40 */	addi r11, r1, 0x40
/* 80B8E324  4B 7D 3E F0 */	b _restgpr_24
/* 80B8E328  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B8E32C  7C 08 03 A6 */	mtlr r0
/* 80B8E330  38 21 00 40 */	addi r1, r1, 0x40
/* 80B8E334  4E 80 00 20 */	blr 
