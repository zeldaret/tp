lbl_80B9F300:
/* 80B9F300  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B9F304  7C 08 02 A6 */	mflr r0
/* 80B9F308  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B9F30C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B9F310  4B 7C 2E CC */	b _savegpr_29
/* 80B9F314  7C 7F 1B 78 */	mr r31, r3
/* 80B9F318  3C 60 80 BA */	lis r3, mCcDObjInfo__11daTvCdlst_c@ha
/* 80B9F31C  3B C3 F8 90 */	addi r30, r3, mCcDObjInfo__11daTvCdlst_c@l
/* 80B9F320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9F324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9F328  88 9F 06 FB */	lbz r4, 0x6fb(r31)
/* 80B9F32C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9F330  7C 05 07 74 */	extsb r5, r0
/* 80B9F334  4B 49 60 2C */	b isSwitch__10dSv_info_cCFii
/* 80B9F338  98 7F 06 F9 */	stb r3, 0x6f9(r31)
/* 80B9F33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9F340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9F344  88 9F 06 FC */	lbz r4, 0x6fc(r31)
/* 80B9F348  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9F34C  7C 05 07 74 */	extsb r5, r0
/* 80B9F350  4B 49 60 10 */	b isSwitch__10dSv_info_cCFii
/* 80B9F354  98 7F 06 FA */	stb r3, 0x6fa(r31)
/* 80B9F358  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80B9F35C  28 00 00 00 */	cmplwi r0, 0
/* 80B9F360  41 82 00 30 */	beq lbl_80B9F390
/* 80B9F364  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80B9F368  28 00 00 00 */	cmplwi r0, 0
/* 80B9F36C  40 82 00 24 */	bne lbl_80B9F390
/* 80B9F370  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80B9F374  28 00 00 00 */	cmplwi r0, 0
/* 80B9F378  40 82 00 18 */	bne lbl_80B9F390
/* 80B9F37C  38 00 00 01 */	li r0, 1
/* 80B9F380  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80B9F384  98 1F 06 FD */	stb r0, 0x6fd(r31)
/* 80B9F388  7F E3 FB 78 */	mr r3, r31
/* 80B9F38C  4B FF FE 65 */	bl setLight__11daTvCdlst_cFv
lbl_80B9F390:
/* 80B9F390  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80B9F394  28 00 00 00 */	cmplwi r0, 0
/* 80B9F398  40 82 00 10 */	bne lbl_80B9F3A8
/* 80B9F39C  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80B9F3A0  28 00 00 00 */	cmplwi r0, 0
/* 80B9F3A4  41 82 00 10 */	beq lbl_80B9F3B4
lbl_80B9F3A8:
/* 80B9F3A8  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80B9F3AC  28 00 00 00 */	cmplwi r0, 0
/* 80B9F3B0  41 82 00 6C */	beq lbl_80B9F41C
lbl_80B9F3B4:
/* 80B9F3B4  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80B9F3B8  28 00 00 01 */	cmplwi r0, 1
/* 80B9F3BC  40 82 00 60 */	bne lbl_80B9F41C
/* 80B9F3C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B9F3C4  7C 03 07 74 */	extsb r3, r0
/* 80B9F3C8  4B 48 DC A4 */	b dComIfGp_getReverb__Fi
/* 80B9F3CC  7C 67 1B 78 */	mr r7, r3
/* 80B9F3D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80B9F3D4  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80B9F3D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B9F3DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9F3E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B9F3E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9F3E8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B9F3EC  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80B9F3F0  38 C0 00 00 */	li r6, 0
/* 80B9F3F4  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80B9F3F8  FC 40 08 90 */	fmr f2, f1
/* 80B9F3FC  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80B9F400  FC 80 18 90 */	fmr f4, f3
/* 80B9F404  39 00 00 00 */	li r8, 0
/* 80B9F408  4B 70 C5 7C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9F40C  38 00 00 00 */	li r0, 0
/* 80B9F410  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80B9F414  7F E3 FB 78 */	mr r3, r31
/* 80B9F418  4B FF FE 09 */	bl cutLight__11daTvCdlst_cFv
lbl_80B9F41C:
/* 80B9F41C  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80B9F420  28 00 00 00 */	cmplwi r0, 0
/* 80B9F424  41 82 01 40 */	beq lbl_80B9F564
/* 80B9F428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9F42C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B9F430  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9F434  38 80 01 00 */	li r4, 0x100
/* 80B9F438  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80B9F43C  38 C0 00 00 */	li r6, 0
/* 80B9F440  38 E0 00 FF */	li r7, 0xff
/* 80B9F444  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 80B9F448  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 80B9F44C  7D 09 43 78 */	mr r9, r8
/* 80B9F450  39 40 00 00 */	li r10, 0
/* 80B9F454  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80B9F458  4B 4A DD 60 */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80B9F45C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9F460  38 80 01 01 */	li r4, 0x101
/* 80B9F464  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80B9F468  38 C0 00 00 */	li r6, 0
/* 80B9F46C  38 E0 00 FF */	li r7, 0xff
/* 80B9F470  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 80B9F474  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 80B9F478  7D 09 43 78 */	mr r9, r8
/* 80B9F47C  39 40 00 00 */	li r10, 0
/* 80B9F480  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80B9F484  4B 4A DD 34 */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80B9F488  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9F48C  38 80 01 03 */	li r4, 0x103
/* 80B9F490  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80B9F494  38 C0 00 00 */	li r6, 0
/* 80B9F498  38 E0 00 FF */	li r7, 0xff
/* 80B9F49C  3D 00 80 45 */	lis r8, g_whiteColor@ha
/* 80B9F4A0  39 08 06 08 */	addi r8, r8, g_whiteColor@l
/* 80B9F4A4  7D 09 43 78 */	mr r9, r8
/* 80B9F4A8  39 40 00 00 */	li r10, 0
/* 80B9F4AC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80B9F4B0  4B 4A DD 08 */	b setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80B9F4B4  88 1F 06 FD */	lbz r0, 0x6fd(r31)
/* 80B9F4B8  28 00 00 00 */	cmplwi r0, 0
/* 80B9F4BC  41 82 00 5C */	beq lbl_80B9F518
/* 80B9F4C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B9F4C4  7C 03 07 74 */	extsb r3, r0
/* 80B9F4C8  4B 48 DB A4 */	b dComIfGp_getReverb__Fi
/* 80B9F4CC  7C 67 1B 78 */	mr r7, r3
/* 80B9F4D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80B9F4D4  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80B9F4D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9F4DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9F4E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B9F4E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9F4E8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B9F4EC  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80B9F4F0  38 C0 00 00 */	li r6, 0
/* 80B9F4F4  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80B9F4F8  FC 40 08 90 */	fmr f2, f1
/* 80B9F4FC  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80B9F500  FC 80 18 90 */	fmr f4, f3
/* 80B9F504  39 00 00 00 */	li r8, 0
/* 80B9F508  4B 70 C4 7C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9F50C  38 00 00 00 */	li r0, 0
/* 80B9F510  98 1F 06 FD */	stb r0, 0x6fd(r31)
/* 80B9F514  48 00 00 50 */	b lbl_80B9F564
lbl_80B9F518:
/* 80B9F518  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B9F51C  7C 03 07 74 */	extsb r3, r0
/* 80B9F520  4B 48 DB 4C */	b dComIfGp_getReverb__Fi
/* 80B9F524  7C 67 1B 78 */	mr r7, r3
/* 80B9F528  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80B9F52C  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80B9F530  90 01 00 08 */	stw r0, 8(r1)
/* 80B9F534  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9F538  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B9F53C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9F540  38 81 00 08 */	addi r4, r1, 8
/* 80B9F544  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80B9F548  38 C0 00 00 */	li r6, 0
/* 80B9F54C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80B9F550  FC 40 08 90 */	fmr f2, f1
/* 80B9F554  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80B9F558  FC 80 18 90 */	fmr f4, f3
/* 80B9F55C  39 00 00 00 */	li r8, 0
/* 80B9F560  4B 70 CF AC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B9F564:
/* 80B9F564  7F E3 FB 78 */	mr r3, r31
/* 80B9F568  4B FF F7 D9 */	bl setBaseMtx__11daTvCdlst_cFv
/* 80B9F56C  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80B9F570  4B 4E 4E F0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80B9F574  28 03 00 00 */	cmplwi r3, 0
/* 80B9F578  41 82 00 38 */	beq lbl_80B9F5B0
/* 80B9F57C  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80B9F580  4B 4E 4F 78 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80B9F584  28 03 00 00 */	cmplwi r3, 0
/* 80B9F588  41 82 00 28 */	beq lbl_80B9F5B0
/* 80B9F58C  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80B9F590  4B 4E 4F EC */	b GetTgHitObjSe__12dCcD_GObjInfFv
/* 80B9F594  38 80 00 01 */	li r4, 1
/* 80B9F598  4B 4E 50 18 */	b getHitSeID__12dCcD_GObjInfFUci
/* 80B9F59C  7C 64 1B 78 */	mr r4, r3
/* 80B9F5A0  38 7F 07 34 */	addi r3, r31, 0x734
/* 80B9F5A4  38 A0 00 05 */	li r5, 5
/* 80B9F5A8  38 C0 00 00 */	li r6, 0
/* 80B9F5AC  4B 71 EE F8 */	b startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80B9F5B0:
/* 80B9F5B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B9F5B4  7C 03 07 74 */	extsb r3, r0
/* 80B9F5B8  4B 48 DA B4 */	b dComIfGp_getReverb__Fi
/* 80B9F5BC  7C 65 1B 78 */	mr r5, r3
/* 80B9F5C0  38 7F 07 34 */	addi r3, r31, 0x734
/* 80B9F5C4  38 80 00 00 */	li r4, 0
/* 80B9F5C8  81 9F 07 44 */	lwz r12, 0x744(r31)
/* 80B9F5CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B9F5D0  7D 89 03 A6 */	mtctr r12
/* 80B9F5D4  4E 80 04 21 */	bctrl 
/* 80B9F5D8  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80B9F5DC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80B9F5E0  4B 6C FC 20 */	b SetR__8cM3dGCylFf
/* 80B9F5E4  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80B9F5E8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80B9F5EC  4B 6C FC 0C */	b SetH__8cM3dGCylFf
/* 80B9F5F0  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80B9F5F4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B9F5F8  4B 6C FB E4 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B9F5FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9F600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9F604  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B9F608  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80B9F60C  4B 6C 55 9C */	b Set__4cCcSFP8cCcD_Obj
/* 80B9F610  7F E3 FB 78 */	mr r3, r31
/* 80B9F614  4B FF FC 3D */	bl pointLightProc__11daTvCdlst_cFv
/* 80B9F618  38 60 00 01 */	li r3, 1
/* 80B9F61C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B9F620  4B 7C 2C 08 */	b _restgpr_29
/* 80B9F624  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B9F628  7C 08 03 A6 */	mtlr r0
/* 80B9F62C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B9F630  4E 80 00 20 */	blr 
