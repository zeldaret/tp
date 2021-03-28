lbl_80A1211C:
/* 80A1211C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A12120  7C 08 02 A6 */	mflr r0
/* 80A12124  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A12128  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80A1212C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80A12130  39 61 00 40 */	addi r11, r1, 0x40
/* 80A12134  4B 95 00 A8 */	b _savegpr_29
/* 80A12138  7C 7D 1B 78 */	mr r29, r3
/* 80A1213C  7C 9E 23 78 */	mr r30, r4
/* 80A12140  FF E0 08 90 */	fmr f31, f1
/* 80A12144  3C 60 80 A1 */	lis r3, l_insectParams@ha
/* 80A12148  3B E3 3D AC */	addi r31, r3, l_insectParams@l
/* 80A1214C  80 7D 0E 04 */	lwz r3, 0xe04(r29)
/* 80A12150  80 9D 0E 08 */	lwz r4, 0xe08(r29)
/* 80A12154  4B 63 F6 5C */	b dPath_GetPnt__FPC5dPathi
/* 80A12158  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80A1215C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A12160  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A12164  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80A12168  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A1216C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A12170  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80A12174  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A12178  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A1217C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A12180  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A12184  38 61 00 0C */	addi r3, r1, 0xc
/* 80A12188  38 81 00 18 */	addi r4, r1, 0x18
/* 80A1218C  4B 93 52 10 */	b PSVECSquareDistance
/* 80A12190  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A12194  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A12198  40 81 00 58 */	ble lbl_80A121F0
/* 80A1219C  FC 00 08 34 */	frsqrte f0, f1
/* 80A121A0  C8 9F 03 88 */	lfd f4, 0x388(r31)
/* 80A121A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A121A8  C8 7F 03 90 */	lfd f3, 0x390(r31)
/* 80A121AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A121B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A121B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A121B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A121BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A121C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A121C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A121C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A121CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A121D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A121D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A121D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A121DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A121E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A121E4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A121E8  FC 20 08 18 */	frsp f1, f1
/* 80A121EC  48 00 00 88 */	b lbl_80A12274
lbl_80A121F0:
/* 80A121F0  C8 1F 03 98 */	lfd f0, 0x398(r31)
/* 80A121F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A121F8  40 80 00 10 */	bge lbl_80A12208
/* 80A121FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A12200  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A12204  48 00 00 70 */	b lbl_80A12274
lbl_80A12208:
/* 80A12208  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A1220C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A12210  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A12214  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A12218  7C 03 00 00 */	cmpw r3, r0
/* 80A1221C  41 82 00 14 */	beq lbl_80A12230
/* 80A12220  40 80 00 40 */	bge lbl_80A12260
/* 80A12224  2C 03 00 00 */	cmpwi r3, 0
/* 80A12228  41 82 00 20 */	beq lbl_80A12248
/* 80A1222C  48 00 00 34 */	b lbl_80A12260
lbl_80A12230:
/* 80A12230  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A12234  41 82 00 0C */	beq lbl_80A12240
/* 80A12238  38 00 00 01 */	li r0, 1
/* 80A1223C  48 00 00 28 */	b lbl_80A12264
lbl_80A12240:
/* 80A12240  38 00 00 02 */	li r0, 2
/* 80A12244  48 00 00 20 */	b lbl_80A12264
lbl_80A12248:
/* 80A12248  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A1224C  41 82 00 0C */	beq lbl_80A12258
/* 80A12250  38 00 00 05 */	li r0, 5
/* 80A12254  48 00 00 10 */	b lbl_80A12264
lbl_80A12258:
/* 80A12258  38 00 00 03 */	li r0, 3
/* 80A1225C  48 00 00 08 */	b lbl_80A12264
lbl_80A12260:
/* 80A12260  38 00 00 04 */	li r0, 4
lbl_80A12264:
/* 80A12264  2C 00 00 01 */	cmpwi r0, 1
/* 80A12268  40 82 00 0C */	bne lbl_80A12274
/* 80A1226C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A12270  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A12274:
/* 80A12274  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A12278  41 80 00 10 */	blt lbl_80A12288
/* 80A1227C  C0 1F 03 A0 */	lfs f0, 0x3a0(r31)
/* 80A12280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A12284  40 80 00 0C */	bge lbl_80A12290
lbl_80A12288:
/* 80A12288  38 60 00 01 */	li r3, 1
/* 80A1228C  48 00 00 24 */	b lbl_80A122B0
lbl_80A12290:
/* 80A12290  C0 1D 0E 0C */	lfs f0, 0xe0c(r29)
/* 80A12294  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80A12298  D0 1D 0E 0C */	stfs f0, 0xe0c(r29)
/* 80A1229C  C0 3D 0E 0C */	lfs f1, 0xe0c(r29)
/* 80A122A0  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A122A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A122A8  7C 00 00 26 */	mfcr r0
/* 80A122AC  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80A122B0:
/* 80A122B0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80A122B4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80A122B8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A122BC  4B 94 FF 6C */	b _restgpr_29
/* 80A122C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A122C4  7C 08 03 A6 */	mtlr r0
/* 80A122C8  38 21 00 50 */	addi r1, r1, 0x50
/* 80A122CC  4E 80 00 20 */	blr 
