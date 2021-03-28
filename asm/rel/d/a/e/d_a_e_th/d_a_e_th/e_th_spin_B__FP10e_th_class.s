lbl_807B0F20:
/* 807B0F20  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807B0F24  7C 08 02 A6 */	mflr r0
/* 807B0F28  90 01 00 74 */	stw r0, 0x74(r1)
/* 807B0F2C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807B0F30  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807B0F34  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 807B0F38  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 807B0F3C  39 61 00 50 */	addi r11, r1, 0x50
/* 807B0F40  4B BB 12 9C */	b _savegpr_29
/* 807B0F44  7C 7D 1B 78 */	mr r29, r3
/* 807B0F48  3C 60 80 7B */	lis r3, lit_3906@ha
/* 807B0F4C  3B E3 44 9C */	addi r31, r3, lit_3906@l
/* 807B0F50  38 00 00 05 */	li r0, 5
/* 807B0F54  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 807B0F58  38 00 00 01 */	li r0, 1
/* 807B0F5C  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 807B0F60  3B C0 00 00 */	li r30, 0
/* 807B0F64  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 807B0F68  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807B0F6C  41 81 00 0C */	bgt lbl_807B0F78
/* 807B0F70  2C 00 C0 00 */	cmpwi r0, -16384
/* 807B0F74  40 80 00 0C */	bge lbl_807B0F80
lbl_807B0F78:
/* 807B0F78  38 80 80 00 */	li r4, -32768
/* 807B0F7C  48 00 00 08 */	b lbl_807B0F84
lbl_807B0F80:
/* 807B0F80  38 80 00 00 */	li r4, 0
lbl_807B0F84:
/* 807B0F84  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B0F88  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B0F8C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B0F90  4B 85 B4 4C */	b mDoMtx_YrotS__FPA4_fs
/* 807B0F94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B0F98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B0F9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B0FA0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807B0FA4  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 807B0FA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B0FAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B0FB0  38 61 00 18 */	addi r3, r1, 0x18
/* 807B0FB4  38 81 00 0C */	addi r4, r1, 0xc
/* 807B0FB8  4B AB FF 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B0FBC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807B0FC0  38 81 00 0C */	addi r4, r1, 0xc
/* 807B0FC4  7C 65 1B 78 */	mr r5, r3
/* 807B0FC8  4B B9 60 C8 */	b PSVECAdd
/* 807B0FCC  80 9D 05 CC */	lwz r4, 0x5cc(r29)
/* 807B0FD0  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 807B0FD4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807B0FD8  28 00 00 0A */	cmplwi r0, 0xa
/* 807B0FDC  41 81 02 18 */	bgt lbl_807B11F4
/* 807B0FE0  3C 60 80 7B */	lis r3, lit_4357@ha
/* 807B0FE4  38 63 46 88 */	addi r3, r3, lit_4357@l
/* 807B0FE8  54 00 10 3A */	slwi r0, r0, 2
/* 807B0FEC  7C 03 00 2E */	lwzx r0, r3, r0
/* 807B0FF0  7C 09 03 A6 */	mtctr r0
/* 807B0FF4  4E 80 04 20 */	bctr 
lbl_807B0FF8:
/* 807B0FF8  7F A3 EB 78 */	mr r3, r29
/* 807B0FFC  38 80 00 05 */	li r4, 5
/* 807B1000  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807B1004  38 A0 00 00 */	li r5, 0
/* 807B1008  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807B100C  4B FF F4 99 */	bl anm_init__FP10e_th_classifUcf
/* 807B1010  38 00 00 01 */	li r0, 1
/* 807B1014  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807B1018  88 1D 06 8A */	lbz r0, 0x68a(r29)
/* 807B101C  60 00 00 01 */	ori r0, r0, 1
/* 807B1020  98 1D 06 8A */	stb r0, 0x68a(r29)
/* 807B1024  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 807B1028  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 807B102C  48 00 01 C8 */	b lbl_807B11F4
lbl_807B1030:
/* 807B1030  38 60 00 01 */	li r3, 1
/* 807B1034  88 04 00 11 */	lbz r0, 0x11(r4)
/* 807B1038  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B103C  40 82 00 18 */	bne lbl_807B1054
/* 807B1040  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B1044  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 807B1048  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B104C  41 82 00 08 */	beq lbl_807B1054
/* 807B1050  38 60 00 00 */	li r3, 0
lbl_807B1054:
/* 807B1054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807B1058  41 82 01 9C */	beq lbl_807B11F4
/* 807B105C  88 1D 06 8A */	lbz r0, 0x68a(r29)
/* 807B1060  60 00 00 01 */	ori r0, r0, 1
/* 807B1064  98 1D 06 8A */	stb r0, 0x68a(r29)
/* 807B1068  A8 7D 0D 2C */	lha r3, 0xd2c(r29)
/* 807B106C  7C 60 07 35 */	extsh. r0, r3
/* 807B1070  41 82 00 30 */	beq lbl_807B10A0
/* 807B1074  2C 03 00 04 */	cmpwi r3, 4
/* 807B1078  40 80 00 28 */	bge lbl_807B10A0
/* 807B107C  7F A3 EB 78 */	mr r3, r29
/* 807B1080  38 80 00 04 */	li r4, 4
/* 807B1084  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807B1088  38 A0 00 02 */	li r5, 2
/* 807B108C  C0 5D 05 D8 */	lfs f2, 0x5d8(r29)
/* 807B1090  4B FF F4 15 */	bl anm_init__FP10e_th_classifUcf
/* 807B1094  38 00 00 0A */	li r0, 0xa
/* 807B1098  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807B109C  48 00 00 24 */	b lbl_807B10C0
lbl_807B10A0:
/* 807B10A0  7F A3 EB 78 */	mr r3, r29
/* 807B10A4  38 80 00 06 */	li r4, 6
/* 807B10A8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807B10AC  38 A0 00 02 */	li r5, 2
/* 807B10B0  C0 5D 05 D8 */	lfs f2, 0x5d8(r29)
/* 807B10B4  4B FF F3 F1 */	bl anm_init__FP10e_th_classifUcf
/* 807B10B8  38 00 00 03 */	li r0, 3
/* 807B10BC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807B10C0:
/* 807B10C0  FC 00 F8 1E */	fctiwz f0, f31
/* 807B10C4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807B10C8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807B10CC  7C 00 07 34 */	extsh r0, r0
/* 807B10D0  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 807B10D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807B10D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807B10DC  3C 00 43 30 */	lis r0, 0x4330
/* 807B10E0  90 01 00 30 */	stw r0, 0x30(r1)
/* 807B10E4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807B10E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807B10EC  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B10F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807B10F4  38 00 00 00 */	li r0, 0
/* 807B10F8  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 807B10FC  48 00 00 F8 */	b lbl_807B11F4
lbl_807B1100:
/* 807B1100  3B C0 00 01 */	li r30, 1
/* 807B1104  C3 DF 00 54 */	lfs f30, 0x54(r31)
/* 807B1108  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 807B110C  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 807B1110  7C 03 00 50 */	subf r0, r3, r0
/* 807B1114  7C 04 07 34 */	extsh r4, r0
/* 807B1118  A8 7D 05 DC */	lha r3, 0x5dc(r29)
/* 807B111C  38 03 00 01 */	addi r0, r3, 1
/* 807B1120  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 807B1124  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 807B1128  2C 00 00 50 */	cmpwi r0, 0x50
/* 807B112C  40 81 00 C8 */	ble lbl_807B11F4
/* 807B1130  2C 04 20 00 */	cmpwi r4, 0x2000
/* 807B1134  41 81 00 0C */	bgt lbl_807B1140
/* 807B1138  2C 04 E0 00 */	cmpwi r4, -8192
/* 807B113C  40 80 00 B8 */	bge lbl_807B11F4
lbl_807B1140:
/* 807B1140  C0 3D 06 8C */	lfs f1, 0x68c(r29)
/* 807B1144  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 807B1148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B114C  40 81 00 A8 */	ble lbl_807B11F4
/* 807B1150  38 00 00 28 */	li r0, 0x28
/* 807B1154  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 807B1158  38 00 00 04 */	li r0, 4
/* 807B115C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807B1160  48 00 00 94 */	b lbl_807B11F4
lbl_807B1164:
/* 807B1164  3B C0 00 01 */	li r30, 1
/* 807B1168  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 807B116C  2C 00 00 00 */	cmpwi r0, 0
/* 807B1170  40 82 00 84 */	bne lbl_807B11F4
/* 807B1174  38 64 00 0C */	addi r3, r4, 0xc
/* 807B1178  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807B117C  4B B7 72 B0 */	b checkPass__12J3DFrameCtrlFf
/* 807B1180  2C 03 00 00 */	cmpwi r3, 0
/* 807B1184  41 82 00 70 */	beq lbl_807B11F4
/* 807B1188  38 00 00 03 */	li r0, 3
/* 807B118C  B0 1D 06 86 */	sth r0, 0x686(r29)
/* 807B1190  38 00 00 00 */	li r0, 0
/* 807B1194  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807B1198  88 1D 06 8A */	lbz r0, 0x68a(r29)
/* 807B119C  60 00 00 01 */	ori r0, r0, 1
/* 807B11A0  98 1D 06 8A */	stb r0, 0x68a(r29)
/* 807B11A4  48 00 00 50 */	b lbl_807B11F4
lbl_807B11A8:
/* 807B11A8  3B C0 00 01 */	li r30, 1
/* 807B11AC  A8 1D 0D 2C */	lha r0, 0xd2c(r29)
/* 807B11B0  2C 00 00 03 */	cmpwi r0, 3
/* 807B11B4  40 82 00 40 */	bne lbl_807B11F4
/* 807B11B8  A8 1D 0D 2E */	lha r0, 0xd2e(r29)
/* 807B11BC  2C 00 00 50 */	cmpwi r0, 0x50
/* 807B11C0  41 80 00 34 */	blt lbl_807B11F4
/* 807B11C4  38 64 00 0C */	addi r3, r4, 0xc
/* 807B11C8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807B11CC  4B B7 72 60 */	b checkPass__12J3DFrameCtrlFf
/* 807B11D0  2C 03 00 00 */	cmpwi r3, 0
/* 807B11D4  41 82 00 20 */	beq lbl_807B11F4
/* 807B11D8  38 00 00 03 */	li r0, 3
/* 807B11DC  B0 1D 06 86 */	sth r0, 0x686(r29)
/* 807B11E0  38 00 00 00 */	li r0, 0
/* 807B11E4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807B11E8  88 1D 06 8A */	lbz r0, 0x68a(r29)
/* 807B11EC  60 00 00 01 */	ori r0, r0, 1
/* 807B11F0  98 1D 06 8A */	stb r0, 0x68a(r29)
lbl_807B11F4:
/* 807B11F4  7F C0 07 75 */	extsb. r0, r30
/* 807B11F8  41 82 00 7C */	beq lbl_807B1274
/* 807B11FC  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 807B1200  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807B1204  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807B1208  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 807B120C  28 00 00 01 */	cmplwi r0, 1
/* 807B1210  40 82 00 0C */	bne lbl_807B121C
/* 807B1214  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 807B1218  48 00 00 08 */	b lbl_807B1220
lbl_807B121C:
/* 807B121C  C0 7F 00 28 */	lfs f3, 0x28(r31)
lbl_807B1220:
/* 807B1220  4B AB E8 1C */	b cLib_addCalc2__FPffff
/* 807B1224  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 807B1228  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B122C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807B1230  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B1234  38 63 00 0C */	addi r3, r3, 0xc
/* 807B1238  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807B123C  4B B7 71 F0 */	b checkPass__12J3DFrameCtrlFf
/* 807B1240  2C 03 00 00 */	cmpwi r3, 0
/* 807B1244  41 82 00 30 */	beq lbl_807B1274
/* 807B1248  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070390@ha */
/* 807B124C  38 03 03 90 */	addi r0, r3, 0x0390 /* 0x00070390@l */
/* 807B1250  90 01 00 08 */	stw r0, 8(r1)
/* 807B1254  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 807B1258  38 81 00 08 */	addi r4, r1, 8
/* 807B125C  38 A0 00 00 */	li r5, 0
/* 807B1260  38 C0 FF FF */	li r6, -1
/* 807B1264  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 807B1268  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B126C  7D 89 03 A6 */	mtctr r12
/* 807B1270  4E 80 04 21 */	bctrl 
lbl_807B1274:
/* 807B1274  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807B1278  FC 20 F0 90 */	fmr f1, f30
/* 807B127C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807B1280  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807B1284  4B AB E7 B8 */	b cLib_addCalc2__FPffff
/* 807B1288  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807B128C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807B1290  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 807B1294  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 807B1298  39 61 00 50 */	addi r11, r1, 0x50
/* 807B129C  4B BB 0F 8C */	b _restgpr_29
/* 807B12A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807B12A4  7C 08 03 A6 */	mtlr r0
/* 807B12A8  38 21 00 70 */	addi r1, r1, 0x70
/* 807B12AC  4E 80 00 20 */	blr 
