lbl_806AC390:
/* 806AC390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AC394  7C 08 02 A6 */	mflr r0
/* 806AC398  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AC39C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806AC3A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806AC3A4  7C 7F 1B 78 */	mr r31, r3
/* 806AC3A8  4B FF E8 7D */	bl checkWaterHeight__8daE_DK_cFv
/* 806AC3AC  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 806AC3B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806AC3B4  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 806AC3B8  7F E3 FB 78 */	mr r3, r31
/* 806AC3BC  4B FF E3 81 */	bl damage_check__8daE_DK_cFv
/* 806AC3C0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806AC3C4  64 00 00 08 */	oris r0, r0, 8
/* 806AC3C8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806AC3CC  7F E3 FB 78 */	mr r3, r31
/* 806AC3D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806AC3D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806AC3D8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806AC3DC  4B 96 E4 04 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806AC3E0  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806AC3E4  38 63 D8 08 */	addi r3, r3, l_HIO@l
/* 806AC3E8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806AC3EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AC3F0  40 81 00 0C */	ble lbl_806AC3FC
/* 806AC3F4  38 00 00 00 */	li r0, 0
/* 806AC3F8  98 1F 06 90 */	stb r0, 0x690(r31)
lbl_806AC3FC:
/* 806AC3FC  38 00 00 00 */	li r0, 0
/* 806AC400  98 1F 0B 57 */	stb r0, 0xb57(r31)
/* 806AC404  98 1F 0B 11 */	stb r0, 0xb11(r31)
/* 806AC408  98 1F 0A 1F */	stb r0, 0xa1f(r31)
/* 806AC40C  98 1F 0C 8F */	stb r0, 0xc8f(r31)
/* 806AC410  98 1F 06 A3 */	stb r0, 0x6a3(r31)
/* 806AC414  3B C0 00 00 */	li r30, 0
/* 806AC418  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 806AC41C  2C 00 00 02 */	cmpwi r0, 2
/* 806AC420  41 82 00 44 */	beq lbl_806AC464
/* 806AC424  40 80 00 14 */	bge lbl_806AC438
/* 806AC428  2C 00 00 00 */	cmpwi r0, 0
/* 806AC42C  41 82 00 1C */	beq lbl_806AC448
/* 806AC430  40 80 00 24 */	bge lbl_806AC454
/* 806AC434  48 00 00 58 */	b lbl_806AC48C
lbl_806AC438:
/* 806AC438  2C 00 00 04 */	cmpwi r0, 4
/* 806AC43C  41 82 00 48 */	beq lbl_806AC484
/* 806AC440  40 80 00 4C */	bge lbl_806AC48C
/* 806AC444  48 00 00 30 */	b lbl_806AC474
lbl_806AC448:
/* 806AC448  7F E3 FB 78 */	mr r3, r31
/* 806AC44C  4B FF EE 51 */	bl executeWait__8daE_DK_cFv
/* 806AC450  48 00 00 3C */	b lbl_806AC48C
lbl_806AC454:
/* 806AC454  3B C0 00 01 */	li r30, 1
/* 806AC458  7F E3 FB 78 */	mr r3, r31
/* 806AC45C  4B FF F2 29 */	bl executeChase__8daE_DK_cFv
/* 806AC460  48 00 00 2C */	b lbl_806AC48C
lbl_806AC464:
/* 806AC464  3B C0 00 01 */	li r30, 1
/* 806AC468  7F E3 FB 78 */	mr r3, r31
/* 806AC46C  4B FF F6 0D */	bl executeAttack__8daE_DK_cFv
/* 806AC470  48 00 00 1C */	b lbl_806AC48C
lbl_806AC474:
/* 806AC474  3B C0 00 01 */	li r30, 1
/* 806AC478  7F E3 FB 78 */	mr r3, r31
/* 806AC47C  4B FF F8 4D */	bl executeDamage__8daE_DK_cFv
/* 806AC480  48 00 00 0C */	b lbl_806AC48C
lbl_806AC484:
/* 806AC484  7F E3 FB 78 */	mr r3, r31
/* 806AC488  4B FF FA E5 */	bl executeDeath__8daE_DK_cFv
lbl_806AC48C:
/* 806AC48C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806AC490  30 1E FF FF */	addic r0, r30, -1
/* 806AC494  7C 00 F1 10 */	subfe r0, r0, r30
/* 806AC498  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 806AC49C  4B C1 56 E0 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 806AC4A0  7F E3 FB 78 */	mr r3, r31
/* 806AC4A4  38 9F 09 28 */	addi r4, r31, 0x928
/* 806AC4A8  4B 96 E2 24 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806AC4AC  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 806AC4B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806AC4B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806AC4B8  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 806AC4BC  7F C4 F3 78 */	mr r4, r30
/* 806AC4C0  4B 9C A5 EC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806AC4C4  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 806AC4C8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806AC4CC  40 82 00 78 */	bne lbl_806AC544
/* 806AC4D0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 806AC4D4  3C 60 80 6B */	lis r3, lit_3873@ha
/* 806AC4D8  C0 03 D5 58 */	lfs f0, lit_3873@l(r3)
/* 806AC4DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806AC4E0  41 82 00 64 */	beq lbl_806AC544
/* 806AC4E4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806AC4E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AC4EC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806AC4F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AC4F4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806AC4F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AC4FC  3C 60 80 6B */	lis r3, lit_4062@ha
/* 806AC500  C0 03 D5 9C */	lfs f0, lit_4062@l(r3)
/* 806AC504  EC 01 00 2A */	fadds f0, f1, f0
/* 806AC508  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AC50C  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 806AC510  38 81 00 08 */	addi r4, r1, 8
/* 806AC514  4B BC 31 34 */	b SetC__8cM3dGSphFRC4cXyz
/* 806AC518  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 806AC51C  3C 80 80 6B */	lis r4, lit_4062@ha
/* 806AC520  C0 24 D5 9C */	lfs f1, lit_4062@l(r4)
/* 806AC524  4B BC 31 E4 */	b SetR__8cM3dGSphFf
/* 806AC528  3C 60 80 6B */	lis r3, SphBgcCallBack__8daE_DK_cFP11dBgS_SphChkP10cBgD_Vtx_tiiiP8cM3dGPlaPv@ha
/* 806AC52C  38 03 AD 68 */	addi r0, r3, SphBgcCallBack__8daE_DK_cFP11dBgS_SphChkP10cBgD_Vtx_tiiiP8cM3dGPlaPv@l
/* 806AC530  90 1F 09 24 */	stw r0, 0x924(r31)
/* 806AC534  7F C3 F3 78 */	mr r3, r30
/* 806AC538  38 9F 08 D4 */	addi r4, r31, 0x8d4
/* 806AC53C  7F E5 FB 78 */	mr r5, r31
/* 806AC540  4B 9C 91 48 */	b SphChk__4dBgSFP11dBgS_SphChkPv
lbl_806AC544:
/* 806AC544  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 806AC548  54 00 10 3A */	slwi r0, r0, 2
/* 806AC54C  7C 7F 02 14 */	add r3, r31, r0
/* 806AC550  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 806AC554  4B 96 0E D4 */	b play__14mDoExt_baseAnmFv
/* 806AC558  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 806AC55C  54 00 10 3A */	slwi r0, r0, 2
/* 806AC560  7C 7F 02 14 */	add r3, r31, r0
/* 806AC564  80 63 05 C4 */	lwz r3, 0x5c4(r3)
/* 806AC568  4B 96 0E C0 */	b play__14mDoExt_baseAnmFv
/* 806AC56C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806AC570  7C 03 07 74 */	extsb r3, r0
/* 806AC574  4B 98 0A F8 */	b dComIfGp_getReverb__Fi
/* 806AC578  7C 65 1B 78 */	mr r5, r3
/* 806AC57C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806AC580  38 80 00 00 */	li r4, 0
/* 806AC584  4B 96 4B 2C */	b play__16mDoExt_McaMorfSOFUlSc
/* 806AC588  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806AC58C  7C 03 07 74 */	extsb r3, r0
/* 806AC590  4B 98 0A DC */	b dComIfGp_getReverb__Fi
/* 806AC594  7C 65 1B 78 */	mr r5, r3
/* 806AC598  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806AC59C  38 80 00 00 */	li r4, 0
/* 806AC5A0  4B 96 4B 10 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806AC5A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806AC5A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806AC5AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AC5B0  7C 08 03 A6 */	mtlr r0
/* 806AC5B4  38 21 00 20 */	addi r1, r1, 0x20
/* 806AC5B8  4E 80 00 20 */	blr 
