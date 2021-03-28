lbl_806B0E9C:
/* 806B0E9C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806B0EA0  7C 08 02 A6 */	mflr r0
/* 806B0EA4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806B0EA8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 806B0EAC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 806B0EB0  39 61 00 90 */	addi r11, r1, 0x90
/* 806B0EB4  4B CB 13 20 */	b _savegpr_27
/* 806B0EB8  7C 7B 1B 78 */	mr r27, r3
/* 806B0EBC  3C 80 80 6B */	lis r4, lit_3792@ha
/* 806B0EC0  3B C4 5C D4 */	addi r30, r4, lit_3792@l
/* 806B0EC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806B0EC8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 806B0ECC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806B0ED0  4B 96 98 40 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B0ED4  7C 7D 1B 78 */	mr r29, r3
/* 806B0ED8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B0EDC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806B0EE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806B0EE4  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806B0EE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806B0EEC  38 61 00 58 */	addi r3, r1, 0x58
/* 806B0EF0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 806B0EF4  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 806B0EF8  38 C1 00 4C */	addi r6, r1, 0x4c
/* 806B0EFC  4B BB FE C4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806B0F00  88 1B 07 71 */	lbz r0, 0x771(r27)
/* 806B0F04  28 00 00 00 */	cmplwi r0, 0
/* 806B0F08  40 82 00 1C */	bne lbl_806B0F24
/* 806B0F0C  80 1B 0E E4 */	lwz r0, 0xee4(r27)
/* 806B0F10  60 00 00 01 */	ori r0, r0, 1
/* 806B0F14  90 1B 0E E4 */	stw r0, 0xee4(r27)
/* 806B0F18  80 1B 10 1C */	lwz r0, 0x101c(r27)
/* 806B0F1C  60 00 00 01 */	ori r0, r0, 1
/* 806B0F20  90 1B 10 1C */	stw r0, 0x101c(r27)
lbl_806B0F24:
/* 806B0F24  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806B0F28  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806B0F2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B0F30  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806B0F34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806B0F38  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806B0F3C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B0F40  38 61 00 58 */	addi r3, r1, 0x58
/* 806B0F44  38 81 00 28 */	addi r4, r1, 0x28
/* 806B0F48  4B BB FC BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806B0F4C  7C 7C 07 34 */	extsh r28, r3
/* 806B0F50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B0F54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B0F58  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806B0F5C  A8 84 04 DE */	lha r4, 0x4de(r4)
/* 806B0F60  4B 95 B4 7C */	b mDoMtx_YrotS__FPA4_fs
/* 806B0F64  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806B0F68  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 806B0F6C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B0F70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806B0F74  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806B0F78  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 806B0F7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 806B0F80  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806B0F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B0F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B0F8C  38 81 00 34 */	addi r4, r1, 0x34
/* 806B0F90  7C 85 23 78 */	mr r5, r4
/* 806B0F94  4B C9 5D D8 */	b PSMTXMultVec
/* 806B0F98  80 1B 07 0C */	lwz r0, 0x70c(r27)
/* 806B0F9C  28 00 00 07 */	cmplwi r0, 7
/* 806B0FA0  41 81 07 3C */	bgt lbl_806B16DC
/* 806B0FA4  3C 60 80 6B */	lis r3, lit_5532@ha
/* 806B0FA8  38 63 60 C4 */	addi r3, r3, lit_5532@l
/* 806B0FAC  54 00 10 3A */	slwi r0, r0, 2
/* 806B0FB0  7C 03 00 2E */	lwzx r0, r3, r0
/* 806B0FB4  7C 09 03 A6 */	mtctr r0
/* 806B0FB8  4E 80 04 20 */	bctr 
lbl_806B0FBC:
/* 806B0FBC  7F 63 DB 78 */	mr r3, r27
/* 806B0FC0  38 80 00 15 */	li r4, 0x15
/* 806B0FC4  38 A0 00 02 */	li r5, 2
/* 806B0FC8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 806B0FCC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B0FD0  4B FF D6 7D */	bl setBck__8daE_DT_cFiUcff
/* 806B0FD4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B0FD8  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 806B0FDC  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 806B0FE0  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 806B0FE4  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 806B0FE8  38 00 00 01 */	li r0, 1
/* 806B0FEC  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 806B0FF0  38 00 00 00 */	li r0, 0
/* 806B0FF4  98 1B 07 72 */	stb r0, 0x772(r27)
/* 806B0FF8  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806B0FFC  38 63 62 AC */	addi r3, r3, l_HIO@l
/* 806B1000  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806B1004  FC 00 00 1E */	fctiwz f0, f0
/* 806B1008  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806B100C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806B1010  B0 1B 07 36 */	sth r0, 0x736(r27)
/* 806B1014  48 00 06 C8 */	b lbl_806B16DC
lbl_806B1018:
/* 806B1018  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 806B101C  7F A4 EB 78 */	mr r4, r29
/* 806B1020  38 A0 00 10 */	li r5, 0x10
/* 806B1024  38 C0 01 00 */	li r6, 0x100
/* 806B1028  38 E0 01 00 */	li r7, 0x100
/* 806B102C  4B BB F5 14 */	b cLib_addCalcAngleS__FPsssss
/* 806B1030  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 806B1034  7C 00 E8 50 */	subf r0, r0, r29
/* 806B1038  7C 03 07 34 */	extsh r3, r0
/* 806B103C  4B CB 40 94 */	b abs
/* 806B1040  2C 03 10 00 */	cmpwi r3, 0x1000
/* 806B1044  41 80 00 1C */	blt lbl_806B1060
/* 806B1048  7F 63 DB 78 */	mr r3, r27
/* 806B104C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806B1050  4B 96 97 90 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B1054  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 806B1058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B105C  40 80 06 80 */	bge lbl_806B16DC
lbl_806B1060:
/* 806B1060  38 00 00 02 */	li r0, 2
/* 806B1064  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 806B1068  7F 63 DB 78 */	mr r3, r27
/* 806B106C  38 80 00 0D */	li r4, 0xd
/* 806B1070  38 A0 00 00 */	li r5, 0
/* 806B1074  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B1078  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B107C  4B FF D5 D1 */	bl setBck__8daE_DT_cFiUcff
/* 806B1080  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070312@ha */
/* 806B1084  38 03 03 12 */	addi r0, r3, 0x0312 /* 0x00070312@l */
/* 806B1088  90 01 00 18 */	stw r0, 0x18(r1)
/* 806B108C  38 7B 05 D4 */	addi r3, r27, 0x5d4
/* 806B1090  38 81 00 18 */	addi r4, r1, 0x18
/* 806B1094  38 A0 FF FF */	li r5, -1
/* 806B1098  81 9B 05 D4 */	lwz r12, 0x5d4(r27)
/* 806B109C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B10A0  7D 89 03 A6 */	mtctr r12
/* 806B10A4  4E 80 04 21 */	bctrl 
/* 806B10A8  7F 63 DB 78 */	mr r3, r27
/* 806B10AC  4B FF E1 95 */	bl setJumpEffect__8daE_DT_cFv
/* 806B10B0  88 1B 07 83 */	lbz r0, 0x783(r27)
/* 806B10B4  28 00 00 00 */	cmplwi r0, 0
/* 806B10B8  40 82 00 0C */	bne lbl_806B10C4
/* 806B10BC  38 00 00 01 */	li r0, 1
/* 806B10C0  98 1B 07 72 */	stb r0, 0x772(r27)
lbl_806B10C4:
/* 806B10C4  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 806B10C8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 806B10CC  48 00 06 10 */	b lbl_806B16DC
lbl_806B10D0:
/* 806B10D0  7F 63 DB 78 */	mr r3, r27
/* 806B10D4  4B FF E2 21 */	bl setJumpSizukuEffect__8daE_DT_cFv
/* 806B10D8  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 806B10DC  38 63 00 0C */	addi r3, r3, 0xc
/* 806B10E0  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 806B10E4  4B C7 73 48 */	b checkPass__12J3DFrameCtrlFf
/* 806B10E8  2C 03 00 00 */	cmpwi r3, 0
/* 806B10EC  41 82 00 30 */	beq lbl_806B111C
/* 806B10F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070311@ha */
/* 806B10F4  38 03 03 11 */	addi r0, r3, 0x0311 /* 0x00070311@l */
/* 806B10F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B10FC  38 7B 05 D4 */	addi r3, r27, 0x5d4
/* 806B1100  38 81 00 14 */	addi r4, r1, 0x14
/* 806B1104  38 A0 00 00 */	li r5, 0
/* 806B1108  38 C0 FF FF */	li r6, -1
/* 806B110C  81 9B 05 D4 */	lwz r12, 0x5d4(r27)
/* 806B1110  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B1114  7D 89 03 A6 */	mtctr r12
/* 806B1118  4E 80 04 21 */	bctrl 
lbl_806B111C:
/* 806B111C  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 806B1120  38 80 00 01 */	li r4, 1
/* 806B1124  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B1128  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B112C  40 82 00 18 */	bne lbl_806B1144
/* 806B1130  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B1134  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B1138  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B113C  41 82 00 08 */	beq lbl_806B1144
/* 806B1140  38 80 00 00 */	li r4, 0
lbl_806B1144:
/* 806B1144  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B1148  41 82 05 94 */	beq lbl_806B16DC
/* 806B114C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 806B1150  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 806B1154  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 806B1158  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 806B115C  38 00 00 03 */	li r0, 3
/* 806B1160  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 806B1164  38 00 00 3C */	li r0, 0x3c
/* 806B1168  90 1B 07 58 */	stw r0, 0x758(r27)
/* 806B116C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 806B1170  38 81 00 28 */	addi r4, r1, 0x28
/* 806B1174  4B BB FA 90 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806B1178  B0 7B 04 DE */	sth r3, 0x4de(r27)
/* 806B117C  7F 63 DB 78 */	mr r3, r27
/* 806B1180  38 80 00 0E */	li r4, 0xe
/* 806B1184  38 A0 00 00 */	li r5, 0
/* 806B1188  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806B118C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B1190  4B FF D4 BD */	bl setBck__8daE_DT_cFiUcff
/* 806B1194  48 00 05 48 */	b lbl_806B16DC
lbl_806B1198:
/* 806B1198  7F 63 DB 78 */	mr r3, r27
/* 806B119C  4B FF E1 59 */	bl setJumpSizukuEffect__8daE_DT_cFv
/* 806B11A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B11A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B11A8  80 63 00 00 */	lwz r3, 0(r3)
/* 806B11AC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B11B0  38 80 00 02 */	li r4, 2
/* 806B11B4  4B C0 0C 40 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806B11B8  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 806B11BC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B11C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B11C4  4C 40 13 82 */	cror 2, 0, 2
/* 806B11C8  40 82 00 8C */	bne lbl_806B1254
/* 806B11CC  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 806B11D0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 806B11D4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806B11D8  EC 21 00 2A */	fadds f1, f1, f0
/* 806B11DC  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 806B11E0  4B BB F5 60 */	b cLib_chaseF__FPfff
/* 806B11E4  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 806B11E8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 806B11EC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806B11F0  EC 21 00 2A */	fadds f1, f1, f0
/* 806B11F4  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 806B11F8  4B BB F5 48 */	b cLib_chaseF__FPfff
/* 806B11FC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B1200  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 806B1204  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 806B1208  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 806B120C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B1210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B1214  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806B1218  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806B121C  40 82 00 10 */	bne lbl_806B122C
/* 806B1220  80 1B 07 58 */	lwz r0, 0x758(r27)
/* 806B1224  2C 00 00 00 */	cmpwi r0, 0
/* 806B1228  40 82 00 2C */	bne lbl_806B1254
lbl_806B122C:
/* 806B122C  38 00 00 04 */	li r0, 4
/* 806B1230  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 806B1234  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 806B1238  D0 1B 05 34 */	stfs f0, 0x534(r27)
/* 806B123C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 806B1240  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 806B1244  38 00 00 1E */	li r0, 0x1e
/* 806B1248  90 1B 07 58 */	stw r0, 0x758(r27)
/* 806B124C  38 00 00 00 */	li r0, 0
/* 806B1250  90 1B 07 04 */	stw r0, 0x704(r27)
lbl_806B1254:
/* 806B1254  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 806B1258  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806B125C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B1260  40 81 04 7C */	ble lbl_806B16DC
/* 806B1264  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 806B1268  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 806B126C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806B1270  EC 21 00 2A */	fadds f1, f1, f0
/* 806B1274  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 806B1278  4B BB F4 C8 */	b cLib_chaseF__FPfff
/* 806B127C  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 806B1280  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 806B1284  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806B1288  EC 21 00 2A */	fadds f1, f1, f0
/* 806B128C  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 806B1290  4B BB F4 B0 */	b cLib_chaseF__FPfff
/* 806B1294  48 00 04 48 */	b lbl_806B16DC
lbl_806B1298:
/* 806B1298  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023A@ha */
/* 806B129C  38 03 02 3A */	addi r0, r3, 0x023A /* 0x0007023A@l */
/* 806B12A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B12A4  38 7B 05 D4 */	addi r3, r27, 0x5d4
/* 806B12A8  38 81 00 10 */	addi r4, r1, 0x10
/* 806B12AC  38 A0 00 00 */	li r5, 0
/* 806B12B0  38 C0 FF FF */	li r6, -1
/* 806B12B4  81 9B 05 D4 */	lwz r12, 0x5d4(r27)
/* 806B12B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806B12BC  7D 89 03 A6 */	mtctr r12
/* 806B12C0  4E 80 04 21 */	bctrl 
/* 806B12C4  38 00 00 01 */	li r0, 1
/* 806B12C8  98 1B 07 76 */	stb r0, 0x776(r27)
/* 806B12CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B12D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B12D4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806B12D8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806B12DC  40 82 00 24 */	bne lbl_806B1300
/* 806B12E0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 806B12E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806B12E8  EC 01 00 2A */	fadds f0, f1, f0
/* 806B12EC  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 806B12F0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 806B12F4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806B12F8  EC 01 00 2A */	fadds f0, f1, f0
/* 806B12FC  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_806B1300:
/* 806B1300  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806B1304  38 63 62 AC */	addi r3, r3, l_HIO@l
/* 806B1308  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 806B130C  D0 1B 05 34 */	stfs f0, 0x534(r27)
/* 806B1310  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 806B1314  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 806B1318  38 00 00 05 */	li r0, 5
/* 806B131C  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 806B1320  38 00 00 00 */	li r0, 0
/* 806B1324  90 1B 07 04 */	stw r0, 0x704(r27)
/* 806B1328  38 00 00 0A */	li r0, 0xa
/* 806B132C  90 1B 07 58 */	stw r0, 0x758(r27)
/* 806B1330  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 806B1334  4B BB 66 58 */	b cM_rndFX__Ff
/* 806B1338  FF E0 08 90 */	fmr f31, f1
/* 806B133C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 806B1340  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 806B1344  4B BB F8 C0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806B1348  7C 60 07 34 */	extsh r0, r3
/* 806B134C  C8 3E 00 30 */	lfd f1, 0x30(r30)
/* 806B1350  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B1354  90 01 00 6C */	stw r0, 0x6c(r1)
/* 806B1358  3C 00 43 30 */	lis r0, 0x4330
/* 806B135C  90 01 00 68 */	stw r0, 0x68(r1)
/* 806B1360  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 806B1364  EC 00 08 28 */	fsubs f0, f0, f1
/* 806B1368  EC 00 F8 2A */	fadds f0, f0, f31
/* 806B136C  FC 00 00 1E */	fctiwz f0, f0
/* 806B1370  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 806B1374  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806B1378  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 806B137C  48 00 03 60 */	b lbl_806B16DC
lbl_806B1380:
/* 806B1380  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023A@ha */
/* 806B1384  38 03 02 3A */	addi r0, r3, 0x023A /* 0x0007023A@l */
/* 806B1388  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B138C  38 7B 05 D4 */	addi r3, r27, 0x5d4
/* 806B1390  38 81 00 0C */	addi r4, r1, 0xc
/* 806B1394  38 A0 00 00 */	li r5, 0
/* 806B1398  38 C0 FF FF */	li r6, -1
/* 806B139C  81 9B 05 D4 */	lwz r12, 0x5d4(r27)
/* 806B13A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806B13A4  7D 89 03 A6 */	mtctr r12
/* 806B13A8  4E 80 04 21 */	bctrl 
lbl_806B13AC:
/* 806B13AC  38 00 00 01 */	li r0, 1
/* 806B13B0  98 1B 07 76 */	stb r0, 0x776(r27)
/* 806B13B4  80 1B 07 04 */	lwz r0, 0x704(r27)
/* 806B13B8  2C 00 00 02 */	cmpwi r0, 2
/* 806B13BC  41 82 00 94 */	beq lbl_806B1450
/* 806B13C0  40 80 00 10 */	bge lbl_806B13D0
/* 806B13C4  2C 00 00 00 */	cmpwi r0, 0
/* 806B13C8  41 82 00 14 */	beq lbl_806B13DC
/* 806B13CC  48 00 01 BC */	b lbl_806B1588
lbl_806B13D0:
/* 806B13D0  2C 00 00 04 */	cmpwi r0, 4
/* 806B13D4  40 80 01 B4 */	bge lbl_806B1588
/* 806B13D8  48 00 01 A0 */	b lbl_806B1578
lbl_806B13DC:
/* 806B13DC  38 7B 09 D8 */	addi r3, r27, 0x9d8
/* 806B13E0  4B 9D 32 78 */	b ChkCoHit__12dCcD_GObjInfFv
/* 806B13E4  28 03 00 00 */	cmplwi r3, 0
/* 806B13E8  41 82 00 2C */	beq lbl_806B1414
/* 806B13EC  38 7B 09 D8 */	addi r3, r27, 0x9d8
/* 806B13F0  4B 9D 33 00 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 806B13F4  4B BB 26 54 */	b GetAc__8cCcD_ObjFv
/* 806B13F8  A8 03 00 08 */	lha r0, 8(r3)
/* 806B13FC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 806B1400  40 82 00 14 */	bne lbl_806B1414
/* 806B1404  38 00 00 02 */	li r0, 2
/* 806B1408  90 1B 07 04 */	stw r0, 0x704(r27)
/* 806B140C  38 00 00 01 */	li r0, 1
/* 806B1410  98 1B 07 71 */	stb r0, 0x771(r27)
lbl_806B1414:
/* 806B1414  38 7B 0B 10 */	addi r3, r27, 0xb10
/* 806B1418  4B 9D 32 40 */	b ChkCoHit__12dCcD_GObjInfFv
/* 806B141C  28 03 00 00 */	cmplwi r3, 0
/* 806B1420  41 82 01 68 */	beq lbl_806B1588
/* 806B1424  38 7B 0B 10 */	addi r3, r27, 0xb10
/* 806B1428  4B 9D 32 C8 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 806B142C  4B BB 26 1C */	b GetAc__8cCcD_ObjFv
/* 806B1430  A8 03 00 08 */	lha r0, 8(r3)
/* 806B1434  2C 00 00 FD */	cmpwi r0, 0xfd
/* 806B1438  40 82 01 50 */	bne lbl_806B1588
/* 806B143C  38 00 00 02 */	li r0, 2
/* 806B1440  90 1B 07 04 */	stw r0, 0x704(r27)
/* 806B1444  38 00 00 01 */	li r0, 1
/* 806B1448  98 1B 07 71 */	stb r0, 0x771(r27)
/* 806B144C  48 00 01 3C */	b lbl_806B1588
lbl_806B1450:
/* 806B1450  88 1B 07 71 */	lbz r0, 0x771(r27)
/* 806B1454  28 00 00 01 */	cmplwi r0, 1
/* 806B1458  40 82 00 64 */	bne lbl_806B14BC
/* 806B145C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 806B1460  7C 1C 00 50 */	subf r0, r28, r0
/* 806B1464  7C 1D 07 34 */	extsh r29, r0
/* 806B1468  7F A3 EB 78 */	mr r3, r29
/* 806B146C  4B CB 3C 64 */	b abs
/* 806B1470  2C 03 20 00 */	cmpwi r3, 0x2000
/* 806B1474  40 80 00 18 */	bge lbl_806B148C
/* 806B1478  7F A0 07 35 */	extsh. r0, r29
/* 806B147C  40 80 00 0C */	bge lbl_806B1488
/* 806B1480  3B 9C 20 00 */	addi r28, r28, 0x2000
/* 806B1484  48 00 00 08 */	b lbl_806B148C
lbl_806B1488:
/* 806B1488  3B 9C E0 00 */	addi r28, r28, -8192
lbl_806B148C:
/* 806B148C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B1490  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806B1494  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806B1498  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 806B149C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806B14A0  38 61 00 40 */	addi r3, r1, 0x40
/* 806B14A4  38 81 00 58 */	addi r4, r1, 0x58
/* 806B14A8  7F 85 E3 78 */	mr r5, r28
/* 806B14AC  38 C1 00 4C */	addi r6, r1, 0x4c
/* 806B14B0  4B BB F9 10 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806B14B4  7F 85 E3 78 */	mr r5, r28
/* 806B14B8  48 00 00 70 */	b lbl_806B1528
lbl_806B14BC:
/* 806B14BC  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 806B14C0  80 63 00 04 */	lwz r3, 4(r3)
/* 806B14C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B14C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B14CC  38 63 05 40 */	addi r3, r3, 0x540
/* 806B14D0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B14D4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B14D8  4B C9 4F D8 */	b PSMTXCopy
/* 806B14DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B14E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B14E4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B14E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806B14EC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B14F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806B14F4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B14F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806B14FC  4B BB 63 70 */	b cM_rnd__Fv
/* 806B1500  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 806B1504  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B1508  40 80 00 14 */	bge lbl_806B151C
/* 806B150C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 806B1510  38 03 40 00 */	addi r0, r3, 0x4000
/* 806B1514  7C 05 07 34 */	extsh r5, r0
/* 806B1518  48 00 00 10 */	b lbl_806B1528
lbl_806B151C:
/* 806B151C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 806B1520  38 03 C0 00 */	addi r0, r3, -16384
/* 806B1524  7C 05 07 34 */	extsh r5, r0
lbl_806B1528:
/* 806B1528  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 806B152C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806B1530  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806B1534  38 81 00 40 */	addi r4, r1, 0x40
/* 806B1538  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806B153C  81 8C 01 D4 */	lwz r12, 0x1d4(r12)
/* 806B1540  7D 89 03 A6 */	mtctr r12
/* 806B1544  4E 80 04 21 */	bctrl 
/* 806B1548  38 60 00 04 */	li r3, 4
/* 806B154C  38 80 00 01 */	li r4, 1
/* 806B1550  4B AA E3 C4 */	b setPlayerDamage__9daPy_py_cFii
/* 806B1554  38 00 00 03 */	li r0, 3
/* 806B1558  90 1B 07 04 */	stw r0, 0x704(r27)
/* 806B155C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B1560  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B1564  80 63 00 00 */	lwz r3, 0(r3)
/* 806B1568  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B156C  38 80 00 01 */	li r4, 1
/* 806B1570  4B C0 08 84 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806B1574  48 00 00 14 */	b lbl_806B1588
lbl_806B1578:
/* 806B1578  38 00 00 03 */	li r0, 3
/* 806B157C  98 1B 07 72 */	stb r0, 0x772(r27)
/* 806B1580  38 00 00 04 */	li r0, 4
/* 806B1584  90 1B 07 04 */	stw r0, 0x704(r27)
lbl_806B1588:
/* 806B1588  80 1B 07 0C */	lwz r0, 0x70c(r27)
/* 806B158C  2C 00 00 05 */	cmpwi r0, 5
/* 806B1590  40 82 00 A8 */	bne lbl_806B1638
/* 806B1594  80 1B 07 F0 */	lwz r0, 0x7f0(r27)
/* 806B1598  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806B159C  41 82 01 40 */	beq lbl_806B16DC
/* 806B15A0  7F 63 DB 78 */	mr r3, r27
/* 806B15A4  4B FF DA F9 */	bl setLargeWaterEffect__8daE_DT_cFv
/* 806B15A8  38 00 00 01 */	li r0, 1
/* 806B15AC  98 1B 07 77 */	stb r0, 0x777(r27)
/* 806B15B0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B15B4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806B15B8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806B15BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806B15C0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806B15C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B15C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B15CC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806B15D0  38 80 00 08 */	li r4, 8
/* 806B15D4  38 A0 00 1F */	li r5, 0x1f
/* 806B15D8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 806B15DC  4B 9B E5 34 */	b StartQuake__12dVibration_cFii4cXyz
/* 806B15E0  38 00 00 1E */	li r0, 0x1e
/* 806B15E4  98 1B 07 6F */	stb r0, 0x76f(r27)
/* 806B15E8  7F 63 DB 78 */	mr r3, r27
/* 806B15EC  38 80 00 0C */	li r4, 0xc
/* 806B15F0  38 A0 00 00 */	li r5, 0
/* 806B15F4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B15F8  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B15FC  4B FF D0 51 */	bl setBck__8daE_DT_cFiUcff
/* 806B1600  38 00 00 06 */	li r0, 6
/* 806B1604  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 806B1608  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023B@ha */
/* 806B160C  38 03 02 3B */	addi r0, r3, 0x023B /* 0x0007023B@l */
/* 806B1610  90 01 00 08 */	stw r0, 8(r1)
/* 806B1614  38 7B 05 D4 */	addi r3, r27, 0x5d4
/* 806B1618  38 81 00 08 */	addi r4, r1, 8
/* 806B161C  38 A0 00 00 */	li r5, 0
/* 806B1620  38 C0 FF FF */	li r6, -1
/* 806B1624  81 9B 05 D4 */	lwz r12, 0x5d4(r27)
/* 806B1628  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B162C  7D 89 03 A6 */	mtctr r12
/* 806B1630  4E 80 04 21 */	bctrl 
/* 806B1634  48 00 00 A8 */	b lbl_806B16DC
lbl_806B1638:
/* 806B1638  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 806B163C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806B1640  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 806B1644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B1648  4C 41 13 82 */	cror 2, 1, 2
/* 806B164C  40 82 00 90 */	bne lbl_806B16DC
/* 806B1650  80 1B 07 04 */	lwz r0, 0x704(r27)
/* 806B1654  2C 00 00 01 */	cmpwi r0, 1
/* 806B1658  41 82 00 0C */	beq lbl_806B1664
/* 806B165C  2C 00 00 04 */	cmpwi r0, 4
/* 806B1660  41 80 00 10 */	blt lbl_806B1670
lbl_806B1664:
/* 806B1664  38 00 00 07 */	li r0, 7
/* 806B1668  90 1B 07 0C */	stw r0, 0x70c(r27)
/* 806B166C  48 00 00 70 */	b lbl_806B16DC
lbl_806B1670:
/* 806B1670  2C 00 00 00 */	cmpwi r0, 0
/* 806B1674  40 82 00 68 */	bne lbl_806B16DC
/* 806B1678  38 00 00 01 */	li r0, 1
/* 806B167C  90 1B 07 04 */	stw r0, 0x704(r27)
/* 806B1680  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B1684  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B1688  80 63 00 00 */	lwz r3, 0(r3)
/* 806B168C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B1690  38 80 00 03 */	li r4, 3
/* 806B1694  4B C0 07 60 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806B1698  48 00 00 44 */	b lbl_806B16DC
lbl_806B169C:
/* 806B169C  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 806B16A0  38 80 00 01 */	li r4, 1
/* 806B16A4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B16A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B16AC  40 82 00 18 */	bne lbl_806B16C4
/* 806B16B0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B16B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B16B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B16BC  41 82 00 08 */	beq lbl_806B16C4
/* 806B16C0  38 80 00 00 */	li r4, 0
lbl_806B16C4:
/* 806B16C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B16C8  41 82 00 14 */	beq lbl_806B16DC
/* 806B16CC  7F 63 DB 78 */	mr r3, r27
/* 806B16D0  38 80 00 05 */	li r4, 5
/* 806B16D4  38 A0 00 00 */	li r5, 0
/* 806B16D8  4B FF D0 75 */	bl setActionMode__8daE_DT_cFii
lbl_806B16DC:
/* 806B16DC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 806B16E0  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806B16E4  EC 61 00 28 */	fsubs f3, f1, f0
/* 806B16E8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B16EC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 806B16F0  40 80 00 08 */	bge lbl_806B16F8
/* 806B16F4  FC 60 00 90 */	fmr f3, f0
lbl_806B16F8:
/* 806B16F8  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 806B16FC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B1700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B1704  40 80 00 34 */	bge lbl_806B1738
/* 806B1708  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806B170C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 806B1710  40 81 00 08 */	ble lbl_806B1718
/* 806B1714  FC 60 00 90 */	fmr f3, f0
lbl_806B1718:
/* 806B1718  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 806B171C  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 806B1720  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806B1724  EC 03 00 24 */	fdivs f0, f3, f0
/* 806B1728  EC 01 00 32 */	fmuls f0, f1, f0
/* 806B172C  EC 02 00 2A */	fadds f0, f2, f0
/* 806B1730  D0 1B 06 EC */	stfs f0, 0x6ec(r27)
/* 806B1734  48 00 00 28 */	b lbl_806B175C
lbl_806B1738:
/* 806B1738  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806B173C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 806B1740  40 81 00 08 */	ble lbl_806B1748
/* 806B1744  FC 60 00 90 */	fmr f3, f0
lbl_806B1748:
/* 806B1748  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 806B174C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806B1750  EC 03 00 24 */	fdivs f0, f3, f0
/* 806B1754  EC 01 00 2A */	fadds f0, f1, f0
/* 806B1758  D0 1B 06 EC */	stfs f0, 0x6ec(r27)
lbl_806B175C:
/* 806B175C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 806B1760  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 806B1764  39 61 00 90 */	addi r11, r1, 0x90
/* 806B1768  4B CB 0A B8 */	b _restgpr_27
/* 806B176C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806B1770  7C 08 03 A6 */	mtlr r0
/* 806B1774  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806B1778  4E 80 00 20 */	blr 
