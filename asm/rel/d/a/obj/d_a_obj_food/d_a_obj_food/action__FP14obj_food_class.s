lbl_80BF1168:
/* 80BF1168  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BF116C  7C 08 02 A6 */	mflr r0
/* 80BF1170  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BF1174  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BF1178  4B 77 10 50 */	b _savegpr_24
/* 80BF117C  7C 7E 1B 78 */	mr r30, r3
/* 80BF1180  3C 80 80 BF */	lis r4, lit_3647@ha
/* 80BF1184  3B E4 1D 90 */	addi r31, r4, lit_3647@l
/* 80BF1188  88 03 05 67 */	lbz r0, 0x567(r3)
/* 80BF118C  7C 00 07 74 */	extsb r0, r0
/* 80BF1190  2C 00 00 03 */	cmpwi r0, 3
/* 80BF1194  41 82 00 60 */	beq lbl_80BF11F4
/* 80BF1198  40 80 00 1C */	bge lbl_80BF11B4
/* 80BF119C  2C 00 00 01 */	cmpwi r0, 1
/* 80BF11A0  41 82 00 2C */	beq lbl_80BF11CC
/* 80BF11A4  40 80 00 3C */	bge lbl_80BF11E0
/* 80BF11A8  2C 00 00 00 */	cmpwi r0, 0
/* 80BF11AC  40 80 00 18 */	bge lbl_80BF11C4
/* 80BF11B0  48 00 00 68 */	b lbl_80BF1218
lbl_80BF11B4:
/* 80BF11B4  2C 00 00 05 */	cmpwi r0, 5
/* 80BF11B8  41 82 00 5C */	beq lbl_80BF1214
/* 80BF11BC  40 80 00 5C */	bge lbl_80BF1218
/* 80BF11C0  48 00 00 44 */	b lbl_80BF1204
lbl_80BF11C4:
/* 80BF11C4  4B FF FA B1 */	bl food_normal__FP14obj_food_class
/* 80BF11C8  48 00 00 50 */	b lbl_80BF1218
lbl_80BF11CC:
/* 80BF11CC  4B FF FA A9 */	bl food_normal__FP14obj_food_class
/* 80BF11D0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80BF11D4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80BF11D8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80BF11DC  48 00 00 3C */	b lbl_80BF1218
lbl_80BF11E0:
/* 80BF11E0  4B FF F7 C5 */	bl food_carry__FP14obj_food_class
/* 80BF11E4  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80BF11E8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80BF11EC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80BF11F0  48 00 00 28 */	b lbl_80BF1218
lbl_80BF11F4:
/* 80BF11F4  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80BF11F8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80BF11FC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80BF1200  48 00 00 18 */	b lbl_80BF1218
lbl_80BF1204:
/* 80BF1204  38 00 00 00 */	li r0, 0
/* 80BF1208  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80BF120C  B0 1E 05 7E */	sth r0, 0x57e(r30)
/* 80BF1210  48 00 00 08 */	b lbl_80BF1218
lbl_80BF1214:
/* 80BF1214  4B FF FD AD */	bl ball_move__FP14obj_food_class
lbl_80BF1218:
/* 80BF1218  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BF121C  28 00 00 01 */	cmplwi r0, 1
/* 80BF1220  40 82 01 98 */	bne lbl_80BF13B8
/* 80BF1224  A8 7E 04 DC */	lha r3, 0x4dc(r30)
/* 80BF1228  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BF122C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80BF1230  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF1234  FC 00 00 1E */	fctiwz f0, f0
/* 80BF1238  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80BF123C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BF1240  7C 03 02 14 */	add r0, r3, r0
/* 80BF1244  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BF1248  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BF124C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BF1250  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF1254  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BF1258  4B 41 B1 84 */	b mDoMtx_YrotS__FPA4_fs
/* 80BF125C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BF1260  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BF1264  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BF1268  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80BF126C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BF1270  38 61 00 70 */	addi r3, r1, 0x70
/* 80BF1274  38 81 00 64 */	addi r4, r1, 0x64
/* 80BF1278  4B 67 FC 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BF127C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80BF1280  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80BF1284  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80BF1288  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80BF128C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF1290  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BF1294  7C 65 1B 78 */	mr r5, r3
/* 80BF1298  4B 75 5D F8 */	b PSVECAdd
/* 80BF129C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80BF12A0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BF12A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BF12A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BF12AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF12B0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BF12B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BF12B8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BF12BC  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80BF12C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BF12C4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BF12C8  38 7E 06 08 */	addi r3, r30, 0x608
/* 80BF12CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BF12D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BF12D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BF12D8  4B 48 57 D4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BF12DC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF12E0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BF12E4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BF12E8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BF12EC  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80BF12F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80BF12F4  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BF12F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF12FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1300  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BF1304  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BF1308  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BF130C  4B 75 55 DC */	b PSMTXTrans
/* 80BF1310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1318  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BF131C  4B 41 B1 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80BF1320  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1324  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1328  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80BF132C  4B 41 B0 70 */	b mDoMtx_XrotM__FPA4_fs
/* 80BF1330  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80BF1334  FC 40 08 90 */	fmr f2, f1
/* 80BF1338  FC 60 08 90 */	fmr f3, f1
/* 80BF133C  4B 41 BA FC */	b scaleM__14mDoMtx_stack_cFfff
/* 80BF1340  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BF1344  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80BF1348  FC 60 08 90 */	fmr f3, f1
/* 80BF134C  4B 41 BA 50 */	b transM__14mDoMtx_stack_cFfff
/* 80BF1350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1354  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1358  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BF135C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF1360  4B 75 51 50 */	b PSMTXCopy
/* 80BF1364  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BF1368  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80BF136C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BF1370  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BF1374  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80BF1378  38 61 00 28 */	addi r3, r1, 0x28
/* 80BF137C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BF1380  38 A1 00 58 */	addi r5, r1, 0x58
/* 80BF1384  4B 67 57 60 */	b __pl__4cXyzCFRC3Vec
/* 80BF1388  38 7E 09 40 */	addi r3, r30, 0x940
/* 80BF138C  38 81 00 28 */	addi r4, r1, 0x28
/* 80BF1390  4B 67 E2 B8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80BF1394  38 7E 09 40 */	addi r3, r30, 0x940
/* 80BF1398  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BF139C  4B 67 E3 6C */	b SetR__8cM3dGSphFf
/* 80BF13A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF13A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF13A8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BF13AC  38 9E 08 1C */	addi r4, r30, 0x81c
/* 80BF13B0  4B 67 37 F8 */	b Set__4cCcSFP8cCcD_Obj
/* 80BF13B4  48 00 03 04 */	b lbl_80BF16B8
lbl_80BF13B8:
/* 80BF13B8  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 80BF13BC  2C 00 00 03 */	cmpwi r0, 3
/* 80BF13C0  41 82 02 F0 */	beq lbl_80BF16B0
/* 80BF13C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BF13C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BF13CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF13D0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BF13D4  4B 41 B0 08 */	b mDoMtx_YrotS__FPA4_fs
/* 80BF13D8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BF13DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BF13E0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BF13E4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80BF13E8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BF13EC  38 61 00 70 */	addi r3, r1, 0x70
/* 80BF13F0  38 81 00 64 */	addi r4, r1, 0x64
/* 80BF13F4  4B 67 FA F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BF13F8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80BF13FC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80BF1400  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80BF1404  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80BF1408  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80BF140C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80BF1410  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF1414  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BF1418  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF141C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BF1420  7C 65 1B 78 */	mr r5, r3
/* 80BF1424  4B 75 5C 6C */	b PSVECAdd
/* 80BF1428  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80BF142C  C0 3E 05 34 */	lfs f1, 0x534(r30)
/* 80BF1430  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BF1434  40 80 00 08 */	bge lbl_80BF143C
/* 80BF1438  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
lbl_80BF143C:
/* 80BF143C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80BF1440  D0 1E 05 94 */	stfs f0, 0x594(r30)
/* 80BF1444  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF1448  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BF144C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BF1450  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80BF1454  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF1458  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BF145C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80BF1460  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF1464  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BF1468  38 61 00 4C */	addi r3, r1, 0x4c
/* 80BF146C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BF1470  4B 42 C4 20 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80BF1474  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80BF1478  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80BF147C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF1480  4C 40 13 82 */	cror 2, 0, 2
/* 80BF1484  40 82 01 1C */	bne lbl_80BF15A0
/* 80BF1488  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF148C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80BF1490  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BF1494  40 80 01 0C */	bge lbl_80BF15A0
/* 80BF1498  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80BF149C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BF14A0  4C 41 13 82 */	cror 2, 1, 2
/* 80BF14A4  40 82 00 FC */	bne lbl_80BF15A0
/* 80BF14A8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BF14AC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BF14B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BF14B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BF14B8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF14BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BF14C0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF14C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BF14C8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF14CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BF14D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BF14D4  3B 00 00 00 */	li r24, 0
/* 80BF14D8  3B A0 00 00 */	li r29, 0
/* 80BF14DC  3B 80 00 00 */	li r28, 0
/* 80BF14E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF14E4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80BF14E8  3C 60 80 BF */	lis r3, w_eff_id@ha
/* 80BF14EC  3B 63 1E 18 */	addi r27, r3, w_eff_id@l
lbl_80BF14F0:
/* 80BF14F0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BF14F4  38 00 00 FF */	li r0, 0xff
/* 80BF14F8  90 01 00 08 */	stw r0, 8(r1)
/* 80BF14FC  38 80 00 00 */	li r4, 0
/* 80BF1500  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BF1504  38 00 FF FF */	li r0, -1
/* 80BF1508  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BF150C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BF1510  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BF1514  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BF1518  3B 3C 05 B8 */	addi r25, r28, 0x5b8
/* 80BF151C  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80BF1520  38 A0 00 00 */	li r5, 0
/* 80BF1524  7C DB EA 2E */	lhzx r6, r27, r29
/* 80BF1528  38 E1 00 34 */	addi r7, r1, 0x34
/* 80BF152C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80BF1530  39 20 00 00 */	li r9, 0
/* 80BF1534  39 41 00 40 */	addi r10, r1, 0x40
/* 80BF1538  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BF153C  4B 45 BF 90 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BF1540  7C 7E C9 2E */	stwx r3, r30, r25
/* 80BF1544  3B 18 00 01 */	addi r24, r24, 1
/* 80BF1548  2C 18 00 04 */	cmpwi r24, 4
/* 80BF154C  3B BD 00 02 */	addi r29, r29, 2
/* 80BF1550  3B 9C 00 04 */	addi r28, r28, 4
/* 80BF1554  41 80 FF 9C */	blt lbl_80BF14F0
/* 80BF1558  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80BF155C  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80BF1560  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BF1564  38 7E 05 98 */	addi r3, r30, 0x598
/* 80BF1568  38 81 00 20 */	addi r4, r1, 0x20
/* 80BF156C  38 A0 00 00 */	li r5, 0
/* 80BF1570  38 C0 FF FF */	li r6, -1
/* 80BF1574  81 9E 05 A8 */	lwz r12, 0x5a8(r30)
/* 80BF1578  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BF157C  7D 89 03 A6 */	mtctr r12
/* 80BF1580  4E 80 04 21 */	bctrl 
/* 80BF1584  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BF1588  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BF158C  38 00 00 00 */	li r0, 0
/* 80BF1590  B0 1E 05 8C */	sth r0, 0x58c(r30)
/* 80BF1594  B0 1E 05 8A */	sth r0, 0x58a(r30)
/* 80BF1598  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BF159C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80BF15A0:
/* 80BF15A0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BF15A4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BF15A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF15AC  4C 40 13 82 */	cror 2, 0, 2
/* 80BF15B0  40 82 00 18 */	bne lbl_80BF15C8
/* 80BF15B4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF15B8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BF15BC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BF15C0  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80BF15C4  48 00 00 14 */	b lbl_80BF15D8
lbl_80BF15C8:
/* 80BF15C8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80BF15CC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BF15D0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80BF15D4  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_80BF15D8:
/* 80BF15D8  38 7E 06 08 */	addi r3, r30, 0x608
/* 80BF15DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BF15E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BF15E4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BF15E8  4B 48 54 C4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BF15EC  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 80BF15F0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BF15F4  41 82 00 0C */	beq lbl_80BF1600
/* 80BF15F8  7F C3 F3 78 */	mr r3, r30
/* 80BF15FC  4B FF F2 59 */	bl ground_ang_set__FP14obj_food_class
lbl_80BF1600:
/* 80BF1600  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1604  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1608  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BF160C  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80BF1610  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF1614  EC 42 00 2A */	fadds f2, f2, f0
/* 80BF1618  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BF161C  4B 75 52 CC */	b PSMTXTrans
/* 80BF1620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1628  A8 9E 05 8E */	lha r4, 0x58e(r30)
/* 80BF162C  4B 41 AD 70 */	b mDoMtx_XrotM__FPA4_fs
/* 80BF1630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1638  A8 9E 05 90 */	lha r4, 0x590(r30)
/* 80BF163C  4B 41 AE 90 */	b mDoMtx_ZrotM__FPA4_fs
/* 80BF1640  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1644  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1648  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BF164C  4B 41 AD E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80BF1650  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1654  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1658  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BF165C  4B 41 AD 40 */	b mDoMtx_XrotM__FPA4_fs
/* 80BF1660  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF1664  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF1668  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80BF166C  4B 41 AE 60 */	b mDoMtx_ZrotM__FPA4_fs
/* 80BF1670  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BF1674  FC 40 08 90 */	fmr f2, f1
/* 80BF1678  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80BF167C  4B 41 B7 20 */	b transM__14mDoMtx_stack_cFfff
/* 80BF1680  3C 60 80 BF */	lis r3, l_HIO@ha
/* 80BF1684  38 63 1F 50 */	addi r3, r3, l_HIO@l
/* 80BF1688  C0 23 00 08 */	lfs f1, 8(r3)
/* 80BF168C  FC 40 08 90 */	fmr f2, f1
/* 80BF1690  FC 60 08 90 */	fmr f3, f1
/* 80BF1694  4B 41 B7 A4 */	b scaleM__14mDoMtx_stack_cFfff
/* 80BF1698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF169C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF16A0  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BF16A4  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF16A8  4B 75 4E 08 */	b PSMTXCopy
/* 80BF16AC  48 00 00 0C */	b lbl_80BF16B8
lbl_80BF16B0:
/* 80BF16B0  38 00 00 04 */	li r0, 4
/* 80BF16B4  98 1E 05 67 */	stb r0, 0x567(r30)
lbl_80BF16B8:
/* 80BF16B8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF16BC  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BF16C0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF16C4  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BF16C8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF16CC  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BF16D0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80BF16D4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BF16D8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80BF16DC  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BF16E0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80BF16E4  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80BF16E8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BF16EC  4B 77 0B 28 */	b _restgpr_24
/* 80BF16F0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BF16F4  7C 08 03 A6 */	mtlr r0
/* 80BF16F8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BF16FC  4E 80 00 20 */	blr 
