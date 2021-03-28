lbl_804D111C:
/* 804D111C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D1120  7C 08 02 A6 */	mflr r0
/* 804D1124  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D1128  39 61 00 20 */	addi r11, r1, 0x20
/* 804D112C  4B E9 10 AC */	b _savegpr_28
/* 804D1130  7C 7E 1B 78 */	mr r30, r3
/* 804D1134  3C 80 80 4D */	lis r4, ccSphSrc@ha
/* 804D1138  3B E4 15 F0 */	addi r31, r4, ccSphSrc@l
/* 804D113C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804D1140  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D1144  40 82 00 E8 */	bne lbl_804D122C
/* 804D1148  7F C0 F3 79 */	or. r0, r30, r30
/* 804D114C  41 82 00 D4 */	beq lbl_804D1220
/* 804D1150  7C 1D 03 78 */	mr r29, r0
/* 804D1154  4B B4 7A 10 */	b __ct__10fopAc_ac_cFv
/* 804D1158  38 7D 06 1C */	addi r3, r29, 0x61c
/* 804D115C  4B DE F2 6C */	b __ct__10Z2CreatureFv
/* 804D1160  38 7D 06 BC */	addi r3, r29, 0x6bc
/* 804D1164  4B BA 4D 48 */	b __ct__12dBgS_AcchCirFv
/* 804D1168  3B 9D 06 FC */	addi r28, r29, 0x6fc
/* 804D116C  7F 83 E3 78 */	mr r3, r28
/* 804D1170  4B BA 4F 30 */	b __ct__9dBgS_AcchFv
/* 804D1174  3C 60 80 4D */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 804D1178  38 63 17 90 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 804D117C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 804D1180  38 03 00 0C */	addi r0, r3, 0xc
/* 804D1184  90 1C 00 14 */	stw r0, 0x14(r28)
/* 804D1188  38 03 00 18 */	addi r0, r3, 0x18
/* 804D118C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 804D1190  38 7C 00 14 */	addi r3, r28, 0x14
/* 804D1194  4B BA 7C D4 */	b SetObj__16dBgS_PolyPassChkFv
/* 804D1198  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804D119C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804D11A0  90 1D 08 EC */	stw r0, 0x8ec(r29)
/* 804D11A4  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 804D11A8  4B BB 25 B8 */	b __ct__10dCcD_GSttsFv
/* 804D11AC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804D11B0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804D11B4  90 7D 08 EC */	stw r3, 0x8ec(r29)
/* 804D11B8  38 03 00 20 */	addi r0, r3, 0x20
/* 804D11BC  90 1D 08 F0 */	stw r0, 0x8f0(r29)
/* 804D11C0  3B 9D 09 10 */	addi r28, r29, 0x910
/* 804D11C4  7F 83 E3 78 */	mr r3, r28
/* 804D11C8  4B BB 28 60 */	b __ct__12dCcD_GObjInfFv
/* 804D11CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804D11D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804D11D4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804D11D8  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha
/* 804D11DC  38 03 17 84 */	addi r0, r3, __vt__8cM3dGAab@l
/* 804D11E0  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 804D11E4  3C 60 80 4D */	lis r3, __vt__8cM3dGSph@ha
/* 804D11E8  38 03 17 78 */	addi r0, r3, __vt__8cM3dGSph@l
/* 804D11EC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 804D11F0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 804D11F4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 804D11F8  90 7C 01 20 */	stw r3, 0x120(r28)
/* 804D11FC  38 03 00 58 */	addi r0, r3, 0x58
/* 804D1200  90 1C 01 34 */	stw r0, 0x134(r28)
/* 804D1204  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 804D1208  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 804D120C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 804D1210  38 03 00 2C */	addi r0, r3, 0x2c
/* 804D1214  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804D1218  38 03 00 84 */	addi r0, r3, 0x84
/* 804D121C  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_804D1220:
/* 804D1220  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804D1224  60 00 00 08 */	ori r0, r0, 8
/* 804D1228  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_804D122C:
/* 804D122C  7F C3 F3 78 */	mr r3, r30
/* 804D1230  3C 80 80 4D */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 804D1234  38 84 E7 FC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 804D1238  38 A0 11 00 */	li r5, 0x1100
/* 804D123C  4B B4 92 74 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804D1240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D1244  40 82 00 0C */	bne lbl_804D1250
/* 804D1248  38 60 00 05 */	li r3, 5
/* 804D124C  48 00 02 38 */	b lbl_804D1484
lbl_804D1250:
/* 804D1250  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804D1254  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 804D1258  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 804D125C  2C 00 00 02 */	cmpwi r0, 2
/* 804D1260  41 82 00 6C */	beq lbl_804D12CC
/* 804D1264  40 80 00 14 */	bge lbl_804D1278
/* 804D1268  2C 00 00 00 */	cmpwi r0, 0
/* 804D126C  41 82 00 1C */	beq lbl_804D1288
/* 804D1270  40 80 00 24 */	bge lbl_804D1294
/* 804D1274  48 00 00 F4 */	b lbl_804D1368
lbl_804D1278:
/* 804D1278  2C 00 00 04 */	cmpwi r0, 4
/* 804D127C  41 82 00 B8 */	beq lbl_804D1334
/* 804D1280  40 80 00 E8 */	bge lbl_804D1368
/* 804D1284  48 00 00 7C */	b lbl_804D1300
lbl_804D1288:
/* 804D1288  38 00 00 00 */	li r0, 0
/* 804D128C  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 804D1290  48 00 00 E0 */	b lbl_804D1370
lbl_804D1294:
/* 804D1294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D1298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D129C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804D12A0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804D12A4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804D12A8  A0 84 03 EA */	lhz r4, 0x3ea(r4)
/* 804D12AC  4B B6 37 10 */	b isEventBit__11dSv_event_cCFUs
/* 804D12B0  2C 03 00 00 */	cmpwi r3, 0
/* 804D12B4  40 82 00 0C */	bne lbl_804D12C0
/* 804D12B8  38 60 00 05 */	li r3, 5
/* 804D12BC  48 00 01 C8 */	b lbl_804D1484
lbl_804D12C0:
/* 804D12C0  38 00 00 01 */	li r0, 1
/* 804D12C4  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 804D12C8  48 00 00 A8 */	b lbl_804D1370
lbl_804D12CC:
/* 804D12CC  38 00 00 02 */	li r0, 2
/* 804D12D0  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 804D12D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D12D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D12DC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804D12E0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804D12E4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804D12E8  A0 84 03 EC */	lhz r4, 0x3ec(r4)
/* 804D12EC  4B B6 36 D0 */	b isEventBit__11dSv_event_cCFUs
/* 804D12F0  2C 03 00 00 */	cmpwi r3, 0
/* 804D12F4  40 82 00 7C */	bne lbl_804D1370
/* 804D12F8  38 60 00 05 */	li r3, 5
/* 804D12FC  48 00 01 88 */	b lbl_804D1484
lbl_804D1300:
/* 804D1300  38 00 00 03 */	li r0, 3
/* 804D1304  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 804D1308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D130C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D1310  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804D1314  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804D1318  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804D131C  A0 84 03 EE */	lhz r4, 0x3ee(r4)
/* 804D1320  4B B6 36 9C */	b isEventBit__11dSv_event_cCFUs
/* 804D1324  2C 03 00 00 */	cmpwi r3, 0
/* 804D1328  40 82 00 48 */	bne lbl_804D1370
/* 804D132C  38 60 00 05 */	li r3, 5
/* 804D1330  48 00 01 54 */	b lbl_804D1484
lbl_804D1334:
/* 804D1334  38 00 00 04 */	li r0, 4
/* 804D1338  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 804D133C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D1340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D1344  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804D1348  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804D134C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804D1350  A0 84 03 F0 */	lhz r4, 0x3f0(r4)
/* 804D1354  4B B6 36 68 */	b isEventBit__11dSv_event_cCFUs
/* 804D1358  2C 03 00 00 */	cmpwi r3, 0
/* 804D135C  40 82 00 14 */	bne lbl_804D1370
/* 804D1360  38 60 00 05 */	li r3, 5
/* 804D1364  48 00 01 20 */	b lbl_804D1484
lbl_804D1368:
/* 804D1368  38 00 00 05 */	li r0, 5
/* 804D136C  98 1E 05 C8 */	stb r0, 0x5c8(r30)
lbl_804D1370:
/* 804D1370  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D1374  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 804D1378  38 00 00 00 */	li r0, 0
/* 804D137C  B0 1E 05 CA */	sth r0, 0x5ca(r30)
/* 804D1380  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 804D1384  38 00 00 50 */	li r0, 0x50
/* 804D1388  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 804D138C  38 7E 06 BC */	addi r3, r30, 0x6bc
/* 804D1390  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804D1394  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 804D1398  4B BA 4B C0 */	b SetWall__12dBgS_AcchCirFff
/* 804D139C  38 00 00 00 */	li r0, 0
/* 804D13A0  90 01 00 08 */	stw r0, 8(r1)
/* 804D13A4  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 804D13A8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804D13AC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 804D13B0  7F C6 F3 78 */	mr r6, r30
/* 804D13B4  38 E0 00 01 */	li r7, 1
/* 804D13B8  39 1E 06 BC */	addi r8, r30, 0x6bc
/* 804D13BC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 804D13C0  39 40 00 00 */	li r10, 0
/* 804D13C4  4B BA 4E 84 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804D13C8  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804D13CC  80 63 00 04 */	lwz r3, 4(r3)
/* 804D13D0  38 03 00 24 */	addi r0, r3, 0x24
/* 804D13D4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 804D13D8  7F C3 F3 78 */	mr r3, r30
/* 804D13DC  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 804D13E0  FC 40 08 90 */	fmr f2, f1
/* 804D13E4  FC 60 08 90 */	fmr f3, f1
/* 804D13E8  4B B4 91 40 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 804D13EC  7F C3 F3 78 */	mr r3, r30
/* 804D13F0  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 804D13F4  FC 40 08 90 */	fmr f2, f1
/* 804D13F8  FC 60 08 90 */	fmr f3, f1
/* 804D13FC  4B B4 91 3C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 804D1400  7F C3 F3 78 */	mr r3, r30
/* 804D1404  4B FF D3 35 */	bl InitCcSph__13daObjYOUSEI_cFv
/* 804D1408  38 7E 06 1C */	addi r3, r30, 0x61c
/* 804D140C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804D1410  38 BE 05 38 */	addi r5, r30, 0x538
/* 804D1414  38 C0 00 03 */	li r6, 3
/* 804D1418  38 E0 00 01 */	li r7, 1
/* 804D141C  4B DE F1 14 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 804D1420  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 804D1424  28 00 00 00 */	cmplwi r0, 0
/* 804D1428  40 82 00 28 */	bne lbl_804D1450
/* 804D142C  38 60 00 1E */	li r3, 0x1e
/* 804D1430  4B BC 6A 5C */	b execItemGet__FUc
/* 804D1434  7F C3 F3 78 */	mr r3, r30
/* 804D1438  4B FF F3 49 */	bl CareAction__13daObjYOUSEI_cFv
/* 804D143C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804D1440  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 804D1444  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 804D1448  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 804D144C  48 00 00 1C */	b lbl_804D1468
lbl_804D1450:
/* 804D1450  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804D1454  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804D1458  EC 01 00 2A */	fadds f0, f1, f0
/* 804D145C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804D1460  38 00 05 DC */	li r0, 0x5dc
/* 804D1464  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
lbl_804D1468:
/* 804D1468  7F C3 F3 78 */	mr r3, r30
/* 804D146C  4B FF F3 A1 */	bl CheckGround__13daObjYOUSEI_cFv
/* 804D1470  38 00 00 00 */	li r0, 0
/* 804D1474  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D1478  7F C3 F3 78 */	mr r3, r30
/* 804D147C  4B FF FC 81 */	bl daObjYOUSEI_Execute__FP13daObjYOUSEI_c
/* 804D1480  38 60 00 04 */	li r3, 4
lbl_804D1484:
/* 804D1484  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1488  4B E9 0D 9C */	b _restgpr_28
/* 804D148C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1490  7C 08 03 A6 */	mtlr r0
/* 804D1494  38 21 00 20 */	addi r1, r1, 0x20
/* 804D1498  4E 80 00 20 */	blr 
