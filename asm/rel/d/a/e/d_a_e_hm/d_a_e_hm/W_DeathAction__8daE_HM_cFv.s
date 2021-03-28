lbl_806E1118:
/* 806E1118  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E111C  7C 08 02 A6 */	mflr r0
/* 806E1120  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E1124  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806E1128  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806E112C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806E1130  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806E1134  7C 7E 1B 78 */	mr r30, r3
/* 806E1138  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E113C  3B E3 59 20 */	addi r31, r3, lit_3791@l
/* 806E1140  88 7E 05 DA */	lbz r3, 0x5da(r30)
/* 806E1144  38 03 00 01 */	addi r0, r3, 1
/* 806E1148  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E114C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E1150  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E1154  3C 00 43 30 */	lis r0, 0x4330
/* 806E1158  90 01 00 08 */	stw r0, 8(r1)
/* 806E115C  C8 01 00 08 */	lfd f0, 8(r1)
/* 806E1160  EC 20 08 28 */	fsubs f1, f0, f1
/* 806E1164  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 806E1168  38 80 00 00 */	li r4, 0
/* 806E116C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 806E1170  EF E0 00 72 */	fmuls f31, f0, f1
/* 806E1174  FC 00 F8 1E */	fctiwz f0, f31
/* 806E1178  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806E117C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 806E1180  4B B8 FA 10 */	b cLib_chaseAngleS__FPsss
/* 806E1184  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806E1188  38 80 00 00 */	li r4, 0
/* 806E118C  FC 00 F8 1E */	fctiwz f0, f31
/* 806E1190  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806E1194  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 806E1198  4B B8 F9 F8 */	b cLib_chaseAngleS__FPsss
/* 806E119C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806E11A0  38 80 00 00 */	li r4, 0
/* 806E11A4  38 A0 03 00 */	li r5, 0x300
/* 806E11A8  4B B8 F9 E8 */	b cLib_chaseAngleS__FPsss
/* 806E11AC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 806E11B0  38 80 00 00 */	li r4, 0
/* 806E11B4  38 A0 03 00 */	li r5, 0x300
/* 806E11B8  4B B8 F9 D8 */	b cLib_chaseAngleS__FPsss
/* 806E11BC  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E11C0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E11C4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 806E11C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E11CC  40 81 00 44 */	ble lbl_806E1210
/* 806E11D0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 806E11D4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 806E11D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806E11DC  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 806E11E0  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 806E11E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806E11E8  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 806E11EC  C0 1E 05 F0 */	lfs f0, 0x5f0(r30)
/* 806E11F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806E11F4  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 806E11F8  38 00 00 01 */	li r0, 1
/* 806E11FC  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 806E1200  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 806E1204  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E1208  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 806E120C  4B B8 F5 34 */	b cLib_chaseF__FPfff
lbl_806E1210:
/* 806E1210  88 1E 05 DA */	lbz r0, 0x5da(r30)
/* 806E1214  28 00 00 01 */	cmplwi r0, 1
/* 806E1218  40 81 00 64 */	ble lbl_806E127C
/* 806E121C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E1220  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 806E1224  D0 3E 05 E0 */	stfs f1, 0x5e0(r30)
/* 806E1228  D0 3E 05 E4 */	stfs f1, 0x5e4(r30)
/* 806E122C  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E1230  38 80 00 01 */	li r4, 1
/* 806E1234  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E1238  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E123C  40 82 00 14 */	bne lbl_806E1250
/* 806E1240  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E1244  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E1248  41 82 00 08 */	beq lbl_806E1250
/* 806E124C  38 80 00 00 */	li r4, 0
lbl_806E1250:
/* 806E1250  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E1254  41 82 00 80 */	beq lbl_806E12D4
/* 806E1258  7F C3 F3 78 */	mr r3, r30
/* 806E125C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806E1260  38 A0 00 0A */	li r5, 0xa
/* 806E1264  38 C0 00 00 */	li r6, 0
/* 806E1268  38 E0 00 23 */	li r7, 0x23
/* 806E126C  4B 93 B8 6C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806E1270  7F C3 F3 78 */	mr r3, r30
/* 806E1274  4B 93 8A 08 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806E1278  48 00 00 5C */	b lbl_806E12D4
lbl_806E127C:
/* 806E127C  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 806E1280  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 806E1284  EC 01 00 2A */	fadds f0, f1, f0
/* 806E1288  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 806E128C  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 806E1290  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806E1294  41 82 00 30 */	beq lbl_806E12C4
/* 806E1298  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 806E129C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E12A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E12A4  40 80 00 10 */	bge lbl_806E12B4
/* 806E12A8  88 7E 05 DA */	lbz r3, 0x5da(r30)
/* 806E12AC  38 03 00 01 */	addi r0, r3, 1
/* 806E12B0  98 1E 05 DA */	stb r0, 0x5da(r30)
lbl_806E12B4:
/* 806E12B4  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 806E12B8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806E12BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 806E12C0  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
lbl_806E12C4:
/* 806E12C4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806E12C8  38 9E 05 DC */	addi r4, r30, 0x5dc
/* 806E12CC  7C 65 1B 78 */	mr r5, r3
/* 806E12D0  4B C6 5D C0 */	b PSVECAdd
lbl_806E12D4:
/* 806E12D4  88 1E 05 DA */	lbz r0, 0x5da(r30)
/* 806E12D8  28 00 00 01 */	cmplwi r0, 1
/* 806E12DC  40 82 00 74 */	bne lbl_806E1350
/* 806E12E0  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E12E4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E12E8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 806E12EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E12F0  40 81 00 08 */	ble lbl_806E12F8
/* 806E12F4  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_806E12F8:
/* 806E12F8  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 806E12FC  2C 00 00 08 */	cmpwi r0, 8
/* 806E1300  41 82 00 50 */	beq lbl_806E1350
/* 806E1304  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806E1308  38 63 5A 74 */	addi r3, r3, stringBase0@l
/* 806E130C  38 80 00 08 */	li r4, 8
/* 806E1310  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806E1314  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806E1318  3C A5 00 02 */	addis r5, r5, 2
/* 806E131C  38 C0 00 80 */	li r6, 0x80
/* 806E1320  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806E1324  4B 95 AF C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E1328  7C 64 1B 78 */	mr r4, r3
/* 806E132C  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E1330  38 A0 00 00 */	li r5, 0
/* 806E1334  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806E1338  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E133C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806E1340  C0 9F 00 B0 */	lfs f4, 0xb0(r31)
/* 806E1344  4B 92 FB 2C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806E1348  38 00 00 08 */	li r0, 8
/* 806E134C  90 1E 06 1C */	stw r0, 0x61c(r30)
lbl_806E1350:
/* 806E1350  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806E1354  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806E1358  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806E135C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806E1360  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E1364  7C 08 03 A6 */	mtlr r0
/* 806E1368  38 21 00 40 */	addi r1, r1, 0x40
/* 806E136C  4E 80 00 20 */	blr 
