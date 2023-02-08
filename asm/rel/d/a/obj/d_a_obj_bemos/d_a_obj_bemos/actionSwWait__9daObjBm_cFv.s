lbl_80BB11D4:
/* 80BB11D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB11D8  7C 08 02 A6 */	mflr r0
/* 80BB11DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB11E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB11E4  4B 7B 0F F9 */	bl _savegpr_29
/* 80BB11E8  7C 7F 1B 78 */	mr r31, r3
/* 80BB11EC  3C 60 80 BB */	lis r3, l_eye_offset@ha /* 0x80BB37B8@ha */
/* 80BB11F0  3B C3 37 B8 */	addi r30, r3, l_eye_offset@l /* 0x80BB37B8@l */
/* 80BB11F4  88 1F 0F EA */	lbz r0, 0xfea(r31)
/* 80BB11F8  2C 00 00 01 */	cmpwi r0, 1
/* 80BB11FC  41 82 01 18 */	beq lbl_80BB1314
/* 80BB1200  40 80 00 10 */	bge lbl_80BB1210
/* 80BB1204  2C 00 00 00 */	cmpwi r0, 0
/* 80BB1208  40 80 00 14 */	bge lbl_80BB121C
/* 80BB120C  48 00 02 A4 */	b lbl_80BB14B0
lbl_80BB1210:
/* 80BB1210  2C 00 00 03 */	cmpwi r0, 3
/* 80BB1214  40 80 02 9C */	bge lbl_80BB14B0
/* 80BB1218  48 00 01 40 */	b lbl_80BB1358
lbl_80BB121C:
/* 80BB121C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB1220  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB1224  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB1228  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BB122C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BB1230  7C 05 07 74 */	extsb r5, r0
/* 80BB1234  4B 48 41 2D */	bl isSwitch__10dSv_info_cCFii
/* 80BB1238  2C 03 00 00 */	cmpwi r3, 0
/* 80BB123C  41 82 02 74 */	beq lbl_80BB14B0
/* 80BB1240  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB1244  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB1248  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB124C  38 80 00 15 */	li r4, 0x15
/* 80BB1250  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB1254  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB1258  3C A5 00 02 */	addis r5, r5, 2
/* 80BB125C  38 C0 00 80 */	li r6, 0x80
/* 80BB1260  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BB1264  4B 48 B0 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB1268  7C 65 1B 78 */	mr r5, r3
/* 80BB126C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB1270  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB1274  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BB1278  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB127C  38 C0 00 01 */	li r6, 1
/* 80BB1280  38 E0 00 00 */	li r7, 0
/* 80BB1284  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB1288  39 00 00 00 */	li r8, 0
/* 80BB128C  39 20 FF FF */	li r9, -1
/* 80BB1290  4B 45 C4 7D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BB1294  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80BB1298  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB129C  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80BB12A0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BB12A4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80BB12A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BB12AC  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 80BB12B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB12B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB12B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB12BC  7C 03 07 74 */	extsb r3, r0
/* 80BB12C0  4B 47 BD AD */	bl dComIfGp_getReverb__Fi
/* 80BB12C4  7C 67 1B 78 */	mr r7, r3
/* 80BB12C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DB@ha */
/* 80BB12CC  38 03 01 DB */	addi r0, r3, 0x01DB /* 0x000701DB@l */
/* 80BB12D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB12D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB12D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB12DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB12E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80BB12E4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80BB12E8  38 C0 00 00 */	li r6, 0
/* 80BB12EC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB12F0  FC 40 08 90 */	fmr f2, f1
/* 80BB12F4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80BB12F8  FC 80 18 90 */	fmr f4, f3
/* 80BB12FC  39 00 00 00 */	li r8, 0
/* 80BB1300  4B 6F A6 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB1304  38 00 00 01 */	li r0, 1
/* 80BB1308  98 1F 0F F7 */	stb r0, 0xff7(r31)
/* 80BB130C  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB1310  48 00 01 A0 */	b lbl_80BB14B0
lbl_80BB1314:
/* 80BB1314  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BB1318  38 80 00 01 */	li r4, 1
/* 80BB131C  88 03 00 05 */	lbz r0, 5(r3)
/* 80BB1320  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BB1324  40 82 00 18 */	bne lbl_80BB133C
/* 80BB1328  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BB132C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BB1330  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BB1334  41 82 00 08 */	beq lbl_80BB133C
/* 80BB1338  38 80 00 00 */	li r4, 0
lbl_80BB133C:
/* 80BB133C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BB1340  41 82 01 70 */	beq lbl_80BB14B0
/* 80BB1344  38 00 00 00 */	li r0, 0
/* 80BB1348  98 1F 0F E5 */	stb r0, 0xfe5(r31)
/* 80BB134C  38 00 00 02 */	li r0, 2
/* 80BB1350  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB1354  48 00 01 5C */	b lbl_80BB14B0
lbl_80BB1358:
/* 80BB1358  38 7F 0F E5 */	addi r3, r31, 0xfe5
/* 80BB135C  48 00 21 51 */	bl func_80BB34AC
/* 80BB1360  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB1364  40 82 01 4C */	bne lbl_80BB14B0
/* 80BB1368  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB136C  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB1370  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB1374  38 80 00 19 */	li r4, 0x19
/* 80BB1378  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB137C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB1380  3F A5 00 02 */	addis r29, r5, 2
/* 80BB1384  3B BD C2 F8 */	addi r29, r29, -15624
/* 80BB1388  7F A5 EB 78 */	mr r5, r29
/* 80BB138C  38 C0 00 80 */	li r6, 0x80
/* 80BB1390  4B 48 AF 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB1394  7C 65 1B 78 */	mr r5, r3
/* 80BB1398  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BB139C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB13A0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80BB13A4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB13A8  38 C0 00 01 */	li r6, 1
/* 80BB13AC  38 E0 00 00 */	li r7, 0
/* 80BB13B0  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BB13B4  39 00 00 00 */	li r8, 0
/* 80BB13B8  39 20 FF FF */	li r9, -1
/* 80BB13BC  4B 45 C2 81 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BB13C0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80BB13C4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80BB13C8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BB13CC  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB13D0  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB13D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB13D8  38 80 00 14 */	li r4, 0x14
/* 80BB13DC  7F A5 EB 78 */	mr r5, r29
/* 80BB13E0  38 C0 00 80 */	li r6, 0x80
/* 80BB13E4  4B 48 AF 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB13E8  7C 65 1B 78 */	mr r5, r3
/* 80BB13EC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB13F0  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB13F4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BB13F8  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB13FC  38 C0 00 01 */	li r6, 1
/* 80BB1400  38 E0 00 02 */	li r7, 2
/* 80BB1404  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB1408  39 00 00 00 */	li r8, 0
/* 80BB140C  39 20 FF FF */	li r9, -1
/* 80BB1410  4B 45 C2 FD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BB1414  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB1418  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB141C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB1420  38 80 00 07 */	li r4, 7
/* 80BB1424  7F A5 EB 78 */	mr r5, r29
/* 80BB1428  38 C0 00 80 */	li r6, 0x80
/* 80BB142C  4B 48 AE C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB1430  7C 64 1B 78 */	mr r4, r3
/* 80BB1434  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80BB1438  38 A0 00 01 */	li r5, 1
/* 80BB143C  38 C0 00 00 */	li r6, 0
/* 80BB1440  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB1444  38 E0 00 00 */	li r7, 0
/* 80BB1448  39 00 FF FF */	li r8, -1
/* 80BB144C  39 20 00 01 */	li r9, 1
/* 80BB1450  4B 45 C3 8D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BB1454  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB1458  7C 03 07 74 */	extsb r3, r0
/* 80BB145C  4B 47 BC 11 */	bl dComIfGp_getReverb__Fi
/* 80BB1460  7C 67 1B 78 */	mr r7, r3
/* 80BB1464  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DC@ha */
/* 80BB1468  38 03 01 DC */	addi r0, r3, 0x01DC /* 0x000701DC@l */
/* 80BB146C  90 01 00 08 */	stw r0, 8(r1)
/* 80BB1470  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB1474  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB1478  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB147C  38 81 00 08 */	addi r4, r1, 8
/* 80BB1480  38 BF 05 38 */	addi r5, r31, 0x538
/* 80BB1484  38 C0 00 00 */	li r6, 0
/* 80BB1488  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB148C  FC 40 08 90 */	fmr f2, f1
/* 80BB1490  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80BB1494  FC 80 18 90 */	fmr f4, f3
/* 80BB1498  39 00 00 00 */	li r8, 0
/* 80BB149C  4B 6F A4 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB14A0  38 00 00 14 */	li r0, 0x14
/* 80BB14A4  B0 1F 10 08 */	sth r0, 0x1008(r31)
/* 80BB14A8  7F E3 FB 78 */	mr r3, r31
/* 80BB14AC  48 00 00 1D */	bl initActionWarning__9daObjBm_cFv
lbl_80BB14B0:
/* 80BB14B0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB14B4  4B 7B 0D 75 */	bl _restgpr_29
/* 80BB14B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB14BC  7C 08 03 A6 */	mtlr r0
/* 80BB14C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB14C4  4E 80 00 20 */	blr 
