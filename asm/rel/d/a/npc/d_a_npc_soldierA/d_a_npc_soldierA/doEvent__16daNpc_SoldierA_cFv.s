lbl_80AF11B8:
/* 80AF11B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AF11BC  7C 08 02 A6 */	mflr r0
/* 80AF11C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AF11C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF11C8  4B 87 10 08 */	b _savegpr_26
/* 80AF11CC  7C 7C 1B 78 */	mr r28, r3
/* 80AF11D0  3C 60 80 AF */	lis r3, cNullVec__6Z2Calc@ha
/* 80AF11D4  3B E3 28 88 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80AF11D8  3B A0 00 00 */	li r29, 0
/* 80AF11DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF11E0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80AF11E4  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 80AF11E8  28 00 00 00 */	cmplwi r0, 0
/* 80AF11EC  41 82 02 44 */	beq lbl_80AF1430
/* 80AF11F0  3B DB 4F F8 */	addi r30, r27, 0x4ff8
/* 80AF11F4  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80AF11F8  28 00 00 01 */	cmplwi r0, 1
/* 80AF11FC  41 82 00 0C */	beq lbl_80AF1208
/* 80AF1200  28 00 00 02 */	cmplwi r0, 2
/* 80AF1204  40 82 00 0C */	bne lbl_80AF1210
lbl_80AF1208:
/* 80AF1208  38 00 00 00 */	li r0, 0
/* 80AF120C  98 1C 09 ED */	stb r0, 0x9ed(r28)
lbl_80AF1210:
/* 80AF1210  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80AF1214  28 00 00 01 */	cmplwi r0, 1
/* 80AF1218  40 82 01 0C */	bne lbl_80AF1324
/* 80AF121C  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 80AF1220  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 80AF1224  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80AF1228  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF122C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 80AF1230  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF1234  7F 83 E3 78 */	mr r3, r28
/* 80AF1238  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AF123C  4B FF FD 15 */	bl chkAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i
/* 80AF1240  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1244  41 82 00 1C */	beq lbl_80AF1260
/* 80AF1248  7F 83 E3 78 */	mr r3, r28
/* 80AF124C  38 80 00 00 */	li r4, 0
/* 80AF1250  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80AF1254  4B 87 0E 30 */	b __ptmf_scall
/* 80AF1258  60 00 00 00 */	nop 
/* 80AF125C  48 00 00 C0 */	b lbl_80AF131C
lbl_80AF1260:
/* 80AF1260  38 00 00 00 */	li r0, 0
/* 80AF1264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF1268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF126C  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80AF1270  28 03 00 01 */	cmplwi r3, 1
/* 80AF1274  41 82 00 0C */	beq lbl_80AF1280
/* 80AF1278  28 03 00 02 */	cmplwi r3, 2
/* 80AF127C  40 82 00 08 */	bne lbl_80AF1284
lbl_80AF1280:
/* 80AF1280  38 00 00 01 */	li r0, 1
lbl_80AF1284:
/* 80AF1284  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF1288  41 82 00 14 */	beq lbl_80AF129C
/* 80AF128C  7F C3 F3 78 */	mr r3, r30
/* 80AF1290  4B 55 75 60 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AF1294  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1298  41 82 00 84 */	beq lbl_80AF131C
lbl_80AF129C:
/* 80AF129C  88 1C 0E 18 */	lbz r0, 0xe18(r28)
/* 80AF12A0  28 00 00 00 */	cmplwi r0, 0
/* 80AF12A4  40 82 00 54 */	bne lbl_80AF12F8
/* 80AF12A8  38 00 00 01 */	li r0, 1
/* 80AF12AC  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 80AF12B0  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 80AF12B4  54 06 18 38 */	slwi r6, r0, 3
/* 80AF12B8  7F 83 E3 78 */	mr r3, r28
/* 80AF12BC  38 BF 00 68 */	addi r5, r31, 0x68
/* 80AF12C0  7C 85 32 14 */	add r4, r5, r6
/* 80AF12C4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF12C8  54 00 10 3A */	slwi r0, r0, 2
/* 80AF12CC  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80AF12D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF12D4  7C 05 30 2E */	lwzx r0, r5, r6
/* 80AF12D8  54 00 10 3A */	slwi r0, r0, 2
/* 80AF12DC  38 BF 00 78 */	addi r5, r31, 0x78
/* 80AF12E0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AF12E4  38 C0 00 02 */	li r6, 2
/* 80AF12E8  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80AF12EC  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80AF12F0  4B 66 26 64 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80AF12F4  48 00 00 28 */	b lbl_80AF131C
lbl_80AF12F8:
/* 80AF12F8  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 80AF12FC  80 1F 01 2C */	lwz r0, 0x12c(r31)
/* 80AF1300  90 61 00 10 */	stw r3, 0x10(r1)
/* 80AF1304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1308  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 80AF130C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AF1310  7F 83 E3 78 */	mr r3, r28
/* 80AF1314  38 81 00 10 */	addi r4, r1, 0x10
/* 80AF1318  4B FF FC 65 */	bl setAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i
lbl_80AF131C:
/* 80AF131C  3B A0 00 01 */	li r29, 1
/* 80AF1320  48 00 00 BC */	b lbl_80AF13DC
lbl_80AF1324:
/* 80AF1324  7F C3 F3 78 */	mr r3, r30
/* 80AF1328  80 9F 00 AC */	lwz r4, 0xac(r31)
/* 80AF132C  7F 85 E3 78 */	mr r5, r28
/* 80AF1330  38 C0 00 00 */	li r6, 0
/* 80AF1334  4B 55 67 E8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AF1338  7C 7A 1B 78 */	mr r26, r3
/* 80AF133C  2C 1A FF FF */	cmpwi r26, -1
/* 80AF1340  41 82 00 5C */	beq lbl_80AF139C
/* 80AF1344  93 5C 09 2C */	stw r26, 0x92c(r28)
/* 80AF1348  7F C3 F3 78 */	mr r3, r30
/* 80AF134C  7F 44 D3 78 */	mr r4, r26
/* 80AF1350  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 80AF1354  38 C0 00 03 */	li r6, 3
/* 80AF1358  38 E0 00 00 */	li r7, 0
/* 80AF135C  39 00 00 00 */	li r8, 0
/* 80AF1360  4B 55 6A B0 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AF1364  7C 60 1B 78 */	mr r0, r3
/* 80AF1368  7F 83 E3 78 */	mr r3, r28
/* 80AF136C  7F 44 D3 78 */	mr r4, r26
/* 80AF1370  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AF1374  39 9F 00 D4 */	addi r12, r31, 0xd4
/* 80AF1378  7D 8C 02 14 */	add r12, r12, r0
/* 80AF137C  4B 87 0D 08 */	b __ptmf_scall
/* 80AF1380  60 00 00 00 */	nop 
/* 80AF1384  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1388  41 82 00 10 */	beq lbl_80AF1398
/* 80AF138C  7F C3 F3 78 */	mr r3, r30
/* 80AF1390  7F 44 D3 78 */	mr r4, r26
/* 80AF1394  4B 55 6D E8 */	b cutEnd__16dEvent_manager_cFi
lbl_80AF1398:
/* 80AF1398  3B A0 00 01 */	li r29, 1
lbl_80AF139C:
/* 80AF139C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80AF13A0  28 00 00 02 */	cmplwi r0, 2
/* 80AF13A4  40 82 00 38 */	bne lbl_80AF13DC
/* 80AF13A8  A8 9C 09 D4 */	lha r4, 0x9d4(r28)
/* 80AF13AC  2C 04 FF FF */	cmpwi r4, -1
/* 80AF13B0  41 82 00 2C */	beq lbl_80AF13DC
/* 80AF13B4  7F C3 F3 78 */	mr r3, r30
/* 80AF13B8  4B 55 66 C0 */	b endCheck__16dEvent_manager_cFs
/* 80AF13BC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF13C0  41 82 00 1C */	beq lbl_80AF13DC
/* 80AF13C4  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80AF13C8  4B 55 10 A0 */	b reset__14dEvt_control_cFv
/* 80AF13CC  38 00 00 00 */	li r0, 0
/* 80AF13D0  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 80AF13D4  38 00 FF FF */	li r0, -1
/* 80AF13D8  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
lbl_80AF13DC:
/* 80AF13DC  7F 83 E3 78 */	mr r3, r28
/* 80AF13E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80AF13E4  38 A1 00 08 */	addi r5, r1, 8
/* 80AF13E8  7F 86 E3 78 */	mr r6, r28
/* 80AF13EC  38 E0 00 00 */	li r7, 0
/* 80AF13F0  4B 66 23 28 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AF13F4  2C 03 00 00 */	cmpwi r3, 0
/* 80AF13F8  41 82 00 74 */	beq lbl_80AF146C
/* 80AF13FC  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 80AF1400  28 00 00 00 */	cmplwi r0, 0
/* 80AF1404  40 82 00 68 */	bne lbl_80AF146C
/* 80AF1408  7F 83 E3 78 */	mr r3, r28
/* 80AF140C  80 81 00 08 */	lwz r4, 8(r1)
/* 80AF1410  3C A0 80 AF */	lis r5, lit_5059@ha
/* 80AF1414  C0 25 28 48 */	lfs f1, lit_5059@l(r5)
/* 80AF1418  38 A0 00 00 */	li r5, 0
/* 80AF141C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80AF1420  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF1424  7D 89 03 A6 */	mtctr r12
/* 80AF1428  4E 80 04 21 */	bctrl 
/* 80AF142C  48 00 00 40 */	b lbl_80AF146C
lbl_80AF1430:
/* 80AF1430  38 00 00 00 */	li r0, 0
/* 80AF1434  90 1C 09 50 */	stw r0, 0x950(r28)
/* 80AF1438  80 1C 09 2C */	lwz r0, 0x92c(r28)
/* 80AF143C  2C 00 FF FF */	cmpwi r0, -1
/* 80AF1440  41 82 00 2C */	beq lbl_80AF146C
/* 80AF1444  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AF1448  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AF144C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF1450  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF1454  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80AF1458  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80AF145C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF1460  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80AF1464  38 00 FF FF */	li r0, -1
/* 80AF1468  90 1C 09 2C */	stw r0, 0x92c(r28)
lbl_80AF146C:
/* 80AF146C  7F A3 EB 78 */	mr r3, r29
/* 80AF1470  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF1474  4B 87 0D A8 */	b _restgpr_26
/* 80AF1478  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AF147C  7C 08 03 A6 */	mtlr r0
/* 80AF1480  38 21 00 40 */	addi r1, r1, 0x40
/* 80AF1484  4E 80 00 20 */	blr 
