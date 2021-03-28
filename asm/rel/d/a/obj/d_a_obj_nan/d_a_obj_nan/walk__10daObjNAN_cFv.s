lbl_80CA1184:
/* 80CA1184  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80CA1188  7C 08 02 A6 */	mflr r0
/* 80CA118C  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80CA1190  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 80CA1194  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, 0 /* qr0 */
/* 80CA1198  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80CA119C  4B 6C 10 3C */	b _savegpr_28
/* 80CA11A0  7C 7C 1B 78 */	mr r28, r3
/* 80CA11A4  3C 80 80 CA */	lis r4, cNullVec__6Z2Calc@ha
/* 80CA11A8  3B C4 32 B0 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80CA11AC  3C 80 80 CA */	lis r4, lit_3774@ha
/* 80CA11B0  3B E4 31 BC */	addi r31, r4, lit_3774@l
/* 80CA11B4  80 03 07 D0 */	lwz r0, 0x7d0(r3)
/* 80CA11B8  2C 00 00 00 */	cmpwi r0, 0
/* 80CA11BC  40 82 00 58 */	bne lbl_80CA1214
/* 80CA11C0  38 00 00 B4 */	li r0, 0xb4
/* 80CA11C4  B0 1C 07 E0 */	sth r0, 0x7e0(r28)
/* 80CA11C8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80CA11CC  4B 5C 67 88 */	b cM_rndF__Ff
/* 80CA11D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CA11D4  EC 00 08 2A */	fadds f0, f0, f1
/* 80CA11D8  FC 00 00 1E */	fctiwz f0, f0
/* 80CA11DC  D8 01 01 A0 */	stfd f0, 0x1a0(r1)
/* 80CA11E0  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 80CA11E4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CA11E8  B0 1C 07 E2 */	sth r0, 0x7e2(r28)
/* 80CA11EC  38 00 02 58 */	li r0, 0x258
/* 80CA11F0  B0 1C 07 F8 */	sth r0, 0x7f8(r28)
/* 80CA11F4  38 00 00 00 */	li r0, 0
/* 80CA11F8  98 1C 07 FC */	stb r0, 0x7fc(r28)
/* 80CA11FC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA1200  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80CA1204  80 7C 07 D0 */	lwz r3, 0x7d0(r28)
/* 80CA1208  38 03 00 01 */	addi r0, r3, 1
/* 80CA120C  90 1C 07 D0 */	stw r0, 0x7d0(r28)
/* 80CA1210  48 00 06 D4 */	b lbl_80CA18E4
lbl_80CA1214:
/* 80CA1214  2C 00 FF FF */	cmpwi r0, -1
/* 80CA1218  40 82 00 10 */	bne lbl_80CA1228
/* 80CA121C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA1220  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80CA1224  48 00 06 C0 */	b lbl_80CA18E4
lbl_80CA1228:
/* 80CA1228  4B FF FB 75 */	bl nan_WalkAnm__10daObjNAN_cFv
/* 80CA122C  98 7C 07 FC */	stb r3, 0x7fc(r28)
/* 80CA1230  88 1C 07 FC */	lbz r0, 0x7fc(r28)
/* 80CA1234  28 00 00 00 */	cmplwi r0, 0
/* 80CA1238  41 82 00 10 */	beq lbl_80CA1248
/* 80CA123C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CA1240  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 80CA1244  48 00 00 38 */	b lbl_80CA127C
lbl_80CA1248:
/* 80CA1248  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80CA124C  80 7C 06 28 */	lwz r3, 0x628(r28)
/* 80CA1250  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80CA1254  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CA1258  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80CA125C  41 80 00 1C */	blt lbl_80CA1278
/* 80CA1260  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80CA1264  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80CA1268  40 80 00 14 */	bge lbl_80CA127C
/* 80CA126C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80CA1270  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CA1274  40 80 00 08 */	bge lbl_80CA127C
lbl_80CA1278:
/* 80CA1278  C0 3F 00 1C */	lfs f1, 0x1c(r31)
lbl_80CA127C:
/* 80CA127C  A8 7C 07 DA */	lha r3, 0x7da(r28)
/* 80CA1280  A8 1C 07 D4 */	lha r0, 0x7d4(r28)
/* 80CA1284  7C 03 00 00 */	cmpw r3, r0
/* 80CA1288  40 82 00 14 */	bne lbl_80CA129C
/* 80CA128C  A8 7C 07 DE */	lha r3, 0x7de(r28)
/* 80CA1290  A8 1C 07 D8 */	lha r0, 0x7d8(r28)
/* 80CA1294  7C 03 00 00 */	cmpw r3, r0
/* 80CA1298  41 82 00 0C */	beq lbl_80CA12A4
lbl_80CA129C:
/* 80CA129C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CA12A0  D0 3C 05 2C */	stfs f1, 0x52c(r28)
lbl_80CA12A4:
/* 80CA12A4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80CA12A8  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80CA12AC  4B 5C F4 94 */	b cLib_chaseF__FPfff
/* 80CA12B0  7F 83 E3 78 */	mr r3, r28
/* 80CA12B4  4B FF F6 C5 */	bl nan_posMove__10daObjNAN_cFv
/* 80CA12B8  88 1C 05 6D */	lbz r0, 0x56d(r28)
/* 80CA12BC  28 00 00 00 */	cmplwi r0, 0
/* 80CA12C0  41 82 00 0C */	beq lbl_80CA12CC
/* 80CA12C4  7F 83 E3 78 */	mr r3, r28
/* 80CA12C8  48 00 08 89 */	bl nan_setParticle__10daObjNAN_cFv
lbl_80CA12CC:
/* 80CA12CC  38 61 01 2C */	addi r3, r1, 0x12c
/* 80CA12D0  4B 3D 69 98 */	b __ct__11dBgS_LinChkFv
/* 80CA12D4  38 61 00 BC */	addi r3, r1, 0xbc
/* 80CA12D8  4B 3D 69 90 */	b __ct__11dBgS_LinChkFv
/* 80CA12DC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80CA12E0  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80CA12E4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CA12E8  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80CA12EC  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80CA12F0  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80CA12F4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CA12F8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80CA12FC  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80CA1300  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80CA1304  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80CA1308  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CA130C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80CA1310  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80CA1314  4B 36 BA 50 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA1318  38 7C 07 D4 */	addi r3, r28, 0x7d4
/* 80CA131C  4B 36 BC 28 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA1320  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA1324  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA1328  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80CA132C  4B 36 B1 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80CA1330  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA1334  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA1338  38 81 00 88 */	addi r4, r1, 0x88
/* 80CA133C  7C 85 23 78 */	mr r5, r4
/* 80CA1340  4B 6A 5A 2C */	b PSMTXMultVec
/* 80CA1344  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA1348  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA134C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80CA1350  7C 85 23 78 */	mr r5, r4
/* 80CA1354  4B 6A 5A 18 */	b PSMTXMultVec
/* 80CA1358  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA135C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA1360  38 81 00 70 */	addi r4, r1, 0x70
/* 80CA1364  7C 85 23 78 */	mr r5, r4
/* 80CA1368  4B 6A 5A 04 */	b PSMTXMultVec
/* 80CA136C  38 61 01 84 */	addi r3, r1, 0x184
/* 80CA1370  4B 3D 7A F8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA1374  38 61 01 14 */	addi r3, r1, 0x114
/* 80CA1378  4B 3D 7A F0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA137C  38 61 01 2C */	addi r3, r1, 0x12c
/* 80CA1380  38 81 00 88 */	addi r4, r1, 0x88
/* 80CA1384  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80CA1388  38 C0 00 00 */	li r6, 0
/* 80CA138C  4B 3D 69 D8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CA1390  38 61 00 BC */	addi r3, r1, 0xbc
/* 80CA1394  38 81 00 88 */	addi r4, r1, 0x88
/* 80CA1398  38 A1 00 70 */	addi r5, r1, 0x70
/* 80CA139C  38 C0 00 00 */	li r6, 0
/* 80CA13A0  4B 3D 69 C4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CA13A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA13A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA13AC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CA13B0  7F A3 EB 78 */	mr r3, r29
/* 80CA13B4  38 81 01 2C */	addi r4, r1, 0x12c
/* 80CA13B8  4B 3D 2F FC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80CA13BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA13C0  41 82 02 6C */	beq lbl_80CA162C
/* 80CA13C4  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA13C8  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA13CC  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80CA13D0  7F A3 EB 78 */	mr r3, r29
/* 80CA13D4  38 81 01 40 */	addi r4, r1, 0x140
/* 80CA13D8  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80CA13DC  4B 3D 33 68 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CA13E0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA13E4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CA13E8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CA13EC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CA13F0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CA13F4  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80CA13F8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CA13FC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80CA1400  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CA1404  38 61 00 64 */	addi r3, r1, 0x64
/* 80CA1408  38 81 00 58 */	addi r4, r1, 0x58
/* 80CA140C  4B 6A 5F 90 */	b PSVECSquareDistance
/* 80CA1410  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA1414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA1418  40 81 00 58 */	ble lbl_80CA1470
/* 80CA141C  FC 00 08 34 */	frsqrte f0, f1
/* 80CA1420  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80CA1424  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA1428  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80CA142C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1430  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA1434  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA1438  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA143C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA1440  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1444  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA1448  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA144C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA1450  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA1454  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1458  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA145C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA1460  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA1464  FF E1 00 32 */	fmul f31, f1, f0
/* 80CA1468  FF E0 F8 18 */	frsp f31, f31
/* 80CA146C  48 00 00 90 */	b lbl_80CA14FC
lbl_80CA1470:
/* 80CA1470  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80CA1474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA1478  40 80 00 10 */	bge lbl_80CA1488
/* 80CA147C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA1480  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CA1484  48 00 00 78 */	b lbl_80CA14FC
lbl_80CA1488:
/* 80CA1488  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CA148C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CA1490  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CA1494  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CA1498  7C 03 00 00 */	cmpw r3, r0
/* 80CA149C  41 82 00 14 */	beq lbl_80CA14B0
/* 80CA14A0  40 80 00 40 */	bge lbl_80CA14E0
/* 80CA14A4  2C 03 00 00 */	cmpwi r3, 0
/* 80CA14A8  41 82 00 20 */	beq lbl_80CA14C8
/* 80CA14AC  48 00 00 34 */	b lbl_80CA14E0
lbl_80CA14B0:
/* 80CA14B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA14B4  41 82 00 0C */	beq lbl_80CA14C0
/* 80CA14B8  38 00 00 01 */	li r0, 1
/* 80CA14BC  48 00 00 28 */	b lbl_80CA14E4
lbl_80CA14C0:
/* 80CA14C0  38 00 00 02 */	li r0, 2
/* 80CA14C4  48 00 00 20 */	b lbl_80CA14E4
lbl_80CA14C8:
/* 80CA14C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA14CC  41 82 00 0C */	beq lbl_80CA14D8
/* 80CA14D0  38 00 00 05 */	li r0, 5
/* 80CA14D4  48 00 00 10 */	b lbl_80CA14E4
lbl_80CA14D8:
/* 80CA14D8  38 00 00 03 */	li r0, 3
/* 80CA14DC  48 00 00 08 */	b lbl_80CA14E4
lbl_80CA14E0:
/* 80CA14E0  38 00 00 04 */	li r0, 4
lbl_80CA14E4:
/* 80CA14E4  2C 00 00 01 */	cmpwi r0, 1
/* 80CA14E8  40 82 00 10 */	bne lbl_80CA14F8
/* 80CA14EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA14F0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CA14F4  48 00 00 08 */	b lbl_80CA14FC
lbl_80CA14F8:
/* 80CA14F8  FF E0 08 90 */	fmr f31, f1
lbl_80CA14FC:
/* 80CA14FC  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80CA1500  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80CA1504  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 80CA1508  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80CA150C  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80CA1510  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80CA1514  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80CA1518  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80CA151C  4B 5C 61 58 */	b cM_atan2s__Fff
/* 80CA1520  B0 7C 07 DA */	sth r3, 0x7da(r28)
/* 80CA1524  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80CA1528  FC 40 F8 90 */	fmr f2, f31
/* 80CA152C  4B 5C 61 48 */	b cM_atan2s__Fff
/* 80CA1530  7C 03 00 D0 */	neg r0, r3
/* 80CA1534  B0 1C 07 DE */	sth r0, 0x7de(r28)
/* 80CA1538  7F A3 EB 78 */	mr r3, r29
/* 80CA153C  38 81 00 BC */	addi r4, r1, 0xbc
/* 80CA1540  4B 3D 2E 74 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80CA1544  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA1548  41 82 00 D4 */	beq lbl_80CA161C
/* 80CA154C  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA1550  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA1554  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CA1558  7F A3 EB 78 */	mr r3, r29
/* 80CA155C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80CA1560  38 A1 00 94 */	addi r5, r1, 0x94
/* 80CA1564  4B 3D 31 E0 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CA1568  C0 1C 04 BC */	lfs f0, 0x4bc(r28)
/* 80CA156C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80CA1570  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80CA1574  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80CA1578  C0 1C 04 C4 */	lfs f0, 0x4c4(r28)
/* 80CA157C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80CA1580  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80CA1584  4B 5C 64 08 */	b cM_rndFX__Ff
/* 80CA1588  FF E0 08 90 */	fmr f31, f1
/* 80CA158C  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80CA1590  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80CA1594  4B 5C 60 E0 */	b cM_atan2s__Fff
/* 80CA1598  7C 60 07 34 */	extsh r0, r3
/* 80CA159C  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 80CA15A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA15A4  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 80CA15A8  3C 00 43 30 */	lis r0, 0x4330
/* 80CA15AC  90 01 01 A0 */	stw r0, 0x1a0(r1)
/* 80CA15B0  C8 01 01 A0 */	lfd f0, 0x1a0(r1)
/* 80CA15B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CA15B8  EC 00 F8 2A */	fadds f0, f0, f31
/* 80CA15BC  FC 00 00 1E */	fctiwz f0, f0
/* 80CA15C0  D8 01 01 A8 */	stfd f0, 0x1a8(r1)
/* 80CA15C4  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 80CA15C8  B0 1C 07 E4 */	sth r0, 0x7e4(r28)
/* 80CA15CC  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 80CA15D0  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 80CA15D4  90 61 00 40 */	stw r3, 0x40(r1)
/* 80CA15D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CA15DC  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 80CA15E0  90 01 00 48 */	stw r0, 0x48(r1)
/* 80CA15E4  7F 83 E3 78 */	mr r3, r28
/* 80CA15E8  38 81 00 40 */	addi r4, r1, 0x40
/* 80CA15EC  4B FF EF E9 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA15F0  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA15F4  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA15F8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CA15FC  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80CA1600  38 61 00 BC */	addi r3, r1, 0xbc
/* 80CA1604  38 80 FF FF */	li r4, -1
/* 80CA1608  4B 3D 66 D4 */	b __dt__11dBgS_LinChkFv
/* 80CA160C  38 61 01 2C */	addi r3, r1, 0x12c
/* 80CA1610  38 80 FF FF */	li r4, -1
/* 80CA1614  4B 3D 66 C8 */	b __dt__11dBgS_LinChkFv
/* 80CA1618  48 00 02 CC */	b lbl_80CA18E4
lbl_80CA161C:
/* 80CA161C  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA1620  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA1624  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80CA1628  48 00 00 9C */	b lbl_80CA16C4
lbl_80CA162C:
/* 80CA162C  C0 1C 04 BC */	lfs f0, 0x4bc(r28)
/* 80CA1630  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80CA1634  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80CA1638  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80CA163C  C0 1C 04 C4 */	lfs f0, 0x4c4(r28)
/* 80CA1640  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80CA1644  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80CA1648  4B 5C 63 44 */	b cM_rndFX__Ff
/* 80CA164C  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80CA1650  38 03 80 00 */	addi r0, r3, -32768
/* 80CA1654  C8 5F 00 80 */	lfd f2, 0x80(r31)
/* 80CA1658  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CA165C  90 01 01 AC */	stw r0, 0x1ac(r1)
/* 80CA1660  3C 00 43 30 */	lis r0, 0x4330
/* 80CA1664  90 01 01 A8 */	stw r0, 0x1a8(r1)
/* 80CA1668  C8 01 01 A8 */	lfd f0, 0x1a8(r1)
/* 80CA166C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CA1670  EC 00 08 2A */	fadds f0, f0, f1
/* 80CA1674  FC 00 00 1E */	fctiwz f0, f0
/* 80CA1678  D8 01 01 A0 */	stfd f0, 0x1a0(r1)
/* 80CA167C  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 80CA1680  B0 1C 07 E4 */	sth r0, 0x7e4(r28)
/* 80CA1684  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80CA1688  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 80CA168C  90 61 00 34 */	stw r3, 0x34(r1)
/* 80CA1690  90 01 00 38 */	stw r0, 0x38(r1)
/* 80CA1694  80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 80CA1698  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CA169C  7F 83 E3 78 */	mr r3, r28
/* 80CA16A0  38 81 00 34 */	addi r4, r1, 0x34
/* 80CA16A4  4B FF EF 31 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA16A8  38 61 00 BC */	addi r3, r1, 0xbc
/* 80CA16AC  38 80 FF FF */	li r4, -1
/* 80CA16B0  4B 3D 66 2C */	b __dt__11dBgS_LinChkFv
/* 80CA16B4  38 61 01 2C */	addi r3, r1, 0x12c
/* 80CA16B8  38 80 FF FF */	li r4, -1
/* 80CA16BC  4B 3D 66 20 */	b __dt__11dBgS_LinChkFv
/* 80CA16C0  48 00 02 24 */	b lbl_80CA18E4
lbl_80CA16C4:
/* 80CA16C4  A0 1C 07 F8 */	lhz r0, 0x7f8(r28)
/* 80CA16C8  28 00 00 00 */	cmplwi r0, 0
/* 80CA16CC  40 82 00 5C */	bne lbl_80CA1728
/* 80CA16D0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80CA16D4  4B 5C 62 B8 */	b cM_rndFX__Ff
/* 80CA16D8  FC 00 08 1E */	fctiwz f0, f1
/* 80CA16DC  D8 01 01 A8 */	stfd f0, 0x1a8(r1)
/* 80CA16E0  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 80CA16E4  B0 1C 07 E4 */	sth r0, 0x7e4(r28)
/* 80CA16E8  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 80CA16EC  80 1E 00 94 */	lwz r0, 0x94(r30)
/* 80CA16F0  90 61 00 28 */	stw r3, 0x28(r1)
/* 80CA16F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CA16F8  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 80CA16FC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CA1700  7F 83 E3 78 */	mr r3, r28
/* 80CA1704  38 81 00 28 */	addi r4, r1, 0x28
/* 80CA1708  4B FF EE CD */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA170C  38 61 00 BC */	addi r3, r1, 0xbc
/* 80CA1710  38 80 FF FF */	li r4, -1
/* 80CA1714  4B 3D 65 C8 */	b __dt__11dBgS_LinChkFv
/* 80CA1718  38 61 01 2C */	addi r3, r1, 0x12c
/* 80CA171C  38 80 FF FF */	li r4, -1
/* 80CA1720  4B 3D 65 BC */	b __dt__11dBgS_LinChkFv
/* 80CA1724  48 00 01 C0 */	b lbl_80CA18E4
lbl_80CA1728:
/* 80CA1728  A8 1C 07 E0 */	lha r0, 0x7e0(r28)
/* 80CA172C  2C 00 00 00 */	cmpwi r0, 0
/* 80CA1730  40 82 01 9C */	bne lbl_80CA18CC
/* 80CA1734  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80CA1738  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80CA173C  4B 6A 5C 60 */	b PSVECSquareDistance
/* 80CA1740  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA1744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA1748  40 81 00 58 */	ble lbl_80CA17A0
/* 80CA174C  FC 00 08 34 */	frsqrte f0, f1
/* 80CA1750  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80CA1754  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA1758  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80CA175C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1760  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA1764  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA1768  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA176C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA1770  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1774  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA1778  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA177C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA1780  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA1784  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1788  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA178C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA1790  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA1794  FC 21 00 32 */	fmul f1, f1, f0
/* 80CA1798  FC 20 08 18 */	frsp f1, f1
/* 80CA179C  48 00 00 88 */	b lbl_80CA1824
lbl_80CA17A0:
/* 80CA17A0  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80CA17A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA17A8  40 80 00 10 */	bge lbl_80CA17B8
/* 80CA17AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA17B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CA17B4  48 00 00 70 */	b lbl_80CA1824
lbl_80CA17B8:
/* 80CA17B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CA17BC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CA17C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CA17C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CA17C8  7C 03 00 00 */	cmpw r3, r0
/* 80CA17CC  41 82 00 14 */	beq lbl_80CA17E0
/* 80CA17D0  40 80 00 40 */	bge lbl_80CA1810
/* 80CA17D4  2C 03 00 00 */	cmpwi r3, 0
/* 80CA17D8  41 82 00 20 */	beq lbl_80CA17F8
/* 80CA17DC  48 00 00 34 */	b lbl_80CA1810
lbl_80CA17E0:
/* 80CA17E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA17E4  41 82 00 0C */	beq lbl_80CA17F0
/* 80CA17E8  38 00 00 01 */	li r0, 1
/* 80CA17EC  48 00 00 28 */	b lbl_80CA1814
lbl_80CA17F0:
/* 80CA17F0  38 00 00 02 */	li r0, 2
/* 80CA17F4  48 00 00 20 */	b lbl_80CA1814
lbl_80CA17F8:
/* 80CA17F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA17FC  41 82 00 0C */	beq lbl_80CA1808
/* 80CA1800  38 00 00 05 */	li r0, 5
/* 80CA1804  48 00 00 10 */	b lbl_80CA1814
lbl_80CA1808:
/* 80CA1808  38 00 00 03 */	li r0, 3
/* 80CA180C  48 00 00 08 */	b lbl_80CA1814
lbl_80CA1810:
/* 80CA1810  38 00 00 04 */	li r0, 4
lbl_80CA1814:
/* 80CA1814  2C 00 00 01 */	cmpwi r0, 1
/* 80CA1818  40 82 00 0C */	bne lbl_80CA1824
/* 80CA181C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CA1820  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CA1824:
/* 80CA1824  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80CA1828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA182C  40 81 00 A0 */	ble lbl_80CA18CC
/* 80CA1830  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CA1834  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80CA1838  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80CA183C  4B 5C 52 F8 */	b __mi__4cXyzCFRC3Vec
/* 80CA1840  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CA1844  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CA1848  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CA184C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CA1850  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CA1854  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CA1858  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80CA185C  4B 5C 61 30 */	b cM_rndFX__Ff
/* 80CA1860  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CA1864  EC 00 08 2A */	fadds f0, f0, f1
/* 80CA1868  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CA186C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80CA1870  4B 5C 61 1C */	b cM_rndFX__Ff
/* 80CA1874  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CA1878  EC 40 08 2A */	fadds f2, f0, f1
/* 80CA187C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80CA1880  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80CA1884  4B 5C 5D F0 */	b cM_atan2s__Fff
/* 80CA1888  B0 7C 07 E4 */	sth r3, 0x7e4(r28)
/* 80CA188C  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 80CA1890  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 80CA1894  90 61 00 10 */	stw r3, 0x10(r1)
/* 80CA1898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA189C  80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 80CA18A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CA18A4  7F 83 E3 78 */	mr r3, r28
/* 80CA18A8  38 81 00 10 */	addi r4, r1, 0x10
/* 80CA18AC  4B FF ED 29 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA18B0  38 61 00 BC */	addi r3, r1, 0xbc
/* 80CA18B4  38 80 FF FF */	li r4, -1
/* 80CA18B8  4B 3D 64 24 */	b __dt__11dBgS_LinChkFv
/* 80CA18BC  38 61 01 2C */	addi r3, r1, 0x12c
/* 80CA18C0  38 80 FF FF */	li r4, -1
/* 80CA18C4  4B 3D 64 18 */	b __dt__11dBgS_LinChkFv
/* 80CA18C8  48 00 00 1C */	b lbl_80CA18E4
lbl_80CA18CC:
/* 80CA18CC  38 61 00 BC */	addi r3, r1, 0xbc
/* 80CA18D0  38 80 FF FF */	li r4, -1
/* 80CA18D4  4B 3D 64 08 */	b __dt__11dBgS_LinChkFv
/* 80CA18D8  38 61 01 2C */	addi r3, r1, 0x12c
/* 80CA18DC  38 80 FF FF */	li r4, -1
/* 80CA18E0  4B 3D 63 FC */	b __dt__11dBgS_LinChkFv
lbl_80CA18E4:
/* 80CA18E4  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, 0 /* qr0 */
/* 80CA18E8  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 80CA18EC  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80CA18F0  4B 6C 09 34 */	b _restgpr_28
/* 80CA18F4  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 80CA18F8  7C 08 03 A6 */	mtlr r0
/* 80CA18FC  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 80CA1900  4E 80 00 20 */	blr 
