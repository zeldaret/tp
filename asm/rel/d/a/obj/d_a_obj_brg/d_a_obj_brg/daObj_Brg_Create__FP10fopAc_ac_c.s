lbl_80BC1050:
/* 80BC1050  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80BC1054  7C 08 02 A6 */	mflr r0
/* 80BC1058  90 01 01 74 */	stw r0, 0x174(r1)
/* 80BC105C  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80BC1060  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80BC1064  39 61 01 60 */	addi r11, r1, 0x160
/* 80BC1068  4B 7A 11 60 */	b _savegpr_24
/* 80BC106C  7C 7C 1B 78 */	mr r28, r3
/* 80BC1070  3C 80 80 BC */	lis r4, lit_1109@ha
/* 80BC1074  3B C4 24 E8 */	addi r30, r4, lit_1109@l
/* 80BC1078  3C 80 80 BC */	lis r4, lit_3896@ha
/* 80BC107C  3B E4 21 48 */	addi r31, r4, lit_3896@l
/* 80BC1080  7F 9D E3 78 */	mr r29, r28
/* 80BC1084  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC1088  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC108C  40 82 00 A8 */	bne lbl_80BC1134
/* 80BC1090  7F 80 E3 79 */	or. r0, r28, r28
/* 80BC1094  41 82 00 94 */	beq lbl_80BC1128
/* 80BC1098  7C 1A 03 78 */	mr r26, r0
/* 80BC109C  4B 45 7A C8 */	b __ct__10fopAc_ac_cFv
/* 80BC10A0  38 7A 05 70 */	addi r3, r26, 0x570
/* 80BC10A4  3C 80 80 BC */	lis r4, __ct__4br_sFv@ha
/* 80BC10A8  38 84 20 00 */	addi r4, r4, __ct__4br_sFv@l
/* 80BC10AC  3C A0 80 BC */	lis r5, __dt__4br_sFv@ha
/* 80BC10B0  38 A5 1F 54 */	addi r5, r5, __dt__4br_sFv@l
/* 80BC10B4  38 C0 07 0C */	li r6, 0x70c
/* 80BC10B8  38 E0 00 18 */	li r7, 0x18
/* 80BC10BC  4B 7A 0C A4 */	b __construct_array
/* 80BC10C0  3C 60 80 BC */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 80BC10C4  38 03 24 C8 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 80BC10C8  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC10CC  90 03 AE 90 */	stw r0, -0x5170(r3)
/* 80BC10D0  3C 80 80 3A */	lis r4, __vt__19mDoExt_3DlineMat1_c@ha
/* 80BC10D4  38 04 32 48 */	addi r0, r4, __vt__19mDoExt_3DlineMat1_c@l
/* 80BC10D8  90 03 AE 90 */	stw r0, -0x5170(r3)
/* 80BC10DC  3C 80 80 BC */	lis r4, __ct__8dCcD_CylFv@ha
/* 80BC10E0  38 84 1E 40 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80BC10E4  3C A0 80 BC */	lis r5, __dt__8dCcD_CylFv@ha
/* 80BC10E8  38 A5 1D 74 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80BC10EC  38 C0 01 3C */	li r6, 0x13c
/* 80BC10F0  38 E0 00 02 */	li r7, 2
/* 80BC10F4  38 63 AF 34 */	addi r3, r3, -20684
/* 80BC10F8  4B 7A 0C 68 */	b __construct_array
/* 80BC10FC  3F 1A 00 01 */	addis r24, r26, 1
/* 80BC1100  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BC1104  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BC1108  90 18 B1 C4 */	stw r0, -0x4e3c(r24)
/* 80BC110C  38 78 B1 C8 */	addi r3, r24, -20024
/* 80BC1110  4B 4C 26 50 */	b __ct__10dCcD_GSttsFv
/* 80BC1114  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BC1118  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BC111C  90 78 B1 C4 */	stw r3, -0x4e3c(r24)
/* 80BC1120  38 03 00 20 */	addi r0, r3, 0x20
/* 80BC1124  90 18 B1 C8 */	stw r0, -0x4e38(r24)
lbl_80BC1128:
/* 80BC1128  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80BC112C  60 00 00 08 */	ori r0, r0, 8
/* 80BC1130  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80BC1134:
/* 80BC1134  38 7D 05 68 */	addi r3, r29, 0x568
/* 80BC1138  3C 80 80 BC */	lis r4, stringBase0@ha
/* 80BC113C  38 84 23 8C */	addi r4, r4, stringBase0@l
/* 80BC1140  4B 46 BD 7C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC1144  7C 7A 1B 78 */	mr r26, r3
/* 80BC1148  2C 1A 00 04 */	cmpwi r26, 4
/* 80BC114C  40 82 0C 04 */	bne lbl_80BC1D50
/* 80BC1150  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80BC1154  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC1158  98 03 B1 E8 */	stb r0, -0x4e18(r3)
/* 80BC115C  38 00 00 00 */	li r0, 0
/* 80BC1160  98 03 B1 E8 */	stb r0, -0x4e18(r3)
/* 80BC1164  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80BC1168  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BC116C  98 03 B1 E9 */	stb r0, -0x4e17(r3)
/* 80BC1170  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80BC1174  54 19 86 3E */	rlwinm r25, r0, 0x10, 0x18, 0x1f
/* 80BC1178  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80BC117C  D0 03 AE DC */	stfs f0, -0x5124(r3)
/* 80BC1180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC1184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC1188  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80BC118C  3B 1B 3E C8 */	addi r24, r27, 0x3ec8
/* 80BC1190  7F 03 C3 78 */	mr r3, r24
/* 80BC1194  3C 80 80 BC */	lis r4, stringBase0@ha
/* 80BC1198  38 84 23 8C */	addi r4, r4, stringBase0@l
/* 80BC119C  38 84 00 08 */	addi r4, r4, 8
/* 80BC11A0  4B 7A 77 F4 */	b strcmp
/* 80BC11A4  2C 03 00 00 */	cmpwi r3, 0
/* 80BC11A8  40 82 00 28 */	bne lbl_80BC11D0
/* 80BC11AC  38 00 00 08 */	li r0, 8
/* 80BC11B0  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC11B4  98 03 B1 E8 */	stb r0, -0x4e18(r3)
/* 80BC11B8  38 00 00 02 */	li r0, 2
/* 80BC11BC  98 03 B1 ED */	stb r0, -0x4e13(r3)
/* 80BC11C0  C0 23 AE DC */	lfs f1, -0x5124(r3)
/* 80BC11C4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BC11C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC11CC  D0 03 AE DC */	stfs f0, -0x5124(r3)
lbl_80BC11D0:
/* 80BC11D0  28 19 00 FF */	cmplwi r25, 0xff
/* 80BC11D4  40 82 00 D4 */	bne lbl_80BC12A8
/* 80BC11D8  7F 03 C3 78 */	mr r3, r24
/* 80BC11DC  3C 80 80 BC */	lis r4, stringBase0@ha
/* 80BC11E0  38 84 23 8C */	addi r4, r4, stringBase0@l
/* 80BC11E4  38 84 00 10 */	addi r4, r4, 0x10
/* 80BC11E8  4B 7A 77 AC */	b strcmp
/* 80BC11EC  2C 03 00 00 */	cmpwi r3, 0
/* 80BC11F0  40 82 01 14 */	bne lbl_80BC1304
/* 80BC11F4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80BC11F8  7C 00 07 74 */	extsb r0, r0
/* 80BC11FC  2C 00 00 02 */	cmpwi r0, 2
/* 80BC1200  40 82 00 4C */	bne lbl_80BC124C
/* 80BC1204  38 00 00 04 */	li r0, 4
/* 80BC1208  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC120C  98 03 B1 E8 */	stb r0, -0x4e18(r3)
/* 80BC1210  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80BC1214  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 80BC1218  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80BC121C  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 80BC1220  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80BC1224  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 80BC1228  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 80BC122C  D0 03 AE F8 */	stfs f0, -0x5108(r3)
/* 80BC1230  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 80BC1234  D0 03 AE FC */	stfs f0, -0x5104(r3)
/* 80BC1238  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80BC123C  D0 03 AF 00 */	stfs f0, -0x5100(r3)
/* 80BC1240  38 00 00 01 */	li r0, 1
/* 80BC1244  98 03 B1 EC */	stb r0, -0x4e14(r3)
/* 80BC1248  48 00 00 BC */	b lbl_80BC1304
lbl_80BC124C:
/* 80BC124C  2C 00 00 04 */	cmpwi r0, 4
/* 80BC1250  40 82 00 50 */	bne lbl_80BC12A0
/* 80BC1254  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BC1258  D0 3C 04 A8 */	stfs f1, 0x4a8(r28)
/* 80BC125C  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 80BC1260  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 80BC1264  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80BC1268  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 80BC126C  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC1270  D0 23 AE F8 */	stfs f1, -0x5108(r3)
/* 80BC1274  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 80BC1278  D0 03 AE FC */	stfs f0, -0x5104(r3)
/* 80BC127C  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80BC1280  D0 03 AF 00 */	stfs f0, -0x5100(r3)
/* 80BC1284  C0 23 AE DC */	lfs f1, -0x5124(r3)
/* 80BC1288  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80BC128C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BC1290  D0 03 AE DC */	stfs f0, -0x5124(r3)
/* 80BC1294  38 00 00 01 */	li r0, 1
/* 80BC1298  98 03 B1 ED */	stb r0, -0x4e13(r3)
/* 80BC129C  48 00 00 68 */	b lbl_80BC1304
lbl_80BC12A0:
/* 80BC12A0  38 60 00 05 */	li r3, 5
/* 80BC12A4  48 00 0A B0 */	b lbl_80BC1D54
lbl_80BC12A8:
/* 80BC12A8  7F 23 CB 78 */	mr r3, r25
/* 80BC12AC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80BC12B0  7C 04 07 74 */	extsb r4, r0
/* 80BC12B4  4B 49 05 38 */	b dPath_GetRoomPath__Fii
/* 80BC12B8  28 03 00 00 */	cmplwi r3, 0
/* 80BC12BC  41 82 00 40 */	beq lbl_80BC12FC
/* 80BC12C0  80 83 00 08 */	lwz r4, 8(r3)
/* 80BC12C4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BC12C8  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 80BC12CC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BC12D0  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 80BC12D4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80BC12D8  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 80BC12DC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80BC12E0  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC12E4  D0 03 AE F8 */	stfs f0, -0x5108(r3)
/* 80BC12E8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80BC12EC  D0 03 AE FC */	stfs f0, -0x5104(r3)
/* 80BC12F0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80BC12F4  D0 03 AF 00 */	stfs f0, -0x5100(r3)
/* 80BC12F8  48 00 00 0C */	b lbl_80BC1304
lbl_80BC12FC:
/* 80BC12FC  38 60 00 05 */	li r3, 5
/* 80BC1300  48 00 0A 54 */	b lbl_80BC1D54
lbl_80BC1304:
/* 80BC1304  38 61 01 18 */	addi r3, r1, 0x118
/* 80BC1308  3C 9D 00 01 */	addis r4, r29, 1
/* 80BC130C  38 84 AE F8 */	addi r4, r4, -20744
/* 80BC1310  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 80BC1314  4B 6A 58 20 */	b __mi__4cXyzCFRC3Vec
/* 80BC1318  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 80BC131C  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 80BC1320  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 80BC1324  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80BC1328  C0 41 01 20 */	lfs f2, 0x120(r1)
/* 80BC132C  D0 41 01 2C */	stfs f2, 0x12c(r1)
/* 80BC1330  4B 6A 63 44 */	b cM_atan2s__Fff
/* 80BC1334  B0 7C 04 B6 */	sth r3, 0x4b6(r28)
/* 80BC1338  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 80BC133C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80BC1340  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 80BC1344  EC 00 00 32 */	fmuls f0, f0, f0
/* 80BC1348  EC 41 00 2A */	fadds f2, f1, f0
/* 80BC134C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC1350  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BC1354  40 81 00 0C */	ble lbl_80BC1360
/* 80BC1358  FC 00 10 34 */	frsqrte f0, f2
/* 80BC135C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BC1360:
/* 80BC1360  C0 21 01 28 */	lfs f1, 0x128(r1)
/* 80BC1364  4B 6A 63 10 */	b cM_atan2s__Fff
/* 80BC1368  7C 03 00 D0 */	neg r0, r3
/* 80BC136C  B0 1C 04 B4 */	sth r0, 0x4b4(r28)
/* 80BC1370  C3 FF 00 60 */	lfs f31, 0x60(r31)
/* 80BC1374  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC1378  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BC137C  7C 00 07 74 */	extsb r0, r0
/* 80BC1380  2C 00 00 01 */	cmpwi r0, 1
/* 80BC1384  40 82 00 0C */	bne lbl_80BC1390
/* 80BC1388  C3 FF 01 38 */	lfs f31, 0x138(r31)
/* 80BC138C  48 00 01 3C */	b lbl_80BC14C8
lbl_80BC1390:
/* 80BC1390  2C 00 00 02 */	cmpwi r0, 2
/* 80BC1394  40 82 00 0C */	bne lbl_80BC13A0
/* 80BC1398  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80BC139C  48 00 01 2C */	b lbl_80BC14C8
lbl_80BC13A0:
/* 80BC13A0  88 03 B1 EC */	lbz r0, -0x4e14(r3)
/* 80BC13A4  7C 00 07 75 */	extsb. r0, r0
/* 80BC13A8  41 82 00 0C */	beq lbl_80BC13B4
/* 80BC13AC  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80BC13B0  48 00 01 18 */	b lbl_80BC14C8
lbl_80BC13B4:
/* 80BC13B4  38 61 01 24 */	addi r3, r1, 0x124
/* 80BC13B8  4B 78 5D 80 */	b PSVECSquareMag
/* 80BC13BC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC13C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC13C4  40 81 00 58 */	ble lbl_80BC141C
/* 80BC13C8  FC 00 08 34 */	frsqrte f0, f1
/* 80BC13CC  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BC13D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC13D4  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BC13D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC13DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC13E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC13E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC13E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC13EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC13F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC13F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC13F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC13FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC1400  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC1404  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC1408  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC140C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC1410  FC 21 00 32 */	fmul f1, f1, f0
/* 80BC1414  FC 20 08 18 */	frsp f1, f1
/* 80BC1418  48 00 00 88 */	b lbl_80BC14A0
lbl_80BC141C:
/* 80BC141C  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BC1420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC1424  40 80 00 10 */	bge lbl_80BC1434
/* 80BC1428  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC142C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BC1430  48 00 00 70 */	b lbl_80BC14A0
lbl_80BC1434:
/* 80BC1434  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BC1438  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BC143C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BC1440  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BC1444  7C 03 00 00 */	cmpw r3, r0
/* 80BC1448  41 82 00 14 */	beq lbl_80BC145C
/* 80BC144C  40 80 00 40 */	bge lbl_80BC148C
/* 80BC1450  2C 03 00 00 */	cmpwi r3, 0
/* 80BC1454  41 82 00 20 */	beq lbl_80BC1474
/* 80BC1458  48 00 00 34 */	b lbl_80BC148C
lbl_80BC145C:
/* 80BC145C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC1460  41 82 00 0C */	beq lbl_80BC146C
/* 80BC1464  38 00 00 01 */	li r0, 1
/* 80BC1468  48 00 00 28 */	b lbl_80BC1490
lbl_80BC146C:
/* 80BC146C  38 00 00 02 */	li r0, 2
/* 80BC1470  48 00 00 20 */	b lbl_80BC1490
lbl_80BC1474:
/* 80BC1474  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC1478  41 82 00 0C */	beq lbl_80BC1484
/* 80BC147C  38 00 00 05 */	li r0, 5
/* 80BC1480  48 00 00 10 */	b lbl_80BC1490
lbl_80BC1484:
/* 80BC1484  38 00 00 03 */	li r0, 3
/* 80BC1488  48 00 00 08 */	b lbl_80BC1490
lbl_80BC148C:
/* 80BC148C  38 00 00 04 */	li r0, 4
lbl_80BC1490:
/* 80BC1490  2C 00 00 01 */	cmpwi r0, 1
/* 80BC1494  40 82 00 0C */	bne lbl_80BC14A0
/* 80BC1498  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC149C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BC14A0:
/* 80BC14A0  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 80BC14A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC14A8  40 81 00 10 */	ble lbl_80BC14B8
/* 80BC14AC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BC14B0  EF FF 00 2A */	fadds f31, f31, f0
/* 80BC14B4  48 00 00 14 */	b lbl_80BC14C8
lbl_80BC14B8:
/* 80BC14B8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80BC14BC  2C 00 00 01 */	cmpwi r0, 1
/* 80BC14C0  40 82 00 08 */	bne lbl_80BC14C8
/* 80BC14C4  C3 FF 00 00 */	lfs f31, 0(r31)
lbl_80BC14C8:
/* 80BC14C8  38 61 01 24 */	addi r3, r1, 0x124
/* 80BC14CC  4B 78 5C 6C */	b PSVECSquareMag
/* 80BC14D0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC14D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC14D8  40 81 00 58 */	ble lbl_80BC1530
/* 80BC14DC  FC 00 08 34 */	frsqrte f0, f1
/* 80BC14E0  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BC14E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC14E8  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BC14EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC14F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC14F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC14F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC14FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC1500  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC1504  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC1508  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC150C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC1510  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC1514  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC1518  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC151C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC1520  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC1524  FC 21 00 32 */	fmul f1, f1, f0
/* 80BC1528  FC 20 08 18 */	frsp f1, f1
/* 80BC152C  48 00 00 88 */	b lbl_80BC15B4
lbl_80BC1530:
/* 80BC1530  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BC1534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC1538  40 80 00 10 */	bge lbl_80BC1548
/* 80BC153C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC1540  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BC1544  48 00 00 70 */	b lbl_80BC15B4
lbl_80BC1548:
/* 80BC1548  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BC154C  80 81 00 08 */	lwz r4, 8(r1)
/* 80BC1550  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BC1554  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BC1558  7C 03 00 00 */	cmpw r3, r0
/* 80BC155C  41 82 00 14 */	beq lbl_80BC1570
/* 80BC1560  40 80 00 40 */	bge lbl_80BC15A0
/* 80BC1564  2C 03 00 00 */	cmpwi r3, 0
/* 80BC1568  41 82 00 20 */	beq lbl_80BC1588
/* 80BC156C  48 00 00 34 */	b lbl_80BC15A0
lbl_80BC1570:
/* 80BC1570  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC1574  41 82 00 0C */	beq lbl_80BC1580
/* 80BC1578  38 00 00 01 */	li r0, 1
/* 80BC157C  48 00 00 28 */	b lbl_80BC15A4
lbl_80BC1580:
/* 80BC1580  38 00 00 02 */	li r0, 2
/* 80BC1584  48 00 00 20 */	b lbl_80BC15A4
lbl_80BC1588:
/* 80BC1588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC158C  41 82 00 0C */	beq lbl_80BC1598
/* 80BC1590  38 00 00 05 */	li r0, 5
/* 80BC1594  48 00 00 10 */	b lbl_80BC15A4
lbl_80BC1598:
/* 80BC1598  38 00 00 03 */	li r0, 3
/* 80BC159C  48 00 00 08 */	b lbl_80BC15A4
lbl_80BC15A0:
/* 80BC15A0  38 00 00 04 */	li r0, 4
lbl_80BC15A4:
/* 80BC15A4  2C 00 00 01 */	cmpwi r0, 1
/* 80BC15A8  40 82 00 0C */	bne lbl_80BC15B4
/* 80BC15AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC15B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BC15B4:
/* 80BC15B4  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80BC15B8  EC 40 F8 2A */	fadds f2, f0, f31
/* 80BC15BC  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC15C0  C0 03 AE DC */	lfs f0, -0x5124(r3)
/* 80BC15C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BC15C8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BC15CC  FC 00 00 1E */	fctiwz f0, f0
/* 80BC15D0  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 80BC15D4  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80BC15D8  98 03 B1 EA */	stb r0, -0x4e16(r3)
/* 80BC15DC  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC15E0  7C 00 07 74 */	extsb r0, r0
/* 80BC15E4  2C 00 00 18 */	cmpwi r0, 0x18
/* 80BC15E8  41 80 00 0C */	blt lbl_80BC15F4
/* 80BC15EC  38 60 00 05 */	li r3, 5
/* 80BC15F0  48 00 07 64 */	b lbl_80BC1D54
lbl_80BC15F4:
/* 80BC15F4  7F 83 E3 78 */	mr r3, r28
/* 80BC15F8  3C 80 80 BC */	lis r4, CallbackCreateHeap__FP10fopAc_ac_c@ha
/* 80BC15FC  38 84 0A 40 */	addi r4, r4, CallbackCreateHeap__FP10fopAc_ac_c@l
/* 80BC1600  3C A0 00 03 */	lis r5, 0x0003 /* 0x000375E0@ha */
/* 80BC1604  38 A5 75 E0 */	addi r5, r5, 0x75E0 /* 0x000375E0@l */
/* 80BC1608  4B 45 8E A8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BC160C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC1610  40 82 00 0C */	bne lbl_80BC161C
/* 80BC1614  38 60 00 05 */	li r3, 5
/* 80BC1618  48 00 07 3C */	b lbl_80BC1D54
lbl_80BC161C:
/* 80BC161C  7F 83 E3 78 */	mr r3, r28
/* 80BC1620  4B FF F2 91 */	bl CreateInit__FP10fopAc_ac_c
/* 80BC1624  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC1628  80 83 AE CC */	lwz r4, -0x5134(r3)
/* 80BC162C  28 04 00 00 */	cmplwi r4, 0
/* 80BC1630  41 82 00 20 */	beq lbl_80BC1650
/* 80BC1634  7F 63 DB 78 */	mr r3, r27
/* 80BC1638  7F A5 EB 78 */	mr r5, r29
/* 80BC163C  4B 4B 33 CC */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BC1640  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC1644  41 82 00 0C */	beq lbl_80BC1650
/* 80BC1648  38 60 00 05 */	li r3, 5
/* 80BC164C  48 00 07 08 */	b lbl_80BC1D54
lbl_80BC1650:
/* 80BC1650  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC1654  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC1658  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BC165C  41 82 00 40 */	beq lbl_80BC169C
/* 80BC1660  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC1664  7C 00 07 74 */	extsb r0, r0
/* 80BC1668  2C 00 00 10 */	cmpwi r0, 0x10
/* 80BC166C  41 80 00 10 */	blt lbl_80BC167C
/* 80BC1670  38 00 00 0F */	li r0, 0xf
/* 80BC1674  98 03 B1 EB */	stb r0, -0x4e15(r3)
/* 80BC1678  48 00 00 2C */	b lbl_80BC16A4
lbl_80BC167C:
/* 80BC167C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80BC1680  41 80 00 10 */	blt lbl_80BC1690
/* 80BC1684  38 00 00 0B */	li r0, 0xb
/* 80BC1688  98 03 B1 EB */	stb r0, -0x4e15(r3)
/* 80BC168C  48 00 00 18 */	b lbl_80BC16A4
lbl_80BC1690:
/* 80BC1690  38 00 00 07 */	li r0, 7
/* 80BC1694  98 03 B1 EB */	stb r0, -0x4e15(r3)
/* 80BC1698  48 00 00 0C */	b lbl_80BC16A4
lbl_80BC169C:
/* 80BC169C  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC16A0  98 03 B1 EB */	stb r0, -0x4e15(r3)
lbl_80BC16A4:
/* 80BC16A4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80BC16A8  54 04 46 3E */	srwi r4, r0, 0x18
/* 80BC16AC  3B 60 00 00 */	li r27, 0
/* 80BC16B0  2C 04 00 FF */	cmpwi r4, 0xff
/* 80BC16B4  41 82 00 24 */	beq lbl_80BC16D8
/* 80BC16B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC16BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC16C0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80BC16C4  7C 05 07 74 */	extsb r5, r0
/* 80BC16C8  4B 47 3C 98 */	b isSwitch__10dSv_info_cCFii
/* 80BC16CC  2C 03 00 00 */	cmpwi r3, 0
/* 80BC16D0  41 82 00 08 */	beq lbl_80BC16D8
/* 80BC16D4  3B 60 00 01 */	li r27, 1
lbl_80BC16D8:
/* 80BC16D8  38 9D 05 70 */	addi r4, r29, 0x570
/* 80BC16DC  38 A0 00 00 */	li r5, 0
/* 80BC16E0  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80BC16E4  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC16E8  48 00 00 24 */	b lbl_80BC170C
lbl_80BC16EC:
/* 80BC16EC  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80BC16F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC16F4  D0 04 00 78 */	stfs f0, 0x78(r4)
/* 80BC16F8  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80BC16FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC1700  D0 04 00 54 */	stfs f0, 0x54(r4)
/* 80BC1704  38 A5 00 01 */	addi r5, r5, 1
/* 80BC1708  38 84 07 0C */	addi r4, r4, 0x70c
lbl_80BC170C:
/* 80BC170C  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC1710  7C 00 07 74 */	extsb r0, r0
/* 80BC1714  7C 05 00 00 */	cmpw r5, r0
/* 80BC1718  41 80 FF D4 */	blt lbl_80BC16EC
/* 80BC171C  3B 80 00 0A */	li r28, 0xa
/* 80BC1720  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BC1724  2C 00 00 02 */	cmpwi r0, 2
/* 80BC1728  40 82 05 94 */	bne lbl_80BC1CBC
/* 80BC172C  3B 80 00 02 */	li r28, 2
/* 80BC1730  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 80BC1734  7C 00 07 75 */	extsb. r0, r0
/* 80BC1738  40 82 05 30 */	bne lbl_80BC1C68
/* 80BC173C  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1740  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 80BC1744  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 80BC1748  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80BC174C  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80BC1750  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80BC1754  D0 5E 01 4C */	stfs f2, 0x14c(r30)
/* 80BC1758  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC175C  D0 23 00 04 */	stfs f1, 4(r3)
/* 80BC1760  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC1764  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1768  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC176C  38 BE 00 40 */	addi r5, r30, 0x40
/* 80BC1770  4B FF B1 29 */	bl __register_global_object
/* 80BC1774  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1778  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 80BC177C  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80BC1780  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80BC1784  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80BC1788  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80BC178C  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1790  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80BC1794  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80BC1798  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80BC179C  38 63 00 0C */	addi r3, r3, 0xc
/* 80BC17A0  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC17A4  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC17A8  38 BE 00 50 */	addi r5, r30, 0x50
/* 80BC17AC  4B FF B0 ED */	bl __register_global_object
/* 80BC17B0  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC17B4  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 80BC17B8  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80BC17BC  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 80BC17C0  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80BC17C4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80BC17C8  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC17CC  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80BC17D0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80BC17D4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BC17D8  38 63 00 18 */	addi r3, r3, 0x18
/* 80BC17DC  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC17E0  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC17E4  38 BE 00 5C */	addi r5, r30, 0x5c
/* 80BC17E8  4B FF B0 B1 */	bl __register_global_object
/* 80BC17EC  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC17F0  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 80BC17F4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BC17F8  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80BC17FC  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80BC1800  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80BC1804  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1808  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80BC180C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80BC1810  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80BC1814  38 63 00 24 */	addi r3, r3, 0x24
/* 80BC1818  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC181C  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1820  38 BE 00 68 */	addi r5, r30, 0x68
/* 80BC1824  4B FF B0 75 */	bl __register_global_object
/* 80BC1828  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC182C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 80BC1830  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 80BC1834  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 80BC1838  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80BC183C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80BC1840  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1844  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80BC1848  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80BC184C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80BC1850  38 63 00 30 */	addi r3, r3, 0x30
/* 80BC1854  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1858  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC185C  38 BE 00 74 */	addi r5, r30, 0x74
/* 80BC1860  4B FF B0 39 */	bl __register_global_object
/* 80BC1864  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1868  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80BC186C  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80BC1870  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80BC1874  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80BC1878  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80BC187C  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1880  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80BC1884  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80BC1888  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80BC188C  38 63 00 3C */	addi r3, r3, 0x3c
/* 80BC1890  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1894  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1898  38 BE 00 80 */	addi r5, r30, 0x80
/* 80BC189C  4B FF AF FD */	bl __register_global_object
/* 80BC18A0  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC18A4  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 80BC18A8  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 80BC18AC  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80BC18B0  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80BC18B4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80BC18B8  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC18BC  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 80BC18C0  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80BC18C4  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80BC18C8  38 63 00 48 */	addi r3, r3, 0x48
/* 80BC18CC  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC18D0  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC18D4  38 BE 00 8C */	addi r5, r30, 0x8c
/* 80BC18D8  4B FF AF C1 */	bl __register_global_object
/* 80BC18DC  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC18E0  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 80BC18E4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BC18E8  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80BC18EC  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80BC18F0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80BC18F4  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC18F8  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 80BC18FC  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 80BC1900  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80BC1904  38 63 00 54 */	addi r3, r3, 0x54
/* 80BC1908  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC190C  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1910  38 BE 00 98 */	addi r5, r30, 0x98
/* 80BC1914  4B FF AF 85 */	bl __register_global_object
/* 80BC1918  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC191C  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80BC1920  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80BC1924  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 80BC1928  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80BC192C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80BC1930  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1934  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 80BC1938  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 80BC193C  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80BC1940  38 63 00 60 */	addi r3, r3, 0x60
/* 80BC1944  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1948  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC194C  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 80BC1950  4B FF AF 49 */	bl __register_global_object
/* 80BC1954  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1958  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 80BC195C  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80BC1960  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80BC1964  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 80BC1968  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80BC196C  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1970  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 80BC1974  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 80BC1978  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80BC197C  38 63 00 6C */	addi r3, r3, 0x6c
/* 80BC1980  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1984  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1988  38 BE 00 B0 */	addi r5, r30, 0xb0
/* 80BC198C  4B FF AF 0D */	bl __register_global_object
/* 80BC1990  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1994  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80BC1998  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 80BC199C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80BC19A0  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 80BC19A4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80BC19A8  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC19AC  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 80BC19B0  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 80BC19B4  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80BC19B8  38 63 00 78 */	addi r3, r3, 0x78
/* 80BC19BC  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC19C0  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC19C4  38 BE 00 BC */	addi r5, r30, 0xbc
/* 80BC19C8  4B FF AE D1 */	bl __register_global_object
/* 80BC19CC  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC19D0  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80BC19D4  C0 3F 01 F4 */	lfs f1, 0x1f4(r31)
/* 80BC19D8  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80BC19DC  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 80BC19E0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80BC19E4  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC19E8  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 80BC19EC  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 80BC19F0  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80BC19F4  38 63 00 84 */	addi r3, r3, 0x84
/* 80BC19F8  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC19FC  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1A00  38 BE 00 C8 */	addi r5, r30, 0xc8
/* 80BC1A04  4B FF AE 95 */	bl __register_global_object
/* 80BC1A08  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1A0C  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80BC1A10  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 80BC1A14  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80BC1A18  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 80BC1A1C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80BC1A20  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1A24  D0 43 00 90 */	stfs f2, 0x90(r3)
/* 80BC1A28  D0 23 00 94 */	stfs f1, 0x94(r3)
/* 80BC1A2C  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 80BC1A30  38 63 00 90 */	addi r3, r3, 0x90
/* 80BC1A34  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1A38  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1A3C  38 BE 00 D4 */	addi r5, r30, 0xd4
/* 80BC1A40  4B FF AE 59 */	bl __register_global_object
/* 80BC1A44  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1A48  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80BC1A4C  C0 3F 02 04 */	lfs f1, 0x204(r31)
/* 80BC1A50  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80BC1A54  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 80BC1A58  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BC1A5C  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1A60  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 80BC1A64  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 80BC1A68  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80BC1A6C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80BC1A70  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1A74  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1A78  38 BE 00 E0 */	addi r5, r30, 0xe0
/* 80BC1A7C  4B FF AE 1D */	bl __register_global_object
/* 80BC1A80  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1A84  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80BC1A88  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 80BC1A8C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80BC1A90  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80BC1A94  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BC1A98  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1A9C  D0 43 00 A8 */	stfs f2, 0xa8(r3)
/* 80BC1AA0  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 80BC1AA4  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80BC1AA8  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80BC1AAC  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1AB0  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1AB4  38 BE 00 EC */	addi r5, r30, 0xec
/* 80BC1AB8  4B FF AD E1 */	bl __register_global_object
/* 80BC1ABC  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1AC0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80BC1AC4  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 80BC1AC8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80BC1ACC  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 80BC1AD0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BC1AD4  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1AD8  D0 43 00 B4 */	stfs f2, 0xb4(r3)
/* 80BC1ADC  D0 23 00 B8 */	stfs f1, 0xb8(r3)
/* 80BC1AE0  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80BC1AE4  38 63 00 B4 */	addi r3, r3, 0xb4
/* 80BC1AE8  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1AEC  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1AF0  38 BE 00 F8 */	addi r5, r30, 0xf8
/* 80BC1AF4  4B FF AD A5 */	bl __register_global_object
/* 80BC1AF8  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1AFC  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80BC1B00  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80BC1B04  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80BC1B08  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 80BC1B0C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BC1B10  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1B14  D0 43 00 C0 */	stfs f2, 0xc0(r3)
/* 80BC1B18  D0 23 00 C4 */	stfs f1, 0xc4(r3)
/* 80BC1B1C  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 80BC1B20  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80BC1B24  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1B28  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1B2C  38 BE 01 04 */	addi r5, r30, 0x104
/* 80BC1B30  4B FF AD 69 */	bl __register_global_object
/* 80BC1B34  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1B38  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80BC1B3C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80BC1B40  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80BC1B44  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80BC1B48  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BC1B4C  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1B50  D0 43 00 CC */	stfs f2, 0xcc(r3)
/* 80BC1B54  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80BC1B58  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 80BC1B5C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80BC1B60  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1B64  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1B68  38 BE 01 10 */	addi r5, r30, 0x110
/* 80BC1B6C  4B FF AD 2D */	bl __register_global_object
/* 80BC1B70  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1B74  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80BC1B78  C0 3F 02 28 */	lfs f1, 0x228(r31)
/* 80BC1B7C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BC1B80  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 80BC1B84  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BC1B88  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1B8C  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 80BC1B90  D0 23 00 DC */	stfs f1, 0xdc(r3)
/* 80BC1B94  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 80BC1B98  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80BC1B9C  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1BA0  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1BA4  38 BE 01 1C */	addi r5, r30, 0x11c
/* 80BC1BA8  4B FF AC F1 */	bl __register_global_object
/* 80BC1BAC  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1BB0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80BC1BB4  C0 3F 02 30 */	lfs f1, 0x230(r31)
/* 80BC1BB8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80BC1BBC  C0 1F 02 34 */	lfs f0, 0x234(r31)
/* 80BC1BC0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BC1BC4  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1BC8  D0 43 00 E4 */	stfs f2, 0xe4(r3)
/* 80BC1BCC  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 80BC1BD0  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 80BC1BD4  38 63 00 E4 */	addi r3, r3, 0xe4
/* 80BC1BD8  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1BDC  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1BE0  38 BE 01 28 */	addi r5, r30, 0x128
/* 80BC1BE4  4B FF AC B5 */	bl __register_global_object
/* 80BC1BE8  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1BEC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BC1BF0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80BC1BF4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BC1BF8  C0 1F 02 38 */	lfs f0, 0x238(r31)
/* 80BC1BFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BC1C00  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1C04  D0 43 00 F0 */	stfs f2, 0xf0(r3)
/* 80BC1C08  D0 23 00 F4 */	stfs f1, 0xf4(r3)
/* 80BC1C0C  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 80BC1C10  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80BC1C14  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1C18  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1C1C  38 BE 01 34 */	addi r5, r30, 0x134
/* 80BC1C20  4B FF AC 79 */	bl __register_global_object
/* 80BC1C24  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 80BC1C28  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BC1C2C  C0 3F 02 3C */	lfs f1, 0x23c(r31)
/* 80BC1C30  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BC1C34  C0 1F 02 40 */	lfs f0, 0x240(r31)
/* 80BC1C38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BC1C3C  38 7E 01 4C */	addi r3, r30, 0x14c
/* 80BC1C40  D0 43 00 FC */	stfs f2, 0xfc(r3)
/* 80BC1C44  D0 23 01 00 */	stfs f1, 0x100(r3)
/* 80BC1C48  D0 03 01 04 */	stfs f0, 0x104(r3)
/* 80BC1C4C  38 63 00 FC */	addi r3, r3, 0xfc
/* 80BC1C50  3C 80 80 BC */	lis r4, __dt__4cXyzFv@ha
/* 80BC1C54  38 84 CC FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BC1C58  38 BE 01 40 */	addi r5, r30, 0x140
/* 80BC1C5C  4B FF AC 3D */	bl __register_global_object
/* 80BC1C60  38 00 00 01 */	li r0, 1
/* 80BC1C64  98 1E 00 4C */	stb r0, 0x4c(r30)
lbl_80BC1C68:
/* 80BC1C68  39 00 00 00 */	li r8, 0
/* 80BC1C6C  38 60 00 00 */	li r3, 0
/* 80BC1C70  38 80 00 00 */	li r4, 0
/* 80BC1C74  3C BD 00 01 */	addis r5, r29, 1
/* 80BC1C78  48 00 00 34 */	b lbl_80BC1CAC
lbl_80BC1C7C:
/* 80BC1C7C  38 DE 01 4C */	addi r6, r30, 0x14c
/* 80BC1C80  7C C6 22 14 */	add r6, r6, r4
/* 80BC1C84  C0 06 00 00 */	lfs f0, 0(r6)
/* 80BC1C88  7C FD 1A 14 */	add r7, r29, r3
/* 80BC1C8C  D0 07 06 20 */	stfs f0, 0x620(r7)
/* 80BC1C90  C0 06 00 04 */	lfs f0, 4(r6)
/* 80BC1C94  D0 07 06 24 */	stfs f0, 0x624(r7)
/* 80BC1C98  C0 06 00 08 */	lfs f0, 8(r6)
/* 80BC1C9C  D0 07 06 28 */	stfs f0, 0x628(r7)
/* 80BC1CA0  39 08 00 01 */	addi r8, r8, 1
/* 80BC1CA4  38 63 07 0C */	addi r3, r3, 0x70c
/* 80BC1CA8  38 84 00 0C */	addi r4, r4, 0xc
lbl_80BC1CAC:
/* 80BC1CAC  88 05 B1 EA */	lbz r0, -0x4e16(r5)
/* 80BC1CB0  7C 00 07 74 */	extsb r0, r0
/* 80BC1CB4  7C 08 00 00 */	cmpw r8, r0
/* 80BC1CB8  41 80 FF C4 */	blt lbl_80BC1C7C
lbl_80BC1CBC:
/* 80BC1CBC  3B C0 00 00 */	li r30, 0
/* 80BC1CC0  48 00 00 88 */	b lbl_80BC1D48
lbl_80BC1CC4:
/* 80BC1CC4  2C 1E 00 05 */	cmpwi r30, 5
/* 80BC1CC8  40 82 00 74 */	bne lbl_80BC1D3C
/* 80BC1CCC  7F 60 07 75 */	extsb. r0, r27
/* 80BC1CD0  41 82 00 6C */	beq lbl_80BC1D3C
/* 80BC1CD4  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC1CD8  88 03 B1 EC */	lbz r0, -0x4e14(r3)
/* 80BC1CDC  7C 00 07 75 */	extsb. r0, r0
/* 80BC1CE0  41 82 00 18 */	beq lbl_80BC1CF8
/* 80BC1CE4  38 00 00 05 */	li r0, 5
/* 80BC1CE8  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80BC1CEC  38 00 00 07 */	li r0, 7
/* 80BC1CF0  90 03 AE D0 */	stw r0, -0x5130(r3)
/* 80BC1CF4  48 00 00 48 */	b lbl_80BC1D3C
lbl_80BC1CF8:
/* 80BC1CF8  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BC1CFC  2C 00 00 01 */	cmpwi r0, 1
/* 80BC1D00  40 82 00 20 */	bne lbl_80BC1D20
/* 80BC1D04  38 00 00 05 */	li r0, 5
/* 80BC1D08  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80BC1D0C  38 00 00 0A */	li r0, 0xa
/* 80BC1D10  90 03 AE D0 */	stw r0, -0x5130(r3)
/* 80BC1D14  38 00 00 04 */	li r0, 4
/* 80BC1D18  98 03 B1 E8 */	stb r0, -0x4e18(r3)
/* 80BC1D1C  48 00 00 20 */	b lbl_80BC1D3C
lbl_80BC1D20:
/* 80BC1D20  38 00 00 05 */	li r0, 5
/* 80BC1D24  B0 03 AF 1C */	sth r0, -0x50e4(r3)
/* 80BC1D28  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC1D2C  7C 00 07 74 */	extsb r0, r0
/* 80BC1D30  7C 00 0E 70 */	srawi r0, r0, 1
/* 80BC1D34  7C 00 01 94 */	addze r0, r0
/* 80BC1D38  90 03 AE D0 */	stw r0, -0x5130(r3)
lbl_80BC1D3C:
/* 80BC1D3C  7F A3 EB 78 */	mr r3, r29
/* 80BC1D40  4B FF D4 DD */	bl daObj_Brg_Execute__FP13obj_brg_class
/* 80BC1D44  3B DE 00 01 */	addi r30, r30, 1
lbl_80BC1D48:
/* 80BC1D48  7C 1E E0 00 */	cmpw r30, r28
/* 80BC1D4C  41 80 FF 78 */	blt lbl_80BC1CC4
lbl_80BC1D50:
/* 80BC1D50  7F 43 D3 78 */	mr r3, r26
lbl_80BC1D54:
/* 80BC1D54  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80BC1D58  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80BC1D5C  39 61 01 60 */	addi r11, r1, 0x160
/* 80BC1D60  4B 7A 04 B4 */	b _restgpr_24
/* 80BC1D64  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80BC1D68  7C 08 03 A6 */	mtlr r0
/* 80BC1D6C  38 21 01 70 */	addi r1, r1, 0x170
/* 80BC1D70  4E 80 00 20 */	blr 
