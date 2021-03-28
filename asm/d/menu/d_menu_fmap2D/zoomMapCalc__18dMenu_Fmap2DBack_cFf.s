lbl_801D1148:
/* 801D1148  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801D114C  7C 08 02 A6 */	mflr r0
/* 801D1150  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D1154  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801D1158  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801D115C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801D1160  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 801D1164  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 801D1168  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 801D116C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D1170  48 19 10 65 */	bl _savegpr_27
/* 801D1174  7C 7F 1B 78 */	mr r31, r3
/* 801D1178  FF E0 08 90 */	fmr f31, f1
/* 801D117C  D3 E3 0F A0 */	stfs f31, 0xfa0(r3)
/* 801D1180  D3 E3 0F A8 */	stfs f31, 0xfa8(r3)
/* 801D1184  48 00 19 D9 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D1188  FF C0 08 90 */	fmr f30, f1
/* 801D118C  7F E3 FB 78 */	mr r3, r31
/* 801D1190  88 9F 12 27 */	lbz r4, 0x1227(r31)
/* 801D1194  48 00 19 D1 */	bl getRegionMapZoomRate__18dMenu_Fmap2DBack_cFi
/* 801D1198  EC 01 F0 28 */	fsubs f0, f1, f30
/* 801D119C  EF DF 00 32 */	fmuls f30, f31, f0
/* 801D11A0  7F E3 FB 78 */	mr r3, r31
/* 801D11A4  48 00 19 B9 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D11A8  EC 01 F0 2A */	fadds f0, f1, f30
/* 801D11AC  D0 1F 0F 9C */	stfs f0, 0xf9c(r31)
/* 801D11B0  7F E3 FB 78 */	mr r3, r31
/* 801D11B4  48 00 18 81 */	bl calcRenderingScale__18dMenu_Fmap2DBack_cFv
/* 801D11B8  7F E3 FB 78 */	mr r3, r31
/* 801D11BC  48 00 14 BD */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D11C0  FF C0 08 90 */	fmr f30, f1
/* 801D11C4  7F E3 FB 78 */	mr r3, r31
/* 801D11C8  48 00 15 01 */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D11CC  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D11D0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801D11D4  88 03 03 08 */	lbz r0, 0x308(r3)
/* 801D11D8  28 00 00 00 */	cmplwi r0, 0
/* 801D11DC  40 82 00 94 */	bne lbl_801D1270
/* 801D11E0  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D11E4  54 00 10 3A */	slwi r0, r0, 2
/* 801D11E8  7C 7F 02 14 */	add r3, r31, r0
/* 801D11EC  C0 A3 0E 8C */	lfs f5, 0xe8c(r3)
/* 801D11F0  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
/* 801D11F4  C0 83 0E CC */	lfs f4, 0xecc(r3)
/* 801D11F8  EC 03 01 32 */	fmuls f0, f3, f4
/* 801D11FC  EC C5 00 2A */	fadds f6, f5, f0
/* 801D1200  C0 43 0E AC */	lfs f2, 0xeac(r3)
/* 801D1204  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D1208  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D120C  EC E2 00 2A */	fadds f7, f2, f0
/* 801D1210  EC 1E 30 28 */	fsubs f0, f30, f6
/* 801D1214  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D1218  EC 46 00 2A */	fadds f2, f6, f0
/* 801D121C  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1220  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D1224  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D1228  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D122C  EC 00 28 28 */	fsubs f0, f0, f5
/* 801D1230  D0 03 0F 0C */	stfs f0, 0xf0c(r3)
/* 801D1234  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1238  54 00 10 3A */	slwi r0, r0, 2
/* 801D123C  EC 01 38 28 */	fsubs f0, f1, f7
/* 801D1240  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D1244  EC 47 00 2A */	fadds f2, f7, f0
/* 801D1248  7C 7F 02 14 */	add r3, r31, r0
/* 801D124C  C0 23 0E EC */	lfs f1, 0xeec(r3)
/* 801D1250  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1254  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D1258  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D125C  EC 22 00 28 */	fsubs f1, f2, f0
/* 801D1260  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 801D1264  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1268  D0 03 0F 2C */	stfs f0, 0xf2c(r3)
/* 801D126C  48 00 00 C8 */	b lbl_801D1334
lbl_801D1270:
/* 801D1270  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
/* 801D1274  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1278  54 00 10 3A */	slwi r0, r0, 2
/* 801D127C  7C 7F 02 14 */	add r3, r31, r0
/* 801D1280  C0 43 0E 0C */	lfs f2, 0xe0c(r3)
/* 801D1284  C0 03 0E 4C */	lfs f0, 0xe4c(r3)
/* 801D1288  EC 02 00 2A */	fadds f0, f2, f0
/* 801D128C  EC E3 00 32 */	fmuls f7, f3, f0
/* 801D1290  C0 43 0E 2C */	lfs f2, 0xe2c(r3)
/* 801D1294  C0 03 0E 6C */	lfs f0, 0xe6c(r3)
/* 801D1298  EC 02 00 2A */	fadds f0, f2, f0
/* 801D129C  ED 03 00 32 */	fmuls f8, f3, f0
/* 801D12A0  C0 43 0E AC */	lfs f2, 0xeac(r3)
/* 801D12A4  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D12A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D12AC  EC 02 00 2A */	fadds f0, f2, f0
/* 801D12B0  ED 20 40 28 */	fsubs f9, f0, f8
/* 801D12B4  C0 C3 0E 8C */	lfs f6, 0xe8c(r3)
/* 801D12B8  C0 9F 0F 9C */	lfs f4, 0xf9c(r31)
/* 801D12BC  C0 A3 0E CC */	lfs f5, 0xecc(r3)
/* 801D12C0  EC 1E 38 28 */	fsubs f0, f30, f7
/* 801D12C4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D12C8  EC 47 00 2A */	fadds f2, f7, f0
/* 801D12CC  EC 03 01 72 */	fmuls f0, f3, f5
/* 801D12D0  EC 06 00 2A */	fadds f0, f6, f0
/* 801D12D4  EC 00 38 28 */	fsubs f0, f0, f7
/* 801D12D8  EC 00 01 32 */	fmuls f0, f0, f4
/* 801D12DC  EC 42 00 2A */	fadds f2, f2, f0
/* 801D12E0  EC 05 01 32 */	fmuls f0, f5, f4
/* 801D12E4  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D12E8  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D12EC  EC 00 30 28 */	fsubs f0, f0, f6
/* 801D12F0  D0 03 0F 0C */	stfs f0, 0xf0c(r3)
/* 801D12F4  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D12F8  54 00 10 3A */	slwi r0, r0, 2
/* 801D12FC  C0 5F 0F 9C */	lfs f2, 0xf9c(r31)
/* 801D1300  EC 01 40 28 */	fsubs f0, f1, f8
/* 801D1304  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D1308  EC 28 00 2A */	fadds f1, f8, f0
/* 801D130C  EC 09 00 B2 */	fmuls f0, f9, f2
/* 801D1310  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1314  7C 7F 02 14 */	add r3, r31, r0
/* 801D1318  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D131C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801D1320  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D1324  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D1328  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 801D132C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1330  D0 03 0F 2C */	stfs f0, 0xf2c(r3)
lbl_801D1334:
/* 801D1334  3B 60 00 00 */	li r27, 0
/* 801D1338  3B C0 00 00 */	li r30, 0
lbl_801D133C:
/* 801D133C  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1340  7C 1B 00 00 */	cmpw r27, r0
/* 801D1344  41 82 00 74 */	beq lbl_801D13B8
/* 801D1348  7F 9F F2 14 */	add r28, r31, r30
/* 801D134C  54 00 10 3A */	slwi r0, r0, 2
/* 801D1350  7F BF 02 14 */	add r29, r31, r0
/* 801D1354  7F E3 FB 78 */	mr r3, r31
/* 801D1358  48 00 18 05 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D135C  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1360  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D1364  C0 3C 0E 8C */	lfs f1, 0xe8c(r28)
/* 801D1368  C0 1D 0E 8C */	lfs f0, 0xe8c(r29)
/* 801D136C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1370  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801D1374  C0 1D 0F 0C */	lfs f0, 0xf0c(r29)
/* 801D1378  EC 00 08 2A */	fadds f0, f0, f1
/* 801D137C  D0 1C 0F 0C */	stfs f0, 0xf0c(r28)
/* 801D1380  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1384  54 00 10 3A */	slwi r0, r0, 2
/* 801D1388  7F BF 02 14 */	add r29, r31, r0
/* 801D138C  7F E3 FB 78 */	mr r3, r31
/* 801D1390  48 00 17 CD */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D1394  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1398  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D139C  C0 3C 0E AC */	lfs f1, 0xeac(r28)
/* 801D13A0  C0 1D 0E AC */	lfs f0, 0xeac(r29)
/* 801D13A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D13A8  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801D13AC  C0 1D 0F 2C */	lfs f0, 0xf2c(r29)
/* 801D13B0  EC 00 08 2A */	fadds f0, f0, f1
/* 801D13B4  D0 1C 0F 2C */	stfs f0, 0xf2c(r28)
lbl_801D13B8:
/* 801D13B8  3B 7B 00 01 */	addi r27, r27, 1
/* 801D13BC  2C 1B 00 08 */	cmpwi r27, 8
/* 801D13C0  3B DE 00 04 */	addi r30, r30, 4
/* 801D13C4  41 80 FF 78 */	blt lbl_801D133C
/* 801D13C8  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D13CC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 801D13D0  40 82 00 2C */	bne lbl_801D13FC
/* 801D13D4  38 60 00 00 */	li r3, 0
/* 801D13D8  38 00 00 08 */	li r0, 8
/* 801D13DC  7C 09 03 A6 */	mtctr r0
lbl_801D13E0:
/* 801D13E0  7C 9F 1A 14 */	add r4, r31, r3
/* 801D13E4  C0 04 0F 0C */	lfs f0, 0xf0c(r4)
/* 801D13E8  D0 04 0F 4C */	stfs f0, 0xf4c(r4)
/* 801D13EC  C0 04 0F 2C */	lfs f0, 0xf2c(r4)
/* 801D13F0  D0 04 0F 6C */	stfs f0, 0xf6c(r4)
/* 801D13F4  38 63 00 04 */	addi r3, r3, 4
/* 801D13F8  42 00 FF E8 */	bdnz lbl_801D13E0
lbl_801D13FC:
/* 801D13FC  7F E3 FB 78 */	mr r3, r31
/* 801D1400  48 00 15 B9 */	bl calcRenderingPos__18dMenu_Fmap2DBack_cFv
/* 801D1404  7F E3 FB 78 */	mr r3, r31
/* 801D1408  88 9F 12 29 */	lbz r4, 0x1229(r31)
/* 801D140C  48 00 09 69 */	bl setSpotCursor__18dMenu_Fmap2DBack_cFUc
/* 801D1410  7F E3 FB 78 */	mr r3, r31
/* 801D1414  48 00 13 05 */	bl getMapAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D1418  FF C0 08 90 */	fmr f30, f1
/* 801D141C  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1420  54 00 10 3A */	slwi r0, r0, 2
/* 801D1424  7C 7F 02 14 */	add r3, r31, r0
/* 801D1428  C3 A3 0E CC */	lfs f29, 0xecc(r3)
/* 801D142C  7F E3 FB 78 */	mr r3, r31
/* 801D1430  48 00 12 E9 */	bl getMapAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D1434  EC 01 E8 28 */	fsubs f0, f1, f29
/* 801D1438  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801D143C  EC 1D 00 2A */	fadds f0, f29, f0
/* 801D1440  EC 00 F0 24 */	fdivs f0, f0, f30
/* 801D1444  D0 1F 0F B8 */	stfs f0, 0xfb8(r31)
/* 801D1448  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801D144C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801D1450  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 801D1454  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801D1458  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 801D145C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 801D1460  39 61 00 20 */	addi r11, r1, 0x20
/* 801D1464  48 19 0D BD */	bl _restgpr_27
/* 801D1468  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801D146C  7C 08 03 A6 */	mtlr r0
/* 801D1470  38 21 00 50 */	addi r1, r1, 0x50
/* 801D1474  4E 80 00 20 */	blr 
