lbl_80BD1110:
/* 80BD1110  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BD1114  7C 08 02 A6 */	mflr r0
/* 80BD1118  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BD111C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BD1120  4B 79 10 9D */	bl _savegpr_21
/* 80BD1124  7C 77 1B 78 */	mr r23, r3
/* 80BD1128  3C 60 80 BD */	lis r3, ccCylSrc@ha /* 0x80BD30C0@ha */
/* 80BD112C  3B 83 30 C0 */	addi r28, r3, ccCylSrc@l /* 0x80BD30C0@l */
/* 80BD1130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD1134  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD1138  83 7D 5D AC */	lwz r27, 0x5dac(r29)
/* 80BD113C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BD1140  A8 97 05 D8 */	lha r4, 0x5d8(r23)
/* 80BD1144  A8 B7 05 DA */	lha r5, 0x5da(r23)
/* 80BD1148  A8 D7 05 DC */	lha r6, 0x5dc(r23)
/* 80BD114C  4B 69 62 A9 */	bl __ct__5csXyzFsss
/* 80BD1150  C0 57 06 30 */	lfs f2, 0x630(r23)
/* 80BD1154  C0 17 06 28 */	lfs f0, 0x628(r23)
/* 80BD1158  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BD115C  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 80BD1160  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80BD1164  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80BD1168  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80BD116C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80BD1170  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BD1174  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80BD1178  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80BD117C  38 61 00 58 */	addi r3, r1, 0x58
/* 80BD1180  38 81 00 64 */	addi r4, r1, 0x64
/* 80BD1184  4B 77 62 19 */	bl PSVECSquareDistance
/* 80BD1188  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80BD118C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1190  40 81 00 58 */	ble lbl_80BD11E8
/* 80BD1194  FC 00 08 34 */	frsqrte f0, f1
/* 80BD1198  C8 9C 00 60 */	lfd f4, 0x60(r28)
/* 80BD119C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD11A0  C8 7C 00 68 */	lfd f3, 0x68(r28)
/* 80BD11A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD11A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD11AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD11B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD11B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD11B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD11BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD11C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD11C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD11C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD11CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD11D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD11D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD11D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD11DC  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD11E0  FC 20 08 18 */	frsp f1, f1
/* 80BD11E4  48 00 00 88 */	b lbl_80BD126C
lbl_80BD11E8:
/* 80BD11E8  C8 1C 00 70 */	lfd f0, 0x70(r28)
/* 80BD11EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD11F0  40 80 00 10 */	bge lbl_80BD1200
/* 80BD11F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD11F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BD11FC  48 00 00 70 */	b lbl_80BD126C
lbl_80BD1200:
/* 80BD1200  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BD1204  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BD1208  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD120C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD1210  7C 03 00 00 */	cmpw r3, r0
/* 80BD1214  41 82 00 14 */	beq lbl_80BD1228
/* 80BD1218  40 80 00 40 */	bge lbl_80BD1258
/* 80BD121C  2C 03 00 00 */	cmpwi r3, 0
/* 80BD1220  41 82 00 20 */	beq lbl_80BD1240
/* 80BD1224  48 00 00 34 */	b lbl_80BD1258
lbl_80BD1228:
/* 80BD1228  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD122C  41 82 00 0C */	beq lbl_80BD1238
/* 80BD1230  38 00 00 01 */	li r0, 1
/* 80BD1234  48 00 00 28 */	b lbl_80BD125C
lbl_80BD1238:
/* 80BD1238  38 00 00 02 */	li r0, 2
/* 80BD123C  48 00 00 20 */	b lbl_80BD125C
lbl_80BD1240:
/* 80BD1240  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD1244  41 82 00 0C */	beq lbl_80BD1250
/* 80BD1248  38 00 00 05 */	li r0, 5
/* 80BD124C  48 00 00 10 */	b lbl_80BD125C
lbl_80BD1250:
/* 80BD1250  38 00 00 03 */	li r0, 3
/* 80BD1254  48 00 00 08 */	b lbl_80BD125C
lbl_80BD1258:
/* 80BD1258  38 00 00 04 */	li r0, 4
lbl_80BD125C:
/* 80BD125C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD1260  40 82 00 0C */	bne lbl_80BD126C
/* 80BD1264  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD1268  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BD126C:
/* 80BD126C  C0 1C 00 84 */	lfs f0, 0x84(r28)
/* 80BD1270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1274  40 80 00 F8 */	bge lbl_80BD136C
/* 80BD1278  80 1B 05 80 */	lwz r0, 0x580(r27)
/* 80BD127C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BD1280  41 82 00 EC */	beq lbl_80BD136C
/* 80BD1284  88 17 05 AC */	lbz r0, 0x5ac(r23)
/* 80BD1288  28 00 00 01 */	cmplwi r0, 1
/* 80BD128C  40 82 00 18 */	bne lbl_80BD12A4
/* 80BD1290  38 00 D0 00 */	li r0, -12288
/* 80BD1294  B0 17 06 0C */	sth r0, 0x60c(r23)
/* 80BD1298  38 00 15 00 */	li r0, 0x1500
/* 80BD129C  B0 17 06 0A */	sth r0, 0x60a(r23)
/* 80BD12A0  48 00 00 1C */	b lbl_80BD12BC
lbl_80BD12A4:
/* 80BD12A4  38 00 C0 00 */	li r0, -16384
/* 80BD12A8  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD12AC  B0 03 06 0C */	sth r0, 0x60c(r3)
/* 80BD12B0  38 00 15 00 */	li r0, 0x1500
/* 80BD12B4  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD12B8  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_80BD12BC:
/* 80BD12BC  88 17 05 A4 */	lbz r0, 0x5a4(r23)
/* 80BD12C0  28 00 00 00 */	cmplwi r0, 0
/* 80BD12C4  40 82 00 48 */	bne lbl_80BD130C
/* 80BD12C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C1@ha */
/* 80BD12CC  38 03 02 C1 */	addi r0, r3, 0x02C1 /* 0x000802C1@l */
/* 80BD12D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD12D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD12D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD12DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD12E0  38 81 00 24 */	addi r4, r1, 0x24
/* 80BD12E4  38 B7 05 E0 */	addi r5, r23, 0x5e0
/* 80BD12E8  38 C0 00 00 */	li r6, 0
/* 80BD12EC  38 E0 00 00 */	li r7, 0
/* 80BD12F0  C0 3C 00 7C */	lfs f1, 0x7c(r28)
/* 80BD12F4  FC 40 08 90 */	fmr f2, f1
/* 80BD12F8  C0 7C 00 80 */	lfs f3, 0x80(r28)
/* 80BD12FC  FC 80 18 90 */	fmr f4, f3
/* 80BD1300  39 00 00 00 */	li r8, 0
/* 80BD1304  4B 6D A6 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD1308  48 00 00 44 */	b lbl_80BD134C
lbl_80BD130C:
/* 80BD130C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD1310  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD1314  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BD1318  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD131C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD1320  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD1324  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD1328  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80BD132C  38 C0 00 00 */	li r6, 0
/* 80BD1330  38 E0 00 00 */	li r7, 0
/* 80BD1334  C0 3C 00 7C */	lfs f1, 0x7c(r28)
/* 80BD1338  FC 40 08 90 */	fmr f2, f1
/* 80BD133C  C0 7C 00 80 */	lfs f3, 0x80(r28)
/* 80BD1340  FC 80 18 90 */	fmr f4, f3
/* 80BD1344  39 00 00 00 */	li r8, 0
/* 80BD1348  4B 6D A6 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD134C:
/* 80BD134C  38 00 30 00 */	li r0, 0x3000
/* 80BD1350  B0 17 06 12 */	sth r0, 0x612(r23)
/* 80BD1354  38 00 05 00 */	li r0, 0x500
/* 80BD1358  B0 17 06 10 */	sth r0, 0x610(r23)
/* 80BD135C  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD1360  4B FF FD 61 */	bl VibStop__14daObjCRVGATE_cFv
/* 80BD1364  38 00 00 01 */	li r0, 1
/* 80BD1368  98 17 05 AE */	stb r0, 0x5ae(r23)
lbl_80BD136C:
/* 80BD136C  3B 00 00 00 */	li r24, 0
/* 80BD1370  3A C0 00 00 */	li r22, 0
/* 80BD1374  3A A0 00 00 */	li r21, 0
/* 80BD1378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD137C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD1380  3B 5E 5B D4 */	addi r26, r30, 0x5bd4
/* 80BD1384  3B 37 04 D0 */	addi r25, r23, 0x4d0
lbl_80BD1388:
/* 80BD1388  38 77 05 D8 */	addi r3, r23, 0x5d8
/* 80BD138C  38 80 00 00 */	li r4, 0
/* 80BD1390  38 A0 00 02 */	li r5, 2
/* 80BD1394  38 C0 20 00 */	li r6, 0x2000
/* 80BD1398  38 E0 04 00 */	li r7, 0x400
/* 80BD139C  4B 69 F1 A5 */	bl cLib_addCalcAngleS__FPsssss
/* 80BD13A0  3B F5 08 D8 */	addi r31, r21, 0x8d8
/* 80BD13A4  7F F7 FA 14 */	add r31, r23, r31
/* 80BD13A8  7F E3 FB 78 */	mr r3, r31
/* 80BD13AC  4B 4B 30 B5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BD13B0  28 03 00 00 */	cmplwi r3, 0
/* 80BD13B4  41 82 00 FC */	beq lbl_80BD14B0
/* 80BD13B8  88 17 05 A4 */	lbz r0, 0x5a4(r23)
/* 80BD13BC  28 00 00 00 */	cmplwi r0, 0
/* 80BD13C0  40 82 00 48 */	bne lbl_80BD1408
/* 80BD13C4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C1@ha */
/* 80BD13C8  38 03 02 C1 */	addi r0, r3, 0x02C1 /* 0x000802C1@l */
/* 80BD13CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BD13D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD13D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD13D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD13DC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BD13E0  38 B7 05 E0 */	addi r5, r23, 0x5e0
/* 80BD13E4  38 C0 00 00 */	li r6, 0
/* 80BD13E8  38 E0 00 00 */	li r7, 0
/* 80BD13EC  C0 3C 00 7C */	lfs f1, 0x7c(r28)
/* 80BD13F0  FC 40 08 90 */	fmr f2, f1
/* 80BD13F4  C0 7C 00 80 */	lfs f3, 0x80(r28)
/* 80BD13F8  FC 80 18 90 */	fmr f4, f3
/* 80BD13FC  39 00 00 00 */	li r8, 0
/* 80BD1400  4B 6D A5 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD1404  48 00 00 50 */	b lbl_80BD1454
lbl_80BD1408:
/* 80BD1408  88 17 05 AC */	lbz r0, 0x5ac(r23)
/* 80BD140C  28 00 00 FF */	cmplwi r0, 0xff
/* 80BD1410  40 82 00 44 */	bne lbl_80BD1454
/* 80BD1414  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C3@ha */
/* 80BD1418  38 03 02 C3 */	addi r0, r3, 0x02C3 /* 0x000802C3@l */
/* 80BD141C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BD1420  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD1424  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD1428  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD142C  38 81 00 18 */	addi r4, r1, 0x18
/* 80BD1430  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80BD1434  38 C0 00 00 */	li r6, 0
/* 80BD1438  38 E0 00 00 */	li r7, 0
/* 80BD143C  C0 3C 00 7C */	lfs f1, 0x7c(r28)
/* 80BD1440  FC 40 08 90 */	fmr f2, f1
/* 80BD1444  C0 7C 00 80 */	lfs f3, 0x80(r28)
/* 80BD1448  FC 80 18 90 */	fmr f4, f3
/* 80BD144C  39 00 00 00 */	li r8, 0
/* 80BD1450  4B 6D A5 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD1454:
/* 80BD1454  88 17 05 AC */	lbz r0, 0x5ac(r23)
/* 80BD1458  28 00 00 01 */	cmplwi r0, 1
/* 80BD145C  40 82 00 18 */	bne lbl_80BD1474
/* 80BD1460  38 00 D0 00 */	li r0, -12288
/* 80BD1464  B0 17 06 0C */	sth r0, 0x60c(r23)
/* 80BD1468  38 00 15 00 */	li r0, 0x1500
/* 80BD146C  B0 17 06 0A */	sth r0, 0x60a(r23)
/* 80BD1470  48 00 00 1C */	b lbl_80BD148C
lbl_80BD1474:
/* 80BD1474  38 00 C0 00 */	li r0, -16384
/* 80BD1478  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD147C  B0 03 06 0C */	sth r0, 0x60c(r3)
/* 80BD1480  38 00 15 00 */	li r0, 0x1500
/* 80BD1484  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD1488  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_80BD148C:
/* 80BD148C  38 00 30 00 */	li r0, 0x3000
/* 80BD1490  B0 17 06 12 */	sth r0, 0x612(r23)
/* 80BD1494  38 00 05 00 */	li r0, 0x500
/* 80BD1498  B0 17 06 10 */	sth r0, 0x610(r23)
/* 80BD149C  38 00 00 01 */	li r0, 1
/* 80BD14A0  98 17 05 AE */	stb r0, 0x5ae(r23)
/* 80BD14A4  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD14A8  4B FF FC 19 */	bl VibStop__14daObjCRVGATE_cFv
/* 80BD14AC  48 00 03 94 */	b lbl_80BD1840
lbl_80BD14B0:
/* 80BD14B0  7F E3 FB 78 */	mr r3, r31
/* 80BD14B4  4B 4B 31 A5 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80BD14B8  28 03 00 00 */	cmplwi r3, 0
/* 80BD14BC  41 82 03 70 */	beq lbl_80BD182C
/* 80BD14C0  7F E3 FB 78 */	mr r3, r31
/* 80BD14C4  4B 4B 32 2D */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 80BD14C8  4B 69 25 81 */	bl GetAc__8cCcD_ObjFv
/* 80BD14CC  A8 03 00 08 */	lha r0, 8(r3)
/* 80BD14D0  2C 00 00 EF */	cmpwi r0, 0xef
/* 80BD14D4  40 82 03 58 */	bne lbl_80BD182C
/* 80BD14D8  7F 63 DB 78 */	mr r3, r27
/* 80BD14DC  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80BD14E0  81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 80BD14E4  7D 89 03 A6 */	mtctr r12
/* 80BD14E8  4E 80 04 21 */	bctrl 
/* 80BD14EC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD14F0  41 82 03 3C */	beq lbl_80BD182C
/* 80BD14F4  38 60 00 EF */	li r3, 0xef
/* 80BD14F8  38 81 00 28 */	addi r4, r1, 0x28
/* 80BD14FC  4B 44 85 31 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80BD1500  2C 03 00 00 */	cmpwi r3, 0
/* 80BD1504  41 82 03 28 */	beq lbl_80BD182C
/* 80BD1508  83 E1 00 28 */	lwz r31, 0x28(r1)
/* 80BD150C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80BD1510  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80BD1514  28 00 00 00 */	cmplwi r0, 0
/* 80BD1518  41 82 03 14 */	beq lbl_80BD182C
/* 80BD151C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80BD1520  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BD1524  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BD1528  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 80BD152C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80BD1530  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80BD1534  7C 77 B2 14 */	add r3, r23, r22
/* 80BD1538  C0 43 06 24 */	lfs f2, 0x624(r3)
/* 80BD153C  C0 03 06 1C */	lfs f0, 0x61c(r3)
/* 80BD1540  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BD1544  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80BD1548  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80BD154C  38 61 00 40 */	addi r3, r1, 0x40
/* 80BD1550  38 81 00 4C */	addi r4, r1, 0x4c
/* 80BD1554  4B 77 5E 49 */	bl PSVECSquareDistance
/* 80BD1558  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80BD155C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1560  40 81 00 58 */	ble lbl_80BD15B8
/* 80BD1564  FC 00 08 34 */	frsqrte f0, f1
/* 80BD1568  C8 9C 00 60 */	lfd f4, 0x60(r28)
/* 80BD156C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1570  C8 7C 00 68 */	lfd f3, 0x68(r28)
/* 80BD1574  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD1578  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD157C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1580  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1584  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1588  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD158C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD1590  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1594  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1598  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD159C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD15A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD15A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD15A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD15AC  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD15B0  FC 20 08 18 */	frsp f1, f1
/* 80BD15B4  48 00 00 88 */	b lbl_80BD163C
lbl_80BD15B8:
/* 80BD15B8  C8 1C 00 70 */	lfd f0, 0x70(r28)
/* 80BD15BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD15C0  40 80 00 10 */	bge lbl_80BD15D0
/* 80BD15C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD15C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BD15CC  48 00 00 70 */	b lbl_80BD163C
lbl_80BD15D0:
/* 80BD15D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BD15D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BD15D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD15DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD15E0  7C 03 00 00 */	cmpw r3, r0
/* 80BD15E4  41 82 00 14 */	beq lbl_80BD15F8
/* 80BD15E8  40 80 00 40 */	bge lbl_80BD1628
/* 80BD15EC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD15F0  41 82 00 20 */	beq lbl_80BD1610
/* 80BD15F4  48 00 00 34 */	b lbl_80BD1628
lbl_80BD15F8:
/* 80BD15F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD15FC  41 82 00 0C */	beq lbl_80BD1608
/* 80BD1600  38 00 00 01 */	li r0, 1
/* 80BD1604  48 00 00 28 */	b lbl_80BD162C
lbl_80BD1608:
/* 80BD1608  38 00 00 02 */	li r0, 2
/* 80BD160C  48 00 00 20 */	b lbl_80BD162C
lbl_80BD1610:
/* 80BD1610  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD1614  41 82 00 0C */	beq lbl_80BD1620
/* 80BD1618  38 00 00 05 */	li r0, 5
/* 80BD161C  48 00 00 10 */	b lbl_80BD162C
lbl_80BD1620:
/* 80BD1620  38 00 00 03 */	li r0, 3
/* 80BD1624  48 00 00 08 */	b lbl_80BD162C
lbl_80BD1628:
/* 80BD1628  38 00 00 04 */	li r0, 4
lbl_80BD162C:
/* 80BD162C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD1630  40 82 00 0C */	bne lbl_80BD163C
/* 80BD1634  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD1638  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BD163C:
/* 80BD163C  C0 1C 00 A4 */	lfs f0, 0xa4(r28)
/* 80BD1640  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1644  40 80 01 E8 */	bge lbl_80BD182C
/* 80BD1648  C0 3F 05 00 */	lfs f1, 0x500(r31)
/* 80BD164C  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80BD1650  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BD1654  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80BD1658  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BD165C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80BD1660  38 61 00 34 */	addi r3, r1, 0x34
/* 80BD1664  4B 77 5A D5 */	bl PSVECSquareMag
/* 80BD1668  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80BD166C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD1670  40 81 00 58 */	ble lbl_80BD16C8
/* 80BD1674  FC 00 08 34 */	frsqrte f0, f1
/* 80BD1678  C8 9C 00 60 */	lfd f4, 0x60(r28)
/* 80BD167C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1680  C8 7C 00 68 */	lfd f3, 0x68(r28)
/* 80BD1684  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD1688  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD168C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD1690  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD1694  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD1698  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD169C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD16A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD16A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD16A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD16AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD16B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD16B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD16B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD16BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD16C0  FC 20 08 18 */	frsp f1, f1
/* 80BD16C4  48 00 00 88 */	b lbl_80BD174C
lbl_80BD16C8:
/* 80BD16C8  C8 1C 00 70 */	lfd f0, 0x70(r28)
/* 80BD16CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD16D0  40 80 00 10 */	bge lbl_80BD16E0
/* 80BD16D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD16D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BD16DC  48 00 00 70 */	b lbl_80BD174C
lbl_80BD16E0:
/* 80BD16E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD16E4  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD16E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD16EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD16F0  7C 03 00 00 */	cmpw r3, r0
/* 80BD16F4  41 82 00 14 */	beq lbl_80BD1708
/* 80BD16F8  40 80 00 40 */	bge lbl_80BD1738
/* 80BD16FC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD1700  41 82 00 20 */	beq lbl_80BD1720
/* 80BD1704  48 00 00 34 */	b lbl_80BD1738
lbl_80BD1708:
/* 80BD1708  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD170C  41 82 00 0C */	beq lbl_80BD1718
/* 80BD1710  38 00 00 01 */	li r0, 1
/* 80BD1714  48 00 00 28 */	b lbl_80BD173C
lbl_80BD1718:
/* 80BD1718  38 00 00 02 */	li r0, 2
/* 80BD171C  48 00 00 20 */	b lbl_80BD173C
lbl_80BD1720:
/* 80BD1720  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD1724  41 82 00 0C */	beq lbl_80BD1730
/* 80BD1728  38 00 00 05 */	li r0, 5
/* 80BD172C  48 00 00 10 */	b lbl_80BD173C
lbl_80BD1730:
/* 80BD1730  38 00 00 03 */	li r0, 3
/* 80BD1734  48 00 00 08 */	b lbl_80BD173C
lbl_80BD1738:
/* 80BD1738  38 00 00 04 */	li r0, 4
lbl_80BD173C:
/* 80BD173C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD1740  40 82 00 0C */	bne lbl_80BD174C
/* 80BD1744  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD1748  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BD174C:
/* 80BD174C  C0 5C 00 48 */	lfs f2, 0x48(r28)
/* 80BD1750  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80BD1754  40 81 00 D8 */	ble lbl_80BD182C
/* 80BD1758  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80BD175C  C0 1C 00 7C */	lfs f0, 0x7c(r28)
/* 80BD1760  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BD1764  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80BD1768  7F 43 D3 78 */	mr r3, r26
/* 80BD176C  38 80 00 05 */	li r4, 5
/* 80BD1770  38 A0 00 1F */	li r5, 0x1f
/* 80BD1774  38 C1 00 70 */	addi r6, r1, 0x70
/* 80BD1778  4B 49 E2 AD */	bl StartShock__12dVibration_cFii4cXyz
/* 80BD177C  88 17 04 E2 */	lbz r0, 0x4e2(r23)
/* 80BD1780  7C 03 07 74 */	extsb r3, r0
/* 80BD1784  4B 45 B8 E9 */	bl dComIfGp_getReverb__Fi
/* 80BD1788  7C 67 1B 78 */	mr r7, r3
/* 80BD178C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C5@ha */
/* 80BD1790  38 03 02 C5 */	addi r0, r3, 0x02C5 /* 0x000802C5@l */
/* 80BD1794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD1798  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD179C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD17A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD17A4  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD17A8  7F 25 CB 78 */	mr r5, r25
/* 80BD17AC  38 C0 00 00 */	li r6, 0
/* 80BD17B0  C0 3C 00 7C */	lfs f1, 0x7c(r28)
/* 80BD17B4  FC 40 08 90 */	fmr f2, f1
/* 80BD17B8  C0 7C 00 80 */	lfs f3, 0x80(r28)
/* 80BD17BC  FC 80 18 90 */	fmr f4, f3
/* 80BD17C0  39 00 00 00 */	li r8, 0
/* 80BD17C4  4B 6D A1 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD17C8  38 00 00 02 */	li r0, 2
/* 80BD17CC  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD17D0  98 03 05 AF */	stb r0, 0x5af(r3)
/* 80BD17D4  98 17 05 AF */	stb r0, 0x5af(r23)
/* 80BD17D8  38 00 00 01 */	li r0, 1
/* 80BD17DC  98 17 05 AE */	stb r0, 0x5ae(r23)
/* 80BD17E0  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD17E4  98 03 05 AE */	stb r0, 0x5ae(r3)
/* 80BD17E8  38 00 00 00 */	li r0, 0
/* 80BD17EC  98 17 05 AB */	stb r0, 0x5ab(r23)
/* 80BD17F0  88 17 05 AC */	lbz r0, 0x5ac(r23)
/* 80BD17F4  28 00 00 01 */	cmplwi r0, 1
/* 80BD17F8  40 82 00 10 */	bne lbl_80BD1808
/* 80BD17FC  38 00 90 00 */	li r0, -28672
/* 80BD1800  B0 17 06 48 */	sth r0, 0x648(r23)
/* 80BD1804  48 00 00 10 */	b lbl_80BD1814
lbl_80BD1808:
/* 80BD1808  38 00 90 00 */	li r0, -28672
/* 80BD180C  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 80BD1810  B0 03 06 48 */	sth r0, 0x648(r3)
lbl_80BD1814:
/* 80BD1814  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 80BD1818  D0 17 05 EC */	stfs f0, 0x5ec(r23)
/* 80BD181C  C0 1C 00 AC */	lfs f0, 0xac(r28)
/* 80BD1820  D0 17 05 F0 */	stfs f0, 0x5f0(r23)
/* 80BD1824  C0 1C 00 B0 */	lfs f0, 0xb0(r28)
/* 80BD1828  D0 17 05 F4 */	stfs f0, 0x5f4(r23)
lbl_80BD182C:
/* 80BD182C  3B 18 00 01 */	addi r24, r24, 1
/* 80BD1830  2C 18 00 03 */	cmpwi r24, 3
/* 80BD1834  3A D6 00 0C */	addi r22, r22, 0xc
/* 80BD1838  3A B5 01 38 */	addi r21, r21, 0x138
/* 80BD183C  41 80 FB 4C */	blt lbl_80BD1388
lbl_80BD1840:
/* 80BD1840  7E E3 BB 78 */	mr r3, r23
/* 80BD1844  4B FF F8 8D */	bl CloseVibration__14daObjCRVGATE_cFv
/* 80BD1848  88 17 05 AF */	lbz r0, 0x5af(r23)
/* 80BD184C  28 00 00 04 */	cmplwi r0, 4
/* 80BD1850  41 82 00 60 */	beq lbl_80BD18B0
/* 80BD1854  A8 77 04 E6 */	lha r3, 0x4e6(r23)
/* 80BD1858  A8 17 06 46 */	lha r0, 0x646(r23)
/* 80BD185C  7C 03 02 14 */	add r0, r3, r0
/* 80BD1860  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD1864  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD1868  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD186C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BD1870  C0 37 04 D8 */	lfs f1, 0x4d8(r23)
/* 80BD1874  C0 5C 00 9C */	lfs f2, 0x9c(r28)
/* 80BD1878  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BD187C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80BD1880  C0 3C 00 A0 */	lfs f1, 0xa0(r28)
/* 80BD1884  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80BD1888  EC 61 00 2A */	fadds f3, f1, f0
/* 80BD188C  7C 63 02 14 */	add r3, r3, r0
/* 80BD1890  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD1894  C0 37 04 D0 */	lfs f1, 0x4d0(r23)
/* 80BD1898  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BD189C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD18A0  D0 17 05 E0 */	stfs f0, 0x5e0(r23)
/* 80BD18A4  D0 77 05 E4 */	stfs f3, 0x5e4(r23)
/* 80BD18A8  D0 97 05 E8 */	stfs f4, 0x5e8(r23)
/* 80BD18AC  48 00 00 1C */	b lbl_80BD18C8
lbl_80BD18B0:
/* 80BD18B0  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80BD18B4  B0 17 05 D8 */	sth r0, 0x5d8(r23)
/* 80BD18B8  A8 01 00 2E */	lha r0, 0x2e(r1)
/* 80BD18BC  B0 17 05 DA */	sth r0, 0x5da(r23)
/* 80BD18C0  A8 01 00 30 */	lha r0, 0x30(r1)
/* 80BD18C4  B0 17 05 DC */	sth r0, 0x5dc(r23)
lbl_80BD18C8:
/* 80BD18C8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BD18CC  4B 79 09 3D */	bl _restgpr_21
/* 80BD18D0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BD18D4  7C 08 03 A6 */	mtlr r0
/* 80BD18D8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BD18DC  4E 80 00 20 */	blr 
