lbl_807E108C:
/* 807E108C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807E1090  7C 08 02 A6 */	mflr r0
/* 807E1094  90 01 00 54 */	stw r0, 0x54(r1)
/* 807E1098  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807E109C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807E10A0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 807E10A4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 807E10A8  39 61 00 30 */	addi r11, r1, 0x30
/* 807E10AC  4B B8 11 29 */	bl _savegpr_27
/* 807E10B0  7C 7F 1B 78 */	mr r31, r3
/* 807E10B4  3C 60 80 7E */	lis r3, lit_3882@ha /* 0x807E298C@ha */
/* 807E10B8  3B C3 29 8C */	addi r30, r3, lit_3882@l /* 0x807E298C@l */
/* 807E10BC  38 60 00 58 */	li r3, 0x58
/* 807E10C0  4B AE DB 8D */	bl __nw__FUl
/* 807E10C4  7C 7B 1B 79 */	or. r27, r3, r3
/* 807E10C8  41 82 00 88 */	beq lbl_807E1150
/* 807E10CC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807E10D0  38 80 00 28 */	li r4, 0x28
/* 807E10D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E10D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E10DC  3F A5 00 02 */	addis r29, r5, 2
/* 807E10E0  3B BD C2 F8 */	addi r29, r29, -15624
/* 807E10E4  7F A5 EB 78 */	mr r5, r29
/* 807E10E8  38 C0 00 80 */	li r6, 0x80
/* 807E10EC  4B 85 B2 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E10F0  7C 7C 1B 78 */	mr r28, r3
/* 807E10F4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807E10F8  38 80 00 2E */	li r4, 0x2e
/* 807E10FC  7F A5 EB 78 */	mr r5, r29
/* 807E1100  38 C0 00 80 */	li r6, 0x80
/* 807E1104  4B 85 B1 E9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E1108  7C 64 1B 78 */	mr r4, r3
/* 807E110C  38 1F 05 EC */	addi r0, r31, 0x5ec
/* 807E1110  90 01 00 08 */	stw r0, 8(r1)
/* 807E1114  3C 00 00 08 */	lis r0, 8
/* 807E1118  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E111C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807E1120  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807E1124  90 01 00 10 */	stw r0, 0x10(r1)
/* 807E1128  7F 63 DB 78 */	mr r3, r27
/* 807E112C  38 A0 00 00 */	li r5, 0
/* 807E1130  38 C0 00 00 */	li r6, 0
/* 807E1134  7F 87 E3 78 */	mr r7, r28
/* 807E1138  39 00 00 00 */	li r8, 0
/* 807E113C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807E1140  39 20 00 00 */	li r9, 0
/* 807E1144  39 40 FF FF */	li r10, -1
/* 807E1148  4B 82 F6 89 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807E114C  7C 7B 1B 78 */	mr r27, r3
lbl_807E1150:
/* 807E1150  93 7F 05 E0 */	stw r27, 0x5e0(r31)
/* 807E1154  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807E1158  28 03 00 00 */	cmplwi r3, 0
/* 807E115C  41 82 00 10 */	beq lbl_807E116C
/* 807E1160  80 A3 00 04 */	lwz r5, 4(r3)
/* 807E1164  28 05 00 00 */	cmplwi r5, 0
/* 807E1168  40 82 00 0C */	bne lbl_807E1174
lbl_807E116C:
/* 807E116C  38 60 00 00 */	li r3, 0
/* 807E1170  48 00 02 10 */	b lbl_807E1380
lbl_807E1174:
/* 807E1174  93 E5 00 14 */	stw r31, 0x14(r5)
/* 807E1178  38 E0 00 00 */	li r7, 0
/* 807E117C  3C 60 80 7D */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x807D2610@ha */
/* 807E1180  38 83 26 10 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x807D2610@l */
/* 807E1184  48 00 00 18 */	b lbl_807E119C
lbl_807E1188:
/* 807E1188  80 66 00 28 */	lwz r3, 0x28(r6)
/* 807E118C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 807E1190  7C 63 00 2E */	lwzx r3, r3, r0
/* 807E1194  90 83 00 04 */	stw r4, 4(r3)
/* 807E1198  38 E7 00 01 */	addi r7, r7, 1
lbl_807E119C:
/* 807E119C  80 C5 00 04 */	lwz r6, 4(r5)
/* 807E11A0  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 807E11A4  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807E11A8  7C 00 18 40 */	cmplw r0, r3
/* 807E11AC  41 80 FF DC */	blt lbl_807E1188
/* 807E11B0  3B 80 00 00 */	li r28, 0
/* 807E11B4  3B 60 00 00 */	li r27, 0
/* 807E11B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E11BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E11C0  3F A3 00 02 */	addis r29, r3, 2
/* 807E11C4  3B BD C2 F8 */	addi r29, r29, -15624
/* 807E11C8  C3 DE 00 F8 */	lfs f30, 0xf8(r30)
/* 807E11CC  C3 FE 00 D8 */	lfs f31, 0xd8(r30)
lbl_807E11D0:
/* 807E11D0  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E11D4  7C 00 07 75 */	extsb. r0, r0
/* 807E11D8  41 82 00 4C */	beq lbl_807E1224
/* 807E11DC  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807E11E0  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807E11E4  38 63 00 38 */	addi r3, r3, 0x38
/* 807E11E8  38 80 00 54 */	li r4, 0x54
/* 807E11EC  7F A5 EB 78 */	mr r5, r29
/* 807E11F0  38 C0 00 80 */	li r6, 0x80
/* 807E11F4  4B 85 B0 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E11F8  7C 66 1B 78 */	mr r6, r3
/* 807E11FC  38 7B 15 D0 */	addi r3, r27, 0x15d0
/* 807E1200  7C 7F 1A 14 */	add r3, r31, r3
/* 807E1204  38 80 00 01 */	li r4, 1
/* 807E1208  38 A0 00 10 */	li r5, 0x10
/* 807E120C  38 E0 00 01 */	li r7, 1
/* 807E1210  4B 83 21 51 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 807E1214  2C 03 00 00 */	cmpwi r3, 0
/* 807E1218  40 82 00 54 */	bne lbl_807E126C
/* 807E121C  38 60 00 00 */	li r3, 0
/* 807E1220  48 00 01 60 */	b lbl_807E1380
lbl_807E1224:
/* 807E1224  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807E1228  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807E122C  38 63 00 38 */	addi r3, r3, 0x38
/* 807E1230  38 80 00 54 */	li r4, 0x54
/* 807E1234  7F A5 EB 78 */	mr r5, r29
/* 807E1238  38 C0 00 80 */	li r6, 0x80
/* 807E123C  4B 85 B0 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E1240  7C 66 1B 78 */	mr r6, r3
/* 807E1244  38 7B 15 D0 */	addi r3, r27, 0x15d0
/* 807E1248  7C 7F 1A 14 */	add r3, r31, r3
/* 807E124C  38 80 00 01 */	li r4, 1
/* 807E1250  38 A0 00 10 */	li r5, 0x10
/* 807E1254  38 E0 00 01 */	li r7, 1
/* 807E1258  4B 83 21 09 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 807E125C  2C 03 00 00 */	cmpwi r3, 0
/* 807E1260  40 82 00 0C */	bne lbl_807E126C
/* 807E1264  38 60 00 00 */	li r3, 0
/* 807E1268  48 00 01 18 */	b lbl_807E1380
lbl_807E126C:
/* 807E126C  38 1B 16 08 */	addi r0, r27, 0x1608
/* 807E1270  7C 7F 00 2E */	lwzx r3, r31, r0
/* 807E1274  80 63 00 04 */	lwz r3, 4(r3)
/* 807E1278  38 00 00 10 */	li r0, 0x10
/* 807E127C  7C 09 03 A6 */	mtctr r0
lbl_807E1280:
/* 807E1280  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E1284  7C 00 07 75 */	extsb. r0, r0
/* 807E1288  41 82 00 0C */	beq lbl_807E1294
/* 807E128C  D3 C3 00 00 */	stfs f30, 0(r3)
/* 807E1290  48 00 00 08 */	b lbl_807E1298
lbl_807E1294:
/* 807E1294  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_807E1298:
/* 807E1298  38 63 00 04 */	addi r3, r3, 4
/* 807E129C  42 00 FF E4 */	bdnz lbl_807E1280
/* 807E12A0  3B 9C 00 01 */	addi r28, r28, 1
/* 807E12A4  2C 1C 00 02 */	cmpwi r28, 2
/* 807E12A8  3B 7B 00 3C */	addi r27, r27, 0x3c
/* 807E12AC  41 80 FF 24 */	blt lbl_807E11D0
/* 807E12B0  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E12B4  7C 00 07 75 */	extsb. r0, r0
/* 807E12B8  41 82 00 48 */	beq lbl_807E1300
/* 807E12BC  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807E12C0  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807E12C4  38 63 00 38 */	addi r3, r3, 0x38
/* 807E12C8  38 80 00 54 */	li r4, 0x54
/* 807E12CC  7F A5 EB 78 */	mr r5, r29
/* 807E12D0  38 C0 00 80 */	li r6, 0x80
/* 807E12D4  4B 85 B0 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E12D8  7C 66 1B 78 */	mr r6, r3
/* 807E12DC  38 7F 16 48 */	addi r3, r31, 0x1648
/* 807E12E0  38 80 00 01 */	li r4, 1
/* 807E12E4  38 A0 00 02 */	li r5, 2
/* 807E12E8  38 E0 00 01 */	li r7, 1
/* 807E12EC  4B 83 20 75 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 807E12F0  2C 03 00 00 */	cmpwi r3, 0
/* 807E12F4  40 82 00 50 */	bne lbl_807E1344
/* 807E12F8  38 60 00 00 */	li r3, 0
/* 807E12FC  48 00 00 84 */	b lbl_807E1380
lbl_807E1300:
/* 807E1300  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807E1304  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807E1308  38 63 00 38 */	addi r3, r3, 0x38
/* 807E130C  38 80 00 54 */	li r4, 0x54
/* 807E1310  7F A5 EB 78 */	mr r5, r29
/* 807E1314  38 C0 00 80 */	li r6, 0x80
/* 807E1318  4B 85 AF D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E131C  7C 66 1B 78 */	mr r6, r3
/* 807E1320  38 7F 16 48 */	addi r3, r31, 0x1648
/* 807E1324  38 80 00 01 */	li r4, 1
/* 807E1328  38 A0 00 02 */	li r5, 2
/* 807E132C  38 E0 00 01 */	li r7, 1
/* 807E1330  4B 83 20 31 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 807E1334  2C 03 00 00 */	cmpwi r3, 0
/* 807E1338  40 82 00 0C */	bne lbl_807E1344
/* 807E133C  38 60 00 00 */	li r3, 0
/* 807E1340  48 00 00 40 */	b lbl_807E1380
lbl_807E1344:
/* 807E1344  80 7F 16 80 */	lwz r3, 0x1680(r31)
/* 807E1348  80 63 00 04 */	lwz r3, 4(r3)
/* 807E134C  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807E1350  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 807E1354  38 00 00 02 */	li r0, 2
/* 807E1358  7C 09 03 A6 */	mtctr r0
lbl_807E135C:
/* 807E135C  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E1360  7C 00 07 75 */	extsb. r0, r0
/* 807E1364  41 82 00 0C */	beq lbl_807E1370
/* 807E1368  D0 23 00 00 */	stfs f1, 0(r3)
/* 807E136C  48 00 00 08 */	b lbl_807E1374
lbl_807E1370:
/* 807E1370  D0 03 00 00 */	stfs f0, 0(r3)
lbl_807E1374:
/* 807E1374  38 63 00 04 */	addi r3, r3, 4
/* 807E1378  42 00 FF E4 */	bdnz lbl_807E135C
/* 807E137C  38 60 00 01 */	li r3, 1
lbl_807E1380:
/* 807E1380  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807E1384  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807E1388  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 807E138C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 807E1390  39 61 00 30 */	addi r11, r1, 0x30
/* 807E1394  4B B8 0E 8D */	bl _restgpr_27
/* 807E1398  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807E139C  7C 08 03 A6 */	mtlr r0
/* 807E13A0  38 21 00 50 */	addi r1, r1, 0x50
/* 807E13A4  4E 80 00 20 */	blr 
