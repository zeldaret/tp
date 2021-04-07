lbl_80C56388:
/* 80C56388  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C5638C  7C 08 02 A6 */	mflr r0
/* 80C56390  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C56394  39 61 00 30 */	addi r11, r1, 0x30
/* 80C56398  4B 70 BE 45 */	bl _savegpr_29
/* 80C5639C  7C 7F 1B 78 */	mr r31, r3
/* 80C563A0  3C 60 80 C5 */	lis r3, mCcDObjInfo__12daLv1Cdl00_c@ha /* 0x80C56A50@ha */
/* 80C563A4  3B C3 6A 50 */	addi r30, r3, mCcDObjInfo__12daLv1Cdl00_c@l /* 0x80C56A50@l */
/* 80C563A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C563AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C563B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C563B4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C563B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C563BC  7C 05 07 74 */	extsb r5, r0
/* 80C563C0  4B 3D EF A1 */	bl isSwitch__10dSv_info_cCFii
/* 80C563C4  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80C563C8  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80C563CC  7C 00 E8 40 */	cmplw r0, r29
/* 80C563D0  41 82 00 64 */	beq lbl_80C56434
/* 80C563D4  38 00 00 00 */	li r0, 0
/* 80C563D8  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80C563DC  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80C563E0  7F E3 FB 78 */	mr r3, r31
/* 80C563E4  4B FF FE BD */	bl cutLight__12daLv1Cdl00_cFv
/* 80C563E8  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80C563EC  28 00 00 00 */	cmplwi r0, 0
/* 80C563F0  40 82 00 24 */	bne lbl_80C56414
/* 80C563F4  28 1D 00 00 */	cmplwi r29, 0
/* 80C563F8  41 82 00 38 */	beq lbl_80C56430
/* 80C563FC  38 00 00 01 */	li r0, 1
/* 80C56400  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80C56404  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80C56408  7F E3 FB 78 */	mr r3, r31
/* 80C5640C  4B FF FE 5D */	bl setLight__12daLv1Cdl00_cFv
/* 80C56410  48 00 00 20 */	b lbl_80C56430
lbl_80C56414:
/* 80C56414  28 1D 00 00 */	cmplwi r29, 0
/* 80C56418  40 82 00 18 */	bne lbl_80C56430
/* 80C5641C  38 00 00 01 */	li r0, 1
/* 80C56420  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80C56424  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80C56428  7F E3 FB 78 */	mr r3, r31
/* 80C5642C  4B FF FE 3D */	bl setLight__12daLv1Cdl00_cFv
lbl_80C56430:
/* 80C56430  9B BF 06 F9 */	stb r29, 0x6f9(r31)
lbl_80C56434:
/* 80C56434  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80C56438  28 00 00 00 */	cmplwi r0, 0
/* 80C5643C  41 82 00 E4 */	beq lbl_80C56520
/* 80C56440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C56444  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C56448  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5644C  3C 80 00 01 */	lis r4, 0x0001 /* 0x000083A6@ha */
/* 80C56450  38 84 83 A6 */	addi r4, r4, 0x83A6 /* 0x000083A6@l */
/* 80C56454  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80C56458  38 C0 00 00 */	li r6, 0
/* 80C5645C  38 E0 00 FF */	li r7, 0xff
/* 80C56460  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C56464  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C56468  7D 09 43 78 */	mr r9, r8
/* 80C5646C  39 40 00 00 */	li r10, 0
/* 80C56470  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C56474  4B 3F 6D 45 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C56478  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C5647C  3C 80 00 01 */	lis r4, 0x0001 /* 0x000083A7@ha */
/* 80C56480  38 84 83 A7 */	addi r4, r4, 0x83A7 /* 0x000083A7@l */
/* 80C56484  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80C56488  38 C0 00 00 */	li r6, 0
/* 80C5648C  38 E0 00 FF */	li r7, 0xff
/* 80C56490  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C56494  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C56498  7D 09 43 78 */	mr r9, r8
/* 80C5649C  39 40 00 00 */	li r10, 0
/* 80C564A0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C564A4  4B 3F 6D 15 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C564A8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C564AC  38 80 01 03 */	li r4, 0x103
/* 80C564B0  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80C564B4  38 C0 00 00 */	li r6, 0
/* 80C564B8  38 E0 00 FF */	li r7, 0xff
/* 80C564BC  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C564C0  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C564C4  7D 09 43 78 */	mr r9, r8
/* 80C564C8  39 40 00 00 */	li r10, 0
/* 80C564CC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C564D0  4B 3F 6C E9 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C564D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C564D8  7C 03 07 74 */	extsb r3, r0
/* 80C564DC  4B 3D 6B 91 */	bl dComIfGp_getReverb__Fi
/* 80C564E0  7C 67 1B 78 */	mr r7, r3
/* 80C564E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80C564E8  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80C564EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C564F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C564F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C564F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C564FC  38 81 00 10 */	addi r4, r1, 0x10
/* 80C56500  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80C56504  38 C0 00 00 */	li r6, 0
/* 80C56508  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C5650C  FC 40 08 90 */	fmr f2, f1
/* 80C56510  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80C56514  FC 80 18 90 */	fmr f4, f3
/* 80C56518  39 00 00 00 */	li r8, 0
/* 80C5651C  4B 65 5F F1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C56520:
/* 80C56520  7F E3 FB 78 */	mr r3, r31
/* 80C56524  4B FF F8 5D */	bl setBaseMtx__12daLv1Cdl00_cFv
/* 80C56528  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C5652C  4B 42 DF 35 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C56530  28 03 00 00 */	cmplwi r3, 0
/* 80C56534  41 82 02 2C */	beq lbl_80C56760
/* 80C56538  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C5653C  4B 42 E0 0D */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C56540  7C 7D 1B 78 */	mr r29, r3
/* 80C56544  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C56548  28 00 02 00 */	cmplwi r0, 0x200
/* 80C5654C  40 82 00 C4 */	bne lbl_80C56610
/* 80C56550  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 80C56554  28 00 00 01 */	cmplwi r0, 1
/* 80C56558  40 82 00 B8 */	bne lbl_80C56610
/* 80C5655C  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80C56560  28 00 00 00 */	cmplwi r0, 0
/* 80C56564  40 82 00 AC */	bne lbl_80C56610
/* 80C56568  38 00 00 01 */	li r0, 1
/* 80C5656C  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80C56570  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80C56574  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80C56578  28 00 00 00 */	cmplwi r0, 0
/* 80C5657C  40 82 00 24 */	bne lbl_80C565A0
/* 80C56580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C56584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C56588  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5658C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C56590  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C56594  7C 05 07 74 */	extsb r5, r0
/* 80C56598  4B 3D EC 69 */	bl onSwitch__10dSv_info_cFii
/* 80C5659C  48 00 00 20 */	b lbl_80C565BC
lbl_80C565A0:
/* 80C565A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C565A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C565A8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C565AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C565B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C565B4  7C 05 07 74 */	extsb r5, r0
/* 80C565B8  4B 3D EC F9 */	bl offSwitch__10dSv_info_cFii
lbl_80C565BC:
/* 80C565BC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C565C0  7C 03 07 74 */	extsb r3, r0
/* 80C565C4  4B 3D 6A A9 */	bl dComIfGp_getReverb__Fi
/* 80C565C8  7C 67 1B 78 */	mr r7, r3
/* 80C565CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80C565D0  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80C565D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C565D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C565DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C565E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C565E4  38 81 00 0C */	addi r4, r1, 0xc
/* 80C565E8  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80C565EC  38 C0 00 00 */	li r6, 0
/* 80C565F0  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C565F4  FC 40 08 90 */	fmr f2, f1
/* 80C565F8  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80C565FC  FC 80 18 90 */	fmr f4, f3
/* 80C56600  39 00 00 00 */	li r8, 0
/* 80C56604  4B 65 53 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C56608  7F E3 FB 78 */	mr r3, r31
/* 80C5660C  4B FF FC 5D */	bl setLight__12daLv1Cdl00_cFv
lbl_80C56610:
/* 80C56610  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80C56614  3C 03 FF FF */	addis r0, r3, 0xffff
/* 80C56618  28 00 00 00 */	cmplwi r0, 0
/* 80C5661C  40 82 00 C4 */	bne lbl_80C566E0
/* 80C56620  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 80C56624  28 00 00 03 */	cmplwi r0, 3
/* 80C56628  40 82 00 B8 */	bne lbl_80C566E0
/* 80C5662C  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80C56630  28 00 00 01 */	cmplwi r0, 1
/* 80C56634  40 82 00 AC */	bne lbl_80C566E0
/* 80C56638  38 00 00 00 */	li r0, 0
/* 80C5663C  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80C56640  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80C56644  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80C56648  28 00 00 00 */	cmplwi r0, 0
/* 80C5664C  40 82 00 24 */	bne lbl_80C56670
/* 80C56650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C56654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C56658  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5665C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C56660  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C56664  7C 05 07 74 */	extsb r5, r0
/* 80C56668  4B 3D EC 49 */	bl offSwitch__10dSv_info_cFii
/* 80C5666C  48 00 00 20 */	b lbl_80C5668C
lbl_80C56670:
/* 80C56670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C56674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C56678  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5667C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C56680  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C56684  7C 05 07 74 */	extsb r5, r0
/* 80C56688  4B 3D EB 79 */	bl onSwitch__10dSv_info_cFii
lbl_80C5668C:
/* 80C5668C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C56690  7C 03 07 74 */	extsb r3, r0
/* 80C56694  4B 3D 69 D9 */	bl dComIfGp_getReverb__Fi
/* 80C56698  7C 67 1B 78 */	mr r7, r3
/* 80C5669C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80C566A0  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80C566A4  90 01 00 08 */	stw r0, 8(r1)
/* 80C566A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C566AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C566B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C566B4  38 81 00 08 */	addi r4, r1, 8
/* 80C566B8  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 80C566BC  38 C0 00 00 */	li r6, 0
/* 80C566C0  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C566C4  FC 40 08 90 */	fmr f2, f1
/* 80C566C8  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80C566CC  FC 80 18 90 */	fmr f4, f3
/* 80C566D0  39 00 00 00 */	li r8, 0
/* 80C566D4  4B 65 52 B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C566D8  7F E3 FB 78 */	mr r3, r31
/* 80C566DC  4B FF FB C5 */	bl cutLight__12daLv1Cdl00_cFv
lbl_80C566E0:
/* 80C566E0  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C566E4  4B 42 DE 15 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C566E8  28 03 00 00 */	cmplwi r3, 0
/* 80C566EC  41 82 00 7C */	beq lbl_80C56768
/* 80C566F0  3B A0 00 01 */	li r29, 1
/* 80C566F4  4B 60 D3 55 */	bl GetAc__8cCcD_ObjFv
/* 80C566F8  A8 03 00 08 */	lha r0, 8(r3)
/* 80C566FC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C56700  40 82 00 28 */	bne lbl_80C56728
/* 80C56704  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C56708  4B 42 DE 41 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C5670C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C56710  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C56714  41 82 00 14 */	beq lbl_80C56728
/* 80C56718  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80C5671C  28 00 00 00 */	cmplwi r0, 0
/* 80C56720  41 82 00 08 */	beq lbl_80C56728
/* 80C56724  3B A0 00 00 */	li r29, 0
lbl_80C56728:
/* 80C56728  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C5672C  41 82 00 3C */	beq lbl_80C56768
/* 80C56730  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C56734  4B 42 DE 49 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C56738  38 80 00 01 */	li r4, 1
/* 80C5673C  4B 42 DE 75 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80C56740  7C 64 1B 78 */	mr r4, r3
/* 80C56744  38 7F 07 34 */	addi r3, r31, 0x734
/* 80C56748  38 A0 00 05 */	li r5, 5
/* 80C5674C  38 C0 00 00 */	li r6, 0
/* 80C56750  4B 66 7D 55 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 80C56754  38 00 00 01 */	li r0, 1
/* 80C56758  98 1F 07 30 */	stb r0, 0x730(r31)
/* 80C5675C  48 00 00 0C */	b lbl_80C56768
lbl_80C56760:
/* 80C56760  38 00 00 00 */	li r0, 0
/* 80C56764  98 1F 07 30 */	stb r0, 0x730(r31)
lbl_80C56768:
/* 80C56768  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C5676C  7C 03 07 74 */	extsb r3, r0
/* 80C56770  4B 3D 68 FD */	bl dComIfGp_getReverb__Fi
/* 80C56774  7C 65 1B 78 */	mr r5, r3
/* 80C56778  38 7F 07 34 */	addi r3, r31, 0x734
/* 80C5677C  38 80 00 00 */	li r4, 0
/* 80C56780  81 9F 07 44 */	lwz r12, 0x744(r31)
/* 80C56784  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C56788  7D 89 03 A6 */	mtctr r12
/* 80C5678C  4E 80 04 21 */	bctrl 
/* 80C56790  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80C56794  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C56798  4B 61 8A 69 */	bl SetR__8cM3dGCylFf
/* 80C5679C  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80C567A0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C567A4  4B 61 8A 55 */	bl SetH__8cM3dGCylFf
/* 80C567A8  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 80C567AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C567B0  4B 61 8A 2D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C567B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C567B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C567BC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C567C0  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80C567C4  4B 60 E3 E5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C567C8  7F E3 FB 78 */	mr r3, r31
/* 80C567CC  4B FF FB 0D */	bl pointLightProc__12daLv1Cdl00_cFv
/* 80C567D0  38 60 00 01 */	li r3, 1
/* 80C567D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C567D8  4B 70 BA 51 */	bl _restgpr_29
/* 80C567DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C567E0  7C 08 03 A6 */	mtlr r0
/* 80C567E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C567E8  4E 80 00 20 */	blr 
