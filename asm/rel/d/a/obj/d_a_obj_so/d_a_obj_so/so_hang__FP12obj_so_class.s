lbl_80CE1084:
/* 80CE1084  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CE1088  7C 08 02 A6 */	mflr r0
/* 80CE108C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CE1090  39 61 00 40 */	addi r11, r1, 0x40
/* 80CE1094  4B 68 11 45 */	bl _savegpr_28
/* 80CE1098  7C 7D 1B 78 */	mr r29, r3
/* 80CE109C  3C 60 80 CE */	lis r3, lit_3779@ha /* 0x80CE39E8@ha */
/* 80CE10A0  3B E3 39 E8 */	addi r31, r3, lit_3779@l /* 0x80CE39E8@l */
/* 80CE10A4  80 1D 1B 94 */	lwz r0, 0x1b94(r29)
/* 80CE10A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE10AC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80CE10B0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80CE10B4  38 81 00 0C */	addi r4, r1, 0xc
/* 80CE10B8  4B 33 87 41 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CE10BC  A8 1D 0D B0 */	lha r0, 0xdb0(r29)
/* 80CE10C0  2C 00 00 02 */	cmpwi r0, 2
/* 80CE10C4  41 82 00 B4 */	beq lbl_80CE1178
/* 80CE10C8  40 80 01 F8 */	bge lbl_80CE12C0
/* 80CE10CC  2C 00 00 00 */	cmpwi r0, 0
/* 80CE10D0  41 82 00 10 */	beq lbl_80CE10E0
/* 80CE10D4  40 80 00 28 */	bge lbl_80CE10FC
/* 80CE10D8  48 00 01 E8 */	b lbl_80CE12C0
/* 80CE10DC  48 00 01 E4 */	b lbl_80CE12C0
lbl_80CE10E0:
/* 80CE10E0  28 03 00 00 */	cmplwi r3, 0
/* 80CE10E4  41 82 01 DC */	beq lbl_80CE12C0
/* 80CE10E8  38 00 00 14 */	li r0, 0x14
/* 80CE10EC  B0 1D 0D B2 */	sth r0, 0xdb2(r29)
/* 80CE10F0  38 00 00 01 */	li r0, 1
/* 80CE10F4  B0 1D 0D B0 */	sth r0, 0xdb0(r29)
/* 80CE10F8  48 00 01 C8 */	b lbl_80CE12C0
lbl_80CE10FC:
/* 80CE10FC  A8 1D 0D B2 */	lha r0, 0xdb2(r29)
/* 80CE1100  2C 00 00 00 */	cmpwi r0, 0
/* 80CE1104  40 82 01 BC */	bne lbl_80CE12C0
/* 80CE1108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE110C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE1110  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80CE1114  28 00 00 00 */	cmplwi r0, 0
/* 80CE1118  40 82 01 A8 */	bne lbl_80CE12C0
/* 80CE111C  88 1D 1B 60 */	lbz r0, 0x1b60(r29)
/* 80CE1120  7C 00 07 75 */	extsb. r0, r0
/* 80CE1124  40 82 00 0C */	bne lbl_80CE1130
/* 80CE1128  38 00 00 02 */	li r0, 2
/* 80CE112C  B0 1D 0D B0 */	sth r0, 0xdb0(r29)
lbl_80CE1130:
/* 80CE1130  A8 1D 0D AC */	lha r0, 0xdac(r29)
/* 80CE1134  1C 00 0F 00 */	mulli r0, r0, 0xf00
/* 80CE1138  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE113C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE1140  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE1144  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CE1148  C0 1D 0D C8 */	lfs f0, 0xdc8(r29)
/* 80CE114C  FC 00 00 50 */	fneg f0, f0
/* 80CE1150  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE1154  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1158  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CE115C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CE1160  B0 1D 0D C2 */	sth r0, 0xdc2(r29)
/* 80CE1164  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80CE1168  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CE116C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80CE1170  4B 58 E9 11 */	bl cLib_addCalc0__FPfff
/* 80CE1174  48 00 01 4C */	b lbl_80CE12C0
lbl_80CE1178:
/* 80CE1178  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CE117C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80CE1180  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE1184  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CE1188  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80CE118C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80CE1190  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CE1194  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80CE1198  38 7D 0E 0C */	addi r3, r29, 0xe0c
/* 80CE119C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE11A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE11A4  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 80CE11A8  7F C4 F3 78 */	mr r4, r30
/* 80CE11AC  4B 39 59 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CE11B0  80 1D 0E 38 */	lwz r0, 0xe38(r29)
/* 80CE11B4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CE11B8  41 82 01 08 */	beq lbl_80CE12C0
/* 80CE11BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE11C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE11C4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CE11C8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CE11CC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CE11D0  7C 05 07 74 */	extsb r5, r0
/* 80CE11D4  4B 35 40 2D */	bl onSwitch__10dSv_info_cFii
/* 80CE11D8  38 00 00 00 */	li r0, 0
/* 80CE11DC  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80CE11E0  38 00 00 01 */	li r0, 1
/* 80CE11E4  98 1D 10 54 */	stb r0, 0x1054(r29)
/* 80CE11E8  38 00 00 03 */	li r0, 3
/* 80CE11EC  B0 1D 0D B0 */	sth r0, 0xdb0(r29)
/* 80CE11F0  7F A3 EB 78 */	mr r3, r29
/* 80CE11F4  38 80 00 01 */	li r4, 1
/* 80CE11F8  4B FF F5 4D */	bl part_set__FP12obj_so_classSc
/* 80CE11FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800AF@ha */
/* 80CE1200  38 03 00 AF */	addi r0, r3, 0x00AF /* 0x000800AF@l */
/* 80CE1204  90 01 00 08 */	stw r0, 8(r1)
/* 80CE1208  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CE120C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CE1210  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE1214  38 81 00 08 */	addi r4, r1, 8
/* 80CE1218  38 A0 00 00 */	li r5, 0
/* 80CE121C  38 C0 00 00 */	li r6, 0
/* 80CE1220  38 E0 00 00 */	li r7, 0
/* 80CE1224  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CE1228  FC 40 08 90 */	fmr f2, f1
/* 80CE122C  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80CE1230  FC 80 18 90 */	fmr f4, f3
/* 80CE1234  39 00 00 00 */	li r8, 0
/* 80CE1238  4B 5C A7 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CE123C  38 61 00 10 */	addi r3, r1, 0x10
/* 80CE1240  38 80 00 00 */	li r4, 0
/* 80CE1244  38 A0 00 00 */	li r5, 0
/* 80CE1248  38 C0 00 00 */	li r6, 0
/* 80CE124C  4B 58 61 A9 */	bl __ct__5csXyzFsss
/* 80CE1250  38 7D 1B 98 */	addi r3, r29, 0x1b98
/* 80CE1254  38 9D 1B 9C */	addi r4, r29, 0x1b9c
/* 80CE1258  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CE125C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CE1260  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80CE1264  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CE1268  39 00 00 01 */	li r8, 1
/* 80CE126C  4B 33 BD B5 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80CE1270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE1274  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE1278  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CE127C  38 63 02 10 */	addi r3, r3, 0x210
/* 80CE1280  80 9D 1B 98 */	lwz r4, 0x1b98(r29)
/* 80CE1284  4B 36 A6 31 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CE1288  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CE128C  38 63 02 10 */	addi r3, r3, 0x210
/* 80CE1290  80 9D 1B 9C */	lwz r4, 0x1b9c(r29)
/* 80CE1294  4B 36 A6 21 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CE1298  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80CE129C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CE12A0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CE12A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CE12A8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CE12AC  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 80CE12B0  38 80 00 05 */	li r4, 5
/* 80CE12B4  38 A0 00 01 */	li r5, 1
/* 80CE12B8  38 C1 00 18 */	addi r6, r1, 0x18
/* 80CE12BC  4B 38 E7 69 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80CE12C0:
/* 80CE12C0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CE12C4  4B 68 0F 61 */	bl _restgpr_28
/* 80CE12C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CE12CC  7C 08 03 A6 */	mtlr r0
/* 80CE12D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80CE12D4  4E 80 00 20 */	blr 
