lbl_804B11CC:
/* 804B11CC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804B11D0  7C 08 02 A6 */	mflr r0
/* 804B11D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B11D8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804B11DC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804B11E0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804B11E4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804B11E8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804B11EC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804B11F0  39 61 00 60 */	addi r11, r1, 0x60
/* 804B11F4  4B EB 0F E0 */	b _savegpr_27
/* 804B11F8  7C 7E 1B 78 */	mr r30, r3
/* 804B11FC  7C 9B 23 78 */	mr r27, r4
/* 804B1200  7C BD 2B 78 */	mr r29, r5
/* 804B1204  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B1208  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804B120C  88 1E 10 0D */	lbz r0, 0x100d(r30)
/* 804B1210  7C 00 07 75 */	extsb. r0, r0
/* 804B1214  41 82 00 74 */	beq lbl_804B1288
/* 804B1218  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B121C  2C 00 00 04 */	cmpwi r0, 4
/* 804B1220  40 82 00 1C */	bne lbl_804B123C
/* 804B1224  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804B1228  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804B122C  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 804B1230  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B1234  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804B1238  48 00 01 30 */	b lbl_804B1368
lbl_804B123C:
/* 804B123C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1244  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804B1248  4B B5 B1 94 */	b mDoMtx_YrotS__FPA4_fs
/* 804B124C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1250  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1254  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 804B1258  4B B5 B2 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 804B125C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804B1260  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804B1264  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 804B1268  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B126C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804B1270  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1274  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1278  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B127C  38 A1 00 14 */	addi r5, r1, 0x14
/* 804B1280  4B E9 5A EC */	b PSMTXMultVec
/* 804B1284  48 00 00 E4 */	b lbl_804B1368
lbl_804B1288:
/* 804B1288  A8 7E 0F 7E */	lha r3, 0xf7e(r30)
/* 804B128C  2C 03 00 04 */	cmpwi r3, 4
/* 804B1290  40 82 00 98 */	bne lbl_804B1328
/* 804B1294  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1298  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B129C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804B12A0  4B B5 B1 3C */	b mDoMtx_YrotS__FPA4_fs
/* 804B12A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B12A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B12AC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 804B12B0  4B B5 B0 EC */	b mDoMtx_XrotM__FPA4_fs
/* 804B12B4  2C 1D 00 00 */	cmpwi r29, 0
/* 804B12B8  40 82 00 44 */	bne lbl_804B12FC
/* 804B12BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B12C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B12C4  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 804B12C8  38 04 80 00 */	addi r0, r4, -32768
/* 804B12CC  7C 00 07 34 */	extsh r0, r0
/* 804B12D0  54 04 08 3C */	slwi r4, r0, 1
/* 804B12D4  3C 84 00 01 */	addis r4, r4, 1
/* 804B12D8  38 04 80 00 */	addi r0, r4, -32768
/* 804B12DC  7C 04 07 34 */	extsh r4, r0
/* 804B12E0  4B B5 B1 EC */	b mDoMtx_ZrotM__FPA4_fs
/* 804B12E4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B12E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B12EC  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 804B12F0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B12F4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B12F8  48 00 00 18 */	b lbl_804B1310
lbl_804B12FC:
/* 804B12FC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B1300  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B1304  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B1308  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 804B130C  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_804B1310:
/* 804B1310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1318  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B131C  38 A1 00 14 */	addi r5, r1, 0x14
/* 804B1320  4B E9 5A 4C */	b PSMTXMultVec
/* 804B1324  48 00 00 44 */	b lbl_804B1368
lbl_804B1328:
/* 804B1328  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B132C  2C 00 00 04 */	cmpwi r0, 4
/* 804B1330  40 82 00 24 */	bne lbl_804B1354
/* 804B1334  2C 03 00 06 */	cmpwi r3, 6
/* 804B1338  40 82 00 1C */	bne lbl_804B1354
/* 804B133C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804B1340  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804B1344  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804B1348  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B134C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804B1350  48 00 00 18 */	b lbl_804B1368
lbl_804B1354:
/* 804B1354  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804B1358  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804B135C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804B1360  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B1364  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_804B1368:
/* 804B1368  57 A3 28 34 */	slwi r3, r29, 5
/* 804B136C  3B 83 0F AC */	addi r28, r3, 0xfac
/* 804B1370  7F 9E E2 14 */	add r28, r30, r28
/* 804B1374  C0 1B 00 00 */	lfs f0, 0(r27)
/* 804B1378  D0 1C 00 00 */	stfs f0, 0(r28)
/* 804B137C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 804B1380  D0 1C 00 04 */	stfs f0, 4(r28)
/* 804B1384  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804B1388  D0 1C 00 08 */	stfs f0, 8(r28)
/* 804B138C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804B1390  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 804B1394  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804B1398  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B139C  EF E2 00 2A */	fadds f31, f2, f0
/* 804B13A0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804B13A4  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 804B13A8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 804B13AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B13B0  EF C2 00 2A */	fadds f30, f2, f0
/* 804B13B4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804B13B8  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 804B13BC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804B13C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B13C4  EF A2 00 2A */	fadds f29, f2, f0
/* 804B13C8  FC 20 F0 90 */	fmr f1, f30
/* 804B13CC  FC 40 E8 90 */	fmr f2, f29
/* 804B13D0  4B DB 62 A4 */	b cM_atan2s__Fff
/* 804B13D4  7C 03 00 D0 */	neg r0, r3
/* 804B13D8  B0 1C 00 18 */	sth r0, 0x18(r28)
/* 804B13DC  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 804B13E0  EC 1D 07 72 */	fmuls f0, f29, f29
/* 804B13E4  EC 41 00 2A */	fadds f2, f1, f0
/* 804B13E8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B13EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B13F0  40 81 00 0C */	ble lbl_804B13FC
/* 804B13F4  FC 00 10 34 */	frsqrte f0, f2
/* 804B13F8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804B13FC:
/* 804B13FC  FC 20 F8 90 */	fmr f1, f31
/* 804B1400  4B DB 62 74 */	b cM_atan2s__Fff
/* 804B1404  B0 7C 00 1A */	sth r3, 0x1a(r28)
/* 804B1408  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B140C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B1410  80 63 00 00 */	lwz r3, 0(r3)
/* 804B1414  A8 9C 00 18 */	lha r4, 0x18(r28)
/* 804B1418  4B B5 AF 2C */	b mDoMtx_XrotS__FPA4_fs
/* 804B141C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804B1420  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804B1424  80 63 00 00 */	lwz r3, 0(r3)
/* 804B1428  A8 9C 00 1A */	lha r4, 0x1a(r28)
/* 804B142C  4B B5 B0 08 */	b mDoMtx_YrotM__FPA4_fs
/* 804B1430  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B1434  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B1438  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804B143C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804B1440  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B1444  38 61 00 2C */	addi r3, r1, 0x2c
/* 804B1448  38 81 00 20 */	addi r4, r1, 0x20
/* 804B144C  4B DB FA A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804B1450  38 61 00 08 */	addi r3, r1, 8
/* 804B1454  7F 84 E3 78 */	mr r4, r28
/* 804B1458  38 A1 00 20 */	addi r5, r1, 0x20
/* 804B145C  4B DB 56 88 */	b __pl__4cXyzCFRC3Vec
/* 804B1460  C0 01 00 08 */	lfs f0, 8(r1)
/* 804B1464  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 804B1468  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804B146C  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 804B1470  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804B1474  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 804B1478  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B147C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1480  C0 3C 00 00 */	lfs f1, 0(r28)
/* 804B1484  C0 5C 00 04 */	lfs f2, 4(r28)
/* 804B1488  C0 7C 00 08 */	lfs f3, 8(r28)
/* 804B148C  4B E9 54 5C */	b PSMTXTrans
/* 804B1490  2C 1D 00 00 */	cmpwi r29, 0
/* 804B1494  40 82 00 4C */	bne lbl_804B14E0
/* 804B1498  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B149C  2C 00 00 05 */	cmpwi r0, 5
/* 804B14A0  41 82 00 0C */	beq lbl_804B14AC
/* 804B14A4  2C 00 00 06 */	cmpwi r0, 6
/* 804B14A8  40 82 00 38 */	bne lbl_804B14E0
lbl_804B14AC:
/* 804B14AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B14B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B14B4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804B14B8  4B B5 AF 7C */	b mDoMtx_YrotM__FPA4_fs
/* 804B14BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B14C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B14C4  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 804B14C8  4B B5 AE D4 */	b mDoMtx_XrotM__FPA4_fs
/* 804B14CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B14D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B14D4  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 804B14D8  4B B5 AF F4 */	b mDoMtx_ZrotM__FPA4_fs
/* 804B14DC  48 00 01 70 */	b lbl_804B164C
lbl_804B14E0:
/* 804B14E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B14E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B14E8  A8 9C 00 18 */	lha r4, 0x18(r28)
/* 804B14EC  4B B5 AE B0 */	b mDoMtx_XrotM__FPA4_fs
/* 804B14F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B14F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B14F8  A8 9C 00 1A */	lha r4, 0x1a(r28)
/* 804B14FC  4B B5 AF 38 */	b mDoMtx_YrotM__FPA4_fs
/* 804B1500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1508  38 80 C0 00 */	li r4, -16384
/* 804B150C  4B B5 AE 90 */	b mDoMtx_XrotM__FPA4_fs
/* 804B1510  2C 1D 00 01 */	cmpwi r29, 1
/* 804B1514  40 82 01 38 */	bne lbl_804B164C
/* 804B1518  A8 7E 0F 7E */	lha r3, 0xf7e(r30)
/* 804B151C  2C 03 00 01 */	cmpwi r3, 1
/* 804B1520  40 81 00 18 */	ble lbl_804B1538
/* 804B1524  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 804B1528  2C 00 00 04 */	cmpwi r0, 4
/* 804B152C  41 82 01 20 */	beq lbl_804B164C
/* 804B1530  2C 03 00 06 */	cmpwi r3, 6
/* 804B1534  40 82 01 18 */	bne lbl_804B164C
lbl_804B1538:
/* 804B1538  A8 1C 00 1A */	lha r0, 0x1a(r28)
/* 804B153C  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 804B1540  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B1544  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804B1548  3C 80 43 30 */	lis r4, 0x4330
/* 804B154C  90 81 00 38 */	stw r4, 0x38(r1)
/* 804B1550  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B1554  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B1558  FC 00 02 10 */	fabs f0, f0
/* 804B155C  FC 40 00 18 */	frsp f2, f0
/* 804B1560  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 804B1564  A8 7C 00 18 */	lha r3, 0x18(r28)
/* 804B1568  38 03 C0 00 */	addi r0, r3, -16384
/* 804B156C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B1570  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B1574  90 81 00 40 */	stw r4, 0x40(r1)
/* 804B1578  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 804B157C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B1580  FC 00 02 10 */	fabs f0, f0
/* 804B1584  FC 00 00 18 */	frsp f0, f0
/* 804B1588  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B158C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 804B1590  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B1594  EC 21 00 2A */	fadds f1, f1, f0
/* 804B1598  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B159C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B15A0  40 81 00 0C */	ble lbl_804B15AC
/* 804B15A4  FC 00 08 34 */	frsqrte f0, f1
/* 804B15A8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804B15AC:
/* 804B15AC  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 804B15B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B15B4  40 81 00 08 */	ble lbl_804B15BC
/* 804B15B8  FC 20 00 90 */	fmr f1, f0
lbl_804B15BC:
/* 804B15BC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 804B15C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B15C4  40 81 00 14 */	ble lbl_804B15D8
/* 804B15C8  C0 1E 0F EC */	lfs f0, 0xfec(r30)
/* 804B15CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B15D0  40 80 00 08 */	bge lbl_804B15D8
/* 804B15D4  D0 3E 0F EC */	stfs f1, 0xfec(r30)
lbl_804B15D8:
/* 804B15D8  A8 9E 05 78 */	lha r4, 0x578(r30)
/* 804B15DC  1C 04 0F A0 */	mulli r0, r4, 0xfa0
/* 804B15E0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B15E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804B15E8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804B15EC  7C 23 04 2E */	lfsx f1, r3, r0
/* 804B15F0  1C 04 0E D8 */	mulli r0, r4, 0xed8
/* 804B15F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B15F8  7C 03 04 2E */	lfsx f0, r3, r0
/* 804B15FC  C0 5E 0F EC */	lfs f2, 0xfec(r30)
/* 804B1600  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B1604  FC 00 00 1E */	fctiwz f0, f0
/* 804B1608  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804B160C  83 61 00 44 */	lwz r27, 0x44(r1)
/* 804B1610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1618  EC 02 00 72 */	fmuls f0, f2, f1
/* 804B161C  FC 00 00 1E */	fctiwz f0, f0
/* 804B1620  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804B1624  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 804B1628  4B B5 AD 74 */	b mDoMtx_XrotM__FPA4_fs
/* 804B162C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1630  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1634  7F 64 DB 78 */	mr r4, r27
/* 804B1638  4B B5 AE 94 */	b mDoMtx_ZrotM__FPA4_fs
/* 804B163C  38 7E 0F EC */	addi r3, r30, 0xfec
/* 804B1640  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B1644  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 804B1648  4B DB E4 38 */	b cLib_addCalc0__FPfff
lbl_804B164C:
/* 804B164C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804B1650  FC 40 08 90 */	fmr f2, f1
/* 804B1654  FC 60 08 90 */	fmr f3, f1
/* 804B1658  4B B5 B7 E0 */	b scaleM__14mDoMtx_stack_cFfff
/* 804B165C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1664  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 804B1668  4B B5 AD CC */	b mDoMtx_YrotM__FPA4_fs
/* 804B166C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804B1670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804B1674  57 A0 10 3A */	slwi r0, r29, 2
/* 804B1678  7C 9E 02 14 */	add r4, r30, r0
/* 804B167C  80 84 0F 98 */	lwz r4, 0xf98(r4)
/* 804B1680  38 84 00 24 */	addi r4, r4, 0x24
/* 804B1684  4B E9 4E 2C */	b PSMTXCopy
/* 804B1688  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804B168C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804B1690  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804B1694  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804B1698  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804B169C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804B16A0  39 61 00 60 */	addi r11, r1, 0x60
/* 804B16A4  4B EB 0B 7C */	b _restgpr_27
/* 804B16A8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B16AC  7C 08 03 A6 */	mtlr r0
/* 804B16B0  38 21 00 90 */	addi r1, r1, 0x90
/* 804B16B4  4E 80 00 20 */	blr 
