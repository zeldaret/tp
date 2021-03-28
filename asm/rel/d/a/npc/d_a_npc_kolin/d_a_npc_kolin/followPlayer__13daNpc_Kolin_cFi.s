lbl_805563BC:
/* 805563BC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805563C0  7C 08 02 A6 */	mflr r0
/* 805563C4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805563C8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805563CC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805563D0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 805563D4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 805563D8  39 61 00 90 */	addi r11, r1, 0x90
/* 805563DC  4B E0 BD F0 */	b _savegpr_25
/* 805563E0  7C 7C 1B 78 */	mr r28, r3
/* 805563E4  7C 9D 23 78 */	mr r29, r4
/* 805563E8  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 805563EC  3B C3 A5 B4 */	addi r30, r3, m__19daNpc_Kolin_Param_c@l
/* 805563F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 805563F4  7F 84 E3 78 */	mr r4, r28
/* 805563F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805563FC  3B E5 61 C0 */	addi r31, r5, g_dComIfG_gameInfo@l
/* 80556400  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 80556404  4B BF 4F E8 */	b getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 80556408  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8055640C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80556410  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80556414  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80556418  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8055641C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80556420  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80556424  4B BE F2 E4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80556428  30 03 FF FF */	addic r0, r3, -1
/* 8055642C  7C 00 19 10 */	subfe r0, r0, r3
/* 80556430  54 1B 06 3F */	clrlwi. r27, r0, 0x18
/* 80556434  40 82 00 0C */	bne lbl_80556440
/* 80556438  88 1C 05 47 */	lbz r0, 0x547(r28)
/* 8055643C  48 00 00 08 */	b lbl_80556444
lbl_80556440:
/* 80556440  88 1C 05 45 */	lbz r0, 0x545(r28)
lbl_80556444:
/* 80556444  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 80556448  3B 20 00 00 */	li r25, 0
/* 8055644C  2C 1B 00 00 */	cmpwi r27, 0
/* 80556450  40 82 00 14 */	bne lbl_80556464
/* 80556454  7F 43 D3 78 */	mr r3, r26
/* 80556458  48 00 03 41 */	bl getDistTable__12dAttention_cFi
/* 8055645C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80556460  48 00 00 10 */	b lbl_80556470
lbl_80556464:
/* 80556464  7F 43 D3 78 */	mr r3, r26
/* 80556468  48 00 03 31 */	bl getDistTable__12dAttention_cFi
/* 8055646C  C3 E3 00 00 */	lfs f31, 0(r3)
lbl_80556470:
/* 80556470  7F 43 D3 78 */	mr r3, r26
/* 80556474  48 00 03 25 */	bl getDistTable__12dAttention_cFi
/* 80556478  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8055647C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80556480  EF C0 00 72 */	fmuls f30, f0, f1
/* 80556484  7F 43 D3 78 */	mr r3, r26
/* 80556488  48 00 03 11 */	bl getDistTable__12dAttention_cFi
/* 8055648C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80556490  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80556494  EC 60 00 72 */	fmuls f3, f0, f1
/* 80556498  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8055649C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805564A0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805564A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805564A8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 805564AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805564B0  C0 1C 05 50 */	lfs f0, 0x550(r28)
/* 805564B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805564B8  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 805564BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805564C0  C0 1C 05 58 */	lfs f0, 0x558(r28)
/* 805564C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805564C8  7F 83 E3 78 */	mr r3, r28
/* 805564CC  38 81 00 20 */	addi r4, r1, 0x20
/* 805564D0  38 A1 00 14 */	addi r5, r1, 0x14
/* 805564D4  FC 20 F8 90 */	fmr f1, f31
/* 805564D8  FC 40 F0 90 */	fmr f2, f30
/* 805564DC  38 C0 00 00 */	li r6, 0
/* 805564E0  4B BF 48 10 */	b chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 805564E4  2C 03 00 00 */	cmpwi r3, 0
/* 805564E8  41 82 00 20 */	beq lbl_80556508
/* 805564EC  2C 1B 00 00 */	cmpwi r27, 0
/* 805564F0  40 82 00 2C */	bne lbl_8055651C
/* 805564F4  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 805564F8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805564FC  4B BE F1 E4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80556500  3B 60 00 01 */	li r27, 1
/* 80556504  48 00 00 18 */	b lbl_8055651C
lbl_80556508:
/* 80556508  2C 1B 00 00 */	cmpwi r27, 0
/* 8055650C  41 82 00 10 */	beq lbl_8055651C
/* 80556510  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80556514  4B BE F1 E8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80556518  3B 60 00 00 */	li r27, 0
lbl_8055651C:
/* 8055651C  2C 1B 00 00 */	cmpwi r27, 0
/* 80556520  41 82 00 08 */	beq lbl_80556528
/* 80556524  3B 20 00 01 */	li r25, 1
lbl_80556528:
/* 80556528  2C 1D 00 00 */	cmpwi r29, 0
/* 8055652C  40 82 00 BC */	bne lbl_805565E8
/* 80556530  2C 19 00 00 */	cmpwi r25, 0
/* 80556534  40 82 00 B4 */	bne lbl_805565E8
/* 80556538  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8055653C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80556540  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80556544  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80556548  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8055654C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80556550  C0 1C 08 D0 */	lfs f0, 0x8d0(r28)
/* 80556554  EC 01 00 2A */	fadds f0, f1, f0
/* 80556558  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8055655C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80556560  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80556564  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80556568  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8055656C  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 80556570  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80556574  7F 83 E3 78 */	mr r3, r28
/* 80556578  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8055657C  4B AC 41 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80556580  7C 64 1B 78 */	mr r4, r3
/* 80556584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80556588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055658C  4B AB 5E 50 */	b mDoMtx_YrotS__FPA4_fs
/* 80556590  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80556594  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80556598  38 81 00 44 */	addi r4, r1, 0x44
/* 8055659C  7C 85 23 78 */	mr r5, r4
/* 805565A0  4B DF 07 CC */	b PSMTXMultVec
/* 805565A4  38 61 00 44 */	addi r3, r1, 0x44
/* 805565A8  38 81 00 50 */	addi r4, r1, 0x50
/* 805565AC  7C 65 1B 78 */	mr r5, r3
/* 805565B0  4B DF 0A E0 */	b PSVECAdd
/* 805565B4  38 7C 0A E0 */	addi r3, r28, 0xae0
/* 805565B8  38 81 00 50 */	addi r4, r1, 0x50
/* 805565BC  38 A1 00 44 */	addi r5, r1, 0x44
/* 805565C0  7F 86 E3 78 */	mr r6, r28
/* 805565C4  4B B2 17 A0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805565C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805565CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805565D0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805565D4  38 9C 0A E0 */	addi r4, r28, 0xae0
/* 805565D8  4B B1 DD DC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805565DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805565E0  41 82 00 08 */	beq lbl_805565E8
/* 805565E4  3B 20 00 01 */	li r25, 1
lbl_805565E8:
/* 805565E8  7F 83 E3 78 */	mr r3, r28
/* 805565EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805565F0  7F 25 CB 78 */	mr r5, r25
/* 805565F4  7F A6 EB 78 */	mr r6, r29
/* 805565F8  4B FF FA 05 */	bl calcFollowSpeedAndAngle__13daNpc_Kolin_cFP10fopAc_ac_cii
/* 805565FC  38 61 00 08 */	addi r3, r1, 8
/* 80556600  38 81 00 5C */	addi r4, r1, 0x5c
/* 80556604  38 BC 05 50 */	addi r5, r28, 0x550
/* 80556608  4B D1 05 2C */	b __mi__4cXyzCFRC3Vec
/* 8055660C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80556610  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80556614  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80556618  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8055661C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80556620  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80556624  FC 00 0A 10 */	fabs f0, f1
/* 80556628  FC 20 00 18 */	frsp f1, f0
/* 8055662C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80556630  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80556634  40 80 00 2C */	bge lbl_80556660
/* 80556638  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8055663C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80556640  40 82 00 18 */	bne lbl_80556658
/* 80556644  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80556648  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 8055664C  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80556650  4B D1 A0 F0 */	b cLib_chaseF__FPfff
/* 80556654  48 00 00 0C */	b lbl_80556660
lbl_80556658:
/* 80556658  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 8055665C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80556660:
/* 80556660  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80556664  FC 00 02 10 */	fabs f0, f0
/* 80556668  FC 20 00 18 */	frsp f1, f0
/* 8055666C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80556670  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80556674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80556678  40 80 00 38 */	bge lbl_805566B0
/* 8055667C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80556680  2C 00 00 01 */	cmpwi r0, 1
/* 80556684  41 82 00 B4 */	beq lbl_80556738
/* 80556688  41 82 00 B0 */	beq lbl_80556738
/* 8055668C  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80556690  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80556694  4B BE F2 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556698  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 8055669C  38 00 00 01 */	li r0, 1
/* 805566A0  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 805566A4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 805566A8  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 805566AC  48 00 00 8C */	b lbl_80556738
lbl_805566B0:
/* 805566B0  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 805566B4  2C 00 00 0F */	cmpwi r0, 0xf
/* 805566B8  41 82 00 80 */	beq lbl_80556738
/* 805566BC  7F 83 E3 78 */	mr r3, r28
/* 805566C0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805566C4  4B AC 42 A0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805566C8  38 7E 00 00 */	addi r3, r30, 0
/* 805566CC  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 805566D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805566D4  40 80 00 38 */	bge lbl_8055670C
/* 805566D8  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 805566DC  2C 00 00 0E */	cmpwi r0, 0xe
/* 805566E0  41 82 00 58 */	beq lbl_80556738
/* 805566E4  41 82 00 54 */	beq lbl_80556738
/* 805566E8  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 805566EC  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 805566F0  4B BE F1 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805566F4  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 805566F8  38 00 00 0E */	li r0, 0xe
/* 805566FC  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80556700  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80556704  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80556708  48 00 00 30 */	b lbl_80556738
lbl_8055670C:
/* 8055670C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80556710  2C 00 00 0F */	cmpwi r0, 0xf
/* 80556714  41 82 00 24 */	beq lbl_80556738
/* 80556718  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 8055671C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80556720  4B BE F1 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556724  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80556728  38 00 00 0F */	li r0, 0xf
/* 8055672C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80556730  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80556734  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80556738:
/* 80556738  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8055673C  2C 00 00 01 */	cmpwi r0, 1
/* 80556740  41 82 00 28 */	beq lbl_80556768
/* 80556744  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80556748  4B BE EF B4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055674C  38 00 00 00 */	li r0, 0
/* 80556750  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80556754  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80556758  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8055675C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80556760  38 00 00 01 */	li r0, 1
/* 80556764  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80556768:
/* 80556768  38 00 00 00 */	li r0, 0
/* 8055676C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80556770  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80556774  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80556778  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8055677C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80556780  39 61 00 90 */	addi r11, r1, 0x90
/* 80556784  4B E0 BA 94 */	b _restgpr_25
/* 80556788  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8055678C  7C 08 03 A6 */	mtlr r0
/* 80556790  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80556794  4E 80 00 20 */	blr 
