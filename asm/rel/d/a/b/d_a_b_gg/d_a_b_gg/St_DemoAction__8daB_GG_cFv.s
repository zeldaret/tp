lbl_805E0F2C:
/* 805E0F2C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805E0F30  7C 08 02 A6 */	mflr r0
/* 805E0F34  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805E0F38  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805E0F3C  4B D8 12 9C */	b _savegpr_28
/* 805E0F40  7C 7E 1B 78 */	mr r30, r3
/* 805E0F44  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E0F48  3B A3 D0 60 */	addi r29, r3, lit_3911@l
/* 805E0F4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E0F50  38 E3 61 C0 */	addi r7, r3, g_dComIfG_gameInfo@l
/* 805E0F54  83 87 5D AC */	lwz r28, 0x5dac(r7)
/* 805E0F58  3C 60 80 5F */	lis r3, data_805ED72C@ha
/* 805E0F5C  38 C3 D7 2C */	addi r6, r3, data_805ED72C@l
/* 805E0F60  80 66 00 00 */	lwz r3, 0(r6)
/* 805E0F64  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E0F68  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805E0F6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E0F70  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E0F74  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E0F78  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805E0F7C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 805E0F80  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 805E0F84  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 805E0F88  C0 1D 01 88 */	lfs f0, 0x188(r29)
/* 805E0F8C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805E0F90  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 805E0F94  3C 80 80 5F */	lis r4, data_805ED730@ha
/* 805E0F98  A8 04 D7 30 */	lha r0, data_805ED730@l(r4)
/* 805E0F9C  7C 05 00 50 */	subf r0, r5, r0
/* 805E0FA0  7C 1F 07 34 */	extsh r31, r0
/* 805E0FA4  88 9E 05 C7 */	lbz r4, 0x5c7(r30)
/* 805E0FA8  2C 04 00 03 */	cmpwi r4, 3
/* 805E0FAC  41 82 05 E8 */	beq lbl_805E1594
/* 805E0FB0  40 80 00 1C */	bge lbl_805E0FCC
/* 805E0FB4  2C 04 00 01 */	cmpwi r4, 1
/* 805E0FB8  41 82 02 60 */	beq lbl_805E1218
/* 805E0FBC  40 80 04 9C */	bge lbl_805E1458
/* 805E0FC0  2C 04 00 00 */	cmpwi r4, 0
/* 805E0FC4  40 80 00 18 */	bge lbl_805E0FDC
/* 805E0FC8  48 00 08 60 */	b lbl_805E1828
lbl_805E0FCC:
/* 805E0FCC  2C 04 00 05 */	cmpwi r4, 5
/* 805E0FD0  41 82 07 A0 */	beq lbl_805E1770
/* 805E0FD4  40 80 08 54 */	bge lbl_805E1828
/* 805E0FD8  48 00 05 E8 */	b lbl_805E15C0
lbl_805E0FDC:
/* 805E0FDC  C0 1D 02 04 */	lfs f0, 0x204(r29)
/* 805E0FE0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805E0FE4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805E0FE8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E0FEC  C0 1D 02 08 */	lfs f0, 0x208(r29)
/* 805E0FF0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805E0FF4  38 81 00 7C */	addi r4, r1, 0x7c
/* 805E0FF8  4B C8 FC 0C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E0FFC  7C 65 1B 78 */	mr r5, r3
/* 805E1000  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E1004  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E1008  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E100C  80 84 00 00 */	lwz r4, 0(r4)
/* 805E1010  38 C1 00 88 */	addi r6, r1, 0x88
/* 805E1014  4B C8 FD AC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E1018  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805E101C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 805E1020  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805E1024  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 805E1028  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805E102C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 805E1030  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805E1034  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805E1038  C0 1D 01 78 */	lfs f0, 0x178(r29)
/* 805E103C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805E1040  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E1044  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805E1048  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805E104C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E1050  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805E1054  3C 60 80 5F */	lis r3, data_805ED72C@ha
/* 805E1058  38 63 D7 2C */	addi r3, r3, data_805ED72C@l
/* 805E105C  80 63 00 00 */	lwz r3, 0(r3)
/* 805E1060  38 81 00 7C */	addi r4, r1, 0x7c
/* 805E1064  4B C8 FB A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1068  7C 65 1B 78 */	mr r5, r3
/* 805E106C  38 61 00 88 */	addi r3, r1, 0x88
/* 805E1070  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E1074  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E1078  80 84 00 00 */	lwz r4, 0(r4)
/* 805E107C  38 C1 00 64 */	addi r6, r1, 0x64
/* 805E1080  4B C8 FD 40 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E1084  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E1088  38 81 00 88 */	addi r4, r1, 0x88
/* 805E108C  4B C8 FB 78 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1090  B0 7E 05 BA */	sth r3, 0x5ba(r30)
/* 805E1094  A8 1E 05 BA */	lha r0, 0x5ba(r30)
/* 805E1098  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805E109C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805E10A0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 805E10A4  7F C3 F3 78 */	mr r3, r30
/* 805E10A8  38 80 00 05 */	li r4, 5
/* 805E10AC  38 A0 00 02 */	li r5, 2
/* 805E10B0  C0 3D 02 0C */	lfs f1, 0x20c(r29)
/* 805E10B4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805E10B8  4B FF DE AD */	bl SetAnm__8daB_GG_cFiiff
/* 805E10BC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805E10C0  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 805E10C4  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 805E10C8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805E10CC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805E10D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805E10D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E10D8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805E10DC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805E10E0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805E10E4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805E10E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E10EC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805E10F0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 805E10F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805E10F8  38 61 00 28 */	addi r3, r1, 0x28
/* 805E10FC  38 81 00 34 */	addi r4, r1, 0x34
/* 805E1100  4B D6 62 9C */	b PSVECSquareDistance
/* 805E1104  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E1108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E110C  40 81 00 58 */	ble lbl_805E1164
/* 805E1110  FC 00 08 34 */	frsqrte f0, f1
/* 805E1114  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 805E1118  FC 44 00 32 */	fmul f2, f4, f0
/* 805E111C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 805E1120  FC 00 00 32 */	fmul f0, f0, f0
/* 805E1124  FC 01 00 32 */	fmul f0, f1, f0
/* 805E1128  FC 03 00 28 */	fsub f0, f3, f0
/* 805E112C  FC 02 00 32 */	fmul f0, f2, f0
/* 805E1130  FC 44 00 32 */	fmul f2, f4, f0
/* 805E1134  FC 00 00 32 */	fmul f0, f0, f0
/* 805E1138  FC 01 00 32 */	fmul f0, f1, f0
/* 805E113C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E1140  FC 02 00 32 */	fmul f0, f2, f0
/* 805E1144  FC 44 00 32 */	fmul f2, f4, f0
/* 805E1148  FC 00 00 32 */	fmul f0, f0, f0
/* 805E114C  FC 01 00 32 */	fmul f0, f1, f0
/* 805E1150  FC 03 00 28 */	fsub f0, f3, f0
/* 805E1154  FC 02 00 32 */	fmul f0, f2, f0
/* 805E1158  FC 21 00 32 */	fmul f1, f1, f0
/* 805E115C  FC 20 08 18 */	frsp f1, f1
/* 805E1160  48 00 00 88 */	b lbl_805E11E8
lbl_805E1164:
/* 805E1164  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 805E1168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E116C  40 80 00 10 */	bge lbl_805E117C
/* 805E1170  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E1174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805E1178  48 00 00 70 */	b lbl_805E11E8
lbl_805E117C:
/* 805E117C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805E1180  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805E1184  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E1188  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E118C  7C 03 00 00 */	cmpw r3, r0
/* 805E1190  41 82 00 14 */	beq lbl_805E11A4
/* 805E1194  40 80 00 40 */	bge lbl_805E11D4
/* 805E1198  2C 03 00 00 */	cmpwi r3, 0
/* 805E119C  41 82 00 20 */	beq lbl_805E11BC
/* 805E11A0  48 00 00 34 */	b lbl_805E11D4
lbl_805E11A4:
/* 805E11A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E11A8  41 82 00 0C */	beq lbl_805E11B4
/* 805E11AC  38 00 00 01 */	li r0, 1
/* 805E11B0  48 00 00 28 */	b lbl_805E11D8
lbl_805E11B4:
/* 805E11B4  38 00 00 02 */	li r0, 2
/* 805E11B8  48 00 00 20 */	b lbl_805E11D8
lbl_805E11BC:
/* 805E11BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E11C0  41 82 00 0C */	beq lbl_805E11CC
/* 805E11C4  38 00 00 05 */	li r0, 5
/* 805E11C8  48 00 00 10 */	b lbl_805E11D8
lbl_805E11CC:
/* 805E11CC  38 00 00 03 */	li r0, 3
/* 805E11D0  48 00 00 08 */	b lbl_805E11D8
lbl_805E11D4:
/* 805E11D4  38 00 00 04 */	li r0, 4
lbl_805E11D8:
/* 805E11D8  2C 00 00 01 */	cmpwi r0, 1
/* 805E11DC  40 82 00 0C */	bne lbl_805E11E8
/* 805E11E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E11E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805E11E8:
/* 805E11E8  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 805E11EC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805E11F0  EC 42 00 28 */	fsubs f2, f2, f0
/* 805E11F4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805E11F8  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E11FC  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E1200  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 805E1204  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 805E1208  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805E120C  38 00 00 0A */	li r0, 0xa
/* 805E1210  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E1214  48 00 06 14 */	b lbl_805E1828
lbl_805E1218:
/* 805E1218  C0 1D 02 10 */	lfs f0, 0x210(r29)
/* 805E121C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805E1220  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805E1224  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E1228  C0 1D 02 14 */	lfs f0, 0x214(r29)
/* 805E122C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805E1230  38 81 00 7C */	addi r4, r1, 0x7c
/* 805E1234  4B C8 F9 D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1238  7C 65 1B 78 */	mr r5, r3
/* 805E123C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E1240  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E1244  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E1248  80 84 00 00 */	lwz r4, 0(r4)
/* 805E124C  38 C1 00 88 */	addi r6, r1, 0x88
/* 805E1250  4B C8 FB 70 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E1254  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805E1258  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 805E125C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805E1260  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 805E1264  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805E1268  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 805E126C  C0 1D 01 88 */	lfs f0, 0x188(r29)
/* 805E1270  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805E1274  C0 1D 01 78 */	lfs f0, 0x178(r29)
/* 805E1278  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805E127C  C0 1D 02 18 */	lfs f0, 0x218(r29)
/* 805E1280  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805E1284  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E1288  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805E128C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E1290  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805E1294  3C 60 80 5F */	lis r3, data_805ED72C@ha
/* 805E1298  38 63 D7 2C */	addi r3, r3, data_805ED72C@l
/* 805E129C  80 63 00 00 */	lwz r3, 0(r3)
/* 805E12A0  38 81 00 7C */	addi r4, r1, 0x7c
/* 805E12A4  4B C8 F9 60 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E12A8  7C 65 1B 78 */	mr r5, r3
/* 805E12AC  38 61 00 88 */	addi r3, r1, 0x88
/* 805E12B0  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E12B4  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E12B8  80 84 00 00 */	lwz r4, 0(r4)
/* 805E12BC  38 C1 00 64 */	addi r6, r1, 0x64
/* 805E12C0  4B C8 FB 00 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E12C4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E12C8  38 81 00 88 */	addi r4, r1, 0x88
/* 805E12CC  4B C8 F9 38 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E12D0  B0 7E 05 BA */	sth r3, 0x5ba(r30)
/* 805E12D4  A8 1E 05 BA */	lha r0, 0x5ba(r30)
/* 805E12D8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805E12DC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805E12E0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 805E12E4  7F C3 F3 78 */	mr r3, r30
/* 805E12E8  38 80 00 05 */	li r4, 5
/* 805E12EC  38 A0 00 02 */	li r5, 2
/* 805E12F0  C0 3D 02 0C */	lfs f1, 0x20c(r29)
/* 805E12F4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805E12F8  4B FF DC 6D */	bl SetAnm__8daB_GG_cFiiff
/* 805E12FC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805E1300  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 805E1304  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 805E1308  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805E130C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805E1310  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805E1314  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E1318  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805E131C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E1320  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805E1324  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805E1328  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E132C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805E1330  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 805E1334  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E1338  38 61 00 10 */	addi r3, r1, 0x10
/* 805E133C  38 81 00 1C */	addi r4, r1, 0x1c
/* 805E1340  4B D6 60 5C */	b PSVECSquareDistance
/* 805E1344  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E1348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E134C  40 81 00 58 */	ble lbl_805E13A4
/* 805E1350  FC 00 08 34 */	frsqrte f0, f1
/* 805E1354  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 805E1358  FC 44 00 32 */	fmul f2, f4, f0
/* 805E135C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 805E1360  FC 00 00 32 */	fmul f0, f0, f0
/* 805E1364  FC 01 00 32 */	fmul f0, f1, f0
/* 805E1368  FC 03 00 28 */	fsub f0, f3, f0
/* 805E136C  FC 02 00 32 */	fmul f0, f2, f0
/* 805E1370  FC 44 00 32 */	fmul f2, f4, f0
/* 805E1374  FC 00 00 32 */	fmul f0, f0, f0
/* 805E1378  FC 01 00 32 */	fmul f0, f1, f0
/* 805E137C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E1380  FC 02 00 32 */	fmul f0, f2, f0
/* 805E1384  FC 44 00 32 */	fmul f2, f4, f0
/* 805E1388  FC 00 00 32 */	fmul f0, f0, f0
/* 805E138C  FC 01 00 32 */	fmul f0, f1, f0
/* 805E1390  FC 03 00 28 */	fsub f0, f3, f0
/* 805E1394  FC 02 00 32 */	fmul f0, f2, f0
/* 805E1398  FC 21 00 32 */	fmul f1, f1, f0
/* 805E139C  FC 20 08 18 */	frsp f1, f1
/* 805E13A0  48 00 00 88 */	b lbl_805E1428
lbl_805E13A4:
/* 805E13A4  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 805E13A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E13AC  40 80 00 10 */	bge lbl_805E13BC
/* 805E13B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E13B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805E13B8  48 00 00 70 */	b lbl_805E1428
lbl_805E13BC:
/* 805E13BC  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E13C0  80 81 00 08 */	lwz r4, 8(r1)
/* 805E13C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E13C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E13CC  7C 03 00 00 */	cmpw r3, r0
/* 805E13D0  41 82 00 14 */	beq lbl_805E13E4
/* 805E13D4  40 80 00 40 */	bge lbl_805E1414
/* 805E13D8  2C 03 00 00 */	cmpwi r3, 0
/* 805E13DC  41 82 00 20 */	beq lbl_805E13FC
/* 805E13E0  48 00 00 34 */	b lbl_805E1414
lbl_805E13E4:
/* 805E13E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E13E8  41 82 00 0C */	beq lbl_805E13F4
/* 805E13EC  38 00 00 01 */	li r0, 1
/* 805E13F0  48 00 00 28 */	b lbl_805E1418
lbl_805E13F4:
/* 805E13F4  38 00 00 02 */	li r0, 2
/* 805E13F8  48 00 00 20 */	b lbl_805E1418
lbl_805E13FC:
/* 805E13FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E1400  41 82 00 0C */	beq lbl_805E140C
/* 805E1404  38 00 00 05 */	li r0, 5
/* 805E1408  48 00 00 10 */	b lbl_805E1418
lbl_805E140C:
/* 805E140C  38 00 00 03 */	li r0, 3
/* 805E1410  48 00 00 08 */	b lbl_805E1418
lbl_805E1414:
/* 805E1414  38 00 00 04 */	li r0, 4
lbl_805E1418:
/* 805E1418  2C 00 00 01 */	cmpwi r0, 1
/* 805E141C  40 82 00 0C */	bne lbl_805E1428
/* 805E1420  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E1424  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805E1428:
/* 805E1428  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 805E142C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805E1430  EC 42 00 28 */	fsubs f2, f2, f0
/* 805E1434  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805E1438  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E143C  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E1440  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 805E1444  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 805E1448  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805E144C  38 00 00 0A */	li r0, 0xa
/* 805E1450  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E1454  48 00 03 D4 */	b lbl_805E1828
lbl_805E1458:
/* 805E1458  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E145C  2C 00 00 0E */	cmpwi r0, 0xe
/* 805E1460  41 82 00 DC */	beq lbl_805E153C
/* 805E1464  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 805E1468  C0 1D 01 8C */	lfs f0, 0x18c(r29)
/* 805E146C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E1470  C0 1D 02 1C */	lfs f0, 0x21c(r29)
/* 805E1474  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805E1478  38 81 00 7C */	addi r4, r1, 0x7c
/* 805E147C  4B C8 F7 88 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1480  7C 65 1B 78 */	mr r5, r3
/* 805E1484  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E1488  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E148C  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E1490  80 84 00 00 */	lwz r4, 0(r4)
/* 805E1494  38 C1 00 88 */	addi r6, r1, 0x88
/* 805E1498  4B C8 F9 28 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E149C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805E14A0  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 805E14A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805E14A8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 805E14AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805E14B0  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 805E14B4  7F C3 F3 78 */	mr r3, r30
/* 805E14B8  38 80 00 0E */	li r4, 0xe
/* 805E14BC  38 A0 00 02 */	li r5, 2
/* 805E14C0  C0 3D 02 0C */	lfs f1, 0x20c(r29)
/* 805E14C4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805E14C8  4B FF DA 9D */	bl SetAnm__8daB_GG_cFiiff
/* 805E14CC  C0 1D 02 20 */	lfs f0, 0x220(r29)
/* 805E14D0  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 805E14D4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E14D8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805E14DC  C0 1D 01 40 */	lfs f0, 0x140(r29)
/* 805E14E0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E14E4  C0 1D 02 08 */	lfs f0, 0x208(r29)
/* 805E14E8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805E14EC  3C 60 80 5F */	lis r3, data_805ED72C@ha
/* 805E14F0  38 63 D7 2C */	addi r3, r3, data_805ED72C@l
/* 805E14F4  80 63 00 00 */	lwz r3, 0(r3)
/* 805E14F8  38 81 00 7C */	addi r4, r1, 0x7c
/* 805E14FC  4B C8 F7 08 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1500  7C 65 1B 78 */	mr r5, r3
/* 805E1504  38 7E 06 18 */	addi r3, r30, 0x618
/* 805E1508  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E150C  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E1510  80 84 00 00 */	lwz r4, 0(r4)
/* 805E1514  38 C1 00 88 */	addi r6, r1, 0x88
/* 805E1518  4B C8 F8 A8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E151C  38 00 00 17 */	li r0, 0x17
/* 805E1520  90 1C 06 14 */	stw r0, 0x614(r28)
/* 805E1524  38 00 00 01 */	li r0, 1
/* 805E1528  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 805E152C  38 00 00 00 */	li r0, 0
/* 805E1530  90 1C 06 10 */	stw r0, 0x610(r28)
/* 805E1534  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 805E1538  48 00 00 3C */	b lbl_805E1574
lbl_805E153C:
/* 805E153C  40 82 00 38 */	bne lbl_805E1574
/* 805E1540  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805E1544  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E1548  EC 21 00 28 */	fsubs f1, f1, f0
/* 805E154C  C0 1D 01 68 */	lfs f0, 0x168(r29)
/* 805E1550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E1554  40 80 00 20 */	bge lbl_805E1574
/* 805E1558  D0 5E 04 FC */	stfs f2, 0x4fc(r30)
/* 805E155C  D0 5E 05 C0 */	stfs f2, 0x5c0(r30)
/* 805E1560  38 00 00 00 */	li r0, 0
/* 805E1564  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 805E1568  88 7E 05 C7 */	lbz r3, 0x5c7(r30)
/* 805E156C  38 03 00 01 */	addi r0, r3, 1
/* 805E1570  98 1E 05 C7 */	stb r0, 0x5c7(r30)
lbl_805E1574:
/* 805E1574  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 805E1578  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E157C  AC 03 D7 30 */	lhau r0, data_805ED730@l(r3)
/* 805E1580  7C 04 00 50 */	subf r0, r4, r0
/* 805E1584  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 805E1588  A8 03 00 00 */	lha r0, 0(r3)
/* 805E158C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 805E1590  48 00 02 98 */	b lbl_805E1828
lbl_805E1594:
/* 805E1594  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 805E1598  2C 00 00 00 */	cmpwi r0, 0
/* 805E159C  40 82 00 14 */	bne lbl_805E15B0
/* 805E15A0  38 04 00 01 */	addi r0, r4, 1
/* 805E15A4  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E15A8  38 00 00 82 */	li r0, 0x82
/* 805E15AC  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
lbl_805E15B0:
/* 805E15B0  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E15B4  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E15B8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 805E15BC  48 00 02 6C */	b lbl_805E1828
lbl_805E15C0:
/* 805E15C0  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 805E15C4  2C 00 00 6E */	cmpwi r0, 0x6e
/* 805E15C8  40 82 00 64 */	bne lbl_805E162C
/* 805E15CC  38 00 00 07 */	li r0, 7
/* 805E15D0  98 1E 05 CB */	stb r0, 0x5cb(r30)
/* 805E15D4  C0 7E 04 D0 */	lfs f3, 0x4d0(r30)
/* 805E15D8  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 805E15DC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 805E15E0  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 805E15E4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 805E15E8  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 805E15EC  C0 1D 01 68 */	lfs f0, 0x168(r29)
/* 805E15F0  EC 02 00 2A */	fadds f0, f2, f0
/* 805E15F4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805E15F8  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 805E15FC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805E1600  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 805E1604  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805E1608  80 86 00 00 */	lwz r4, 0(r6)
/* 805E160C  4B C8 F5 F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1610  38 03 10 00 */	addi r0, r3, 0x1000
/* 805E1614  7C 05 07 34 */	extsh r5, r0
/* 805E1618  7F C3 F3 78 */	mr r3, r30
/* 805E161C  38 81 00 58 */	addi r4, r1, 0x58
/* 805E1620  C0 3D 01 E8 */	lfs f1, 0x1e8(r29)
/* 805E1624  C0 5D 01 EC */	lfs f2, 0x1ec(r29)
/* 805E1628  4B FF E7 D5 */	bl SetStopCam__8daB_GG_cF4cXyzffs
lbl_805E162C:
/* 805E162C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 805E1630  2C 03 00 0D */	cmpwi r3, 0xd
/* 805E1634  41 82 00 34 */	beq lbl_805E1668
/* 805E1638  A8 1E 05 D8 */	lha r0, 0x5d8(r30)
/* 805E163C  2C 00 00 00 */	cmpwi r0, 0
/* 805E1640  40 82 00 28 */	bne lbl_805E1668
/* 805E1644  7F C3 F3 78 */	mr r3, r30
/* 805E1648  38 80 00 0D */	li r4, 0xd
/* 805E164C  38 A0 00 00 */	li r5, 0
/* 805E1650  C0 3D 02 0C */	lfs f1, 0x20c(r29)
/* 805E1654  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805E1658  4B FF D9 0D */	bl SetAnm__8daB_GG_cFiiff
/* 805E165C  38 00 00 07 */	li r0, 7
/* 805E1660  98 1E 05 CB */	stb r0, 0x5cb(r30)
/* 805E1664  48 00 00 FC */	b lbl_805E1760
lbl_805E1668:
/* 805E1668  2C 03 00 0D */	cmpwi r3, 0xd
/* 805E166C  40 82 00 50 */	bne lbl_805E16BC
/* 805E1670  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E1674  38 63 00 0C */	addi r3, r3, 0xc
/* 805E1678  C0 3D 02 24 */	lfs f1, 0x224(r29)
/* 805E167C  4B D4 6D B0 */	b checkPass__12J3DFrameCtrlFf
/* 805E1680  2C 03 00 00 */	cmpwi r3, 0
/* 805E1684  41 82 00 38 */	beq lbl_805E16BC
/* 805E1688  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805E168C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805E1690  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805E1694  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E1698  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805E169C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E16A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E16A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805E16A8  38 80 00 06 */	li r4, 6
/* 805E16AC  38 A0 00 1F */	li r5, 0x1f
/* 805E16B0  38 C1 00 4C */	addi r6, r1, 0x4c
/* 805E16B4  4B A8 E4 5C */	b StartQuake__12dVibration_cFii4cXyz
/* 805E16B8  48 00 00 A8 */	b lbl_805E1760
lbl_805E16BC:
/* 805E16BC  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E16C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 805E16C4  40 82 00 9C */	bne lbl_805E1760
/* 805E16C8  80 7E 0E 30 */	lwz r3, 0xe30(r30)
/* 805E16CC  38 80 00 01 */	li r4, 1
/* 805E16D0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E16D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E16D8  40 82 00 18 */	bne lbl_805E16F0
/* 805E16DC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805E16E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E16E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E16E8  41 82 00 08 */	beq lbl_805E16F0
/* 805E16EC  38 80 00 00 */	li r4, 0
lbl_805E16F0:
/* 805E16F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E16F4  41 82 00 6C */	beq lbl_805E1760
/* 805E16F8  88 7E 05 C7 */	lbz r3, 0x5c7(r30)
/* 805E16FC  38 03 00 01 */	addi r0, r3, 1
/* 805E1700  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E1704  7F C3 F3 78 */	mr r3, r30
/* 805E1708  38 80 00 0E */	li r4, 0xe
/* 805E170C  38 A0 00 02 */	li r5, 2
/* 805E1710  C0 3D 02 0C */	lfs f1, 0x20c(r29)
/* 805E1714  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805E1718  4B FF D8 4D */	bl SetAnm__8daB_GG_cFiiff
/* 805E171C  38 00 00 C8 */	li r0, 0xc8
/* 805E1720  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 805E1724  38 00 00 08 */	li r0, 8
/* 805E1728  98 1E 05 CB */	stb r0, 0x5cb(r30)
/* 805E172C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E1730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E1734  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805E1738  38 80 00 1F */	li r4, 0x1f
/* 805E173C  4B A8 E6 58 */	b StopQuake__12dVibration_cFi
/* 805E1740  38 00 00 17 */	li r0, 0x17
/* 805E1744  90 1C 06 14 */	stw r0, 0x614(r28)
/* 805E1748  38 00 00 01 */	li r0, 1
/* 805E174C  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 805E1750  38 00 00 02 */	li r0, 2
/* 805E1754  90 1C 06 10 */	stw r0, 0x610(r28)
/* 805E1758  38 00 00 00 */	li r0, 0
/* 805E175C  B0 1C 06 0A */	sth r0, 0x60a(r28)
lbl_805E1760:
/* 805E1760  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E1764  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E1768  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 805E176C  48 00 00 BC */	b lbl_805E1828
lbl_805E1770:
/* 805E1770  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 805E1774  2C 00 00 00 */	cmpwi r0, 0
/* 805E1778  40 82 00 A4 */	bne lbl_805E181C
/* 805E177C  88 1E 05 CE */	lbz r0, 0x5ce(r30)
/* 805E1780  28 00 00 FF */	cmplwi r0, 0xff
/* 805E1784  41 82 00 38 */	beq lbl_805E17BC
/* 805E1788  7C E3 3B 78 */	mr r3, r7
/* 805E178C  38 80 00 8E */	li r4, 0x8e
/* 805E1790  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E1794  7C 05 07 74 */	extsb r5, r0
/* 805E1798  4B A5 3B C8 */	b isSwitch__10dSv_info_cCFii
/* 805E179C  2C 03 00 00 */	cmpwi r3, 0
/* 805E17A0  40 82 00 1C */	bne lbl_805E17BC
/* 805E17A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E17A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E17AC  38 80 00 8E */	li r4, 0x8e
/* 805E17B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E17B4  7C 05 07 74 */	extsb r5, r0
/* 805E17B8  4B A5 3A 48 */	b onSwitch__10dSv_info_cFii
lbl_805E17BC:
/* 805E17BC  38 00 00 01 */	li r0, 1
/* 805E17C0  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805E17C4  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 805E17C8  7F C3 F3 78 */	mr r3, r30
/* 805E17CC  4B FF EA 2D */	bl SetReleaseCam__8daB_GG_cFv
/* 805E17D0  38 60 00 00 */	li r3, 0
/* 805E17D4  98 7E 05 C5 */	stb r3, 0x5c5(r30)
/* 805E17D8  98 7E 05 C6 */	stb r3, 0x5c6(r30)
/* 805E17DC  38 00 00 01 */	li r0, 1
/* 805E17E0  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E17E4  98 7E 05 CB */	stb r3, 0x5cb(r30)
/* 805E17E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805E17EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805E17F0  80 63 00 00 */	lwz r3, 0(r3)
/* 805E17F4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805E17F8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006F@ha */
/* 805E17FC  38 84 00 6F */	addi r4, r4, 0x006F /* 0x0100006F@l */
/* 805E1800  4B CC DC 9C */	b subBgmStart__8Z2SeqMgrFUl
/* 805E1804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E1808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E180C  38 80 00 E2 */	li r4, 0xe2
/* 805E1810  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E1814  7C 05 07 74 */	extsb r5, r0
/* 805E1818  4B A5 39 E8 */	b onSwitch__10dSv_info_cFii
lbl_805E181C:
/* 805E181C  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E1820  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E1824  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_805E1828:
/* 805E1828  88 1E 05 C7 */	lbz r0, 0x5c7(r30)
/* 805E182C  28 00 00 01 */	cmplwi r0, 1
/* 805E1830  40 81 00 94 */	ble lbl_805E18C4
/* 805E1834  28 00 00 0A */	cmplwi r0, 0xa
/* 805E1838  41 82 00 8C */	beq lbl_805E18C4
/* 805E183C  38 61 00 40 */	addi r3, r1, 0x40
/* 805E1840  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E1844  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E1848  80 84 00 00 */	lwz r4, 0(r4)
/* 805E184C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805E1850  4B C8 52 E4 */	b __mi__4cXyzCFRC3Vec
/* 805E1854  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 805E1858  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 805E185C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805E1860  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805E1864  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E1868  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805E186C  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E1870  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E1874  EC 41 00 2A */	fadds f2, f1, f0
/* 805E1878  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E187C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E1880  40 81 00 0C */	ble lbl_805E188C
/* 805E1884  FC 00 10 34 */	frsqrte f0, f2
/* 805E1888  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E188C:
/* 805E188C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 805E1890  4B C8 5D E4 */	b cM_atan2s__Fff
/* 805E1894  7C 03 00 D0 */	neg r0, r3
/* 805E1898  7C 04 07 34 */	extsh r4, r0
/* 805E189C  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 805E18A0  38 A0 00 02 */	li r5, 2
/* 805E18A4  38 C0 06 00 */	li r6, 0x600
/* 805E18A8  4B C8 ED 60 */	b cLib_addCalcAngleS2__FPssss
/* 805E18AC  38 7E 06 BE */	addi r3, r30, 0x6be
/* 805E18B0  7F E4 FB 78 */	mr r4, r31
/* 805E18B4  38 A0 00 02 */	li r5, 2
/* 805E18B8  38 C0 01 00 */	li r6, 0x100
/* 805E18BC  4B C8 ED 4C */	b cLib_addCalcAngleS2__FPssss
/* 805E18C0  48 00 00 10 */	b lbl_805E18D0
lbl_805E18C4:
/* 805E18C4  38 00 00 00 */	li r0, 0
/* 805E18C8  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 805E18CC  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
lbl_805E18D0:
/* 805E18D0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805E18D4  4B D8 09 50 */	b _restgpr_28
/* 805E18D8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805E18DC  7C 08 03 A6 */	mtlr r0
/* 805E18E0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805E18E4  4E 80 00 20 */	blr 
