lbl_809F34C0:
/* 809F34C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F34C4  7C 08 02 A6 */	mflr r0
/* 809F34C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F34CC  39 61 00 40 */	addi r11, r1, 0x40
/* 809F34D0  4B 96 EC F8 */	b _savegpr_24
/* 809F34D4  7C 7E 1B 78 */	mr r30, r3
/* 809F34D8  3C 80 80 A0 */	lis r4, m__19daNpc_GWolf_Param_c@ha
/* 809F34DC  3B E4 84 F4 */	addi r31, r4, m__19daNpc_GWolf_Param_c@l
/* 809F34E0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809F34E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809F34E8  40 82 00 1C */	bne lbl_809F3504
/* 809F34EC  28 1E 00 00 */	cmplwi r30, 0
/* 809F34F0  41 82 00 08 */	beq lbl_809F34F8
/* 809F34F4  4B FF FB B9 */	bl __ct__13daNpc_GWolf_cFv
lbl_809F34F8:
/* 809F34F8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809F34FC  60 00 00 08 */	ori r0, r0, 8
/* 809F3500  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809F3504:
/* 809F3504  7F C3 F3 78 */	mr r3, r30
/* 809F3508  48 00 19 31 */	bl getTypeFromParam__13daNpc_GWolf_cFv
/* 809F350C  98 7E 0E 10 */	stb r3, 0xe10(r30)
/* 809F3510  7F C3 F3 78 */	mr r3, r30
/* 809F3514  48 00 19 71 */	bl getModeFromParam__13daNpc_GWolf_cFv
/* 809F3518  98 7E 0E 11 */	stb r3, 0xe11(r30)
/* 809F351C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809F3520  54 00 46 3E */	srwi r0, r0, 0x18
/* 809F3524  90 1E 0E 14 */	stw r0, 0xe14(r30)
/* 809F3528  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809F352C  3C 03 00 00 */	addis r0, r3, 0
/* 809F3530  28 00 FF FF */	cmplwi r0, 0xffff
/* 809F3534  41 82 00 0C */	beq lbl_809F3540
/* 809F3538  90 7E 0E 08 */	stw r3, 0xe08(r30)
/* 809F353C  48 00 00 0C */	b lbl_809F3548
lbl_809F3540:
/* 809F3540  38 00 FF FF */	li r0, -1
/* 809F3544  90 1E 0E 08 */	stw r0, 0xe08(r30)
lbl_809F3548:
/* 809F3548  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809F354C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 809F3550  98 1E 0E 1E */	stb r0, 0xe1e(r30)
/* 809F3554  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 809F3558  98 1E 0E 1F */	stb r0, 0xe1f(r30)
/* 809F355C  7F C3 F3 78 */	mr r3, r30
/* 809F3560  48 00 19 A1 */	bl isDelete__13daNpc_GWolf_cFv
/* 809F3564  2C 03 00 00 */	cmpwi r3, 0
/* 809F3568  41 82 00 0C */	beq lbl_809F3574
/* 809F356C  38 60 00 05 */	li r3, 5
/* 809F3570  48 00 02 38 */	b lbl_809F37A8
lbl_809F3574:
/* 809F3574  3B 20 00 00 */	li r25, 0
/* 809F3578  3B 00 00 00 */	li r24, 0
/* 809F357C  3B A0 00 00 */	li r29, 0
/* 809F3580  3B 80 00 00 */	li r28, 0
/* 809F3584  3C 60 80 A0 */	lis r3, l_resNames@ha
/* 809F3588  3B 43 89 68 */	addi r26, r3, l_resNames@l
/* 809F358C  3C 60 80 A0 */	lis r3, l_loadRes_list@ha
/* 809F3590  3B 63 89 58 */	addi r27, r3, l_loadRes_list@l
/* 809F3594  48 00 00 48 */	b lbl_809F35DC
lbl_809F3598:
/* 809F3598  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 809F359C  7C 7E 1A 14 */	add r3, r30, r3
/* 809F35A0  54 00 10 3A */	slwi r0, r0, 2
/* 809F35A4  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809F35A8  4B 63 99 14 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809F35AC  2C 03 00 05 */	cmpwi r3, 5
/* 809F35B0  41 82 00 0C */	beq lbl_809F35BC
/* 809F35B4  2C 03 00 03 */	cmpwi r3, 3
/* 809F35B8  40 82 00 0C */	bne lbl_809F35C4
lbl_809F35BC:
/* 809F35BC  38 60 00 05 */	li r3, 5
/* 809F35C0  48 00 01 E8 */	b lbl_809F37A8
lbl_809F35C4:
/* 809F35C4  2C 03 00 04 */	cmpwi r3, 4
/* 809F35C8  40 82 00 08 */	bne lbl_809F35D0
/* 809F35CC  3B 39 00 01 */	addi r25, r25, 1
lbl_809F35D0:
/* 809F35D0  3B 18 00 01 */	addi r24, r24, 1
/* 809F35D4  3B BD 00 04 */	addi r29, r29, 4
/* 809F35D8  3B 9C 00 08 */	addi r28, r28, 8
lbl_809F35DC:
/* 809F35DC  88 1E 0E 10 */	lbz r0, 0xe10(r30)
/* 809F35E0  54 00 10 3A */	slwi r0, r0, 2
/* 809F35E4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809F35E8  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809F35EC  2C 00 00 00 */	cmpwi r0, 0
/* 809F35F0  40 80 FF A8 */	bge lbl_809F3598
/* 809F35F4  7C 19 C0 00 */	cmpw r25, r24
/* 809F35F8  40 82 01 AC */	bne lbl_809F37A4
/* 809F35FC  7F C3 F3 78 */	mr r3, r30
/* 809F3600  3C 80 80 9F */	lis r4, createHeapCallBack__13daNpc_GWolf_cFP10fopAc_ac_c@ha
/* 809F3604  38 84 41 EC */	addi r4, r4, createHeapCallBack__13daNpc_GWolf_cFP10fopAc_ac_c@l
/* 809F3608  38 A0 3D 30 */	li r5, 0x3d30
/* 809F360C  4B 62 6E A4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809F3610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F3614  40 82 00 0C */	bne lbl_809F3620
/* 809F3618  38 60 00 05 */	li r3, 5
/* 809F361C  48 00 01 8C */	b lbl_809F37A8
lbl_809F3620:
/* 809F3620  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809F3624  80 63 00 04 */	lwz r3, 4(r3)
/* 809F3628  38 03 00 24 */	addi r0, r3, 0x24
/* 809F362C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809F3630  7F C3 F3 78 */	mr r3, r30
/* 809F3634  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 809F3638  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 809F363C  FC 60 08 90 */	fmr f3, f1
/* 809F3640  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 809F3644  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 809F3648  FC C0 20 90 */	fmr f6, f4
/* 809F364C  4B 62 6E FC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809F3650  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809F3654  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809F3658  38 BE 05 38 */	addi r5, r30, 0x538
/* 809F365C  38 C0 00 03 */	li r6, 3
/* 809F3660  38 E0 00 01 */	li r7, 1
/* 809F3664  4B 8C CE CC */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 809F3668  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809F366C  38 9F 00 00 */	addi r4, r31, 0
/* 809F3670  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809F3674  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809F3678  4B 68 28 E0 */	b SetWall__12dBgS_AcchCirFff
/* 809F367C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809F3680  90 01 00 08 */	stw r0, 8(r1)
/* 809F3684  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809F3688  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809F368C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809F3690  7F C6 F3 78 */	mr r6, r30
/* 809F3694  38 E0 00 01 */	li r7, 1
/* 809F3698  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809F369C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809F36A0  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809F36A4  4B 68 2B A4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809F36A8  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809F36AC  38 9F 00 00 */	addi r4, r31, 0
/* 809F36B0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809F36B4  FC 00 00 1E */	fctiwz f0, f0
/* 809F36B8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809F36BC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809F36C0  38 A0 00 00 */	li r5, 0
/* 809F36C4  7F C6 F3 78 */	mr r6, r30
/* 809F36C8  4B 69 01 98 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809F36CC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809F36D0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809F36D4  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809F36D8  4B 69 11 DC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809F36DC  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 809F36E0  90 1E 0C D0 */	stw r0, 0xcd0(r30)
/* 809F36E4  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 809F36E8  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 809F36EC  90 1E 0D 30 */	stw r0, 0xd30(r30)
/* 809F36F0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809F36F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F36F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F36FC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F3700  4B 68 33 AC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809F3704  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809F3708  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809F370C  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809F3710  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809F3714  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809F3718  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809F371C  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809F3720  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809F3724  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809F3728  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809F372C  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809F3730  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809F3734  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809F3738  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809F373C  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809F3740  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809F3744  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809F3748  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809F374C  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809F3750  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809F3754  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809F3758  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809F375C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809F3760  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809F3764  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809F3768  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809F376C  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809F3770  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809F3774  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809F3778  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809F377C  7F C3 F3 78 */	mr r3, r30
/* 809F3780  4B 75 F6 04 */	b setEnvTevColor__8daNpcF_cFv
/* 809F3784  7F C3 F3 78 */	mr r3, r30
/* 809F3788  4B 75 F6 58 */	b setRoomNo__8daNpcF_cFv
/* 809F378C  7F C3 F3 78 */	mr r3, r30
/* 809F3790  48 00 18 65 */	bl reset__13daNpc_GWolf_cFv
/* 809F3794  7F C3 F3 78 */	mr r3, r30
/* 809F3798  48 00 04 75 */	bl Execute__13daNpc_GWolf_cFv
/* 809F379C  38 60 00 04 */	li r3, 4
/* 809F37A0  48 00 00 08 */	b lbl_809F37A8
lbl_809F37A4:
/* 809F37A4  38 60 00 00 */	li r3, 0
lbl_809F37A8:
/* 809F37A8  39 61 00 40 */	addi r11, r1, 0x40
/* 809F37AC  4B 96 EA 68 */	b _restgpr_24
/* 809F37B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F37B4  7C 08 03 A6 */	mtlr r0
/* 809F37B8  38 21 00 40 */	addi r1, r1, 0x40
/* 809F37BC  4E 80 00 20 */	blr 
