lbl_809B08E0:
/* 809B08E0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 809B08E4  7C 08 02 A6 */	mflr r0
/* 809B08E8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 809B08EC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809B08F0  4B 9B 18 EC */	b _savegpr_29
/* 809B08F4  7C 7E 1B 78 */	mr r30, r3
/* 809B08F8  3C 80 80 9B */	lis r4, lit_3762@ha
/* 809B08FC  3B E4 18 48 */	addi r31, r4, lit_3762@l
/* 809B0900  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809B0904  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 809B0908  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809B090C  4B 66 9E D4 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809B0910  D0 3E 05 B8 */	stfs f1, 0x5b8(r30)
/* 809B0914  7F C3 F3 78 */	mr r3, r30
/* 809B0918  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809B091C  4B 66 9D F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809B0920  B0 7E 05 BC */	sth r3, 0x5bc(r30)
/* 809B0924  3B A0 00 00 */	li r29, 0
/* 809B0928  38 00 00 00 */	li r0, 0
/* 809B092C  98 1E 09 80 */	stb r0, 0x980(r30)
/* 809B0930  A8 1E 05 CE */	lha r0, 0x5ce(r30)
/* 809B0934  2C 00 00 02 */	cmpwi r0, 2
/* 809B0938  41 82 00 4C */	beq lbl_809B0984
/* 809B093C  40 80 00 14 */	bge lbl_809B0950
/* 809B0940  2C 00 00 00 */	cmpwi r0, 0
/* 809B0944  41 82 00 18 */	beq lbl_809B095C
/* 809B0948  40 80 00 2C */	bge lbl_809B0974
/* 809B094C  48 00 00 5C */	b lbl_809B09A8
lbl_809B0950:
/* 809B0950  2C 00 00 04 */	cmpwi r0, 4
/* 809B0954  40 80 00 54 */	bge lbl_809B09A8
/* 809B0958  48 00 00 40 */	b lbl_809B0998
lbl_809B095C:
/* 809B095C  7F C3 F3 78 */	mr r3, r30
/* 809B0960  4B FF F7 B5 */	bl npc_du_normal__FP12npc_du_class
/* 809B0964  3B A0 00 01 */	li r29, 1
/* 809B0968  38 00 00 01 */	li r0, 1
/* 809B096C  98 1E 09 80 */	stb r0, 0x980(r30)
/* 809B0970  48 00 00 38 */	b lbl_809B09A8
lbl_809B0974:
/* 809B0974  7F C3 F3 78 */	mr r3, r30
/* 809B0978  4B FF F9 E9 */	bl npc_du_away__FP12npc_du_class
/* 809B097C  3B A0 00 01 */	li r29, 1
/* 809B0980  48 00 00 28 */	b lbl_809B09A8
lbl_809B0984:
/* 809B0984  7F C3 F3 78 */	mr r3, r30
/* 809B0988  4B FF FB 59 */	bl npc_du_swim__FP12npc_du_class
/* 809B098C  38 00 00 01 */	li r0, 1
/* 809B0990  98 1E 09 80 */	stb r0, 0x980(r30)
/* 809B0994  48 00 00 14 */	b lbl_809B09A8
lbl_809B0998:
/* 809B0998  7F C3 F3 78 */	mr r3, r30
/* 809B099C  4B FF FD D9 */	bl npc_du_message__FP12npc_du_class
/* 809B09A0  38 00 00 02 */	li r0, 2
/* 809B09A4  98 1E 09 80 */	stb r0, 0x980(r30)
lbl_809B09A8:
/* 809B09A8  88 1E 09 78 */	lbz r0, 0x978(r30)
/* 809B09AC  7C 00 07 75 */	extsb. r0, r0
/* 809B09B0  40 82 00 8C */	bne lbl_809B0A3C
/* 809B09B4  7F A0 07 75 */	extsb. r0, r29
/* 809B09B8  41 82 00 84 */	beq lbl_809B0A3C
/* 809B09BC  88 1E 08 00 */	lbz r0, 0x800(r30)
/* 809B09C0  7C 00 07 75 */	extsb. r0, r0
/* 809B09C4  41 82 00 78 */	beq lbl_809B0A3C
/* 809B09C8  38 00 00 02 */	li r0, 2
/* 809B09CC  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 809B09D0  38 00 00 00 */	li r0, 0
/* 809B09D4  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 809B09D8  38 00 00 1E */	li r0, 0x1e
/* 809B09DC  98 1E 09 78 */	stb r0, 0x978(r30)
/* 809B09E0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809B09E4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 809B09E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 809B09EC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809B09F0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809B09F4  7C 03 07 74 */	extsb r3, r0
/* 809B09F8  4B 67 C6 74 */	b dComIfGp_getReverb__Fi
/* 809B09FC  7C 67 1B 78 */	mr r7, r3
/* 809B0A00  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060056@ha */
/* 809B0A04  38 03 00 56 */	addi r0, r3, 0x0056 /* 0x00060056@l */
/* 809B0A08  90 01 00 08 */	stw r0, 8(r1)
/* 809B0A0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B0A10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B0A14  80 63 00 00 */	lwz r3, 0(r3)
/* 809B0A18  38 81 00 08 */	addi r4, r1, 8
/* 809B0A1C  38 BE 05 38 */	addi r5, r30, 0x538
/* 809B0A20  38 C0 00 00 */	li r6, 0
/* 809B0A24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809B0A28  FC 40 08 90 */	fmr f2, f1
/* 809B0A2C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 809B0A30  FC 80 18 90 */	fmr f4, f3
/* 809B0A34  39 00 00 00 */	li r8, 0
/* 809B0A38  4B 8F AF 4C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_809B0A3C:
/* 809B0A3C  88 1E 09 80 */	lbz r0, 0x980(r30)
/* 809B0A40  2C 00 00 01 */	cmpwi r0, 1
/* 809B0A44  40 82 00 3C */	bne lbl_809B0A80
/* 809B0A48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B0A4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B0A50  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809B0A54  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809B0A58  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809B0A5C  41 82 00 24 */	beq lbl_809B0A80
/* 809B0A60  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 809B0A64  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 809B0A68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B0A6C  40 80 00 14 */	bge lbl_809B0A80
/* 809B0A70  38 00 00 03 */	li r0, 3
/* 809B0A74  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 809B0A78  38 00 00 00 */	li r0, 0
/* 809B0A7C  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_809B0A80:
/* 809B0A80  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 809B0A84  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 809B0A88  38 A0 00 02 */	li r5, 2
/* 809B0A8C  38 C0 20 00 */	li r6, 0x2000
/* 809B0A90  4B 8B FB 78 */	b cLib_addCalcAngleS2__FPssss
/* 809B0A94  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 809B0A98  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 809B0A9C  38 A0 00 02 */	li r5, 2
/* 809B0AA0  38 C0 20 00 */	li r6, 0x2000
/* 809B0AA4  4B 8B FB 64 */	b cLib_addCalcAngleS2__FPssss
/* 809B0AA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809B0AAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809B0AB0  80 63 00 00 */	lwz r3, 0(r3)
/* 809B0AB4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 809B0AB8  4B 65 B9 24 */	b mDoMtx_YrotS__FPA4_fs
/* 809B0ABC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809B0AC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809B0AC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809B0AC8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 809B0ACC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809B0AD0  38 61 00 24 */	addi r3, r1, 0x24
/* 809B0AD4  38 81 00 18 */	addi r4, r1, 0x18
/* 809B0AD8  4B 8C 04 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 809B0ADC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809B0AE0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 809B0AE4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809B0AE8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 809B0AEC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809B0AF0  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 809B0AF4  7C 65 1B 78 */	mr r5, r3
/* 809B0AF8  4B 99 65 98 */	b PSVECAdd
/* 809B0AFC  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 809B0B00  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 809B0B04  EC 01 00 2A */	fadds f0, f1, f0
/* 809B0B08  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 809B0B0C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 809B0B10  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 809B0B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B0B18  40 80 00 08 */	bge lbl_809B0B20
/* 809B0B1C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_809B0B20:
/* 809B0B20  34 7E 08 04 */	addic. r3, r30, 0x804
/* 809B0B24  41 82 00 34 */	beq lbl_809B0B58
/* 809B0B28  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 809B0B2C  C0 03 00 00 */	lfs f0, 0(r3)
/* 809B0B30  EC 01 00 2A */	fadds f0, f1, f0
/* 809B0B34  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 809B0B38  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 809B0B3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 809B0B40  EC 01 00 2A */	fadds f0, f1, f0
/* 809B0B44  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809B0B48  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 809B0B4C  C0 03 00 08 */	lfs f0, 8(r3)
/* 809B0B50  EC 01 00 2A */	fadds f0, f1, f0
/* 809B0B54  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_809B0B58:
/* 809B0B58  38 7E 06 28 */	addi r3, r30, 0x628
/* 809B0B5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809B0B60  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809B0B64  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 809B0B68  7F A4 EB 78 */	mr r4, r29
/* 809B0B6C  4B 6C 5F 40 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809B0B70  38 61 00 30 */	addi r3, r1, 0x30
/* 809B0B74  4B 6C 6C 3C */	b __ct__18dBgS_ObjGndChk_SplFv
/* 809B0B78  38 00 00 00 */	li r0, 0
/* 809B0B7C  98 1E 08 00 */	stb r0, 0x800(r30)
/* 809B0B80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809B0B84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809B0B88  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 809B0B8C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 809B0B90  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809B0B94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809B0B98  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809B0B9C  EC 01 00 2A */	fadds f0, f1, f0
/* 809B0BA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809B0BA4  38 61 00 30 */	addi r3, r1, 0x30
/* 809B0BA8  38 81 00 24 */	addi r4, r1, 0x24
/* 809B0BAC  4B 8B 71 7C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 809B0BB0  7F A3 EB 78 */	mr r3, r29
/* 809B0BB4  38 81 00 30 */	addi r4, r1, 0x30
/* 809B0BB8  4B 6C 38 E8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 809B0BBC  D0 3E 09 7C */	stfs f1, 0x97c(r30)
/* 809B0BC0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 809B0BC4  C0 3E 09 7C */	lfs f1, 0x97c(r30)
/* 809B0BC8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 809B0BCC  EC 21 00 28 */	fsubs f1, f1, f0
/* 809B0BD0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 809B0BD4  4C 40 13 82 */	cror 2, 0, 2
/* 809B0BD8  40 82 00 74 */	bne lbl_809B0C4C
/* 809B0BDC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 809B0BE0  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 809B0BE4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 809B0BE8  4B 8B EE 54 */	b cLib_addCalc2__FPffff
/* 809B0BEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 809B0BF0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 809B0BF4  38 00 00 01 */	li r0, 1
/* 809B0BF8  98 1E 08 00 */	stb r0, 0x800(r30)
/* 809B0BFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809B0C00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809B0C04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809B0C08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B0C0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809B0C10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B0C14  C0 1E 09 7C */	lfs f0, 0x97c(r30)
/* 809B0C18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B0C1C  38 7E 09 D4 */	addi r3, r30, 0x9d4
/* 809B0C20  38 81 00 0C */	addi r4, r1, 0xc
/* 809B0C24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809B0C28  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 809B0C2C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 809B0C30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 809B0C34  4C 41 13 82 */	cror 2, 1, 2
/* 809B0C38  40 82 00 0C */	bne lbl_809B0C44
/* 809B0C3C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 809B0C40  48 00 00 08 */	b lbl_809B0C48
lbl_809B0C44:
/* 809B0C44  C0 5F 00 74 */	lfs f2, 0x74(r31)
lbl_809B0C48:
/* 809B0C48  4B 66 C4 C4 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_809B0C4C:
/* 809B0C4C  A8 1E 05 CC */	lha r0, 0x5cc(r30)
/* 809B0C50  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 809B0C54  40 82 00 30 */	bne lbl_809B0C84
/* 809B0C58  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809B0C5C  4B 8B 6C F8 */	b cM_rndF__Ff
/* 809B0C60  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 809B0C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B0C68  40 80 00 1C */	bge lbl_809B0C84
/* 809B0C6C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809B0C70  4B 8B 6D 1C */	b cM_rndFX__Ff
/* 809B0C74  FC 00 08 1E */	fctiwz f0, f1
/* 809B0C78  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 809B0C7C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 809B0C80  B0 1E 05 E4 */	sth r0, 0x5e4(r30)
lbl_809B0C84:
/* 809B0C84  38 7E 05 E2 */	addi r3, r30, 0x5e2
/* 809B0C88  A8 9E 05 E4 */	lha r4, 0x5e4(r30)
/* 809B0C8C  38 A0 00 02 */	li r5, 2
/* 809B0C90  38 C0 10 00 */	li r6, 0x1000
/* 809B0C94  4B 8B F9 74 */	b cLib_addCalcAngleS2__FPssss
/* 809B0C98  38 61 00 30 */	addi r3, r1, 0x30
/* 809B0C9C  38 80 FF FF */	li r4, -1
/* 809B0CA0  4B 6C 6B A8 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 809B0CA4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809B0CA8  4B 9B 15 80 */	b _restgpr_29
/* 809B0CAC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 809B0CB0  7C 08 03 A6 */	mtlr r0
/* 809B0CB4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 809B0CB8  4E 80 00 20 */	blr 
