lbl_805C0EF8:
/* 805C0EF8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805C0EFC  7C 08 02 A6 */	mflr r0
/* 805C0F00  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805C0F04  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 805C0F08  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 805C0F0C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805C0F10  4B DA 12 CC */	b _savegpr_29
/* 805C0F14  7C 7D 1B 78 */	mr r29, r3
/* 805C0F18  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805C0F1C  3B E4 6C 74 */	addi r31, r4, lit_3800@l
/* 805C0F20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805C0F24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805C0F28  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 805C0F2C  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 805C0F30  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 805C0F34  28 00 00 16 */	cmplwi r0, 0x16
/* 805C0F38  41 81 0D 50 */	bgt lbl_805C1C88
/* 805C0F3C  3C 80 80 5C */	lis r4, lit_6776@ha
/* 805C0F40  38 84 76 A8 */	addi r4, r4, lit_6776@l
/* 805C0F44  54 00 10 3A */	slwi r0, r0, 2
/* 805C0F48  7C 04 00 2E */	lwzx r0, r4, r0
/* 805C0F4C  7C 09 03 A6 */	mtctr r0
/* 805C0F50  4E 80 04 20 */	bctr 
lbl_805C0F54:
/* 805C0F54  38 80 00 00 */	li r4, 0
/* 805C0F58  4B FF A6 F5 */	bl mStatusONOFF__8daB_DR_cFi
/* 805C0F5C  38 00 00 08 */	li r0, 8
/* 805C0F60  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 805C0F64  C0 1F 03 64 */	lfs f0, 0x364(r31)
/* 805C0F68  D0 1D 07 40 */	stfs f0, 0x740(r29)
/* 805C0F6C  7F A3 EB 78 */	mr r3, r29
/* 805C0F70  4B FF BC A9 */	bl mAllClr__8daB_DR_cFv
/* 805C0F74  4B CA 68 F8 */	b cM_rnd__Fv
/* 805C0F78  C0 1F 03 DC */	lfs f0, 0x3dc(r31)
/* 805C0F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0F80  40 80 00 18 */	bge lbl_805C0F98
/* 805C0F84  38 00 00 00 */	li r0, 0
/* 805C0F88  98 1D 07 E9 */	stb r0, 0x7e9(r29)
/* 805C0F8C  38 00 00 01 */	li r0, 1
/* 805C0F90  98 1D 07 E4 */	stb r0, 0x7e4(r29)
/* 805C0F94  48 00 00 14 */	b lbl_805C0FA8
lbl_805C0F98:
/* 805C0F98  38 00 00 01 */	li r0, 1
/* 805C0F9C  98 1D 07 E9 */	stb r0, 0x7e9(r29)
/* 805C0FA0  38 00 00 4F */	li r0, 0x4f
/* 805C0FA4  98 1D 07 E4 */	stb r0, 0x7e4(r29)
lbl_805C0FA8:
/* 805C0FA8  38 00 00 01 */	li r0, 1
/* 805C0FAC  98 1D 07 D6 */	stb r0, 0x7d6(r29)
/* 805C0FB0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805C0FB4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 805C0FB8  88 1D 07 E4 */	lbz r0, 0x7e4(r29)
/* 805C0FBC  54 00 64 26 */	rlwinm r0, r0, 0xc, 0x10, 0x13
/* 805C0FC0  7C 64 02 14 */	add r3, r4, r0
/* 805C0FC4  C0 43 00 04 */	lfs f2, 4(r3)
/* 805C0FC8  7C 04 04 2E */	lfsx f0, r4, r0
/* 805C0FCC  C0 3F 03 F0 */	lfs f1, 0x3f0(r31)
/* 805C0FD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805C0FD4  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 805C0FD8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C0FDC  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C0FE0  EC 01 00 B2 */	fmuls f0, f1, f2
/* 805C0FE4  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 805C0FE8  38 00 00 00 */	li r0, 0
/* 805C0FEC  98 1D 07 DC */	stb r0, 0x7dc(r29)
/* 805C0FF0  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 805C0FF4  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C0FF8  7C 65 1B 78 */	mr r5, r3
/* 805C0FFC  4B D8 60 94 */	b PSVECAdd
/* 805C1000  C0 3D 07 AC */	lfs f1, 0x7ac(r29)
/* 805C1004  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 805C1008  EC 01 00 2A */	fadds f0, f1, f0
/* 805C100C  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C1010  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 805C1014  38 03 00 01 */	addi r0, r3, 1
/* 805C1018  90 1D 07 0C */	stw r0, 0x70c(r29)
lbl_805C101C:
/* 805C101C  38 61 00 6C */	addi r3, r1, 0x6c
/* 805C1020  38 9D 07 A8 */	addi r4, r29, 0x7a8
/* 805C1024  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C1028  4B CA 5B 0C */	b __mi__4cXyzCFRC3Vec
/* 805C102C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 805C1030  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C1034  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 805C1038  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C103C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 805C1040  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C1044  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1048  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C104C  38 61 00 78 */	addi r3, r1, 0x78
/* 805C1050  4B CA 60 D8 */	b atan2sX_Z__4cXyzCFv
/* 805C1054  7C 63 07 34 */	extsh r3, r3
/* 805C1058  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805C105C  7C 03 00 50 */	subf r0, r3, r0
/* 805C1060  7C 03 07 34 */	extsh r3, r0
/* 805C1064  4B DA 40 6C */	b abs
/* 805C1068  2C 03 02 00 */	cmpwi r3, 0x200
/* 805C106C  41 81 0C 1C */	bgt lbl_805C1C88
/* 805C1070  38 00 00 00 */	li r0, 0
/* 805C1074  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 805C1078  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 805C107C  38 03 00 01 */	addi r0, r3, 1
/* 805C1080  90 1D 07 0C */	stw r0, 0x70c(r29)
lbl_805C1084:
/* 805C1084  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 805C1088  2C 00 00 02 */	cmpwi r0, 2
/* 805C108C  40 82 00 5C */	bne lbl_805C10E8
/* 805C1090  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805C1094  2C 00 00 35 */	cmpwi r0, 0x35
/* 805C1098  41 82 00 50 */	beq lbl_805C10E8
/* 805C109C  7F A3 EB 78 */	mr r3, r29
/* 805C10A0  38 80 00 00 */	li r4, 0
/* 805C10A4  4B FF B1 A5 */	bl mHabatakiAnmSet__8daB_DR_cFi
/* 805C10A8  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805C10AC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805C10B0  41 82 00 28 */	beq lbl_805C10D8
/* 805C10B4  2C 00 00 2E */	cmpwi r0, 0x2e
/* 805C10B8  40 82 00 3C */	bne lbl_805C10F4
/* 805C10BC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805C10C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C10C4  FC 00 00 1E */	fctiwz f0, f0
/* 805C10C8  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 805C10CC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805C10D0  2C 00 00 0F */	cmpwi r0, 0xf
/* 805C10D4  41 80 00 20 */	blt lbl_805C10F4
lbl_805C10D8:
/* 805C10D8  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 805C10DC  38 03 00 01 */	addi r0, r3, 1
/* 805C10E0  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 805C10E4  48 00 0B A4 */	b lbl_805C1C88
lbl_805C10E8:
/* 805C10E8  7F A3 EB 78 */	mr r3, r29
/* 805C10EC  38 80 00 00 */	li r4, 0
/* 805C10F0  4B FF B4 8D */	bl mGlider_AniSet__8daB_DR_cFb
lbl_805C10F4:
/* 805C10F4  38 61 00 60 */	addi r3, r1, 0x60
/* 805C10F8  38 9D 07 A8 */	addi r4, r29, 0x7a8
/* 805C10FC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C1100  4B CA 5A 34 */	b __mi__4cXyzCFRC3Vec
/* 805C1104  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805C1108  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C110C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 805C1110  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1114  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 805C1118  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C111C  38 61 00 78 */	addi r3, r1, 0x78
/* 805C1120  4B D8 60 18 */	b PSVECSquareMag
/* 805C1124  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C112C  40 81 00 58 */	ble lbl_805C1184
/* 805C1130  FC 00 08 34 */	frsqrte f0, f1
/* 805C1134  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805C1138  FC 44 00 32 */	fmul f2, f4, f0
/* 805C113C  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805C1140  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1144  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1148  FC 03 00 28 */	fsub f0, f3, f0
/* 805C114C  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1150  FC 44 00 32 */	fmul f2, f4, f0
/* 805C1154  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1158  FC 01 00 32 */	fmul f0, f1, f0
/* 805C115C  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1160  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1164  FC 44 00 32 */	fmul f2, f4, f0
/* 805C1168  FC 00 00 32 */	fmul f0, f0, f0
/* 805C116C  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1170  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1174  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1178  FC 21 00 32 */	fmul f1, f1, f0
/* 805C117C  FC 20 08 18 */	frsp f1, f1
/* 805C1180  48 00 00 88 */	b lbl_805C1208
lbl_805C1184:
/* 805C1184  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805C1188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C118C  40 80 00 10 */	bge lbl_805C119C
/* 805C1190  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C1194  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C1198  48 00 00 70 */	b lbl_805C1208
lbl_805C119C:
/* 805C119C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805C11A0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805C11A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C11A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C11AC  7C 03 00 00 */	cmpw r3, r0
/* 805C11B0  41 82 00 14 */	beq lbl_805C11C4
/* 805C11B4  40 80 00 40 */	bge lbl_805C11F4
/* 805C11B8  2C 03 00 00 */	cmpwi r3, 0
/* 805C11BC  41 82 00 20 */	beq lbl_805C11DC
/* 805C11C0  48 00 00 34 */	b lbl_805C11F4
lbl_805C11C4:
/* 805C11C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C11C8  41 82 00 0C */	beq lbl_805C11D4
/* 805C11CC  38 00 00 01 */	li r0, 1
/* 805C11D0  48 00 00 28 */	b lbl_805C11F8
lbl_805C11D4:
/* 805C11D4  38 00 00 02 */	li r0, 2
/* 805C11D8  48 00 00 20 */	b lbl_805C11F8
lbl_805C11DC:
/* 805C11DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C11E0  41 82 00 0C */	beq lbl_805C11EC
/* 805C11E4  38 00 00 05 */	li r0, 5
/* 805C11E8  48 00 00 10 */	b lbl_805C11F8
lbl_805C11EC:
/* 805C11EC  38 00 00 03 */	li r0, 3
/* 805C11F0  48 00 00 08 */	b lbl_805C11F8
lbl_805C11F4:
/* 805C11F4  38 00 00 04 */	li r0, 4
lbl_805C11F8:
/* 805C11F8  2C 00 00 01 */	cmpwi r0, 1
/* 805C11FC  40 82 00 0C */	bne lbl_805C1208
/* 805C1200  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C1204  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C1208:
/* 805C1208  C0 1F 03 E0 */	lfs f0, 0x3e0(r31)
/* 805C120C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1210  40 80 00 A0 */	bge lbl_805C12B0
/* 805C1214  88 1D 07 E9 */	lbz r0, 0x7e9(r29)
/* 805C1218  28 00 00 00 */	cmplwi r0, 0
/* 805C121C  40 82 00 14 */	bne lbl_805C1230
/* 805C1220  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C1224  38 03 00 01 */	addi r0, r3, 1
/* 805C1228  98 1D 07 E4 */	stb r0, 0x7e4(r29)
/* 805C122C  48 00 00 10 */	b lbl_805C123C
lbl_805C1230:
/* 805C1230  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C1234  38 03 FF FF */	addi r0, r3, -1
/* 805C1238  98 1D 07 E4 */	stb r0, 0x7e4(r29)
lbl_805C123C:
/* 805C123C  88 1D 07 E7 */	lbz r0, 0x7e7(r29)
/* 805C1240  28 00 00 00 */	cmplwi r0, 0
/* 805C1244  40 82 00 14 */	bne lbl_805C1258
/* 805C1248  38 00 01 90 */	li r0, 0x190
/* 805C124C  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 805C1250  38 00 00 01 */	li r0, 1
/* 805C1254  98 1D 07 E7 */	stb r0, 0x7e7(r29)
lbl_805C1258:
/* 805C1258  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805C125C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 805C1260  88 1D 07 E4 */	lbz r0, 0x7e4(r29)
/* 805C1264  54 00 64 26 */	rlwinm r0, r0, 0xc, 0x10, 0x13
/* 805C1268  7C 64 02 14 */	add r3, r4, r0
/* 805C126C  C0 43 00 04 */	lfs f2, 4(r3)
/* 805C1270  7C 04 04 2E */	lfsx f0, r4, r0
/* 805C1274  C0 3F 03 F0 */	lfs f1, 0x3f0(r31)
/* 805C1278  EC 01 00 32 */	fmuls f0, f1, f0
/* 805C127C  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 805C1280  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1284  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C1288  EC 01 00 B2 */	fmuls f0, f1, f2
/* 805C128C  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 805C1290  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 805C1294  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C1298  7C 65 1B 78 */	mr r5, r3
/* 805C129C  4B D8 5D F4 */	b PSVECAdd
/* 805C12A0  C0 3D 07 AC */	lfs f1, 0x7ac(r29)
/* 805C12A4  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 805C12A8  EC 01 00 2A */	fadds f0, f1, f0
/* 805C12AC  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
lbl_805C12B0:
/* 805C12B0  88 1D 07 E7 */	lbz r0, 0x7e7(r29)
/* 805C12B4  28 00 00 00 */	cmplwi r0, 0
/* 805C12B8  41 82 09 D0 */	beq lbl_805C1C88
/* 805C12BC  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805C12C0  C0 1F 03 F4 */	lfs f0, 0x3f4(r31)
/* 805C12C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C12C8  4C 40 13 82 */	cror 2, 0, 2
/* 805C12CC  40 82 09 BC */	bne lbl_805C1C88
/* 805C12D0  88 1D 07 D1 */	lbz r0, 0x7d1(r29)
/* 805C12D4  28 00 00 00 */	cmplwi r0, 0
/* 805C12D8  41 82 00 28 */	beq lbl_805C1300
/* 805C12DC  7F A3 EB 78 */	mr r3, r29
/* 805C12E0  4B FF BD 7D */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C12E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C12E8  40 82 00 18 */	bne lbl_805C1300
/* 805C12EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C12F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C12F4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805C12F8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 805C12FC  40 82 09 8C */	bne lbl_805C1C88
lbl_805C1300:
/* 805C1300  38 00 00 00 */	li r0, 0
/* 805C1304  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 805C1308  38 61 00 54 */	addi r3, r1, 0x54
/* 805C130C  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C1310  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805C1314  4B CA 58 20 */	b __mi__4cXyzCFRC3Vec
/* 805C1318  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805C131C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C1320  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805C1324  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1328  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805C132C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C1330  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1334  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1338  88 1D 07 D1 */	lbz r0, 0x7d1(r29)
/* 805C133C  28 00 00 00 */	cmplwi r0, 0
/* 805C1340  41 82 00 14 */	beq lbl_805C1354
/* 805C1344  7F A3 EB 78 */	mr r3, r29
/* 805C1348  4B FF BD 15 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C134C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C1350  40 82 01 A4 */	bne lbl_805C14F4
lbl_805C1354:
/* 805C1354  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 805C1358  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C135C  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C1360  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 805C1364  FC 00 08 50 */	fneg f0, f1
/* 805C1368  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C136C  4C 41 13 82 */	cror 2, 1, 2
/* 805C1370  40 82 01 84 */	bne lbl_805C14F4
/* 805C1374  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805C1378  4C 40 13 82 */	cror 2, 0, 2
/* 805C137C  40 82 01 78 */	bne lbl_805C14F4
/* 805C1380  38 61 00 48 */	addi r3, r1, 0x48
/* 805C1384  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C1388  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C138C  4B CA 57 A8 */	b __mi__4cXyzCFRC3Vec
/* 805C1390  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805C1394  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C1398  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805C139C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C13A0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805C13A4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C13A8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C13AC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C13B0  38 61 00 78 */	addi r3, r1, 0x78
/* 805C13B4  4B D8 5D 84 */	b PSVECSquareMag
/* 805C13B8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C13BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C13C0  40 81 00 58 */	ble lbl_805C1418
/* 805C13C4  FC 00 08 34 */	frsqrte f0, f1
/* 805C13C8  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805C13CC  FC 44 00 32 */	fmul f2, f4, f0
/* 805C13D0  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805C13D4  FC 00 00 32 */	fmul f0, f0, f0
/* 805C13D8  FC 01 00 32 */	fmul f0, f1, f0
/* 805C13DC  FC 03 00 28 */	fsub f0, f3, f0
/* 805C13E0  FC 02 00 32 */	fmul f0, f2, f0
/* 805C13E4  FC 44 00 32 */	fmul f2, f4, f0
/* 805C13E8  FC 00 00 32 */	fmul f0, f0, f0
/* 805C13EC  FC 01 00 32 */	fmul f0, f1, f0
/* 805C13F0  FC 03 00 28 */	fsub f0, f3, f0
/* 805C13F4  FC 02 00 32 */	fmul f0, f2, f0
/* 805C13F8  FC 44 00 32 */	fmul f2, f4, f0
/* 805C13FC  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1400  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1404  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1408  FC 02 00 32 */	fmul f0, f2, f0
/* 805C140C  FC 21 00 32 */	fmul f1, f1, f0
/* 805C1410  FC 20 08 18 */	frsp f1, f1
/* 805C1414  48 00 00 88 */	b lbl_805C149C
lbl_805C1418:
/* 805C1418  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805C141C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1420  40 80 00 10 */	bge lbl_805C1430
/* 805C1424  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C1428  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C142C  48 00 00 70 */	b lbl_805C149C
lbl_805C1430:
/* 805C1430  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805C1434  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805C1438  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C143C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C1440  7C 03 00 00 */	cmpw r3, r0
/* 805C1444  41 82 00 14 */	beq lbl_805C1458
/* 805C1448  40 80 00 40 */	bge lbl_805C1488
/* 805C144C  2C 03 00 00 */	cmpwi r3, 0
/* 805C1450  41 82 00 20 */	beq lbl_805C1470
/* 805C1454  48 00 00 34 */	b lbl_805C1488
lbl_805C1458:
/* 805C1458  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C145C  41 82 00 0C */	beq lbl_805C1468
/* 805C1460  38 00 00 01 */	li r0, 1
/* 805C1464  48 00 00 28 */	b lbl_805C148C
lbl_805C1468:
/* 805C1468  38 00 00 02 */	li r0, 2
/* 805C146C  48 00 00 20 */	b lbl_805C148C
lbl_805C1470:
/* 805C1470  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C1474  41 82 00 0C */	beq lbl_805C1480
/* 805C1478  38 00 00 05 */	li r0, 5
/* 805C147C  48 00 00 10 */	b lbl_805C148C
lbl_805C1480:
/* 805C1480  38 00 00 03 */	li r0, 3
/* 805C1484  48 00 00 08 */	b lbl_805C148C
lbl_805C1488:
/* 805C1488  38 00 00 04 */	li r0, 4
lbl_805C148C:
/* 805C148C  2C 00 00 01 */	cmpwi r0, 1
/* 805C1490  40 82 00 0C */	bne lbl_805C149C
/* 805C1494  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C1498  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C149C:
/* 805C149C  D0 3D 07 3C */	stfs f1, 0x73c(r29)
/* 805C14A0  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 805C14A4  D0 1D 07 B4 */	stfs f0, 0x7b4(r29)
/* 805C14A8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805C14AC  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 805C14B0  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 805C14B4  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 805C14B8  88 1D 07 E9 */	lbz r0, 0x7e9(r29)
/* 805C14BC  28 00 00 00 */	cmplwi r0, 0
/* 805C14C0  40 82 00 14 */	bne lbl_805C14D4
/* 805C14C4  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C14C8  38 03 00 01 */	addi r0, r3, 1
/* 805C14CC  98 1D 07 E4 */	stb r0, 0x7e4(r29)
/* 805C14D0  48 00 00 10 */	b lbl_805C14E0
lbl_805C14D4:
/* 805C14D4  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C14D8  38 03 FF FF */	addi r0, r3, -1
/* 805C14DC  98 1D 07 E4 */	stb r0, 0x7e4(r29)
lbl_805C14E0:
/* 805C14E0  38 00 00 0A */	li r0, 0xa
/* 805C14E4  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 805C14E8  C0 1F 03 F8 */	lfs f0, 0x3f8(r31)
/* 805C14EC  D0 1D 07 48 */	stfs f0, 0x748(r29)
/* 805C14F0  48 00 01 4C */	b lbl_805C163C
lbl_805C14F4:
/* 805C14F4  38 61 00 3C */	addi r3, r1, 0x3c
/* 805C14F8  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C14FC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C1500  4B CA 56 34 */	b __mi__4cXyzCFRC3Vec
/* 805C1504  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805C1508  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C150C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805C1510  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1514  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805C1518  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C151C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1520  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1524  38 61 00 78 */	addi r3, r1, 0x78
/* 805C1528  4B D8 5C 10 */	b PSVECSquareMag
/* 805C152C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1534  40 81 00 58 */	ble lbl_805C158C
/* 805C1538  FC 00 08 34 */	frsqrte f0, f1
/* 805C153C  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805C1540  FC 44 00 32 */	fmul f2, f4, f0
/* 805C1544  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805C1548  FC 00 00 32 */	fmul f0, f0, f0
/* 805C154C  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1550  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1554  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1558  FC 44 00 32 */	fmul f2, f4, f0
/* 805C155C  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1560  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1564  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1568  FC 02 00 32 */	fmul f0, f2, f0
/* 805C156C  FC 44 00 32 */	fmul f2, f4, f0
/* 805C1570  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1574  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1578  FC 03 00 28 */	fsub f0, f3, f0
/* 805C157C  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1580  FC 21 00 32 */	fmul f1, f1, f0
/* 805C1584  FC 20 08 18 */	frsp f1, f1
/* 805C1588  48 00 00 88 */	b lbl_805C1610
lbl_805C158C:
/* 805C158C  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805C1590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1594  40 80 00 10 */	bge lbl_805C15A4
/* 805C1598  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C159C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C15A0  48 00 00 70 */	b lbl_805C1610
lbl_805C15A4:
/* 805C15A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805C15A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805C15AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C15B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C15B4  7C 03 00 00 */	cmpw r3, r0
/* 805C15B8  41 82 00 14 */	beq lbl_805C15CC
/* 805C15BC  40 80 00 40 */	bge lbl_805C15FC
/* 805C15C0  2C 03 00 00 */	cmpwi r3, 0
/* 805C15C4  41 82 00 20 */	beq lbl_805C15E4
/* 805C15C8  48 00 00 34 */	b lbl_805C15FC
lbl_805C15CC:
/* 805C15CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C15D0  41 82 00 0C */	beq lbl_805C15DC
/* 805C15D4  38 00 00 01 */	li r0, 1
/* 805C15D8  48 00 00 28 */	b lbl_805C1600
lbl_805C15DC:
/* 805C15DC  38 00 00 02 */	li r0, 2
/* 805C15E0  48 00 00 20 */	b lbl_805C1600
lbl_805C15E4:
/* 805C15E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C15E8  41 82 00 0C */	beq lbl_805C15F4
/* 805C15EC  38 00 00 05 */	li r0, 5
/* 805C15F0  48 00 00 10 */	b lbl_805C1600
lbl_805C15F4:
/* 805C15F4  38 00 00 03 */	li r0, 3
/* 805C15F8  48 00 00 08 */	b lbl_805C1600
lbl_805C15FC:
/* 805C15FC  38 00 00 04 */	li r0, 4
lbl_805C1600:
/* 805C1600  2C 00 00 01 */	cmpwi r0, 1
/* 805C1604  40 82 00 0C */	bne lbl_805C1610
/* 805C1608  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C160C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C1610:
/* 805C1610  D0 3D 07 3C */	stfs f1, 0x73c(r29)
/* 805C1614  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 805C1618  D0 1D 07 B4 */	stfs f0, 0x7b4(r29)
/* 805C161C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805C1620  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 805C1624  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 805C1628  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 805C162C  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 805C1630  D0 1D 07 48 */	stfs f0, 0x748(r29)
/* 805C1634  38 00 00 0B */	li r0, 0xb
/* 805C1638  90 1D 07 0C */	stw r0, 0x70c(r29)
lbl_805C163C:
/* 805C163C  88 1D 07 E9 */	lbz r0, 0x7e9(r29)
/* 805C1640  28 00 00 00 */	cmplwi r0, 0
/* 805C1644  40 82 00 14 */	bne lbl_805C1658
/* 805C1648  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C164C  38 03 00 01 */	addi r0, r3, 1
/* 805C1650  98 1D 07 E4 */	stb r0, 0x7e4(r29)
/* 805C1654  48 00 00 10 */	b lbl_805C1664
lbl_805C1658:
/* 805C1658  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C165C  38 03 FF FF */	addi r0, r3, -1
/* 805C1660  98 1D 07 E4 */	stb r0, 0x7e4(r29)
lbl_805C1664:
/* 805C1664  38 00 00 00 */	li r0, 0
/* 805C1668  98 1D 07 D6 */	stb r0, 0x7d6(r29)
/* 805C166C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805C1670  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 805C1674  88 1D 07 E4 */	lbz r0, 0x7e4(r29)
/* 805C1678  54 00 64 26 */	rlwinm r0, r0, 0xc, 0x10, 0x13
/* 805C167C  7C 64 02 14 */	add r3, r4, r0
/* 805C1680  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C1684  C0 5D 07 3C */	lfs f2, 0x73c(r29)
/* 805C1688  EC 22 00 32 */	fmuls f1, f2, f0
/* 805C168C  7C 04 04 2E */	lfsx f0, r4, r0
/* 805C1690  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C1694  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 805C1698  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C169C  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C16A0  D0 3D 07 B0 */	stfs f1, 0x7b0(r29)
/* 805C16A4  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 805C16A8  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C16AC  7C 65 1B 78 */	mr r5, r3
/* 805C16B0  4B D8 59 E0 */	b PSVECAdd
/* 805C16B4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805C16B8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C16BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C16C0  4C 41 13 82 */	cror 2, 1, 2
/* 805C16C4  40 82 00 14 */	bne lbl_805C16D8
/* 805C16C8  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 805C16CC  EC 01 00 2A */	fadds f0, f1, f0
/* 805C16D0  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C16D4  48 00 05 B4 */	b lbl_805C1C88
lbl_805C16D8:
/* 805C16D8  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 805C16DC  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C16E0  48 00 05 A8 */	b lbl_805C1C88
lbl_805C16E4:
/* 805C16E4  C0 3F 03 CC */	lfs f1, 0x3cc(r31)
/* 805C16E8  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 805C16EC  EF E1 00 2A */	fadds f31, f1, f0
/* 805C16F0  38 61 00 30 */	addi r3, r1, 0x30
/* 805C16F4  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C16F8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C16FC  4B CA 54 38 */	b __mi__4cXyzCFRC3Vec
/* 805C1700  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805C1704  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C1708  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805C170C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1710  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805C1714  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C1718  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C171C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1720  C0 3D 07 3C */	lfs f1, 0x73c(r29)
/* 805C1724  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805C1728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C172C  40 80 00 18 */	bge lbl_805C1744
/* 805C1730  38 00 00 01 */	li r0, 1
/* 805C1734  98 1D 07 DC */	stb r0, 0x7dc(r29)
/* 805C1738  7F A3 EB 78 */	mr r3, r29
/* 805C173C  38 80 00 01 */	li r4, 1
/* 805C1740  4B FF AE 3D */	bl mGlider_AniSet__8daB_DR_cFb
lbl_805C1744:
/* 805C1744  C0 3D 07 3C */	lfs f1, 0x73c(r29)
/* 805C1748  C0 1F 03 FC */	lfs f0, 0x3fc(r31)
/* 805C174C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1750  40 80 00 34 */	bge lbl_805C1784
/* 805C1754  88 1D 07 D1 */	lbz r0, 0x7d1(r29)
/* 805C1758  28 00 00 00 */	cmplwi r0, 0
/* 805C175C  41 82 00 28 */	beq lbl_805C1784
/* 805C1760  7F A3 EB 78 */	mr r3, r29
/* 805C1764  4B FF B8 F9 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C1768  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C176C  40 82 00 18 */	bne lbl_805C1784
/* 805C1770  7F A3 EB 78 */	mr r3, r29
/* 805C1774  38 80 00 08 */	li r4, 8
/* 805C1778  38 A0 00 00 */	li r5, 0
/* 805C177C  4B FF 9D 39 */	bl setActionMode__8daB_DR_cFii
/* 805C1780  48 00 06 6C */	b lbl_805C1DEC
lbl_805C1784:
/* 805C1784  88 1D 07 DC */	lbz r0, 0x7dc(r29)
/* 805C1788  28 00 00 00 */	cmplwi r0, 0
/* 805C178C  41 82 00 14 */	beq lbl_805C17A0
/* 805C1790  7F A3 EB 78 */	mr r3, r29
/* 805C1794  38 80 00 01 */	li r4, 1
/* 805C1798  4B FF AD E5 */	bl mGlider_AniSet__8daB_DR_cFb
/* 805C179C  48 00 00 10 */	b lbl_805C17AC
lbl_805C17A0:
/* 805C17A0  7F A3 EB 78 */	mr r3, r29
/* 805C17A4  38 80 00 00 */	li r4, 0
/* 805C17A8  4B FF AD D5 */	bl mGlider_AniSet__8daB_DR_cFb
lbl_805C17AC:
/* 805C17AC  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 805C17B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 805C17B4  40 82 00 CC */	bne lbl_805C1880
/* 805C17B8  C3 FF 04 00 */	lfs f31, 0x400(r31)
/* 805C17BC  C0 3D 07 3C */	lfs f1, 0x73c(r29)
/* 805C17C0  C0 1F 03 F0 */	lfs f0, 0x3f0(r31)
/* 805C17C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C17C8  41 81 00 18 */	bgt lbl_805C17E0
/* 805C17CC  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805C17D0  2C 00 00 30 */	cmpwi r0, 0x30
/* 805C17D4  41 82 00 0C */	beq lbl_805C17E0
/* 805C17D8  2C 00 00 33 */	cmpwi r0, 0x33
/* 805C17DC  40 82 00 14 */	bne lbl_805C17F0
lbl_805C17E0:
/* 805C17E0  7F A3 EB 78 */	mr r3, r29
/* 805C17E4  38 80 00 01 */	li r4, 1
/* 805C17E8  4B FF AD 95 */	bl mGlider_AniSet__8daB_DR_cFb
/* 805C17EC  48 00 00 38 */	b lbl_805C1824
lbl_805C17F0:
/* 805C17F0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805C17F4  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 805C17F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C17FC  4C 41 13 82 */	cror 2, 1, 2
/* 805C1800  40 82 00 24 */	bne lbl_805C1824
/* 805C1804  C0 1F 03 64 */	lfs f0, 0x364(r31)
/* 805C1808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C180C  4C 40 13 82 */	cror 2, 0, 2
/* 805C1810  40 82 00 14 */	bne lbl_805C1824
/* 805C1814  7F A3 EB 78 */	mr r3, r29
/* 805C1818  4B FF B0 9D */	bl mGliderAtAniSet__8daB_DR_cFv
/* 805C181C  38 00 00 01 */	li r0, 1
/* 805C1820  98 1D 07 DC */	stb r0, 0x7dc(r29)
lbl_805C1824:
/* 805C1824  C0 3F 03 68 */	lfs f1, 0x368(r31)
/* 805C1828  C0 1D 08 C8 */	lfs f0, 0x8c8(r29)
/* 805C182C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C1830  41 82 00 3C */	beq lbl_805C186C
/* 805C1834  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805C1838  2C 00 00 45 */	cmpwi r0, 0x45
/* 805C183C  40 82 00 28 */	bne lbl_805C1864
/* 805C1840  88 7D 07 E5 */	lbz r3, 0x7e5(r29)
/* 805C1844  38 03 00 01 */	addi r0, r3, 1
/* 805C1848  98 1D 07 E5 */	stb r0, 0x7e5(r29)
/* 805C184C  88 1D 07 E5 */	lbz r0, 0x7e5(r29)
/* 805C1850  28 00 00 00 */	cmplwi r0, 0
/* 805C1854  41 82 00 10 */	beq lbl_805C1864
/* 805C1858  C3 FF 03 F8 */	lfs f31, 0x3f8(r31)
/* 805C185C  38 00 00 01 */	li r0, 1
/* 805C1860  98 1D 07 E5 */	stb r0, 0x7e5(r29)
lbl_805C1864:
/* 805C1864  38 00 00 01 */	li r0, 1
/* 805C1868  98 1D 07 DC */	stb r0, 0x7dc(r29)
lbl_805C186C:
/* 805C186C  88 1D 07 DC */	lbz r0, 0x7dc(r29)
/* 805C1870  28 00 00 00 */	cmplwi r0, 0
/* 805C1874  41 82 00 0C */	beq lbl_805C1880
/* 805C1878  7F A3 EB 78 */	mr r3, r29
/* 805C187C  4B FF B0 39 */	bl mGliderAtAniSet__8daB_DR_cFv
lbl_805C1880:
/* 805C1880  38 7D 07 48 */	addi r3, r29, 0x748
/* 805C1884  FC 20 F8 90 */	fmr f1, f31
/* 805C1888  C0 5F 03 90 */	lfs f2, 0x390(r31)
/* 805C188C  C0 7F 04 08 */	lfs f3, 0x408(r31)
/* 805C1890  4B CA E1 AC */	b cLib_addCalc2__FPffff
/* 805C1894  7F A3 EB 78 */	mr r3, r29
/* 805C1898  C0 3D 07 48 */	lfs f1, 0x748(r29)
/* 805C189C  4B FF F4 11 */	bl mGliderMoveSub__8daB_DR_cFf
/* 805C18A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C18A4  41 82 03 E4 */	beq lbl_805C1C88
/* 805C18A8  C0 3D 07 3C */	lfs f1, 0x73c(r29)
/* 805C18AC  C0 1F 03 E0 */	lfs f0, 0x3e0(r31)
/* 805C18B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C18B4  40 80 01 10 */	bge lbl_805C19C4
/* 805C18B8  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 805C18BC  2C 00 00 0B */	cmpwi r0, 0xb
/* 805C18C0  40 82 00 64 */	bne lbl_805C1924
/* 805C18C4  7F A3 EB 78 */	mr r3, r29
/* 805C18C8  4B FF B7 95 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C18CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C18D0  41 82 00 18 */	beq lbl_805C18E8
/* 805C18D4  7F A3 EB 78 */	mr r3, r29
/* 805C18D8  38 80 00 05 */	li r4, 5
/* 805C18DC  38 A0 00 00 */	li r5, 0
/* 805C18E0  4B FF 9B D5 */	bl setActionMode__8daB_DR_cFii
/* 805C18E4  48 00 05 08 */	b lbl_805C1DEC
lbl_805C18E8:
/* 805C18E8  88 1D 07 D1 */	lbz r0, 0x7d1(r29)
/* 805C18EC  28 00 00 02 */	cmplwi r0, 2
/* 805C18F0  40 82 00 18 */	bne lbl_805C1908
/* 805C18F4  7F A3 EB 78 */	mr r3, r29
/* 805C18F8  38 80 00 01 */	li r4, 1
/* 805C18FC  38 A0 00 00 */	li r5, 0
/* 805C1900  4B FF 9B B5 */	bl setActionMode__8daB_DR_cFii
/* 805C1904  48 00 04 E8 */	b lbl_805C1DEC
lbl_805C1908:
/* 805C1908  28 00 00 00 */	cmplwi r0, 0
/* 805C190C  40 82 04 E0 */	bne lbl_805C1DEC
/* 805C1910  7F A3 EB 78 */	mr r3, r29
/* 805C1914  38 80 00 04 */	li r4, 4
/* 805C1918  38 A0 00 00 */	li r5, 0
/* 805C191C  4B FF 9B 99 */	bl setActionMode__8daB_DR_cFii
/* 805C1920  48 00 04 CC */	b lbl_805C1DEC
lbl_805C1924:
/* 805C1924  88 1D 07 E9 */	lbz r0, 0x7e9(r29)
/* 805C1928  28 00 00 00 */	cmplwi r0, 0
/* 805C192C  40 82 00 10 */	bne lbl_805C193C
/* 805C1930  38 00 00 01 */	li r0, 1
/* 805C1934  98 1D 07 E4 */	stb r0, 0x7e4(r29)
/* 805C1938  48 00 00 0C */	b lbl_805C1944
lbl_805C193C:
/* 805C193C  38 00 00 4F */	li r0, 0x4f
/* 805C1940  98 1D 07 E4 */	stb r0, 0x7e4(r29)
lbl_805C1944:
/* 805C1944  C0 1F 03 F0 */	lfs f0, 0x3f0(r31)
/* 805C1948  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 805C194C  C0 1F 03 F8 */	lfs f0, 0x3f8(r31)
/* 805C1950  D0 1D 07 40 */	stfs f0, 0x740(r29)
/* 805C1954  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805C1958  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 805C195C  88 1D 07 E4 */	lbz r0, 0x7e4(r29)
/* 805C1960  54 00 64 26 */	rlwinm r0, r0, 0xc, 0x10, 0x13
/* 805C1964  7C 64 02 14 */	add r3, r4, r0
/* 805C1968  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C196C  C0 5D 07 3C */	lfs f2, 0x73c(r29)
/* 805C1970  EC 22 00 32 */	fmuls f1, f2, f0
/* 805C1974  7C 04 04 2E */	lfsx f0, r4, r0
/* 805C1978  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C197C  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 805C1980  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1984  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C1988  D0 3D 07 B0 */	stfs f1, 0x7b0(r29)
/* 805C198C  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 805C1990  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C1994  7C 65 1B 78 */	mr r5, r3
/* 805C1998  4B D8 56 F8 */	b PSVECAdd
/* 805C199C  C0 3D 07 AC */	lfs f1, 0x7ac(r29)
/* 805C19A0  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 805C19A4  EC 01 00 2A */	fadds f0, f1, f0
/* 805C19A8  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 805C19AC  38 00 00 00 */	li r0, 0
/* 805C19B0  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 805C19B4  98 1D 07 E6 */	stb r0, 0x7e6(r29)
/* 805C19B8  38 00 00 14 */	li r0, 0x14
/* 805C19BC  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 805C19C0  48 00 02 C8 */	b lbl_805C1C88
lbl_805C19C4:
/* 805C19C4  C0 1F 03 64 */	lfs f0, 0x364(r31)
/* 805C19C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C19CC  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 805C19D0  48 00 02 B8 */	b lbl_805C1C88
lbl_805C19D4:
/* 805C19D4  4B FF 9A F9 */	bl mGlider_WindPosSet__8daB_DR_cFv
/* 805C19D8  C3 FF 03 F8 */	lfs f31, 0x3f8(r31)
/* 805C19DC  88 1D 07 E6 */	lbz r0, 0x7e6(r29)
/* 805C19E0  28 00 00 00 */	cmplwi r0, 0
/* 805C19E4  40 82 00 1C */	bne lbl_805C1A00
/* 805C19E8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805C19EC  C0 1F 03 E0 */	lfs f0, 0x3e0(r31)
/* 805C19F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C19F4  40 81 00 0C */	ble lbl_805C1A00
/* 805C19F8  38 00 00 01 */	li r0, 1
/* 805C19FC  98 1D 07 E6 */	stb r0, 0x7e6(r29)
lbl_805C1A00:
/* 805C1A00  88 1D 07 E6 */	lbz r0, 0x7e6(r29)
/* 805C1A04  28 00 00 00 */	cmplwi r0, 0
/* 805C1A08  41 82 00 14 */	beq lbl_805C1A1C
/* 805C1A0C  C3 FF 04 00 */	lfs f31, 0x400(r31)
/* 805C1A10  7F A3 EB 78 */	mr r3, r29
/* 805C1A14  38 80 00 00 */	li r4, 0
/* 805C1A18  4B FF AB 65 */	bl mGlider_AniSet__8daB_DR_cFb
lbl_805C1A1C:
/* 805C1A1C  38 7D 07 48 */	addi r3, r29, 0x748
/* 805C1A20  FC 20 F8 90 */	fmr f1, f31
/* 805C1A24  C0 5F 03 90 */	lfs f2, 0x390(r31)
/* 805C1A28  C0 7F 04 08 */	lfs f3, 0x408(r31)
/* 805C1A2C  4B CA E0 10 */	b cLib_addCalc2__FPffff
/* 805C1A30  7F A3 EB 78 */	mr r3, r29
/* 805C1A34  C0 3D 07 48 */	lfs f1, 0x748(r29)
/* 805C1A38  4B FF F2 75 */	bl mGliderMoveSub__8daB_DR_cFf
/* 805C1A3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C1A40  41 82 02 48 */	beq lbl_805C1C88
/* 805C1A44  7F A3 EB 78 */	mr r3, r29
/* 805C1A48  38 80 00 00 */	li r4, 0
/* 805C1A4C  4B FF 9C 01 */	bl mStatusONOFF__8daB_DR_cFi
/* 805C1A50  38 60 00 00 */	li r3, 0
/* 805C1A54  98 7D 05 46 */	stb r3, 0x546(r29)
/* 805C1A58  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 805C1A5C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805C1A60  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 805C1A64  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805C1A68  54 00 00 3E */	slwi r0, r0, 0
/* 805C1A6C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805C1A70  98 7D 07 E6 */	stb r3, 0x7e6(r29)
/* 805C1A74  38 00 00 14 */	li r0, 0x14
/* 805C1A78  90 1D 07 C4 */	stw r0, 0x7c4(r29)
/* 805C1A7C  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 805C1A80  38 03 00 01 */	addi r0, r3, 1
/* 805C1A84  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 805C1A88  48 00 02 00 */	b lbl_805C1C88
lbl_805C1A8C:
/* 805C1A8C  C0 3F 03 64 */	lfs f1, 0x364(r31)
/* 805C1A90  4B FF F2 1D */	bl mGliderMoveSub__8daB_DR_cFf
/* 805C1A94  7F A3 EB 78 */	mr r3, r29
/* 805C1A98  38 80 00 00 */	li r4, 0
/* 805C1A9C  4B FF AA E1 */	bl mGlider_AniSet__8daB_DR_cFb
/* 805C1AA0  38 7D 07 C4 */	addi r3, r29, 0x7c4
/* 805C1AA4  48 00 51 39 */	bl func_805C6BDC
/* 805C1AA8  2C 03 00 00 */	cmpwi r3, 0
/* 805C1AAC  41 82 00 2C */	beq lbl_805C1AD8
/* 805C1AB0  7F A3 EB 78 */	mr r3, r29
/* 805C1AB4  4B FF 9A 19 */	bl mGlider_WindPosSet__8daB_DR_cFv
/* 805C1AB8  80 1D 07 C4 */	lwz r0, 0x7c4(r29)
/* 805C1ABC  2C 00 00 01 */	cmpwi r0, 1
/* 805C1AC0  40 82 01 C8 */	bne lbl_805C1C88
/* 805C1AC4  FC 00 F8 90 */	fmr f0, f31
/* 805C1AC8  D0 1D 07 9C */	stfs f0, 0x79c(r29)
/* 805C1ACC  D0 1D 07 A0 */	stfs f0, 0x7a0(r29)
/* 805C1AD0  D0 1D 07 A4 */	stfs f0, 0x7a4(r29)
/* 805C1AD4  48 00 01 B4 */	b lbl_805C1C88
lbl_805C1AD8:
/* 805C1AD8  C0 1F 03 F0 */	lfs f0, 0x3f0(r31)
/* 805C1ADC  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 805C1AE0  80 7D 07 0C */	lwz r3, 0x70c(r29)
/* 805C1AE4  38 03 00 01 */	addi r0, r3, 1
/* 805C1AE8  90 1D 07 0C */	stw r0, 0x70c(r29)
lbl_805C1AEC:
/* 805C1AEC  7F A3 EB 78 */	mr r3, r29
/* 805C1AF0  C0 3F 03 64 */	lfs f1, 0x364(r31)
/* 805C1AF4  4B FF F1 B9 */	bl mGliderMoveSub__8daB_DR_cFf
/* 805C1AF8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805C1AFC  C0 1F 04 04 */	lfs f0, 0x404(r31)
/* 805C1B00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1B04  40 80 01 78 */	bge lbl_805C1C7C
/* 805C1B08  38 61 00 24 */	addi r3, r1, 0x24
/* 805C1B0C  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 805C1B10  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C1B14  4B CA 50 20 */	b __mi__4cXyzCFRC3Vec
/* 805C1B18  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C1B1C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C1B20  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C1B24  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1B28  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805C1B2C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C1B30  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1B34  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1B38  38 61 00 78 */	addi r3, r1, 0x78
/* 805C1B3C  4B D8 55 FC */	b PSVECSquareMag
/* 805C1B40  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1B48  40 81 00 58 */	ble lbl_805C1BA0
/* 805C1B4C  FC 00 08 34 */	frsqrte f0, f1
/* 805C1B50  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805C1B54  FC 44 00 32 */	fmul f2, f4, f0
/* 805C1B58  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805C1B5C  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1B60  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1B64  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1B68  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1B6C  FC 44 00 32 */	fmul f2, f4, f0
/* 805C1B70  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1B74  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1B78  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1B7C  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1B80  FC 44 00 32 */	fmul f2, f4, f0
/* 805C1B84  FC 00 00 32 */	fmul f0, f0, f0
/* 805C1B88  FC 01 00 32 */	fmul f0, f1, f0
/* 805C1B8C  FC 03 00 28 */	fsub f0, f3, f0
/* 805C1B90  FC 02 00 32 */	fmul f0, f2, f0
/* 805C1B94  FC 21 00 32 */	fmul f1, f1, f0
/* 805C1B98  FC 20 08 18 */	frsp f1, f1
/* 805C1B9C  48 00 00 88 */	b lbl_805C1C24
lbl_805C1BA0:
/* 805C1BA0  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805C1BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C1BA8  40 80 00 10 */	bge lbl_805C1BB8
/* 805C1BAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C1BB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C1BB4  48 00 00 70 */	b lbl_805C1C24
lbl_805C1BB8:
/* 805C1BB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805C1BBC  80 81 00 08 */	lwz r4, 8(r1)
/* 805C1BC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C1BC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C1BC8  7C 03 00 00 */	cmpw r3, r0
/* 805C1BCC  41 82 00 14 */	beq lbl_805C1BE0
/* 805C1BD0  40 80 00 40 */	bge lbl_805C1C10
/* 805C1BD4  2C 03 00 00 */	cmpwi r3, 0
/* 805C1BD8  41 82 00 20 */	beq lbl_805C1BF8
/* 805C1BDC  48 00 00 34 */	b lbl_805C1C10
lbl_805C1BE0:
/* 805C1BE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C1BE4  41 82 00 0C */	beq lbl_805C1BF0
/* 805C1BE8  38 00 00 01 */	li r0, 1
/* 805C1BEC  48 00 00 28 */	b lbl_805C1C14
lbl_805C1BF0:
/* 805C1BF0  38 00 00 02 */	li r0, 2
/* 805C1BF4  48 00 00 20 */	b lbl_805C1C14
lbl_805C1BF8:
/* 805C1BF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C1BFC  41 82 00 0C */	beq lbl_805C1C08
/* 805C1C00  38 00 00 05 */	li r0, 5
/* 805C1C04  48 00 00 10 */	b lbl_805C1C14
lbl_805C1C08:
/* 805C1C08  38 00 00 03 */	li r0, 3
/* 805C1C0C  48 00 00 08 */	b lbl_805C1C14
lbl_805C1C10:
/* 805C1C10  38 00 00 04 */	li r0, 4
lbl_805C1C14:
/* 805C1C14  2C 00 00 01 */	cmpwi r0, 1
/* 805C1C18  40 82 00 0C */	bne lbl_805C1C24
/* 805C1C1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C1C20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C1C24:
/* 805C1C24  D0 3D 07 3C */	stfs f1, 0x73c(r29)
/* 805C1C28  88 1D 07 E9 */	lbz r0, 0x7e9(r29)
/* 805C1C2C  28 00 00 00 */	cmplwi r0, 0
/* 805C1C30  40 82 00 14 */	bne lbl_805C1C44
/* 805C1C34  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C1C38  38 03 00 01 */	addi r0, r3, 1
/* 805C1C3C  98 1D 07 E4 */	stb r0, 0x7e4(r29)
/* 805C1C40  48 00 00 10 */	b lbl_805C1C50
lbl_805C1C44:
/* 805C1C44  88 7D 07 E4 */	lbz r3, 0x7e4(r29)
/* 805C1C48  38 03 FF FF */	addi r0, r3, -1
/* 805C1C4C  98 1D 07 E4 */	stb r0, 0x7e4(r29)
lbl_805C1C50:
/* 805C1C50  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 805C1C54  D0 1D 07 B4 */	stfs f0, 0x7b4(r29)
/* 805C1C58  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805C1C5C  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 805C1C60  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 805C1C64  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 805C1C68  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 805C1C6C  D0 1D 07 48 */	stfs f0, 0x748(r29)
/* 805C1C70  38 00 00 0B */	li r0, 0xb
/* 805C1C74  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 805C1C78  48 00 00 10 */	b lbl_805C1C88
lbl_805C1C7C:
/* 805C1C7C  7F A3 EB 78 */	mr r3, r29
/* 805C1C80  38 80 00 00 */	li r4, 0
/* 805C1C84  4B FF A8 F9 */	bl mGlider_AniSet__8daB_DR_cFb
lbl_805C1C88:
/* 805C1C88  38 61 00 18 */	addi r3, r1, 0x18
/* 805C1C8C  38 9D 07 A8 */	addi r4, r29, 0x7a8
/* 805C1C90  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805C1C94  4B CA 4E A0 */	b __mi__4cXyzCFRC3Vec
/* 805C1C98  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C1C9C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C1CA0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805C1CA4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C1CA8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C1CAC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C1CB0  38 61 00 78 */	addi r3, r1, 0x78
/* 805C1CB4  4B CA 54 74 */	b atan2sX_Z__4cXyzCFv
/* 805C1CB8  7C 64 07 34 */	extsh r4, r3
/* 805C1CBC  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805C1CC0  A8 BD 07 50 */	lha r5, 0x750(r29)
/* 805C1CC4  38 C0 05 00 */	li r6, 0x500
/* 805C1CC8  4B CA E9 40 */	b cLib_addCalcAngleS2__FPssss
/* 805C1CCC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805C1CD0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805C1CD4  A8 BD 07 50 */	lha r5, 0x750(r29)
/* 805C1CD8  38 C0 05 00 */	li r6, 0x500
/* 805C1CDC  4B CA E9 2C */	b cLib_addCalcAngleS2__FPssss
/* 805C1CE0  38 7D 07 50 */	addi r3, r29, 0x750
/* 805C1CE4  38 80 00 08 */	li r4, 8
/* 805C1CE8  38 A0 00 14 */	li r5, 0x14
/* 805C1CEC  38 C0 00 28 */	li r6, 0x28
/* 805C1CF0  4B CA E9 18 */	b cLib_addCalcAngleS2__FPssss
/* 805C1CF4  38 61 00 78 */	addi r3, r1, 0x78
/* 805C1CF8  4B CA 54 58 */	b atan2sY_XZ__4cXyzCFv
/* 805C1CFC  7C 64 1B 78 */	mr r4, r3
/* 805C1D00  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 805C1D04  38 A0 00 14 */	li r5, 0x14
/* 805C1D08  38 C0 04 00 */	li r6, 0x400
/* 805C1D0C  4B CA E8 FC */	b cLib_addCalcAngleS2__FPssss
/* 805C1D10  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 805C1D14  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 805C1D18  38 A0 00 14 */	li r5, 0x14
/* 805C1D1C  38 C0 04 00 */	li r6, 0x400
/* 805C1D20  4B CA E8 E8 */	b cLib_addCalcAngleS2__FPssss
/* 805C1D24  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 805C1D28  2C 00 00 02 */	cmpwi r0, 2
/* 805C1D2C  41 80 00 28 */	blt lbl_805C1D54
/* 805C1D30  C0 3F 04 0C */	lfs f1, 0x40c(r31)
/* 805C1D34  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805C1D38  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805C1D3C  40 82 00 08 */	bne lbl_805C1D44
/* 805C1D40  C0 3F 04 10 */	lfs f1, 0x410(r31)
lbl_805C1D44:
/* 805C1D44  38 7D 05 2C */	addi r3, r29, 0x52c
/* 805C1D48  C0 5F 03 DC */	lfs f2, 0x3dc(r31)
/* 805C1D4C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 805C1D50  4B CA DC EC */	b cLib_addCalc2__FPffff
lbl_805C1D54:
/* 805C1D54  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 805C1D58  2C 00 00 0A */	cmpwi r0, 0xa
/* 805C1D5C  41 80 00 0C */	blt lbl_805C1D68
/* 805C1D60  2C 00 00 16 */	cmpwi r0, 0x16
/* 805C1D64  40 81 00 64 */	ble lbl_805C1DC8
lbl_805C1D68:
/* 805C1D68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805C1D6C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805C1D70  80 63 00 00 */	lwz r3, 0(r3)
/* 805C1D74  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805C1D78  4B A4 A6 64 */	b mDoMtx_YrotS__FPA4_fs
/* 805C1D7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805C1D80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805C1D84  80 63 00 00 */	lwz r3, 0(r3)
/* 805C1D88  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 805C1D8C  4B A4 A6 10 */	b mDoMtx_XrotM__FPA4_fs
/* 805C1D90  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C1D94  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C1D98  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805C1D9C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 805C1DA0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805C1DA4  38 61 00 84 */	addi r3, r1, 0x84
/* 805C1DA8  38 81 00 78 */	addi r4, r1, 0x78
/* 805C1DAC  4B CA F1 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 805C1DB0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 805C1DB4  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 805C1DB8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C1DBC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 805C1DC0  4B CA DC 7C */	b cLib_addCalc2__FPffff
/* 805C1DC4  48 00 00 28 */	b lbl_805C1DEC
lbl_805C1DC8:
/* 805C1DC8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 805C1DCC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805C1DD0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 805C1DD4  4B CA DC AC */	b cLib_addCalc0__FPfff
/* 805C1DD8  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805C1DDC  C0 3D 07 AC */	lfs f1, 0x7ac(r29)
/* 805C1DE0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C1DE4  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805C1DE8  4B CA DC 54 */	b cLib_addCalc2__FPffff
lbl_805C1DEC:
/* 805C1DEC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 805C1DF0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 805C1DF4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805C1DF8  4B DA 04 30 */	b _restgpr_29
/* 805C1DFC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 805C1E00  7C 08 03 A6 */	mtlr r0
/* 805C1E04  38 21 00 C0 */	addi r1, r1, 0xc0
/* 805C1E08  4E 80 00 20 */	blr 
