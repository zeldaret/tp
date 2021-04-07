lbl_809F0ED4:
/* 809F0ED4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809F0ED8  7C 08 02 A6 */	mflr r0
/* 809F0EDC  90 01 00 74 */	stw r0, 0x74(r1)
/* 809F0EE0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809F0EE4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809F0EE8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 809F0EEC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 809F0EF0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 809F0EF4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 809F0EF8  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 809F0EFC  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 809F0F00  39 61 00 30 */	addi r11, r1, 0x30
/* 809F0F04  4B 97 12 D9 */	bl _savegpr_29
/* 809F0F08  7C 7E 1B 78 */	mr r30, r3
/* 809F0F0C  3C 60 80 9F */	lis r3, lit_3900@ha /* 0x809F2C50@ha */
/* 809F0F10  3B E3 2C 50 */	addi r31, r3, lit_3900@l /* 0x809F2C50@l */
/* 809F0F14  C3 FF 00 20 */	lfs f31, 0x20(r31)
/* 809F0F18  FF C0 F8 90 */	fmr f30, f31
/* 809F0F1C  80 1E 0D 9C */	lwz r0, 0xd9c(r30)
/* 809F0F20  28 00 00 02 */	cmplwi r0, 2
/* 809F0F24  40 82 01 3C */	bne lbl_809F1060
/* 809F0F28  80 9E 0A 98 */	lwz r4, 0xa98(r30)
/* 809F0F2C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F0F30  40 80 00 1C */	bge lbl_809F0F4C
/* 809F0F34  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F0F38  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F0F3C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F0F40  7C 63 02 14 */	add r3, r3, r0
/* 809F0F44  C3 E3 01 FC */	lfs f31, 0x1fc(r3)
/* 809F0F48  48 00 00 18 */	b lbl_809F0F60
lbl_809F0F4C:
/* 809F0F4C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F0F50  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F0F54  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F0F58  7C 63 02 14 */	add r3, r3, r0
/* 809F0F5C  C3 E3 FF 2C */	lfs f31, -0xd4(r3)
lbl_809F0F60:
/* 809F0F60  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F0F64  40 80 00 1C */	bge lbl_809F0F80
/* 809F0F68  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F0F6C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F0F70  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F0F74  7C 63 02 14 */	add r3, r3, r0
/* 809F0F78  C0 03 01 F4 */	lfs f0, 0x1f4(r3)
/* 809F0F7C  48 00 00 18 */	b lbl_809F0F94
lbl_809F0F80:
/* 809F0F80  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F0F84  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F0F88  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F0F8C  7C 63 02 14 */	add r3, r3, r0
/* 809F0F90  C0 03 FF 24 */	lfs f0, -0xdc(r3)
lbl_809F0F94:
/* 809F0F94  FF C0 00 90 */	fmr f30, f0
/* 809F0F98  38 7E 0D 8C */	addi r3, r30, 0xd8c
/* 809F0F9C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 809F0FA0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 809F0FA4  4B 87 F7 9D */	bl cLib_chaseF__FPfff
/* 809F0FA8  C0 5E 0D 8C */	lfs f2, 0xd8c(r30)
/* 809F0FAC  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 809F0FB0  EC 22 00 32 */	fmuls f1, f2, f0
/* 809F0FB4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809F0FB8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809F0FBC  EC 42 00 32 */	fmuls f2, f2, f0
/* 809F0FC0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 809F0FC4  40 80 00 08 */	bge lbl_809F0FCC
/* 809F0FC8  FC 20 F8 90 */	fmr f1, f31
lbl_809F0FCC:
/* 809F0FCC  38 7E 0D 90 */	addi r3, r30, 0xd90
/* 809F0FD0  4B 87 F7 71 */	bl cLib_chaseF__FPfff
/* 809F0FD4  C0 3E 0D 8C */	lfs f1, 0xd8c(r30)
/* 809F0FD8  EC 1F 00 72 */	fmuls f0, f31, f1
/* 809F0FDC  EF 81 00 32 */	fmuls f28, f1, f0
/* 809F0FE0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809F0FE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 809F0FE8  EF A1 00 32 */	fmuls f29, f1, f0
/* 809F0FEC  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 809F0FF0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809F0FF4  41 82 00 4C */	beq lbl_809F1040
/* 809F0FF8  A8 9E 08 4C */	lha r4, 0x84c(r30)
/* 809F0FFC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 809F1000  3C 63 00 01 */	addis r3, r3, 1
/* 809F1004  38 03 80 00 */	addi r0, r3, -32768
/* 809F1008  7C 04 00 50 */	subf r0, r4, r0
/* 809F100C  7C 1D 07 34 */	extsh r29, r0
/* 809F1010  7F A3 EB 78 */	mr r3, r29
/* 809F1014  4B 97 40 BD */	bl abs
/* 809F1018  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809F101C  40 80 00 24 */	bge lbl_809F1040
/* 809F1020  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809F1024  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809F1028  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 809F102C  7C 63 02 14 */	add r3, r3, r0
/* 809F1030  C0 23 00 04 */	lfs f1, 4(r3)
/* 809F1034  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809F1038  EC 00 08 28 */	fsubs f0, f0, f1
/* 809F103C  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_809F1040:
/* 809F1040  FC 1F E0 40 */	fcmpo cr0, f31, f28
/* 809F1044  40 80 00 08 */	bge lbl_809F104C
/* 809F1048  FF 80 F8 90 */	fmr f28, f31
lbl_809F104C:
/* 809F104C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809F1050  FC 20 E0 90 */	fmr f1, f28
/* 809F1054  FC 40 E8 90 */	fmr f2, f29
/* 809F1058  4B 87 F6 E9 */	bl cLib_chaseF__FPfff
/* 809F105C  48 00 01 7C */	b lbl_809F11D8
lbl_809F1060:
/* 809F1060  28 00 00 01 */	cmplwi r0, 1
/* 809F1064  40 82 01 3C */	bne lbl_809F11A0
/* 809F1068  80 9E 0A 98 */	lwz r4, 0xa98(r30)
/* 809F106C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1070  40 80 00 1C */	bge lbl_809F108C
/* 809F1074  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1078  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F107C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1080  7C 63 02 14 */	add r3, r3, r0
/* 809F1084  C3 E3 01 F8 */	lfs f31, 0x1f8(r3)
/* 809F1088  48 00 00 18 */	b lbl_809F10A0
lbl_809F108C:
/* 809F108C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1090  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1094  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1098  7C 63 02 14 */	add r3, r3, r0
/* 809F109C  C3 E3 FF 28 */	lfs f31, -0xd8(r3)
lbl_809F10A0:
/* 809F10A0  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F10A4  40 80 00 1C */	bge lbl_809F10C0
/* 809F10A8  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F10AC  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F10B0  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F10B4  7C 63 02 14 */	add r3, r3, r0
/* 809F10B8  C0 03 01 F0 */	lfs f0, 0x1f0(r3)
/* 809F10BC  48 00 00 18 */	b lbl_809F10D4
lbl_809F10C0:
/* 809F10C0  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F10C4  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F10C8  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F10CC  7C 63 02 14 */	add r3, r3, r0
/* 809F10D0  C0 03 FF 20 */	lfs f0, -0xe0(r3)
lbl_809F10D4:
/* 809F10D4  FF C0 00 90 */	fmr f30, f0
/* 809F10D8  38 7E 0D 8C */	addi r3, r30, 0xd8c
/* 809F10DC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809F10E0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 809F10E4  4B 87 F6 5D */	bl cLib_chaseF__FPfff
/* 809F10E8  C0 5E 0D 8C */	lfs f2, 0xd8c(r30)
/* 809F10EC  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 809F10F0  EC 22 00 32 */	fmuls f1, f2, f0
/* 809F10F4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809F10F8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809F10FC  EC 42 00 32 */	fmuls f2, f2, f0
/* 809F1100  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 809F1104  40 80 00 08 */	bge lbl_809F110C
/* 809F1108  FC 20 F8 90 */	fmr f1, f31
lbl_809F110C:
/* 809F110C  38 7E 0D 90 */	addi r3, r30, 0xd90
/* 809F1110  4B 87 F6 31 */	bl cLib_chaseF__FPfff
/* 809F1114  C0 3E 0D 8C */	lfs f1, 0xd8c(r30)
/* 809F1118  EC 1F 00 72 */	fmuls f0, f31, f1
/* 809F111C  EF A1 00 32 */	fmuls f29, f1, f0
/* 809F1120  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 809F1124  EC 00 00 72 */	fmuls f0, f0, f1
/* 809F1128  EF 81 00 32 */	fmuls f28, f1, f0
/* 809F112C  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 809F1130  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809F1134  41 82 00 4C */	beq lbl_809F1180
/* 809F1138  A8 9E 08 4C */	lha r4, 0x84c(r30)
/* 809F113C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 809F1140  3C 63 00 01 */	addis r3, r3, 1
/* 809F1144  38 03 80 00 */	addi r0, r3, -32768
/* 809F1148  7C 04 00 50 */	subf r0, r4, r0
/* 809F114C  7C 1D 07 34 */	extsh r29, r0
/* 809F1150  7F A3 EB 78 */	mr r3, r29
/* 809F1154  4B 97 3F 7D */	bl abs
/* 809F1158  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809F115C  40 80 00 24 */	bge lbl_809F1180
/* 809F1160  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809F1164  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809F1168  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 809F116C  7C 63 02 14 */	add r3, r3, r0
/* 809F1170  C0 23 00 04 */	lfs f1, 4(r3)
/* 809F1174  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809F1178  EC 00 08 28 */	fsubs f0, f0, f1
/* 809F117C  EF BD 00 32 */	fmuls f29, f29, f0
lbl_809F1180:
/* 809F1180  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 809F1184  40 80 00 08 */	bge lbl_809F118C
/* 809F1188  FF A0 F8 90 */	fmr f29, f31
lbl_809F118C:
/* 809F118C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809F1190  FC 20 E8 90 */	fmr f1, f29
/* 809F1194  FC 40 E0 90 */	fmr f2, f28
/* 809F1198  4B 87 F5 A9 */	bl cLib_chaseF__FPfff
/* 809F119C  48 00 00 3C */	b lbl_809F11D8
lbl_809F11A0:
/* 809F11A0  28 00 00 00 */	cmplwi r0, 0
/* 809F11A4  40 82 00 34 */	bne lbl_809F11D8
/* 809F11A8  38 7E 0D 8C */	addi r3, r30, 0xd8c
/* 809F11AC  FC 20 F8 90 */	fmr f1, f31
/* 809F11B0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 809F11B4  4B 87 F5 8D */	bl cLib_chaseF__FPfff
/* 809F11B8  38 7E 0D 90 */	addi r3, r30, 0xd90
/* 809F11BC  FC 20 F8 90 */	fmr f1, f31
/* 809F11C0  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 809F11C4  4B 87 F5 7D */	bl cLib_chaseF__FPfff
/* 809F11C8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809F11CC  FC 20 F8 90 */	fmr f1, f31
/* 809F11D0  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 809F11D4  4B 87 F5 6D */	bl cLib_chaseF__FPfff
lbl_809F11D8:
/* 809F11D8  38 7E 0A D8 */	addi r3, r30, 0xad8
/* 809F11DC  38 81 00 08 */	addi r4, r1, 8
/* 809F11E0  4B 76 8C 75 */	bl getTargetPoint__11PathTrace_cFP3Vec
/* 809F11E4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809F11E8  38 81 00 08 */	addi r4, r1, 8
/* 809F11EC  4B 87 FA 19 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809F11F0  7C 64 1B 78 */	mr r4, r3
/* 809F11F4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 809F11F8  4B 87 FC 2D */	bl cLib_distanceAngleS__Fss
/* 809F11FC  2C 03 20 00 */	cmpwi r3, 0x2000
/* 809F1200  41 80 00 34 */	blt lbl_809F1234
/* 809F1204  38 7E 0D 8C */	addi r3, r30, 0xd8c
/* 809F1208  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809F120C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 809F1210  4B 87 F5 31 */	bl cLib_chaseF__FPfff
/* 809F1214  38 7E 0D 90 */	addi r3, r30, 0xd90
/* 809F1218  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809F121C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809F1220  4B 87 F5 21 */	bl cLib_chaseF__FPfff
/* 809F1224  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809F1228  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809F122C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 809F1230  4B 87 F5 11 */	bl cLib_chaseF__FPfff
lbl_809F1234:
/* 809F1234  37 BE 08 50 */	addic. r29, r30, 0x850
/* 809F1238  41 82 00 14 */	beq lbl_809F124C
/* 809F123C  7F A3 EB 78 */	mr r3, r29
/* 809F1240  7F A4 EB 78 */	mr r4, r29
/* 809F1244  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 809F1248  4B 95 5E 91 */	bl PSVECScale
lbl_809F124C:
/* 809F124C  7F C3 F3 78 */	mr r3, r30
/* 809F1250  7F A4 EB 78 */	mr r4, r29
/* 809F1254  4B 62 94 79 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 809F1258  80 1E 0D 9C */	lwz r0, 0xd9c(r30)
/* 809F125C  28 00 00 00 */	cmplwi r0, 0
/* 809F1260  41 82 00 38 */	beq lbl_809F1298
/* 809F1264  C0 1E 0D 90 */	lfs f0, 0xd90(r30)
/* 809F1268  EC 20 F8 24 */	fdivs f1, f0, f31
/* 809F126C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809F1270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F1274  40 81 00 08 */	ble lbl_809F127C
/* 809F1278  FC 20 00 90 */	fmr f1, f0
lbl_809F127C:
/* 809F127C  EC 3E 00 72 */	fmuls f1, f30, f1
/* 809F1280  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 809F1284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F1288  40 80 00 08 */	bge lbl_809F1290
/* 809F128C  FC 20 00 90 */	fmr f1, f0
lbl_809F1290:
/* 809F1290  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809F1294  D0 23 00 18 */	stfs f1, 0x18(r3)
lbl_809F1298:
/* 809F1298  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809F129C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809F12A0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 809F12A4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 809F12A8  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 809F12AC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 809F12B0  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 809F12B4  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 809F12B8  39 61 00 30 */	addi r11, r1, 0x30
/* 809F12BC  4B 97 0F 6D */	bl _restgpr_29
/* 809F12C0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809F12C4  7C 08 03 A6 */	mtlr r0
/* 809F12C8  38 21 00 70 */	addi r1, r1, 0x70
/* 809F12CC  4E 80 00 20 */	blr 
