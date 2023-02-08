lbl_80C6F460:
/* 80C6F460  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80C6F464  7C 08 02 A6 */	mflr r0
/* 80C6F468  90 01 01 04 */	stw r0, 0x104(r1)
/* 80C6F46C  39 61 01 00 */	addi r11, r1, 0x100
/* 80C6F470  4B 6F 2D 6D */	bl _savegpr_29
/* 80C6F474  7C 7F 1B 78 */	mr r31, r3
/* 80C6F478  7C 9D 23 78 */	mr r29, r4
/* 80C6F47C  3C 60 80 C7 */	lis r3, l_cull_box@ha /* 0x80C709A0@ha */
/* 80C6F480  3B C3 09 A0 */	addi r30, r3, l_cull_box@l /* 0x80C709A0@l */
/* 80C6F484  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6F488  54 00 BF FF */	rlwinm. r0, r0, 0x17, 0x1f, 0x1f
/* 80C6F48C  40 82 00 3C */	bne lbl_80C6F4C8
/* 80C6F490  80 7F 06 38 */	lwz r3, 0x638(r31)
/* 80C6F494  3C 03 00 01 */	addis r0, r3, 1
/* 80C6F498  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C6F49C  40 82 00 2C */	bne lbl_80C6F4C8
/* 80C6F4A0  3C 60 80 C7 */	lis r3, searchObjYIblltray__FPvPv@ha /* 0x80C6F2BC@ha */
/* 80C6F4A4  38 63 F2 BC */	addi r3, r3, searchObjYIblltray__FPvPv@l /* 0x80C6F2BC@l */
/* 80C6F4A8  7F E4 FB 78 */	mr r4, r31
/* 80C6F4AC  4B 3A A3 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6F4B0  28 03 00 00 */	cmplwi r3, 0
/* 80C6F4B4  41 82 00 0C */	beq lbl_80C6F4C0
/* 80C6F4B8  80 03 00 04 */	lwz r0, 4(r3)
/* 80C6F4BC  48 00 00 08 */	b lbl_80C6F4C4
lbl_80C6F4C0:
/* 80C6F4C0  38 00 FF FF */	li r0, -1
lbl_80C6F4C4:
/* 80C6F4C4  90 1F 06 38 */	stw r0, 0x638(r31)
lbl_80C6F4C8:
/* 80C6F4C8  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6F4CC  2C 00 00 00 */	cmpwi r0, 0
/* 80C6F4D0  40 82 00 38 */	bne lbl_80C6F508
/* 80C6F4D4  3C 60 80 C7 */	lis r3, rideCallback__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C6EED4@ha */
/* 80C6F4D8  38 03 EE D4 */	addi r0, r3, rideCallback__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C6EED4@l */
/* 80C6F4DC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C6F4E0  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C6F4E4  3C 60 80 C7 */	lis r3, searchNearIronball__FPvPv@ha /* 0x80C6F338@ha */
/* 80C6F4E8  38 63 F3 38 */	addi r3, r3, searchNearIronball__FPvPv@l /* 0x80C6F338@l */
/* 80C6F4EC  7F E4 FB 78 */	mr r4, r31
/* 80C6F4F0  4B 3A A3 09 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6F4F4  7C 64 1B 79 */	or. r4, r3, r3
/* 80C6F4F8  41 82 00 1C */	beq lbl_80C6F514
/* 80C6F4FC  7F E3 FB 78 */	mr r3, r31
/* 80C6F500  4B FF FC E9 */	bl rideActor__16daObjYIblltray_cFP10fopAc_ac_c
/* 80C6F504  48 00 00 10 */	b lbl_80C6F514
lbl_80C6F508:
/* 80C6F508  38 00 00 00 */	li r0, 0
/* 80C6F50C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C6F510  90 03 00 B4 */	stw r0, 0xb4(r3)
lbl_80C6F514:
/* 80C6F514  7F E3 FB 78 */	mr r3, r31
/* 80C6F518  4B FF F7 71 */	bl setMtx__16daObjYIblltray_cFv
/* 80C6F51C  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80C6F520  80 9F 06 20 */	lwz r4, 0x620(r31)
/* 80C6F524  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6F528  4B 6D 6F 89 */	bl PSMTXCopy
/* 80C6F52C  38 7F 0A 54 */	addi r3, r31, 0xa54
/* 80C6F530  80 9F 0A 34 */	lwz r4, 0xa34(r31)
/* 80C6F534  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6F538  4B 6D 6F 79 */	bl PSMTXCopy
/* 80C6F53C  38 1F 05 C0 */	addi r0, r31, 0x5c0
/* 80C6F540  90 1D 00 00 */	stw r0, 0(r29)
/* 80C6F544  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6F548  2C 00 00 04 */	cmpwi r0, 4
/* 80C6F54C  40 82 00 3C */	bne lbl_80C6F588
/* 80C6F550  C0 5F 0A 48 */	lfs f2, 0xa48(r31)
/* 80C6F554  A8 1F 0A 3E */	lha r0, 0xa3e(r31)
/* 80C6F558  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 80C6F55C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6F560  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80C6F564  3C 00 43 30 */	lis r0, 0x4330
/* 80C6F568  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80C6F56C  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 80C6F570  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6F574  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80C6F578  40 82 00 10 */	bne lbl_80C6F588
/* 80C6F57C  7F E3 FB 78 */	mr r3, r31
/* 80C6F580  4B FF FE C1 */	bl onAttention__16daObjYIblltray_cFv
/* 80C6F584  48 00 00 0C */	b lbl_80C6F590
lbl_80C6F588:
/* 80C6F588  7F E3 FB 78 */	mr r3, r31
/* 80C6F58C  4B FF FE C5 */	bl offAttention__16daObjYIblltray_cFv
lbl_80C6F590:
/* 80C6F590  88 1F 0A 84 */	lbz r0, 0xa84(r31)
/* 80C6F594  28 00 00 00 */	cmplwi r0, 0
/* 80C6F598  41 82 01 04 */	beq lbl_80C6F69C
/* 80C6F59C  38 00 00 00 */	li r0, 0
/* 80C6F5A0  98 1F 0A 84 */	stb r0, 0xa84(r31)
/* 80C6F5A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6F5A8  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80C6F5AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6F5B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6F5B4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6F5B8  7C 05 07 74 */	extsb r5, r0
/* 80C6F5BC  4B 3C 5D A5 */	bl isSwitch__10dSv_info_cCFii
/* 80C6F5C0  2C 03 00 00 */	cmpwi r3, 0
/* 80C6F5C4  40 82 00 70 */	bne lbl_80C6F634
/* 80C6F5C8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6F5CC  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80C6F5D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6F5D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6F5D8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6F5DC  7C 05 07 74 */	extsb r5, r0
/* 80C6F5E0  4B 3C 5C 21 */	bl onSwitch__10dSv_info_cFii
/* 80C6F5E4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6F5E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C6F5EC  41 82 00 B0 */	beq lbl_80C6F69C
/* 80C6F5F0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DD@ha */
/* 80C6F5F4  38 03 01 DD */	addi r0, r3, 0x01DD /* 0x000801DD@l */
/* 80C6F5F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C6F5FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6F600  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6F604  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6F608  38 81 00 34 */	addi r4, r1, 0x34
/* 80C6F60C  38 BF 0A 88 */	addi r5, r31, 0xa88
/* 80C6F610  38 C0 00 00 */	li r6, 0
/* 80C6F614  38 E0 00 00 */	li r7, 0
/* 80C6F618  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C6F61C  FC 40 08 90 */	fmr f2, f1
/* 80C6F620  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80C6F624  FC 80 18 90 */	fmr f4, f3
/* 80C6F628  39 00 00 00 */	li r8, 0
/* 80C6F62C  4B 63 C3 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6F630  48 00 00 6C */	b lbl_80C6F69C
lbl_80C6F634:
/* 80C6F634  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6F638  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80C6F63C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6F640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6F644  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6F648  7C 05 07 74 */	extsb r5, r0
/* 80C6F64C  4B 3C 5C 65 */	bl offSwitch__10dSv_info_cFii
/* 80C6F650  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6F654  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C6F658  40 82 00 44 */	bne lbl_80C6F69C
/* 80C6F65C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DD@ha */
/* 80C6F660  38 03 01 DD */	addi r0, r3, 0x01DD /* 0x000801DD@l */
/* 80C6F664  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C6F668  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6F66C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C6F670  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6F674  38 81 00 30 */	addi r4, r1, 0x30
/* 80C6F678  38 BF 0A 88 */	addi r5, r31, 0xa88
/* 80C6F67C  38 C0 00 00 */	li r6, 0
/* 80C6F680  38 E0 00 00 */	li r7, 0
/* 80C6F684  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C6F688  FC 40 08 90 */	fmr f2, f1
/* 80C6F68C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80C6F690  FC 80 18 90 */	fmr f4, f3
/* 80C6F694  39 00 00 00 */	li r8, 0
/* 80C6F698  4B 63 C2 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C6F69C:
/* 80C6F69C  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6F6A0  2C 00 00 04 */	cmpwi r0, 4
/* 80C6F6A4  40 82 00 38 */	bne lbl_80C6F6DC
/* 80C6F6A8  38 7F 06 70 */	addi r3, r31, 0x670
/* 80C6F6AC  38 80 00 70 */	li r4, 0x70
/* 80C6F6B0  4B 5F 52 6D */	bl SetVsGrp__10cCcD_ObjCoFUl
/* 80C6F6B4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C6F6B8  4B 5F 8B 1D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C6F6BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C6F6C0  41 82 00 50 */	beq lbl_80C6F710
/* 80C6F6C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6F6C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6F6CC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C6F6D0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C6F6D4  4B 40 4B 7D */	bl Release__4cBgSFP9dBgW_Base
/* 80C6F6D8  48 00 00 38 */	b lbl_80C6F710
lbl_80C6F6DC:
/* 80C6F6DC  38 7F 06 70 */	addi r3, r31, 0x670
/* 80C6F6E0  38 80 00 30 */	li r4, 0x30
/* 80C6F6E4  4B 5F 52 39 */	bl SetVsGrp__10cCcD_ObjCoFUl
/* 80C6F6E8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C6F6EC  4B 5F 8A E9 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C6F6F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C6F6F4  40 82 00 1C */	bne lbl_80C6F710
/* 80C6F6F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6F6FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6F700  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C6F704  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C6F708  7F E5 FB 78 */	mr r5, r31
/* 80C6F70C  4B 40 52 FD */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C6F710:
/* 80C6F710  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80C6F714  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80C6F718  40 82 01 94 */	bne lbl_80C6F8AC
/* 80C6F71C  54 64 FE 3E */	rlwinm r4, r3, 0x1f, 0x18, 0x1f
/* 80C6F720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6F724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6F728  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6F72C  7C 05 07 74 */	extsb r5, r0
/* 80C6F730  4B 3C 5C 31 */	bl isSwitch__10dSv_info_cCFii
/* 80C6F734  2C 03 00 00 */	cmpwi r3, 0
/* 80C6F738  40 82 00 CC */	bne lbl_80C6F804
/* 80C6F73C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C6F740  D0 1F 0A 44 */	stfs f0, 0xa44(r31)
/* 80C6F744  38 00 00 00 */	li r0, 0
/* 80C6F748  98 1F 0A 3C */	stb r0, 0xa3c(r31)
/* 80C6F74C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80C6F750  2C 00 19 EB */	cmpwi r0, 0x19eb
/* 80C6F754  40 80 00 14 */	bge lbl_80C6F768
/* 80C6F758  A8 7F 06 24 */	lha r3, 0x624(r31)
/* 80C6F75C  38 03 00 64 */	addi r0, r3, 0x64
/* 80C6F760  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F764  48 00 01 34 */	b lbl_80C6F898
lbl_80C6F768:
/* 80C6F768  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80C6F76C  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80C6F770  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 80C6F774  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6F778  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80C6F77C  3C 00 43 30 */	lis r0, 0x4330
/* 80C6F780  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80C6F784  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 80C6F788  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6F78C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C6F790  FC 00 00 1E */	fctiwz f0, f0
/* 80C6F794  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80C6F798  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80C6F79C  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F7A0  38 00 1A 4F */	li r0, 0x1a4f
/* 80C6F7A4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C6F7A8  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6F7AC  2C 00 00 00 */	cmpwi r0, 0
/* 80C6F7B0  41 82 00 E8 */	beq lbl_80C6F898
/* 80C6F7B4  2C 00 00 01 */	cmpwi r0, 1
/* 80C6F7B8  41 82 00 E0 */	beq lbl_80C6F898
/* 80C6F7BC  2C 00 00 04 */	cmpwi r0, 4
/* 80C6F7C0  40 82 00 D8 */	bne lbl_80C6F898
/* 80C6F7C4  3C 60 80 C7 */	lis r3, searchNearBackTrayIronball__FPvPv@ha /* 0x80C6F3BC@ha */
/* 80C6F7C8  38 63 F3 BC */	addi r3, r3, searchNearBackTrayIronball__FPvPv@l /* 0x80C6F3BC@l */
/* 80C6F7CC  7F E4 FB 78 */	mr r4, r31
/* 80C6F7D0  4B 3A A0 29 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6F7D4  7C 64 1B 79 */	or. r4, r3, r3
/* 80C6F7D8  40 82 00 10 */	bne lbl_80C6F7E8
/* 80C6F7DC  38 00 00 00 */	li r0, 0
/* 80C6F7E0  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C6F7E4  48 00 00 B4 */	b lbl_80C6F898
lbl_80C6F7E8:
/* 80C6F7E8  7F E3 FB 78 */	mr r3, r31
/* 80C6F7EC  41 82 00 0C */	beq lbl_80C6F7F8
/* 80C6F7F0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6F7F4  48 00 00 08 */	b lbl_80C6F7FC
lbl_80C6F7F8:
/* 80C6F7F8  38 80 FF FF */	li r4, -1
lbl_80C6F7FC:
/* 80C6F7FC  4B FF FA 41 */	bl sendBall__16daObjYIblltray_cFUi
/* 80C6F800  48 00 00 98 */	b lbl_80C6F898
lbl_80C6F804:
/* 80C6F804  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C6F808  D0 1F 0A 44 */	stfs f0, 0xa44(r31)
/* 80C6F80C  38 00 00 01 */	li r0, 1
/* 80C6F810  98 1F 0A 3C */	stb r0, 0xa3c(r31)
/* 80C6F814  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80C6F818  2C 00 E6 15 */	cmpwi r0, -6635
/* 80C6F81C  40 81 00 14 */	ble lbl_80C6F830
/* 80C6F820  A8 7F 06 24 */	lha r3, 0x624(r31)
/* 80C6F824  38 03 FF 9C */	addi r0, r3, -100
/* 80C6F828  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F82C  48 00 00 6C */	b lbl_80C6F898
lbl_80C6F830:
/* 80C6F830  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80C6F834  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80C6F838  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 80C6F83C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6F840  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C6F844  3C 00 43 30 */	lis r0, 0x4330
/* 80C6F848  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80C6F84C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80C6F850  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6F854  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C6F858  FC 00 00 1E */	fctiwz f0, f0
/* 80C6F85C  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80C6F860  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80C6F864  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F868  38 00 E5 B1 */	li r0, -6735
/* 80C6F86C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C6F870  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6F874  2C 00 00 00 */	cmpwi r0, 0
/* 80C6F878  40 82 00 10 */	bne lbl_80C6F888
/* 80C6F87C  38 00 00 04 */	li r0, 4
/* 80C6F880  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C6F884  48 00 00 14 */	b lbl_80C6F898
lbl_80C6F888:
/* 80C6F888  2C 00 00 01 */	cmpwi r0, 1
/* 80C6F88C  40 82 00 0C */	bne lbl_80C6F898
/* 80C6F890  7F E3 FB 78 */	mr r3, r31
/* 80C6F894  48 00 0A 4D */	bl initRotTo__16daObjYIblltray_cFv
lbl_80C6F898:
/* 80C6F898  A8 7F 04 DC */	lha r3, 0x4dc(r31)
/* 80C6F89C  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80C6F8A0  7C 03 02 14 */	add r0, r3, r0
/* 80C6F8A4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C6F8A8  48 00 01 80 */	b lbl_80C6FA28
lbl_80C6F8AC:
/* 80C6F8AC  54 64 FE 3E */	rlwinm r4, r3, 0x1f, 0x18, 0x1f
/* 80C6F8B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6F8B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6F8B8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6F8BC  7C 05 07 74 */	extsb r5, r0
/* 80C6F8C0  4B 3C 5A A1 */	bl isSwitch__10dSv_info_cCFii
/* 80C6F8C4  2C 03 00 00 */	cmpwi r3, 0
/* 80C6F8C8  41 82 00 BC */	beq lbl_80C6F984
/* 80C6F8CC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C6F8D0  D0 1F 0A 44 */	stfs f0, 0xa44(r31)
/* 80C6F8D4  38 00 00 00 */	li r0, 0
/* 80C6F8D8  98 1F 0A 3C */	stb r0, 0xa3c(r31)
/* 80C6F8DC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80C6F8E0  2C 00 19 EB */	cmpwi r0, 0x19eb
/* 80C6F8E4  40 80 00 14 */	bge lbl_80C6F8F8
/* 80C6F8E8  A8 7F 06 24 */	lha r3, 0x624(r31)
/* 80C6F8EC  38 03 00 64 */	addi r0, r3, 0x64
/* 80C6F8F0  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F8F4  48 00 01 24 */	b lbl_80C6FA18
lbl_80C6F8F8:
/* 80C6F8F8  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80C6F8FC  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80C6F900  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 80C6F904  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6F908  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C6F90C  3C 00 43 30 */	lis r0, 0x4330
/* 80C6F910  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80C6F914  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80C6F918  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6F91C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C6F920  FC 00 00 1E */	fctiwz f0, f0
/* 80C6F924  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80C6F928  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80C6F92C  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F930  38 00 1A 4F */	li r0, 0x1a4f
/* 80C6F934  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C6F938  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6F93C  2C 00 00 04 */	cmpwi r0, 4
/* 80C6F940  40 82 00 D8 */	bne lbl_80C6FA18
/* 80C6F944  3C 60 80 C7 */	lis r3, searchNearBackTrayIronball__FPvPv@ha /* 0x80C6F3BC@ha */
/* 80C6F948  38 63 F3 BC */	addi r3, r3, searchNearBackTrayIronball__FPvPv@l /* 0x80C6F3BC@l */
/* 80C6F94C  7F E4 FB 78 */	mr r4, r31
/* 80C6F950  4B 3A 9E A9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6F954  7C 64 1B 79 */	or. r4, r3, r3
/* 80C6F958  40 82 00 10 */	bne lbl_80C6F968
/* 80C6F95C  38 00 00 00 */	li r0, 0
/* 80C6F960  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C6F964  48 00 00 B4 */	b lbl_80C6FA18
lbl_80C6F968:
/* 80C6F968  7F E3 FB 78 */	mr r3, r31
/* 80C6F96C  41 82 00 0C */	beq lbl_80C6F978
/* 80C6F970  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6F974  48 00 00 08 */	b lbl_80C6F97C
lbl_80C6F978:
/* 80C6F978  38 80 FF FF */	li r4, -1
lbl_80C6F97C:
/* 80C6F97C  4B FF F8 C1 */	bl sendBall__16daObjYIblltray_cFUi
/* 80C6F980  48 00 00 98 */	b lbl_80C6FA18
lbl_80C6F984:
/* 80C6F984  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C6F988  D0 1F 0A 44 */	stfs f0, 0xa44(r31)
/* 80C6F98C  38 00 00 01 */	li r0, 1
/* 80C6F990  98 1F 0A 3C */	stb r0, 0xa3c(r31)
/* 80C6F994  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80C6F998  2C 00 E6 15 */	cmpwi r0, -6635
/* 80C6F99C  40 81 00 14 */	ble lbl_80C6F9B0
/* 80C6F9A0  A8 7F 06 24 */	lha r3, 0x624(r31)
/* 80C6F9A4  38 03 FF 9C */	addi r0, r3, -100
/* 80C6F9A8  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F9AC  48 00 00 6C */	b lbl_80C6FA18
lbl_80C6F9B0:
/* 80C6F9B0  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80C6F9B4  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80C6F9B8  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 80C6F9BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6F9C0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C6F9C4  3C 00 43 30 */	lis r0, 0x4330
/* 80C6F9C8  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80C6F9CC  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80C6F9D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6F9D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C6F9D8  FC 00 00 1E */	fctiwz f0, f0
/* 80C6F9DC  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80C6F9E0  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 80C6F9E4  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80C6F9E8  38 00 E5 B1 */	li r0, -6735
/* 80C6F9EC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C6F9F0  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6F9F4  2C 00 00 00 */	cmpwi r0, 0
/* 80C6F9F8  40 82 00 10 */	bne lbl_80C6FA08
/* 80C6F9FC  38 00 00 04 */	li r0, 4
/* 80C6FA00  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C6FA04  48 00 00 14 */	b lbl_80C6FA18
lbl_80C6FA08:
/* 80C6FA08  2C 00 00 01 */	cmpwi r0, 1
/* 80C6FA0C  40 82 00 0C */	bne lbl_80C6FA18
/* 80C6FA10  7F E3 FB 78 */	mr r3, r31
/* 80C6FA14  48 00 08 CD */	bl initRotTo__16daObjYIblltray_cFv
lbl_80C6FA18:
/* 80C6FA18  A8 7F 04 DC */	lha r3, 0x4dc(r31)
/* 80C6FA1C  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 80C6FA20  7C 03 02 14 */	add r0, r3, r0
/* 80C6FA24  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_80C6FA28:
/* 80C6FA28  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6FA2C  2C 00 00 01 */	cmpwi r0, 1
/* 80C6FA30  40 82 01 EC */	bne lbl_80C6FC1C
/* 80C6FA34  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80C6FA38  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C6FA3C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C6FA40  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C6FA44  38 81 00 28 */	addi r4, r1, 0x28
/* 80C6FA48  4B 3A 9D B1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6FA4C  7C 7D 1B 78 */	mr r29, r3
/* 80C6FA50  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80C6FA54  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C6FA58  41 82 00 18 */	beq lbl_80C6FA70
/* 80C6FA5C  38 00 FF FF */	li r0, -1
/* 80C6FA60  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80C6FA64  38 00 00 00 */	li r0, 0
/* 80C6FA68  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C6FA6C  48 00 01 A8 */	b lbl_80C6FC14
lbl_80C6FA70:
/* 80C6FA70  38 61 00 50 */	addi r3, r1, 0x50
/* 80C6FA74  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80C6FA78  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C6FA7C  4B 5F 70 B9 */	bl __mi__4cXyzCFRC3Vec
/* 80C6FA80  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C6FA84  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80C6FA88  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80C6FA8C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80C6FA90  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80C6FA94  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C6FA98  38 61 00 98 */	addi r3, r1, 0x98
/* 80C6FA9C  4B 6D 76 9D */	bl PSVECSquareMag
/* 80C6FAA0  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C6FAA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FAA8  40 81 00 58 */	ble lbl_80C6FB00
/* 80C6FAAC  FC 00 08 34 */	frsqrte f0, f1
/* 80C6FAB0  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80C6FAB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FAB8  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80C6FABC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FAC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FAC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FAC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FACC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FAD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FAD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FAD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FADC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FAE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FAE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FAE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FAEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FAF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FAF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80C6FAF8  FC 20 08 18 */	frsp f1, f1
/* 80C6FAFC  48 00 00 88 */	b lbl_80C6FB84
lbl_80C6FB00:
/* 80C6FB00  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80C6FB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FB08  40 80 00 10 */	bge lbl_80C6FB18
/* 80C6FB0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C6FB10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C6FB14  48 00 00 70 */	b lbl_80C6FB84
lbl_80C6FB18:
/* 80C6FB18  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C6FB1C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C6FB20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C6FB24  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C6FB28  7C 03 00 00 */	cmpw r3, r0
/* 80C6FB2C  41 82 00 14 */	beq lbl_80C6FB40
/* 80C6FB30  40 80 00 40 */	bge lbl_80C6FB70
/* 80C6FB34  2C 03 00 00 */	cmpwi r3, 0
/* 80C6FB38  41 82 00 20 */	beq lbl_80C6FB58
/* 80C6FB3C  48 00 00 34 */	b lbl_80C6FB70
lbl_80C6FB40:
/* 80C6FB40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C6FB44  41 82 00 0C */	beq lbl_80C6FB50
/* 80C6FB48  38 00 00 01 */	li r0, 1
/* 80C6FB4C  48 00 00 28 */	b lbl_80C6FB74
lbl_80C6FB50:
/* 80C6FB50  38 00 00 02 */	li r0, 2
/* 80C6FB54  48 00 00 20 */	b lbl_80C6FB74
lbl_80C6FB58:
/* 80C6FB58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C6FB5C  41 82 00 0C */	beq lbl_80C6FB68
/* 80C6FB60  38 00 00 05 */	li r0, 5
/* 80C6FB64  48 00 00 10 */	b lbl_80C6FB74
lbl_80C6FB68:
/* 80C6FB68  38 00 00 03 */	li r0, 3
/* 80C6FB6C  48 00 00 08 */	b lbl_80C6FB74
lbl_80C6FB70:
/* 80C6FB70  38 00 00 04 */	li r0, 4
lbl_80C6FB74:
/* 80C6FB74  2C 00 00 01 */	cmpwi r0, 1
/* 80C6FB78  40 82 00 0C */	bne lbl_80C6FB84
/* 80C6FB7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C6FB80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C6FB84:
/* 80C6FB84  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80C6FB88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FB8C  4C 40 13 82 */	cror 2, 0, 2
/* 80C6FB90  40 82 00 20 */	bne lbl_80C6FBB0
/* 80C6FB94  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 80C6FB98  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C6FB9C  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 80C6FBA0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C6FBA4  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C6FBA8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C6FBAC  48 00 00 68 */	b lbl_80C6FC14
lbl_80C6FBB0:
/* 80C6FBB0  FC 00 0A 10 */	fabs f0, f1
/* 80C6FBB4  FC 40 00 18 */	frsp f2, f0
/* 80C6FBB8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C6FBBC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C6FBC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C6FBC4  41 80 00 50 */	blt lbl_80C6FC14
/* 80C6FBC8  38 61 00 98 */	addi r3, r1, 0x98
/* 80C6FBCC  7C 64 1B 78 */	mr r4, r3
/* 80C6FBD0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C6FBD4  EC 20 08 24 */	fdivs f1, f0, f1
/* 80C6FBD8  4B 6D 75 01 */	bl PSVECScale
/* 80C6FBDC  38 61 00 98 */	addi r3, r1, 0x98
/* 80C6FBE0  7C 64 1B 78 */	mr r4, r3
/* 80C6FBE4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80C6FBE8  4B 6D 74 F1 */	bl PSVECScale
/* 80C6FBEC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C6FBF0  38 81 00 98 */	addi r4, r1, 0x98
/* 80C6FBF4  7C 65 1B 78 */	mr r5, r3
/* 80C6FBF8  4B 6D 74 99 */	bl PSVECAdd
/* 80C6FBFC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C6FC00  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80C6FC04  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C6FC08  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80C6FC0C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C6FC10  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
lbl_80C6FC14:
/* 80C6FC14  38 00 00 00 */	li r0, 0
/* 80C6FC18  98 1D 0D B8 */	stb r0, 0xdb8(r29)
lbl_80C6FC1C:
/* 80C6FC1C  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6FC20  2C 00 00 02 */	cmpwi r0, 2
/* 80C6FC24  40 82 02 6C */	bne lbl_80C6FE90
/* 80C6FC28  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80C6FC2C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C6FC30  EC 01 00 2A */	fadds f0, f1, f0
/* 80C6FC34  D0 1F 06 3C */	stfs f0, 0x63c(r31)
/* 80C6FC38  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80C6FC3C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80C6FC40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FC44  4C 41 13 82 */	cror 2, 1, 2
/* 80C6FC48  40 82 00 08 */	bne lbl_80C6FC50
/* 80C6FC4C  D0 1F 06 3C */	stfs f0, 0x63c(r31)
lbl_80C6FC50:
/* 80C6FC50  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80C6FC54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6FC58  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C6FC5C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C6FC60  38 81 00 24 */	addi r4, r1, 0x24
/* 80C6FC64  4B 3A 9B 95 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6FC68  7C 7D 1B 78 */	mr r29, r3
/* 80C6FC6C  38 61 00 44 */	addi r3, r1, 0x44
/* 80C6FC70  38 9F 06 28 */	addi r4, r31, 0x628
/* 80C6FC74  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C6FC78  4B 5F 6E BD */	bl __mi__4cXyzCFRC3Vec
/* 80C6FC7C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C6FC80  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C6FC84  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C6FC88  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80C6FC8C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C6FC90  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80C6FC94  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C6FC98  4B 6D 74 A1 */	bl PSVECSquareMag
/* 80C6FC9C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C6FCA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FCA4  40 81 00 58 */	ble lbl_80C6FCFC
/* 80C6FCA8  FC 00 08 34 */	frsqrte f0, f1
/* 80C6FCAC  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80C6FCB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FCB4  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80C6FCB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FCBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FCC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FCC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FCC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FCCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FCD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FCD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FCD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FCDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FCE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FCE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FCE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FCEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FCF0  FC 21 00 32 */	fmul f1, f1, f0
/* 80C6FCF4  FC 20 08 18 */	frsp f1, f1
/* 80C6FCF8  48 00 00 88 */	b lbl_80C6FD80
lbl_80C6FCFC:
/* 80C6FCFC  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80C6FD00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FD04  40 80 00 10 */	bge lbl_80C6FD14
/* 80C6FD08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C6FD0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C6FD10  48 00 00 70 */	b lbl_80C6FD80
lbl_80C6FD14:
/* 80C6FD14  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C6FD18  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C6FD1C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C6FD20  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C6FD24  7C 03 00 00 */	cmpw r3, r0
/* 80C6FD28  41 82 00 14 */	beq lbl_80C6FD3C
/* 80C6FD2C  40 80 00 40 */	bge lbl_80C6FD6C
/* 80C6FD30  2C 03 00 00 */	cmpwi r3, 0
/* 80C6FD34  41 82 00 20 */	beq lbl_80C6FD54
/* 80C6FD38  48 00 00 34 */	b lbl_80C6FD6C
lbl_80C6FD3C:
/* 80C6FD3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C6FD40  41 82 00 0C */	beq lbl_80C6FD4C
/* 80C6FD44  38 00 00 01 */	li r0, 1
/* 80C6FD48  48 00 00 28 */	b lbl_80C6FD70
lbl_80C6FD4C:
/* 80C6FD4C  38 00 00 02 */	li r0, 2
/* 80C6FD50  48 00 00 20 */	b lbl_80C6FD70
lbl_80C6FD54:
/* 80C6FD54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C6FD58  41 82 00 0C */	beq lbl_80C6FD64
/* 80C6FD5C  38 00 00 05 */	li r0, 5
/* 80C6FD60  48 00 00 10 */	b lbl_80C6FD70
lbl_80C6FD64:
/* 80C6FD64  38 00 00 03 */	li r0, 3
/* 80C6FD68  48 00 00 08 */	b lbl_80C6FD70
lbl_80C6FD6C:
/* 80C6FD6C  38 00 00 04 */	li r0, 4
lbl_80C6FD70:
/* 80C6FD70  2C 00 00 01 */	cmpwi r0, 1
/* 80C6FD74  40 82 00 0C */	bne lbl_80C6FD80
/* 80C6FD78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C6FD7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C6FD80:
/* 80C6FD80  C0 1F 06 3C */	lfs f0, 0x63c(r31)
/* 80C6FD84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FD88  4C 40 13 82 */	cror 2, 0, 2
/* 80C6FD8C  40 82 00 A0 */	bne lbl_80C6FE2C
/* 80C6FD90  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80C6FD94  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C6FD98  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80C6FD9C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C6FDA0  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 80C6FDA4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C6FDA8  80 7F 06 38 */	lwz r3, 0x638(r31)
/* 80C6FDAC  3C 03 00 01 */	addis r0, r3, 1
/* 80C6FDB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C6FDB4  41 82 00 34 */	beq lbl_80C6FDE8
/* 80C6FDB8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C6FDBC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C6FDC0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C6FDC4  38 81 00 20 */	addi r4, r1, 0x20
/* 80C6FDC8  4B 3A 9A 31 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6FDCC  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 80C6FDD0  4B FF F4 6D */	bl sendBall__16daObjYIblltray_cFUi
/* 80C6FDD4  38 00 FF FF */	li r0, -1
/* 80C6FDD8  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80C6FDDC  38 00 00 04 */	li r0, 4
/* 80C6FDE0  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C6FDE4  48 00 00 AC */	b lbl_80C6FE90
lbl_80C6FDE8:
/* 80C6FDE8  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80C6FDEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C6FDF0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C6FDF4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C6FDF8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C6FDFC  4B 3A 99 FD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6FE00  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80C6FE04  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80C6FE08  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80C6FE0C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C6FE10  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80C6FE14  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80C6FE18  38 00 FF FF */	li r0, -1
/* 80C6FE1C  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80C6FE20  38 00 00 04 */	li r0, 4
/* 80C6FE24  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C6FE28  48 00 00 68 */	b lbl_80C6FE90
lbl_80C6FE2C:
/* 80C6FE2C  FC 00 0A 10 */	fabs f0, f1
/* 80C6FE30  FC 40 00 18 */	frsp f2, f0
/* 80C6FE34  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C6FE38  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C6FE3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C6FE40  41 80 00 50 */	blt lbl_80C6FE90
/* 80C6FE44  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C6FE48  7C 64 1B 78 */	mr r4, r3
/* 80C6FE4C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C6FE50  EC 20 08 24 */	fdivs f1, f0, f1
/* 80C6FE54  4B 6D 72 85 */	bl PSVECScale
/* 80C6FE58  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C6FE5C  7C 64 1B 78 */	mr r4, r3
/* 80C6FE60  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80C6FE64  4B 6D 72 75 */	bl PSVECScale
/* 80C6FE68  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C6FE6C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80C6FE70  7C 65 1B 78 */	mr r5, r3
/* 80C6FE74  4B 6D 72 1D */	bl PSVECAdd
/* 80C6FE78  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C6FE7C  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80C6FE80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C6FE84  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80C6FE88  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C6FE8C  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
lbl_80C6FE90:
/* 80C6FE90  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C6FE94  2C 00 00 03 */	cmpwi r0, 3
/* 80C6FE98  40 82 02 64 */	bne lbl_80C700FC
/* 80C6FE9C  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80C6FEA0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C6FEA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C6FEA8  D0 1F 06 3C */	stfs f0, 0x63c(r31)
/* 80C6FEAC  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80C6FEB0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80C6FEB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FEB8  4C 41 13 82 */	cror 2, 1, 2
/* 80C6FEBC  40 82 00 08 */	bne lbl_80C6FEC4
/* 80C6FEC0  D0 1F 06 3C */	stfs f0, 0x63c(r31)
lbl_80C6FEC4:
/* 80C6FEC4  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80C6FEC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C6FECC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C6FED0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C6FED4  38 81 00 18 */	addi r4, r1, 0x18
/* 80C6FED8  4B 3A 99 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6FEDC  7C 7D 1B 78 */	mr r29, r3
/* 80C6FEE0  38 61 00 38 */	addi r3, r1, 0x38
/* 80C6FEE4  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80C6FEE8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C6FEEC  4B 5F 6C 49 */	bl __mi__4cXyzCFRC3Vec
/* 80C6FEF0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C6FEF4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C6FEF8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C6FEFC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C6FF00  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C6FF04  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C6FF08  38 61 00 80 */	addi r3, r1, 0x80
/* 80C6FF0C  4B 6D 72 2D */	bl PSVECSquareMag
/* 80C6FF10  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C6FF14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FF18  40 81 00 58 */	ble lbl_80C6FF70
/* 80C6FF1C  FC 00 08 34 */	frsqrte f0, f1
/* 80C6FF20  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80C6FF24  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FF28  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80C6FF2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FF30  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FF34  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FF38  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FF3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FF40  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FF44  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FF48  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FF4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FF50  FC 44 00 32 */	fmul f2, f4, f0
/* 80C6FF54  FC 00 00 32 */	fmul f0, f0, f0
/* 80C6FF58  FC 01 00 32 */	fmul f0, f1, f0
/* 80C6FF5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C6FF60  FC 02 00 32 */	fmul f0, f2, f0
/* 80C6FF64  FC 21 00 32 */	fmul f1, f1, f0
/* 80C6FF68  FC 20 08 18 */	frsp f1, f1
/* 80C6FF6C  48 00 00 88 */	b lbl_80C6FFF4
lbl_80C6FF70:
/* 80C6FF70  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80C6FF74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FF78  40 80 00 10 */	bge lbl_80C6FF88
/* 80C6FF7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C6FF80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C6FF84  48 00 00 70 */	b lbl_80C6FFF4
lbl_80C6FF88:
/* 80C6FF88  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C6FF8C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C6FF90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C6FF94  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C6FF98  7C 03 00 00 */	cmpw r3, r0
/* 80C6FF9C  41 82 00 14 */	beq lbl_80C6FFB0
/* 80C6FFA0  40 80 00 40 */	bge lbl_80C6FFE0
/* 80C6FFA4  2C 03 00 00 */	cmpwi r3, 0
/* 80C6FFA8  41 82 00 20 */	beq lbl_80C6FFC8
/* 80C6FFAC  48 00 00 34 */	b lbl_80C6FFE0
lbl_80C6FFB0:
/* 80C6FFB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C6FFB4  41 82 00 0C */	beq lbl_80C6FFC0
/* 80C6FFB8  38 00 00 01 */	li r0, 1
/* 80C6FFBC  48 00 00 28 */	b lbl_80C6FFE4
lbl_80C6FFC0:
/* 80C6FFC0  38 00 00 02 */	li r0, 2
/* 80C6FFC4  48 00 00 20 */	b lbl_80C6FFE4
lbl_80C6FFC8:
/* 80C6FFC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C6FFCC  41 82 00 0C */	beq lbl_80C6FFD8
/* 80C6FFD0  38 00 00 05 */	li r0, 5
/* 80C6FFD4  48 00 00 10 */	b lbl_80C6FFE4
lbl_80C6FFD8:
/* 80C6FFD8  38 00 00 03 */	li r0, 3
/* 80C6FFDC  48 00 00 08 */	b lbl_80C6FFE4
lbl_80C6FFE0:
/* 80C6FFE0  38 00 00 04 */	li r0, 4
lbl_80C6FFE4:
/* 80C6FFE4  2C 00 00 01 */	cmpwi r0, 1
/* 80C6FFE8  40 82 00 0C */	bne lbl_80C6FFF4
/* 80C6FFEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C6FFF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C6FFF4:
/* 80C6FFF4  C0 1F 06 3C */	lfs f0, 0x63c(r31)
/* 80C6FFF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6FFFC  4C 40 13 82 */	cror 2, 0, 2
/* 80C70000  40 82 00 98 */	bne lbl_80C70098
/* 80C70004  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 80C70008  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C7000C  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 80C70010  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C70014  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C70018  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C7001C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801DE@ha */
/* 80C70020  38 03 01 DE */	addi r0, r3, 0x01DE /* 0x000801DE@l */
/* 80C70024  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C70028  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7002C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C70030  80 63 00 00 */	lwz r3, 0(r3)
/* 80C70034  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C70038  38 BF 06 28 */	addi r5, r31, 0x628
/* 80C7003C  38 C0 00 00 */	li r6, 0
/* 80C70040  38 E0 00 00 */	li r7, 0
/* 80C70044  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80C70048  FC 40 08 90 */	fmr f2, f1
/* 80C7004C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80C70050  FC 80 18 90 */	fmr f4, f3
/* 80C70054  39 00 00 00 */	li r8, 0
/* 80C70058  4B 63 B9 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7005C  38 00 00 01 */	li r0, 1
/* 80C70060  90 1F 06 40 */	stw r0, 0x640(r31)
/* 80C70064  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80C70068  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7006C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C70070  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C70074  38 81 00 14 */	addi r4, r1, 0x14
/* 80C70078  4B 3A 97 81 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C7007C  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 80C70080  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80C70084  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 80C70088  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C7008C  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C70090  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80C70094  48 00 00 68 */	b lbl_80C700FC
lbl_80C70098:
/* 80C70098  FC 00 0A 10 */	fabs f0, f1
/* 80C7009C  FC 40 00 18 */	frsp f2, f0
/* 80C700A0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80C700A4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80C700A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C700AC  41 80 00 50 */	blt lbl_80C700FC
/* 80C700B0  38 61 00 80 */	addi r3, r1, 0x80
/* 80C700B4  7C 64 1B 78 */	mr r4, r3
/* 80C700B8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80C700BC  EC 20 08 24 */	fdivs f1, f0, f1
/* 80C700C0  4B 6D 70 19 */	bl PSVECScale
/* 80C700C4  38 61 00 80 */	addi r3, r1, 0x80
/* 80C700C8  7C 64 1B 78 */	mr r4, r3
/* 80C700CC  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 80C700D0  4B 6D 70 09 */	bl PSVECScale
/* 80C700D4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C700D8  38 81 00 80 */	addi r4, r1, 0x80
/* 80C700DC  7C 65 1B 78 */	mr r5, r3
/* 80C700E0  4B 6D 6F B1 */	bl PSVECAdd
/* 80C700E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C700E8  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80C700EC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C700F0  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80C700F4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C700F8  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
lbl_80C700FC:
/* 80C700FC  C0 1F 05 FC */	lfs f0, 0x5fc(r31)
/* 80C70100  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C70104  C0 3F 06 0C */	lfs f1, 0x60c(r31)
/* 80C70108  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C7010C  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80C70110  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C70114  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C70118  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C7011C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C70120  38 7F 07 68 */	addi r3, r31, 0x768
/* 80C70124  38 81 00 74 */	addi r4, r1, 0x74
/* 80C70128  4B 5F F0 B5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C7012C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C70130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C70134  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80C70138  7F A3 EB 78 */	mr r3, r29
/* 80C7013C  38 9F 06 44 */	addi r4, r31, 0x644
/* 80C70140  4B 5F 4A 69 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C70144  38 7F 08 A4 */	addi r3, r31, 0x8a4
/* 80C70148  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C7014C  4B 5F F0 91 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C70150  7F A3 EB 78 */	mr r3, r29
/* 80C70154  38 9F 07 80 */	addi r4, r31, 0x780
/* 80C70158  4B 5F 4A 51 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C7015C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80C70160  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C70164  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 80C70168  38 81 00 74 */	addi r4, r1, 0x74
/* 80C7016C  4B 5F F0 71 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C70170  7F A3 EB 78 */	mr r3, r29
/* 80C70174  38 9F 08 BC */	addi r4, r31, 0x8bc
/* 80C70178  4B 5F 4A 31 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C7017C  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 80C70180  4B 41 36 B1 */	bl Move__10dCcD_GSttsFv
/* 80C70184  38 7F 0A 38 */	addi r3, r31, 0xa38
/* 80C70188  4B 39 D2 A1 */	bl play__14mDoExt_baseAnmFv
/* 80C7018C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C70190  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C70194  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C70198  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C7019C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C701A0  80 7F 0A 34 */	lwz r3, 0xa34(r31)
/* 80C701A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C701A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C701AC  38 81 00 68 */	addi r4, r1, 0x68
/* 80C701B0  38 BF 0A 88 */	addi r5, r31, 0xa88
/* 80C701B4  4B 6D 6B B9 */	bl PSMTXMultVec
/* 80C701B8  C0 1F 0A 88 */	lfs f0, 0xa88(r31)
/* 80C701BC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C701C0  C0 1F 0A 8C */	lfs f0, 0xa8c(r31)
/* 80C701C4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C701C8  C0 1F 0A 90 */	lfs f0, 0xa90(r31)
/* 80C701CC  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C701D0  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 80C701D4  2C 00 00 00 */	cmpwi r0, 0
/* 80C701D8  40 82 00 EC */	bne lbl_80C702C4
/* 80C701DC  38 7F 0A 54 */	addi r3, r31, 0xa54
/* 80C701E0  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80C701E4  4B 6D 63 CD */	bl PSMTXInverse
/* 80C701E8  28 03 00 00 */	cmplwi r3, 0
/* 80C701EC  41 82 00 D8 */	beq lbl_80C702C4
/* 80C701F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C701F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C701F8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80C701FC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80C70200  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C70204  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80C70208  4B 6D 6B 65 */	bl PSMTXMultVec
/* 80C7020C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C70210  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C70214  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80C70218  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C7021C  7C 03 00 50 */	subf r0, r3, r0
/* 80C70220  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C70224  7C 64 02 14 */	add r3, r4, r0
/* 80C70228  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C7022C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80C70230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C70234  40 80 00 90 */	bge lbl_80C702C4
/* 80C70238  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80C7023C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80C70240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C70244  40 81 00 80 */	ble lbl_80C702C4
/* 80C70248  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80C7024C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C70250  40 80 00 74 */	bge lbl_80C702C4
/* 80C70254  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80C70258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7025C  40 81 00 68 */	ble lbl_80C702C4
/* 80C70260  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80C70264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C70268  40 80 00 5C */	bge lbl_80C702C4
/* 80C7026C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C70270  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C70274  40 82 00 20 */	bne lbl_80C70294
/* 80C70278  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80C7027C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80C70280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C70284  40 80 00 10 */	bge lbl_80C70294
/* 80C70288  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80C7028C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C70290  41 81 00 28 */	bgt lbl_80C702B8
lbl_80C70294:
/* 80C70294  2C 00 00 00 */	cmpwi r0, 0
/* 80C70298  41 82 00 2C */	beq lbl_80C702C4
/* 80C7029C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80C702A0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80C702A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C702A8  40 80 00 1C */	bge lbl_80C702C4
/* 80C702AC  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80C702B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C702B4  40 81 00 10 */	ble lbl_80C702C4
lbl_80C702B8:
/* 80C702B8  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80C702BC  64 00 10 00 */	oris r0, r0, 0x1000
/* 80C702C0  90 1D 05 8C */	stw r0, 0x58c(r29)
lbl_80C702C4:
/* 80C702C4  38 60 00 01 */	li r3, 1
/* 80C702C8  39 61 01 00 */	addi r11, r1, 0x100
/* 80C702CC  4B 6F 1F 5D */	bl _restgpr_29
/* 80C702D0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80C702D4  7C 08 03 A6 */	mtlr r0
/* 80C702D8  38 21 01 00 */	addi r1, r1, 0x100
/* 80C702DC  4E 80 00 20 */	blr 
