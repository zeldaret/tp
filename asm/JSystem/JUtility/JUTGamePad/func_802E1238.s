lbl_802E1238:
/* 802E1238  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E123C  7C 08 02 A6 */	mflr r0
/* 802E1240  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E1244  39 61 00 40 */	addi r11, r1, 0x40
/* 802E1248  48 08 0F 95 */	bl _savegpr_29
/* 802E124C  7C 7D 1B 78 */	mr r29, r3
/* 802E1250  7C FE 3B 78 */	mr r30, r7
/* 802E1254  7D 1F 43 78 */	mr r31, r8
/* 802E1258  80 0D 83 5C */	lwz r0, sClampMode__10JUTGamePad(r13)
/* 802E125C  2C 00 00 02 */	cmpwi r0, 2
/* 802E1260  41 82 00 2C */	beq lbl_802E128C
/* 802E1264  40 80 00 40 */	bge lbl_802E12A4
/* 802E1268  2C 00 00 01 */	cmpwi r0, 1
/* 802E126C  40 80 00 08 */	bge lbl_802E1274
/* 802E1270  48 00 00 34 */	b lbl_802E12A4
lbl_802E1274:
/* 802E1274  2C 1E 00 00 */	cmpwi r30, 0
/* 802E1278  38 00 00 2A */	li r0, 0x2a
/* 802E127C  40 82 00 08 */	bne lbl_802E1284
/* 802E1280  38 00 00 36 */	li r0, 0x36
lbl_802E1284:
/* 802E1284  7C 03 03 78 */	mr r3, r0
/* 802E1288  48 00 00 30 */	b lbl_802E12B8
lbl_802E128C:
/* 802E128C  2C 1E 00 00 */	cmpwi r30, 0
/* 802E1290  38 00 00 1D */	li r0, 0x1d
/* 802E1294  40 82 00 08 */	bne lbl_802E129C
/* 802E1298  38 00 00 26 */	li r0, 0x26
lbl_802E129C:
/* 802E129C  7C 03 03 78 */	mr r3, r0
/* 802E12A0  48 00 00 18 */	b lbl_802E12B8
lbl_802E12A4:
/* 802E12A4  2C 1E 00 00 */	cmpwi r30, 0
/* 802E12A8  38 00 00 39 */	li r0, 0x39
/* 802E12AC  40 82 00 08 */	bne lbl_802E12B4
/* 802E12B0  38 00 00 45 */	li r0, 0x45
lbl_802E12B4:
/* 802E12B4  7C 03 03 78 */	mr r3, r0
lbl_802E12B8:
/* 802E12B8  98 9D 00 0E */	stb r4, 0xe(r29)
/* 802E12BC  98 BD 00 0F */	stb r5, 0xf(r29)
/* 802E12C0  7C 80 07 74 */	extsb r0, r4
/* 802E12C4  C8 42 C6 20 */	lfd f2, lit_1050(r2)
/* 802E12C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E12CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E12D0  3C 80 43 30 */	lis r4, 0x4330
/* 802E12D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 802E12D8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802E12DC  EC 20 10 28 */	fsubs f1, f0, f2
/* 802E12E0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802E12E4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802E12E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 802E12EC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E12F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 802E12F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802E12F8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 802E12FC  7C A0 07 74 */	extsb r0, r5
/* 802E1300  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E1304  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1308  90 81 00 20 */	stw r4, 0x20(r1)
/* 802E130C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E1310  EC 20 10 28 */	fsubs f1, f0, f2
/* 802E1314  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802E1318  90 81 00 28 */	stw r4, 0x28(r1)
/* 802E131C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E1320  EC 00 10 28 */	fsubs f0, f0, f2
/* 802E1324  EC 01 00 24 */	fdivs f0, f1, f0
/* 802E1328  D0 1D 00 04 */	stfs f0, 4(r29)
/* 802E132C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802E1330  EC 20 00 32 */	fmuls f1, f0, f0
/* 802E1334  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802E1338  EC 00 00 32 */	fmuls f0, f0, f0
/* 802E133C  EC 81 00 2A */	fadds f4, f1, f0
/* 802E1340  C0 02 C6 28 */	lfs f0, lit_1056(r2)
/* 802E1344  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802E1348  40 81 00 58 */	ble lbl_802E13A0
/* 802E134C  FC 00 20 34 */	frsqrte f0, f4
/* 802E1350  C8 62 C6 30 */	lfd f3, lit_1117(r2)
/* 802E1354  FC 23 00 32 */	fmul f1, f3, f0
/* 802E1358  C8 42 C6 38 */	lfd f2, lit_1118(r2)
/* 802E135C  FC 00 00 32 */	fmul f0, f0, f0
/* 802E1360  FC 04 00 32 */	fmul f0, f4, f0
/* 802E1364  FC 02 00 28 */	fsub f0, f2, f0
/* 802E1368  FC 01 00 32 */	fmul f0, f1, f0
/* 802E136C  FC 23 00 32 */	fmul f1, f3, f0
/* 802E1370  FC 00 00 32 */	fmul f0, f0, f0
/* 802E1374  FC 04 00 32 */	fmul f0, f4, f0
/* 802E1378  FC 02 00 28 */	fsub f0, f2, f0
/* 802E137C  FC 01 00 32 */	fmul f0, f1, f0
/* 802E1380  FC 23 00 32 */	fmul f1, f3, f0
/* 802E1384  FC 00 00 32 */	fmul f0, f0, f0
/* 802E1388  FC 04 00 32 */	fmul f0, f4, f0
/* 802E138C  FC 02 00 28 */	fsub f0, f2, f0
/* 802E1390  FC 01 00 32 */	fmul f0, f1, f0
/* 802E1394  FC 84 00 32 */	fmul f4, f4, f0
/* 802E1398  FC 80 20 18 */	frsp f4, f4
/* 802E139C  48 00 00 88 */	b lbl_802E1424
lbl_802E13A0:
/* 802E13A0  C8 02 C6 40 */	lfd f0, lit_1119(r2)
/* 802E13A4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802E13A8  40 80 00 10 */	bge lbl_802E13B8
/* 802E13AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802E13B0  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 802E13B4  48 00 00 70 */	b lbl_802E1424
lbl_802E13B8:
/* 802E13B8  D0 81 00 08 */	stfs f4, 8(r1)
/* 802E13BC  80 81 00 08 */	lwz r4, 8(r1)
/* 802E13C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802E13C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 802E13C8  7C 03 00 00 */	cmpw r3, r0
/* 802E13CC  41 82 00 14 */	beq lbl_802E13E0
/* 802E13D0  40 80 00 40 */	bge lbl_802E1410
/* 802E13D4  2C 03 00 00 */	cmpwi r3, 0
/* 802E13D8  41 82 00 20 */	beq lbl_802E13F8
/* 802E13DC  48 00 00 34 */	b lbl_802E1410
lbl_802E13E0:
/* 802E13E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802E13E4  41 82 00 0C */	beq lbl_802E13F0
/* 802E13E8  38 00 00 01 */	li r0, 1
/* 802E13EC  48 00 00 28 */	b lbl_802E1414
lbl_802E13F0:
/* 802E13F0  38 00 00 02 */	li r0, 2
/* 802E13F4  48 00 00 20 */	b lbl_802E1414
lbl_802E13F8:
/* 802E13F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802E13FC  41 82 00 0C */	beq lbl_802E1408
/* 802E1400  38 00 00 05 */	li r0, 5
/* 802E1404  48 00 00 10 */	b lbl_802E1414
lbl_802E1408:
/* 802E1408  38 00 00 03 */	li r0, 3
/* 802E140C  48 00 00 08 */	b lbl_802E1414
lbl_802E1410:
/* 802E1410  38 00 00 04 */	li r0, 4
lbl_802E1414:
/* 802E1414  2C 00 00 01 */	cmpwi r0, 1
/* 802E1418  40 82 00 0C */	bne lbl_802E1424
/* 802E141C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802E1420  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_802E1424:
/* 802E1424  D0 9D 00 08 */	stfs f4, 8(r29)
/* 802E1428  C0 3D 00 08 */	lfs f1, 8(r29)
/* 802E142C  C0 02 C6 48 */	lfs f0, lit_1120(r2)
/* 802E1430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E1434  40 81 00 30 */	ble lbl_802E1464
/* 802E1438  2C 06 00 01 */	cmpwi r6, 1
/* 802E143C  40 82 00 20 */	bne lbl_802E145C
/* 802E1440  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802E1444  EC 00 08 24 */	fdivs f0, f0, f1
/* 802E1448  D0 1D 00 00 */	stfs f0, 0(r29)
/* 802E144C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 802E1450  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802E1454  EC 01 00 24 */	fdivs f0, f1, f0
/* 802E1458  D0 1D 00 04 */	stfs f0, 4(r29)
lbl_802E145C:
/* 802E145C  C0 02 C6 48 */	lfs f0, lit_1120(r2)
/* 802E1460  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_802E1464:
/* 802E1464  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802E1468  C0 22 C6 28 */	lfs f1, lit_1056(r2)
/* 802E146C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E1470  40 81 00 5C */	ble lbl_802E14CC
/* 802E1474  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802E1478  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802E147C  40 82 00 28 */	bne lbl_802E14A4
/* 802E1480  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802E1484  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E1488  40 81 00 10 */	ble lbl_802E1498
/* 802E148C  38 00 40 00 */	li r0, 0x4000
/* 802E1490  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 802E1494  48 00 00 38 */	b lbl_802E14CC
lbl_802E1498:
/* 802E1498  38 00 C0 00 */	li r0, -16384
/* 802E149C  B0 1D 00 0C */	sth r0, 0xc(r29)
/* 802E14A0  48 00 00 2C */	b lbl_802E14CC
lbl_802E14A4:
/* 802E14A4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 802E14A8  FC 40 00 50 */	fneg f2, f0
/* 802E14AC  48 08 B2 75 */	bl atan2
/* 802E14B0  FC 20 08 18 */	frsp f1, f1
/* 802E14B4  C0 02 C6 4C */	lfs f0, lit_1121(r2)
/* 802E14B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E14BC  FC 00 00 1E */	fctiwz f0, f0
/* 802E14C0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 802E14C4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802E14C8  B0 1D 00 0C */	sth r0, 0xc(r29)
lbl_802E14CC:
/* 802E14CC  7F A3 EB 78 */	mr r3, r29
/* 802E14D0  2C 1E 00 00 */	cmpwi r30, 0
/* 802E14D4  38 00 00 10 */	li r0, 0x10
/* 802E14D8  40 82 00 08 */	bne lbl_802E14E0
/* 802E14DC  38 00 00 18 */	li r0, 0x18
lbl_802E14E0:
/* 802E14E0  7F E4 04 30 */	srw r4, r31, r0
/* 802E14E4  48 00 00 1D */	bl getButton__Q210JUTGamePad6CStickFUl
/* 802E14E8  39 61 00 40 */	addi r11, r1, 0x40
/* 802E14EC  48 08 0D 3D */	bl _restgpr_29
/* 802E14F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E14F4  7C 08 03 A6 */	mtlr r0
/* 802E14F8  38 21 00 40 */	addi r1, r1, 0x40
/* 802E14FC  4E 80 00 20 */	blr 
