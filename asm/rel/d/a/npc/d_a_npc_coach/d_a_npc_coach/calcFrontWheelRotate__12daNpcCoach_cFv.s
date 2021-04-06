lbl_809A1180:
/* 809A1180  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 809A1184  7C 08 02 A6 */	mflr r0
/* 809A1188  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 809A118C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 809A1190  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 809A1194  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 809A1198  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 809A119C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809A11A0  4B 9C 10 29 */	bl _savegpr_24
/* 809A11A4  7C 7E 1B 78 */	mr r30, r3
/* 809A11A8  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 809A11AC  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 809A11B0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 809A11B4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 809A11B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809A11BC  41 82 06 2C */	beq lbl_809A17E8
/* 809A11C0  C0 5E 15 70 */	lfs f2, 0x1570(r30)
/* 809A11C4  C0 1E 15 68 */	lfs f0, 0x1568(r30)
/* 809A11C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809A11CC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 809A11D0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 809A11D4  C0 5E 15 64 */	lfs f2, 0x1564(r30)
/* 809A11D8  C0 1E 15 5C */	lfs f0, 0x155c(r30)
/* 809A11DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A11E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809A11E4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 809A11E8  38 61 00 0C */	addi r3, r1, 0xc
/* 809A11EC  38 81 00 18 */	addi r4, r1, 0x18
/* 809A11F0  4B 9A 61 AD */	bl PSVECSquareDistance
/* 809A11F4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A11F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A11FC  40 81 00 58 */	ble lbl_809A1254
/* 809A1200  FC 00 08 34 */	frsqrte f0, f1
/* 809A1204  C8 9F 01 30 */	lfd f4, 0x130(r31)
/* 809A1208  FC 44 00 32 */	fmul f2, f4, f0
/* 809A120C  C8 7F 01 38 */	lfd f3, 0x138(r31)
/* 809A1210  FC 00 00 32 */	fmul f0, f0, f0
/* 809A1214  FC 01 00 32 */	fmul f0, f1, f0
/* 809A1218  FC 03 00 28 */	fsub f0, f3, f0
/* 809A121C  FC 02 00 32 */	fmul f0, f2, f0
/* 809A1220  FC 44 00 32 */	fmul f2, f4, f0
/* 809A1224  FC 00 00 32 */	fmul f0, f0, f0
/* 809A1228  FC 01 00 32 */	fmul f0, f1, f0
/* 809A122C  FC 03 00 28 */	fsub f0, f3, f0
/* 809A1230  FC 02 00 32 */	fmul f0, f2, f0
/* 809A1234  FC 44 00 32 */	fmul f2, f4, f0
/* 809A1238  FC 00 00 32 */	fmul f0, f0, f0
/* 809A123C  FC 01 00 32 */	fmul f0, f1, f0
/* 809A1240  FC 03 00 28 */	fsub f0, f3, f0
/* 809A1244  FC 02 00 32 */	fmul f0, f2, f0
/* 809A1248  FF C1 00 32 */	fmul f30, f1, f0
/* 809A124C  FF C0 F0 18 */	frsp f30, f30
/* 809A1250  48 00 00 90 */	b lbl_809A12E0
lbl_809A1254:
/* 809A1254  C8 1F 01 40 */	lfd f0, 0x140(r31)
/* 809A1258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A125C  40 80 00 10 */	bge lbl_809A126C
/* 809A1260  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A1264  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A1268  48 00 00 78 */	b lbl_809A12E0
lbl_809A126C:
/* 809A126C  D0 21 00 08 */	stfs f1, 8(r1)
/* 809A1270  80 81 00 08 */	lwz r4, 8(r1)
/* 809A1274  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A1278  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A127C  7C 03 00 00 */	cmpw r3, r0
/* 809A1280  41 82 00 14 */	beq lbl_809A1294
/* 809A1284  40 80 00 40 */	bge lbl_809A12C4
/* 809A1288  2C 03 00 00 */	cmpwi r3, 0
/* 809A128C  41 82 00 20 */	beq lbl_809A12AC
/* 809A1290  48 00 00 34 */	b lbl_809A12C4
lbl_809A1294:
/* 809A1294  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A1298  41 82 00 0C */	beq lbl_809A12A4
/* 809A129C  38 00 00 01 */	li r0, 1
/* 809A12A0  48 00 00 28 */	b lbl_809A12C8
lbl_809A12A4:
/* 809A12A4  38 00 00 02 */	li r0, 2
/* 809A12A8  48 00 00 20 */	b lbl_809A12C8
lbl_809A12AC:
/* 809A12AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A12B0  41 82 00 0C */	beq lbl_809A12BC
/* 809A12B4  38 00 00 05 */	li r0, 5
/* 809A12B8  48 00 00 10 */	b lbl_809A12C8
lbl_809A12BC:
/* 809A12BC  38 00 00 03 */	li r0, 3
/* 809A12C0  48 00 00 08 */	b lbl_809A12C8
lbl_809A12C4:
/* 809A12C4  38 00 00 04 */	li r0, 4
lbl_809A12C8:
/* 809A12C8  2C 00 00 01 */	cmpwi r0, 1
/* 809A12CC  40 82 00 10 */	bne lbl_809A12DC
/* 809A12D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809A12D4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809A12D8  48 00 00 08 */	b lbl_809A12E0
lbl_809A12DC:
/* 809A12DC  FF C0 08 90 */	fmr f30, f1
lbl_809A12E0:
/* 809A12E0  38 7E 15 68 */	addi r3, r30, 0x1568
/* 809A12E4  38 9E 15 5C */	addi r4, r30, 0x155c
/* 809A12E8  4B 8C F9 1D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809A12EC  7C 64 1B 78 */	mr r4, r3
/* 809A12F0  A8 7E 15 7E */	lha r3, 0x157e(r30)
/* 809A12F4  4B 8C FB 31 */	bl cLib_distanceAngleS__Fss
/* 809A12F8  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 809A12FC  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809A1300  40 80 00 10 */	bge lbl_809A1310
/* 809A1304  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 809A1308  EC 1E 00 24 */	fdivs f0, f30, f0
/* 809A130C  48 00 00 10 */	b lbl_809A131C
lbl_809A1310:
/* 809A1310  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 809A1314  EC 1E 00 24 */	fdivs f0, f30, f0
/* 809A1318  FC 00 00 50 */	fneg f0, f0
lbl_809A131C:
/* 809A131C  EC 01 00 32 */	fmuls f0, f1, f0
/* 809A1320  FC 00 00 1E */	fctiwz f0, f0
/* 809A1324  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 809A1328  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 809A132C  C0 7F 01 C8 */	lfs f3, 0x1c8(r31)
/* 809A1330  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 809A1334  A8 7E 15 7E */	lha r3, 0x157e(r30)
/* 809A1338  A8 1E 15 84 */	lha r0, 0x1584(r30)
/* 809A133C  7C 03 00 50 */	subf r0, r3, r0
/* 809A1340  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A1344  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A1348  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A134C  3C 00 43 30 */	lis r0, 0x4330
/* 809A1350  90 01 00 30 */	stw r0, 0x30(r1)
/* 809A1354  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809A1358  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A135C  EC 00 18 24 */	fdivs f0, f0, f3
/* 809A1360  EC 22 00 32 */	fmuls f1, f2, f0
/* 809A1364  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 809A1368  EC 01 00 24 */	fdivs f0, f1, f0
/* 809A136C  EC 03 00 32 */	fmuls f0, f3, f0
/* 809A1370  FC 00 00 1E */	fctiwz f0, f0
/* 809A1374  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 809A1378  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 809A137C  7C 04 07 34 */	extsh r4, r0
/* 809A1380  7C A3 07 34 */	extsh r3, r5
/* 809A1384  7C 04 1A 14 */	add r0, r4, r3
/* 809A1388  7C 05 07 34 */	extsh r5, r0
/* 809A138C  7C 03 20 50 */	subf r0, r3, r4
/* 809A1390  7C 03 07 34 */	extsh r3, r0
/* 809A1394  2C 05 11 94 */	cmpwi r5, 0x1194
/* 809A1398  40 81 00 0C */	ble lbl_809A13A4
/* 809A139C  38 A0 11 94 */	li r5, 0x1194
/* 809A13A0  48 00 00 10 */	b lbl_809A13B0
lbl_809A13A4:
/* 809A13A4  2C 05 EE 6C */	cmpwi r5, -4500
/* 809A13A8  40 80 00 08 */	bge lbl_809A13B0
/* 809A13AC  38 A0 EE 6C */	li r5, -4500
lbl_809A13B0:
/* 809A13B0  2C 03 11 94 */	cmpwi r3, 0x1194
/* 809A13B4  40 81 00 0C */	ble lbl_809A13C0
/* 809A13B8  38 60 11 94 */	li r3, 0x1194
/* 809A13BC  48 00 00 10 */	b lbl_809A13CC
lbl_809A13C0:
/* 809A13C0  2C 03 EE 6C */	cmpwi r3, -4500
/* 809A13C4  40 80 00 08 */	bge lbl_809A13CC
/* 809A13C8  38 60 EE 6C */	li r3, -4500
lbl_809A13CC:
/* 809A13CC  A8 1E 15 9C */	lha r0, 0x159c(r30)
/* 809A13D0  7C 00 2A 14 */	add r0, r0, r5
/* 809A13D4  B0 1E 15 9C */	sth r0, 0x159c(r30)
/* 809A13D8  A8 1E 15 C0 */	lha r0, 0x15c0(r30)
/* 809A13DC  7C 00 1A 14 */	add r0, r0, r3
/* 809A13E0  B0 1E 15 C0 */	sth r0, 0x15c0(r30)
/* 809A13E4  38 7E 15 A4 */	addi r3, r30, 0x15a4
/* 809A13E8  A8 9E 15 A2 */	lha r4, 0x15a2(r30)
/* 809A13EC  38 A0 00 10 */	li r5, 0x10
/* 809A13F0  4B 8C F2 E1 */	bl cLib_chaseS__FPsss
/* 809A13F4  2C 03 00 00 */	cmpwi r3, 0
/* 809A13F8  41 82 00 3C */	beq lbl_809A1434
/* 809A13FC  38 7F 00 00 */	addi r3, r31, 0
/* 809A1400  A8 03 00 66 */	lha r0, 0x66(r3)
/* 809A1404  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A1408  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A140C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A1410  3C 00 43 30 */	lis r0, 0x4330
/* 809A1414  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A1418  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A141C  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A1420  4B 8C 65 35 */	bl cM_rndF__Ff
/* 809A1424  FC 00 08 1E */	fctiwz f0, f1
/* 809A1428  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A142C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A1430  B0 1E 15 A2 */	sth r0, 0x15a2(r30)
lbl_809A1434:
/* 809A1434  38 7E 15 C8 */	addi r3, r30, 0x15c8
/* 809A1438  A8 9E 15 C6 */	lha r4, 0x15c6(r30)
/* 809A143C  38 A0 00 10 */	li r5, 0x10
/* 809A1440  4B 8C F2 91 */	bl cLib_chaseS__FPsss
/* 809A1444  2C 03 00 00 */	cmpwi r3, 0
/* 809A1448  41 82 00 3C */	beq lbl_809A1484
/* 809A144C  38 7F 00 00 */	addi r3, r31, 0
/* 809A1450  A8 03 00 66 */	lha r0, 0x66(r3)
/* 809A1454  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A1458  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A145C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A1460  3C 00 43 30 */	lis r0, 0x4330
/* 809A1464  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A1468  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A146C  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A1470  4B 8C 64 E5 */	bl cM_rndF__Ff
/* 809A1474  FC 00 08 1E */	fctiwz f0, f1
/* 809A1478  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A147C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A1480  B0 1E 15 C6 */	sth r0, 0x15c6(r30)
lbl_809A1484:
/* 809A1484  38 7E 15 A8 */	addi r3, r30, 0x15a8
/* 809A1488  A8 9E 15 A6 */	lha r4, 0x15a6(r30)
/* 809A148C  38 A0 00 10 */	li r5, 0x10
/* 809A1490  4B 8C F2 41 */	bl cLib_chaseS__FPsss
/* 809A1494  2C 03 00 00 */	cmpwi r3, 0
/* 809A1498  41 82 00 3C */	beq lbl_809A14D4
/* 809A149C  38 7F 00 00 */	addi r3, r31, 0
/* 809A14A0  A8 03 00 68 */	lha r0, 0x68(r3)
/* 809A14A4  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A14A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A14AC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A14B0  3C 00 43 30 */	lis r0, 0x4330
/* 809A14B4  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A14B8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A14BC  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A14C0  4B 8C 64 95 */	bl cM_rndF__Ff
/* 809A14C4  FC 00 08 1E */	fctiwz f0, f1
/* 809A14C8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A14CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A14D0  B0 1E 15 A6 */	sth r0, 0x15a6(r30)
lbl_809A14D4:
/* 809A14D4  38 7E 15 CC */	addi r3, r30, 0x15cc
/* 809A14D8  A8 9E 15 CA */	lha r4, 0x15ca(r30)
/* 809A14DC  38 A0 00 10 */	li r5, 0x10
/* 809A14E0  4B 8C F1 F1 */	bl cLib_chaseS__FPsss
/* 809A14E4  2C 03 00 00 */	cmpwi r3, 0
/* 809A14E8  41 82 00 3C */	beq lbl_809A1524
/* 809A14EC  38 7F 00 00 */	addi r3, r31, 0
/* 809A14F0  A8 03 00 68 */	lha r0, 0x68(r3)
/* 809A14F4  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A14F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A14FC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A1500  3C 00 43 30 */	lis r0, 0x4330
/* 809A1504  90 01 00 38 */	stw r0, 0x38(r1)
/* 809A1508  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A150C  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A1510  4B 8C 64 45 */	bl cM_rndF__Ff
/* 809A1514  FC 00 08 1E */	fctiwz f0, f1
/* 809A1518  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A151C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A1520  B0 1E 15 CA */	sth r0, 0x15ca(r30)
lbl_809A1524:
/* 809A1524  A8 1E 15 9C */	lha r0, 0x159c(r30)
/* 809A1528  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 809A152C  7C 00 1E 70 */	srawi r0, r0, 3
/* 809A1530  54 00 18 38 */	slwi r0, r0, 3
/* 809A1534  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809A1538  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809A153C  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A1540  A8 1E 15 A4 */	lha r0, 0x15a4(r30)
/* 809A1544  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 809A1548  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A154C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809A1550  3C 60 43 30 */	lis r3, 0x4330
/* 809A1554  90 61 00 38 */	stw r3, 0x38(r1)
/* 809A1558  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809A155C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A1560  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A1564  FC 00 00 1E */	fctiwz f0, f0
/* 809A1568  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A156C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A1570  B0 1E 15 9E */	sth r0, 0x159e(r30)
/* 809A1574  A8 1E 15 C0 */	lha r0, 0x15c0(r30)
/* 809A1578  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809A157C  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A1580  A8 1E 15 C8 */	lha r0, 0x15c8(r30)
/* 809A1584  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A1588  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809A158C  90 61 00 28 */	stw r3, 0x28(r1)
/* 809A1590  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809A1594  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A1598  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A159C  FC 00 00 1E */	fctiwz f0, f0
/* 809A15A0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809A15A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A15A8  B0 1E 15 C2 */	sth r0, 0x15c2(r30)
/* 809A15AC  A8 1E 15 9C */	lha r0, 0x159c(r30)
/* 809A15B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809A15B4  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A15B8  A8 1E 15 A8 */	lha r0, 0x15a8(r30)
/* 809A15BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A15C0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809A15C4  90 61 00 48 */	stw r3, 0x48(r1)
/* 809A15C8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 809A15CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A15D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A15D4  FC 00 00 1E */	fctiwz f0, f0
/* 809A15D8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 809A15DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809A15E0  B0 1E 15 A0 */	sth r0, 0x15a0(r30)
/* 809A15E4  A8 1E 15 C0 */	lha r0, 0x15c0(r30)
/* 809A15E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809A15EC  7C 44 04 2E */	lfsx f2, r4, r0
/* 809A15F0  A8 1E 15 CC */	lha r0, 0x15cc(r30)
/* 809A15F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A15F8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 809A15FC  90 61 00 58 */	stw r3, 0x58(r1)
/* 809A1600  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 809A1604  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A1608  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809A160C  FC 00 00 1E */	fctiwz f0, f0
/* 809A1610  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809A1614  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809A1618  B0 1E 15 C4 */	sth r0, 0x15c4(r30)
/* 809A161C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809A1620  3B 1F 00 00 */	addi r24, r31, 0
/* 809A1624  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 809A1628  EF C1 00 24 */	fdivs f30, f1, f0
/* 809A162C  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 809A1630  EF E0 07 B2 */	fmuls f31, f0, f30
/* 809A1634  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 809A1638  EC 00 07 B2 */	fmuls f0, f0, f30
/* 809A163C  FC 00 00 1E */	fctiwz f0, f0
/* 809A1640  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A1644  83 21 00 6C */	lwz r25, 0x6c(r1)
/* 809A1648  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 809A164C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 809A1650  FC 00 00 1E */	fctiwz f0, f0
/* 809A1654  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 809A1658  83 41 00 74 */	lwz r26, 0x74(r1)
/* 809A165C  7F 20 07 35 */	extsh. r0, r25
/* 809A1660  41 82 00 A4 */	beq lbl_809A1704
/* 809A1664  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 809A1668  41 82 00 9C */	beq lbl_809A1704
/* 809A166C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A1670  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 809A1674  41 82 00 90 */	beq lbl_809A1704
/* 809A1678  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 809A167C  41 82 00 88 */	beq lbl_809A1704
/* 809A1680  80 1E 12 34 */	lwz r0, 0x1234(r30)
/* 809A1684  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809A1688  41 82 00 7C */	beq lbl_809A1704
/* 809A168C  38 7E 15 94 */	addi r3, r30, 0x1594
/* 809A1690  38 9E 15 98 */	addi r4, r30, 0x1598
/* 809A1694  38 BE 15 88 */	addi r5, r30, 0x1588
/* 809A1698  38 DE 15 7C */	addi r6, r30, 0x157c
/* 809A169C  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 809A16A0  38 FE 0E 80 */	addi r7, r30, 0xe80
/* 809A16A4  39 00 00 00 */	li r8, 0
/* 809A16A8  4B 67 B9 79 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 809A16AC  3B 60 00 00 */	li r27, 0
/* 809A16B0  7F 7D DB 78 */	mr r29, r27
/* 809A16B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A16B8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A16BC  7F 39 07 34 */	extsh r25, r25
/* 809A16C0  57 5A 06 3E */	clrlwi r26, r26, 0x18
lbl_809A16C4:
/* 809A16C4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809A16C8  38 63 02 10 */	addi r3, r3, 0x210
/* 809A16CC  38 1D 15 94 */	addi r0, r29, 0x1594
/* 809A16D0  7C 9E 00 2E */	lwzx r4, r30, r0
/* 809A16D4  4B 6A A2 45 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 809A16D8  28 03 00 00 */	cmplwi r3, 0
/* 809A16DC  41 82 00 18 */	beq lbl_809A16F4
/* 809A16E0  D3 C3 00 28 */	stfs f30, 0x28(r3)
/* 809A16E4  B3 23 00 52 */	sth r25, 0x52(r3)
/* 809A16E8  9B 43 00 BB */	stb r26, 0xbb(r3)
/* 809A16EC  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 809A16F0  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_809A16F4:
/* 809A16F4  3B 7B 00 01 */	addi r27, r27, 1
/* 809A16F8  2C 1B 00 02 */	cmpwi r27, 2
/* 809A16FC  3B BD 00 04 */	addi r29, r29, 4
/* 809A1700  41 80 FF C4 */	blt lbl_809A16C4
lbl_809A1704:
/* 809A1704  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809A1708  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 809A170C  EF E1 00 24 */	fdivs f31, f1, f0
/* 809A1710  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 809A1714  EF C0 07 F2 */	fmuls f30, f0, f31
/* 809A1718  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 809A171C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 809A1720  FC 00 00 1E */	fctiwz f0, f0
/* 809A1724  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 809A1728  83 61 00 74 */	lwz r27, 0x74(r1)
/* 809A172C  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 809A1730  EC 00 07 F2 */	fmuls f0, f0, f31
/* 809A1734  FC 00 00 1E */	fctiwz f0, f0
/* 809A1738  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 809A173C  83 41 00 6C */	lwz r26, 0x6c(r1)
/* 809A1740  7F 60 07 35 */	extsh. r0, r27
/* 809A1744  41 82 00 A4 */	beq lbl_809A17E8
/* 809A1748  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 809A174C  41 82 00 9C */	beq lbl_809A17E8
/* 809A1750  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809A1754  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 809A1758  41 82 00 90 */	beq lbl_809A17E8
/* 809A175C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 809A1760  41 82 00 88 */	beq lbl_809A17E8
/* 809A1764  80 1E 12 34 */	lwz r0, 0x1234(r30)
/* 809A1768  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809A176C  41 82 00 7C */	beq lbl_809A17E8
/* 809A1770  38 7E 15 B8 */	addi r3, r30, 0x15b8
/* 809A1774  38 9E 15 BC */	addi r4, r30, 0x15bc
/* 809A1778  38 BE 15 AC */	addi r5, r30, 0x15ac
/* 809A177C  38 DE 15 7C */	addi r6, r30, 0x157c
/* 809A1780  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 809A1784  38 FE 0E 80 */	addi r7, r30, 0xe80
/* 809A1788  39 00 00 00 */	li r8, 0
/* 809A178C  4B 67 B8 95 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 809A1790  3B 20 00 00 */	li r25, 0
/* 809A1794  3B E0 00 00 */	li r31, 0
/* 809A1798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A179C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A17A0  7F 7B 07 34 */	extsh r27, r27
/* 809A17A4  57 5A 06 3E */	clrlwi r26, r26, 0x18
lbl_809A17A8:
/* 809A17A8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 809A17AC  38 63 02 10 */	addi r3, r3, 0x210
/* 809A17B0  38 1F 15 B8 */	addi r0, r31, 0x15b8
/* 809A17B4  7C 9E 00 2E */	lwzx r4, r30, r0
/* 809A17B8  4B 6A A1 61 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 809A17BC  28 03 00 00 */	cmplwi r3, 0
/* 809A17C0  41 82 00 18 */	beq lbl_809A17D8
/* 809A17C4  D3 E3 00 28 */	stfs f31, 0x28(r3)
/* 809A17C8  B3 63 00 52 */	sth r27, 0x52(r3)
/* 809A17CC  9B 43 00 BB */	stb r26, 0xbb(r3)
/* 809A17D0  D3 C3 00 B0 */	stfs f30, 0xb0(r3)
/* 809A17D4  D3 C3 00 B4 */	stfs f30, 0xb4(r3)
lbl_809A17D8:
/* 809A17D8  3B 39 00 01 */	addi r25, r25, 1
/* 809A17DC  2C 19 00 02 */	cmpwi r25, 2
/* 809A17E0  3B FF 00 04 */	addi r31, r31, 4
/* 809A17E4  41 80 FF C4 */	blt lbl_809A17A8
lbl_809A17E8:
/* 809A17E8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 809A17EC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 809A17F0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 809A17F4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 809A17F8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809A17FC  4B 9C 0A 19 */	bl _restgpr_24
/* 809A1800  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 809A1804  7C 08 03 A6 */	mtlr r0
/* 809A1808  38 21 00 C0 */	addi r1, r1, 0xc0
/* 809A180C  4E 80 00 20 */	blr 
