lbl_80C57274:
/* 80C57274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C57278  7C 08 02 A6 */	mflr r0
/* 80C5727C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C57280  39 61 00 30 */	addi r11, r1, 0x30
/* 80C57284  4B 70 AF 59 */	bl _savegpr_29
/* 80C57288  7C 7F 1B 78 */	mr r31, r3
/* 80C5728C  3C A0 80 C5 */	lis r5, mCcDObjInfo__12daLv1Cdl01_c@ha /* 0x80C5785C@ha */
/* 80C57290  3B C5 78 5C */	addi r30, r5, mCcDObjInfo__12daLv1Cdl01_c@l /* 0x80C5785C@l */
/* 80C57294  80 A3 05 A8 */	lwz r5, 0x5a8(r3)
/* 80C57298  38 05 00 24 */	addi r0, r5, 0x24
/* 80C5729C  90 04 00 00 */	stw r0, 0(r4)
/* 80C572A0  88 83 07 31 */	lbz r4, 0x731(r3)
/* 80C572A4  28 04 00 00 */	cmplwi r4, 0
/* 80C572A8  41 82 00 24 */	beq lbl_80C572CC
/* 80C572AC  38 04 FF FF */	addi r0, r4, -1
/* 80C572B0  98 1F 07 31 */	stb r0, 0x731(r31)
/* 80C572B4  88 1F 07 31 */	lbz r0, 0x731(r31)
/* 80C572B8  28 00 00 00 */	cmplwi r0, 0
/* 80C572BC  40 82 00 10 */	bne lbl_80C572CC
/* 80C572C0  38 00 00 01 */	li r0, 1
/* 80C572C4  98 1F 07 30 */	stb r0, 0x730(r31)
/* 80C572C8  4B FF FE 9D */	bl setLight__12daLv1Cdl01_cFv
lbl_80C572CC:
/* 80C572CC  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80C572D0  28 00 00 00 */	cmplwi r0, 0
/* 80C572D4  41 82 00 E4 */	beq lbl_80C573B8
/* 80C572D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C572DC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C572E0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C572E4  3C 80 00 01 */	lis r4, 0x0001 /* 0x000083A6@ha */
/* 80C572E8  38 84 83 A6 */	addi r4, r4, 0x83A6 /* 0x000083A6@l */
/* 80C572EC  38 BF 07 24 */	addi r5, r31, 0x724
/* 80C572F0  38 C0 00 00 */	li r6, 0
/* 80C572F4  38 E0 00 FF */	li r7, 0xff
/* 80C572F8  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C572FC  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C57300  7D 09 43 78 */	mr r9, r8
/* 80C57304  39 40 00 00 */	li r10, 0
/* 80C57308  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C5730C  4B 3F 5E AD */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C57310  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C57314  3C 80 00 01 */	lis r4, 0x0001 /* 0x000083A7@ha */
/* 80C57318  38 84 83 A7 */	addi r4, r4, 0x83A7 /* 0x000083A7@l */
/* 80C5731C  38 BF 07 24 */	addi r5, r31, 0x724
/* 80C57320  38 C0 00 00 */	li r6, 0
/* 80C57324  38 E0 00 FF */	li r7, 0xff
/* 80C57328  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C5732C  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C57330  7D 09 43 78 */	mr r9, r8
/* 80C57334  39 40 00 00 */	li r10, 0
/* 80C57338  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C5733C  4B 3F 5E 7D */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C57340  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C57344  38 80 01 03 */	li r4, 0x103
/* 80C57348  38 BF 07 24 */	addi r5, r31, 0x724
/* 80C5734C  38 C0 00 00 */	li r6, 0
/* 80C57350  38 E0 00 FF */	li r7, 0xff
/* 80C57354  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C57358  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C5735C  7D 09 43 78 */	mr r9, r8
/* 80C57360  39 40 00 00 */	li r10, 0
/* 80C57364  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C57368  4B 3F 5E 51 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C5736C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C57370  7C 03 07 74 */	extsb r3, r0
/* 80C57374  4B 3D 5C F9 */	bl dComIfGp_getReverb__Fi
/* 80C57378  7C 67 1B 78 */	mr r7, r3
/* 80C5737C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80C57380  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80C57384  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C57388  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5738C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C57390  80 63 00 00 */	lwz r3, 0(r3)
/* 80C57394  38 81 00 10 */	addi r4, r1, 0x10
/* 80C57398  38 BF 07 24 */	addi r5, r31, 0x724
/* 80C5739C  38 C0 00 00 */	li r6, 0
/* 80C573A0  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C573A4  FC 40 08 90 */	fmr f2, f1
/* 80C573A8  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80C573AC  FC 80 18 90 */	fmr f4, f3
/* 80C573B0  39 00 00 00 */	li r8, 0
/* 80C573B4  4B 65 51 59 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C573B8:
/* 80C573B8  7F E3 FB 78 */	mr r3, r31
/* 80C573BC  4B FF F9 65 */	bl setBaseMtx__12daLv1Cdl01_cFv
/* 80C573C0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C573C4  4B 42 D0 9D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C573C8  28 03 00 00 */	cmplwi r3, 0
/* 80C573CC  41 82 01 9C */	beq lbl_80C57568
/* 80C573D0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C573D4  4B 42 D1 75 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C573D8  7C 7D 1B 78 */	mr r29, r3
/* 80C573DC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C573E0  28 00 02 00 */	cmplwi r0, 0x200
/* 80C573E4  40 82 00 78 */	bne lbl_80C5745C
/* 80C573E8  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 80C573EC  28 00 00 01 */	cmplwi r0, 1
/* 80C573F0  40 82 00 6C */	bne lbl_80C5745C
/* 80C573F4  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80C573F8  28 00 00 00 */	cmplwi r0, 0
/* 80C573FC  40 82 00 60 */	bne lbl_80C5745C
/* 80C57400  38 00 00 01 */	li r0, 1
/* 80C57404  98 1F 07 30 */	stb r0, 0x730(r31)
/* 80C57408  7F E3 FB 78 */	mr r3, r31
/* 80C5740C  4B FF FD 59 */	bl setLight__12daLv1Cdl01_cFv
/* 80C57410  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C57414  7C 03 07 74 */	extsb r3, r0
/* 80C57418  4B 3D 5C 55 */	bl dComIfGp_getReverb__Fi
/* 80C5741C  7C 67 1B 78 */	mr r7, r3
/* 80C57420  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80C57424  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80C57428  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C5742C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C57430  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C57434  80 63 00 00 */	lwz r3, 0(r3)
/* 80C57438  38 81 00 0C */	addi r4, r1, 0xc
/* 80C5743C  38 BF 07 24 */	addi r5, r31, 0x724
/* 80C57440  38 C0 00 00 */	li r6, 0
/* 80C57444  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C57448  FC 40 08 90 */	fmr f2, f1
/* 80C5744C  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80C57450  FC 80 18 90 */	fmr f4, f3
/* 80C57454  39 00 00 00 */	li r8, 0
/* 80C57458  4B 65 45 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C5745C:
/* 80C5745C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80C57460  3C 03 FF FF */	addis r0, r3, 0xffff
/* 80C57464  28 00 00 00 */	cmplwi r0, 0
/* 80C57468  40 82 00 80 */	bne lbl_80C574E8
/* 80C5746C  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 80C57470  28 00 00 03 */	cmplwi r0, 3
/* 80C57474  40 82 00 74 */	bne lbl_80C574E8
/* 80C57478  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80C5747C  28 00 00 01 */	cmplwi r0, 1
/* 80C57480  40 82 00 68 */	bne lbl_80C574E8
/* 80C57484  38 00 00 1E */	li r0, 0x1e
/* 80C57488  98 1F 07 31 */	stb r0, 0x731(r31)
/* 80C5748C  38 00 00 00 */	li r0, 0
/* 80C57490  98 1F 07 30 */	stb r0, 0x730(r31)
/* 80C57494  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C57498  7C 03 07 74 */	extsb r3, r0
/* 80C5749C  4B 3D 5B D1 */	bl dComIfGp_getReverb__Fi
/* 80C574A0  7C 67 1B 78 */	mr r7, r3
/* 80C574A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80C574A8  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80C574AC  90 01 00 08 */	stw r0, 8(r1)
/* 80C574B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C574B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C574B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C574BC  38 81 00 08 */	addi r4, r1, 8
/* 80C574C0  38 BF 07 24 */	addi r5, r31, 0x724
/* 80C574C4  38 C0 00 00 */	li r6, 0
/* 80C574C8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80C574CC  FC 40 08 90 */	fmr f2, f1
/* 80C574D0  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80C574D4  FC 80 18 90 */	fmr f4, f3
/* 80C574D8  39 00 00 00 */	li r8, 0
/* 80C574DC  4B 65 44 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C574E0  7F E3 FB 78 */	mr r3, r31
/* 80C574E4  4B FF FC B1 */	bl cutLight__12daLv1Cdl01_cFv
lbl_80C574E8:
/* 80C574E8  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C574EC  4B 42 D0 0D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C574F0  28 03 00 00 */	cmplwi r3, 0
/* 80C574F4  41 82 00 7C */	beq lbl_80C57570
/* 80C574F8  3B A0 00 01 */	li r29, 1
/* 80C574FC  4B 60 C5 4D */	bl GetAc__8cCcD_ObjFv
/* 80C57500  A8 03 00 08 */	lha r0, 8(r3)
/* 80C57504  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C57508  40 82 00 28 */	bne lbl_80C57530
/* 80C5750C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C57510  4B 42 D0 39 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C57514  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C57518  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C5751C  41 82 00 14 */	beq lbl_80C57530
/* 80C57520  88 1F 07 68 */	lbz r0, 0x768(r31)
/* 80C57524  28 00 00 00 */	cmplwi r0, 0
/* 80C57528  41 82 00 08 */	beq lbl_80C57530
/* 80C5752C  3B A0 00 00 */	li r29, 0
lbl_80C57530:
/* 80C57530  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C57534  41 82 00 3C */	beq lbl_80C57570
/* 80C57538  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C5753C  4B 42 D0 41 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C57540  38 80 00 01 */	li r4, 1
/* 80C57544  4B 42 D0 6D */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80C57548  7C 64 1B 78 */	mr r4, r3
/* 80C5754C  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80C57550  38 A0 00 05 */	li r5, 5
/* 80C57554  38 C0 00 00 */	li r6, 0
/* 80C57558  4B 66 6F 4D */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 80C5755C  38 00 00 01 */	li r0, 1
/* 80C57560  98 1F 07 68 */	stb r0, 0x768(r31)
/* 80C57564  48 00 00 0C */	b lbl_80C57570
lbl_80C57568:
/* 80C57568  38 00 00 00 */	li r0, 0
/* 80C5756C  98 1F 07 68 */	stb r0, 0x768(r31)
lbl_80C57570:
/* 80C57570  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C57574  7C 03 07 74 */	extsb r3, r0
/* 80C57578  4B 3D 5A F5 */	bl dComIfGp_getReverb__Fi
/* 80C5757C  7C 65 1B 78 */	mr r5, r3
/* 80C57580  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80C57584  38 80 00 00 */	li r4, 0
/* 80C57588  81 9F 07 7C */	lwz r12, 0x77c(r31)
/* 80C5758C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C57590  7D 89 03 A6 */	mtctr r12
/* 80C57594  4E 80 04 21 */	bctrl 
/* 80C57598  38 7F 07 0C */	addi r3, r31, 0x70c
/* 80C5759C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C575A0  4B 61 7C 61 */	bl SetR__8cM3dGCylFf
/* 80C575A4  38 7F 07 0C */	addi r3, r31, 0x70c
/* 80C575A8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C575AC  4B 61 7C 4D */	bl SetH__8cM3dGCylFf
/* 80C575B0  38 7F 07 0C */	addi r3, r31, 0x70c
/* 80C575B4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C575B8  4B 61 7C 25 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C575BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C575C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C575C4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C575C8  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 80C575CC  4B 60 D5 DD */	bl Set__4cCcSFP8cCcD_Obj
/* 80C575D0  7F E3 FB 78 */	mr r3, r31
/* 80C575D4  4B FF FB F1 */	bl pointLightProc__12daLv1Cdl01_cFv
/* 80C575D8  38 60 00 01 */	li r3, 1
/* 80C575DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C575E0  4B 70 AC 49 */	bl _restgpr_29
/* 80C575E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C575E8  7C 08 03 A6 */	mtlr r0
/* 80C575EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C575F0  4E 80 00 20 */	blr 
