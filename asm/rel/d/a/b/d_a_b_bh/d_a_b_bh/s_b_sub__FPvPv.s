lbl_805B10AC:
/* 805B10AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B10B0  7C 08 02 A6 */	mflr r0
/* 805B10B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B10B8  39 61 00 40 */	addi r11, r1, 0x40
/* 805B10BC  4B DB 11 20 */	b _savegpr_29
/* 805B10C0  7C 7F 1B 78 */	mr r31, r3
/* 805B10C4  7C 9D 23 78 */	mr r29, r4
/* 805B10C8  3C 80 80 5B */	lis r4, lit_3764@ha
/* 805B10CC  3B C4 31 40 */	addi r30, r4, lit_3764@l
/* 805B10D0  4B A6 7C 10 */	b fopAc_IsActor__FPv
/* 805B10D4  2C 03 00 00 */	cmpwi r3, 0
/* 805B10D8  41 82 01 60 */	beq lbl_805B1238
/* 805B10DC  A8 1F 00 08 */	lha r0, 8(r31)
/* 805B10E0  2C 00 02 21 */	cmpwi r0, 0x221
/* 805B10E4  40 82 01 54 */	bne lbl_805B1238
/* 805B10E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805B10EC  28 00 00 00 */	cmplwi r0, 0
/* 805B10F0  41 82 01 48 */	beq lbl_805B1238
/* 805B10F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B10F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B10FC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805B1100  28 00 00 00 */	cmplwi r0, 0
/* 805B1104  40 82 01 34 */	bne lbl_805B1238
/* 805B1108  38 61 00 0C */	addi r3, r1, 0xc
/* 805B110C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805B1110  38 BD 05 38 */	addi r5, r29, 0x538
/* 805B1114  4B CB 5A 20 */	b __mi__4cXyzCFRC3Vec
/* 805B1118  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805B111C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805B1120  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805B1124  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B1128  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805B112C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805B1130  38 61 00 18 */	addi r3, r1, 0x18
/* 805B1134  4B D9 60 04 */	b PSVECSquareMag
/* 805B1138  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B113C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1140  40 81 00 58 */	ble lbl_805B1198
/* 805B1144  FC 00 08 34 */	frsqrte f0, f1
/* 805B1148  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 805B114C  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1150  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 805B1154  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1158  FC 01 00 32 */	fmul f0, f1, f0
/* 805B115C  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1160  FC 02 00 32 */	fmul f0, f2, f0
/* 805B1164  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1168  FC 00 00 32 */	fmul f0, f0, f0
/* 805B116C  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1170  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1174  FC 02 00 32 */	fmul f0, f2, f0
/* 805B1178  FC 44 00 32 */	fmul f2, f4, f0
/* 805B117C  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1180  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1184  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1188  FC 02 00 32 */	fmul f0, f2, f0
/* 805B118C  FC 21 00 32 */	fmul f1, f1, f0
/* 805B1190  FC 20 08 18 */	frsp f1, f1
/* 805B1194  48 00 00 88 */	b lbl_805B121C
lbl_805B1198:
/* 805B1198  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 805B119C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B11A0  40 80 00 10 */	bge lbl_805B11B0
/* 805B11A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B11A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805B11AC  48 00 00 70 */	b lbl_805B121C
lbl_805B11B0:
/* 805B11B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805B11B4  80 81 00 08 */	lwz r4, 8(r1)
/* 805B11B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805B11BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805B11C0  7C 03 00 00 */	cmpw r3, r0
/* 805B11C4  41 82 00 14 */	beq lbl_805B11D8
/* 805B11C8  40 80 00 40 */	bge lbl_805B1208
/* 805B11CC  2C 03 00 00 */	cmpwi r3, 0
/* 805B11D0  41 82 00 20 */	beq lbl_805B11F0
/* 805B11D4  48 00 00 34 */	b lbl_805B1208
lbl_805B11D8:
/* 805B11D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B11DC  41 82 00 0C */	beq lbl_805B11E8
/* 805B11E0  38 00 00 01 */	li r0, 1
/* 805B11E4  48 00 00 28 */	b lbl_805B120C
lbl_805B11E8:
/* 805B11E8  38 00 00 02 */	li r0, 2
/* 805B11EC  48 00 00 20 */	b lbl_805B120C
lbl_805B11F0:
/* 805B11F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B11F4  41 82 00 0C */	beq lbl_805B1200
/* 805B11F8  38 00 00 05 */	li r0, 5
/* 805B11FC  48 00 00 10 */	b lbl_805B120C
lbl_805B1200:
/* 805B1200  38 00 00 03 */	li r0, 3
/* 805B1204  48 00 00 08 */	b lbl_805B120C
lbl_805B1208:
/* 805B1208  38 00 00 04 */	li r0, 4
lbl_805B120C:
/* 805B120C  2C 00 00 01 */	cmpwi r0, 1
/* 805B1210  40 82 00 0C */	bne lbl_805B121C
/* 805B1214  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B1218  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805B121C:
/* 805B121C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805B1220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1224  40 80 00 14 */	bge lbl_805B1238
/* 805B1228  7F E3 FB 78 */	mr r3, r31
/* 805B122C  4B A6 8A 50 */	b fopAcM_delete__FP10fopAc_ac_c
/* 805B1230  7F E3 FB 78 */	mr r3, r31
/* 805B1234  48 00 00 08 */	b lbl_805B123C
lbl_805B1238:
/* 805B1238  38 60 00 00 */	li r3, 0
lbl_805B123C:
/* 805B123C  39 61 00 40 */	addi r11, r1, 0x40
/* 805B1240  4B DB 0F E8 */	b _restgpr_29
/* 805B1244  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B1248  7C 08 03 A6 */	mtlr r0
/* 805B124C  38 21 00 40 */	addi r1, r1, 0x40
/* 805B1250  4E 80 00 20 */	blr 
