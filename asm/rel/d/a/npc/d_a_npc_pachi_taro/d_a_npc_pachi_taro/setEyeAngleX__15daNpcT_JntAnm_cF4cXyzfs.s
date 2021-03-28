lbl_80AA105C:
/* 80AA105C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AA1060  7C 08 02 A6 */	mflr r0
/* 80AA1064  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AA1068  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AA106C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AA1070  39 61 00 60 */	addi r11, r1, 0x60
/* 80AA1074  4B 8C 11 68 */	b _savegpr_29
/* 80AA1078  7C 7F 1B 78 */	mr r31, r3
/* 80AA107C  7C 80 23 78 */	mr r0, r4
/* 80AA1080  FF E0 08 90 */	fmr f31, f1
/* 80AA1084  7C BD 2B 78 */	mr r29, r5
/* 80AA1088  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Taro_Param_c@ha
/* 80AA108C  3B C3 16 04 */	addi r30, r3, m__24daNpc_Pachi_Taro_Param_c@l
/* 80AA1090  38 A0 00 00 */	li r5, 0
/* 80AA1094  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AA1098  28 04 00 00 */	cmplwi r4, 0
/* 80AA109C  41 82 01 40 */	beq lbl_80AA11DC
/* 80AA10A0  38 61 00 18 */	addi r3, r1, 0x18
/* 80AA10A4  7C 05 03 78 */	mr r5, r0
/* 80AA10A8  4B 7C 5A 8C */	b __mi__4cXyzCFRC3Vec
/* 80AA10AC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AA10B0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AA10B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AA10B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AA10BC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AA10C0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AA10C4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AA10C8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80AA10CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AA10D0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AA10D4  38 61 00 0C */	addi r3, r1, 0xc
/* 80AA10D8  4B 8A 60 60 */	b PSVECSquareMag
/* 80AA10DC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80AA10E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA10E4  40 81 00 58 */	ble lbl_80AA113C
/* 80AA10E8  FC 00 08 34 */	frsqrte f0, f1
/* 80AA10EC  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 80AA10F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA10F4  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80AA10F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA10FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA1100  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA1104  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA1108  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA110C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA1110  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA1114  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA1118  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA111C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA1120  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA1124  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA1128  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA112C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA1130  FC 41 00 32 */	fmul f2, f1, f0
/* 80AA1134  FC 40 10 18 */	frsp f2, f2
/* 80AA1138  48 00 00 90 */	b lbl_80AA11C8
lbl_80AA113C:
/* 80AA113C  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 80AA1140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA1144  40 80 00 10 */	bge lbl_80AA1154
/* 80AA1148  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AA114C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AA1150  48 00 00 78 */	b lbl_80AA11C8
lbl_80AA1154:
/* 80AA1154  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AA1158  80 81 00 08 */	lwz r4, 8(r1)
/* 80AA115C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AA1160  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AA1164  7C 03 00 00 */	cmpw r3, r0
/* 80AA1168  41 82 00 14 */	beq lbl_80AA117C
/* 80AA116C  40 80 00 40 */	bge lbl_80AA11AC
/* 80AA1170  2C 03 00 00 */	cmpwi r3, 0
/* 80AA1174  41 82 00 20 */	beq lbl_80AA1194
/* 80AA1178  48 00 00 34 */	b lbl_80AA11AC
lbl_80AA117C:
/* 80AA117C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AA1180  41 82 00 0C */	beq lbl_80AA118C
/* 80AA1184  38 00 00 01 */	li r0, 1
/* 80AA1188  48 00 00 28 */	b lbl_80AA11B0
lbl_80AA118C:
/* 80AA118C  38 00 00 02 */	li r0, 2
/* 80AA1190  48 00 00 20 */	b lbl_80AA11B0
lbl_80AA1194:
/* 80AA1194  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AA1198  41 82 00 0C */	beq lbl_80AA11A4
/* 80AA119C  38 00 00 05 */	li r0, 5
/* 80AA11A0  48 00 00 10 */	b lbl_80AA11B0
lbl_80AA11A4:
/* 80AA11A4  38 00 00 03 */	li r0, 3
/* 80AA11A8  48 00 00 08 */	b lbl_80AA11B0
lbl_80AA11AC:
/* 80AA11AC  38 00 00 04 */	li r0, 4
lbl_80AA11B0:
/* 80AA11B0  2C 00 00 01 */	cmpwi r0, 1
/* 80AA11B4  40 82 00 10 */	bne lbl_80AA11C4
/* 80AA11B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AA11BC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AA11C0  48 00 00 08 */	b lbl_80AA11C8
lbl_80AA11C4:
/* 80AA11C4  FC 40 08 90 */	fmr f2, f1
lbl_80AA11C8:
/* 80AA11C8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AA11CC  4B 7C 64 A8 */	b cM_atan2s__Fff
/* 80AA11D0  7C 03 00 D0 */	neg r0, r3
/* 80AA11D4  7C 05 07 34 */	extsh r5, r0
/* 80AA11D8  7C A5 EA 14 */	add r5, r5, r29
lbl_80AA11DC:
/* 80AA11DC  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AA11E0  7C A5 02 14 */	add r5, r5, r0
/* 80AA11E4  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80AA11E8  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AA11EC  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AA11F0  C8 5E 00 C8 */	lfd f2, 0xc8(r30)
/* 80AA11F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AA11F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AA11FC  3C 60 43 30 */	lis r3, 0x4330
/* 80AA1200  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AA1204  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AA1208  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AA120C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AA1210  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AA1214  7C A0 07 34 */	extsh r0, r5
/* 80AA1218  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AA121C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AA1220  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AA1224  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AA1228  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AA122C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AA1230  EC 01 00 2A */	fadds f0, f1, f0
/* 80AA1234  FC 00 00 1E */	fctiwz f0, f0
/* 80AA1238  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AA123C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AA1240  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AA1244  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AA1248  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AA124C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AA1250  4B 8C 0F D8 */	b _restgpr_29
/* 80AA1254  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AA1258  7C 08 03 A6 */	mtlr r0
/* 80AA125C  38 21 00 70 */	addi r1, r1, 0x70
/* 80AA1260  4E 80 00 20 */	blr 
