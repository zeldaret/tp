lbl_809B11E0:
/* 809B11E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B11E4  7C 08 02 A6 */	mflr r0
/* 809B11E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B11EC  39 61 00 30 */	addi r11, r1, 0x30
/* 809B11F0  4B 9B 0F E8 */	b _savegpr_28
/* 809B11F4  7C 7F 1B 78 */	mr r31, r3
/* 809B11F8  38 60 00 54 */	li r3, 0x54
/* 809B11FC  4B 91 DA 50 */	b __nw__FUl
/* 809B1200  7C 7E 1B 79 */	or. r30, r3, r3
/* 809B1204  41 82 00 A4 */	beq lbl_809B12A8
/* 809B1208  3C 60 80 9B */	lis r3, stringBase0@ha
/* 809B120C  38 63 18 DC */	addi r3, r3, stringBase0@l
/* 809B1210  38 63 00 07 */	addi r3, r3, 7
/* 809B1214  38 80 00 06 */	li r4, 6
/* 809B1218  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809B121C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809B1220  3F 85 00 02 */	addis r28, r5, 2
/* 809B1224  3B 9C C2 F8 */	addi r28, r28, -15624
/* 809B1228  7F 85 E3 78 */	mr r5, r28
/* 809B122C  38 C0 00 80 */	li r6, 0x80
/* 809B1230  4B 68 B0 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B1234  7C 7D 1B 78 */	mr r29, r3
/* 809B1238  3C 60 80 9B */	lis r3, stringBase0@ha
/* 809B123C  38 63 18 DC */	addi r3, r3, stringBase0@l
/* 809B1240  38 63 00 07 */	addi r3, r3, 7
/* 809B1244  38 80 00 0A */	li r4, 0xa
/* 809B1248  7F 85 E3 78 */	mr r5, r28
/* 809B124C  38 C0 00 80 */	li r6, 0x80
/* 809B1250  4B 68 B0 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B1254  7C 64 1B 78 */	mr r4, r3
/* 809B1258  38 00 00 01 */	li r0, 1
/* 809B125C  90 01 00 08 */	stw r0, 8(r1)
/* 809B1260  38 00 00 00 */	li r0, 0
/* 809B1264  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B1268  3C 00 00 08 */	lis r0, 8
/* 809B126C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B1270  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 809B1274  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 809B1278  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B127C  7F C3 F3 78 */	mr r3, r30
/* 809B1280  38 A0 00 00 */	li r5, 0
/* 809B1284  38 C0 00 00 */	li r6, 0
/* 809B1288  7F A7 EB 78 */	mr r7, r29
/* 809B128C  39 00 00 00 */	li r8, 0
/* 809B1290  3D 20 80 9B */	lis r9, lit_3762@ha
/* 809B1294  C0 29 18 48 */	lfs f1, lit_3762@l(r9)
/* 809B1298  39 20 00 00 */	li r9, 0
/* 809B129C  39 40 FF FF */	li r10, -1
/* 809B12A0  4B 65 E9 AC */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 809B12A4  7C 7E 1B 78 */	mr r30, r3
lbl_809B12A8:
/* 809B12A8  93 DF 05 C0 */	stw r30, 0x5c0(r31)
/* 809B12AC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 809B12B0  28 03 00 00 */	cmplwi r3, 0
/* 809B12B4  41 82 00 10 */	beq lbl_809B12C4
/* 809B12B8  80 A3 00 04 */	lwz r5, 4(r3)
/* 809B12BC  28 05 00 00 */	cmplwi r5, 0
/* 809B12C0  40 82 00 0C */	bne lbl_809B12CC
lbl_809B12C4:
/* 809B12C4  38 60 00 00 */	li r3, 0
/* 809B12C8  48 00 00 E8 */	b lbl_809B13B0
lbl_809B12CC:
/* 809B12CC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809B12D0  38 E0 00 00 */	li r7, 0
/* 809B12D4  3C 60 80 9B */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 809B12D8  38 83 FE 20 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 809B12DC  48 00 00 18 */	b lbl_809B12F4
lbl_809B12E0:
/* 809B12E0  80 66 00 28 */	lwz r3, 0x28(r6)
/* 809B12E4  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 809B12E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 809B12EC  90 83 00 04 */	stw r4, 4(r3)
/* 809B12F0  38 E7 00 01 */	addi r7, r7, 1
lbl_809B12F4:
/* 809B12F4  80 C5 00 04 */	lwz r6, 4(r5)
/* 809B12F8  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 809B12FC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 809B1300  7C 00 18 40 */	cmplw r0, r3
/* 809B1304  41 80 FF DC */	blt lbl_809B12E0
/* 809B1308  38 60 00 18 */	li r3, 0x18
/* 809B130C  4B 91 D9 40 */	b __nw__FUl
/* 809B1310  7C 7E 1B 79 */	or. r30, r3, r3
/* 809B1314  41 82 00 20 */	beq lbl_809B1334
/* 809B1318  3C 80 80 9B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 809B131C  38 04 19 C8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 809B1320  90 1E 00 00 */	stw r0, 0(r30)
/* 809B1324  38 80 00 00 */	li r4, 0
/* 809B1328  4B 97 70 D4 */	b init__12J3DFrameCtrlFs
/* 809B132C  38 00 00 00 */	li r0, 0
/* 809B1330  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_809B1334:
/* 809B1334  93 DF 05 C4 */	stw r30, 0x5c4(r31)
/* 809B1338  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 809B133C  28 00 00 00 */	cmplwi r0, 0
/* 809B1340  40 82 00 0C */	bne lbl_809B134C
/* 809B1344  38 60 00 00 */	li r3, 0
/* 809B1348  48 00 00 68 */	b lbl_809B13B0
lbl_809B134C:
/* 809B134C  3C 60 80 9B */	lis r3, stringBase0@ha
/* 809B1350  38 63 18 DC */	addi r3, r3, stringBase0@l
/* 809B1354  38 63 00 07 */	addi r3, r3, 7
/* 809B1358  38 80 00 0D */	li r4, 0xd
/* 809B135C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809B1360  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809B1364  3C A5 00 02 */	addis r5, r5, 2
/* 809B1368  38 C0 00 80 */	li r6, 0x80
/* 809B136C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809B1370  4B 68 AF 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B1374  7C 65 1B 78 */	mr r5, r3
/* 809B1378  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 809B137C  80 63 00 04 */	lwz r3, 4(r3)
/* 809B1380  80 83 00 04 */	lwz r4, 4(r3)
/* 809B1384  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 809B1388  38 84 00 58 */	addi r4, r4, 0x58
/* 809B138C  38 C0 00 01 */	li r6, 1
/* 809B1390  38 E0 00 00 */	li r7, 0
/* 809B1394  3D 00 80 9B */	lis r8, lit_3762@ha
/* 809B1398  C0 28 18 48 */	lfs f1, lit_3762@l(r8)
/* 809B139C  39 00 00 00 */	li r8, 0
/* 809B13A0  39 20 FF FF */	li r9, -1
/* 809B13A4  4B 65 C1 A8 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 809B13A8  30 03 FF FF */	addic r0, r3, -1
/* 809B13AC  7C 60 19 10 */	subfe r3, r0, r3
lbl_809B13B0:
/* 809B13B0  39 61 00 30 */	addi r11, r1, 0x30
/* 809B13B4  4B 9B 0E 70 */	b _restgpr_28
/* 809B13B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B13BC  7C 08 03 A6 */	mtlr r0
/* 809B13C0  38 21 00 30 */	addi r1, r1, 0x30
/* 809B13C4  4E 80 00 20 */	blr 
