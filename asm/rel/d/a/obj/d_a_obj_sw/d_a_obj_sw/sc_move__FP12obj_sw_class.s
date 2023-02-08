lbl_80CF1044:
/* 80CF1044  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CF1048  7C 08 02 A6 */	mflr r0
/* 80CF104C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CF1050  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CF1054  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80CF1058  7C 7E 1B 78 */	mr r30, r3
/* 80CF105C  3C 60 80 CF */	lis r3, lit_3850@ha /* 0x80CF3000@ha */
/* 80CF1060  3B E3 30 00 */	addi r31, r3, lit_3850@l /* 0x80CF3000@l */
/* 80CF1064  A8 1E 08 CC */	lha r0, 0x8cc(r30)
/* 80CF1068  2C 00 00 00 */	cmpwi r0, 0
/* 80CF106C  40 82 02 CC */	bne lbl_80CF1338
/* 80CF1070  A8 1E 05 7A */	lha r0, 0x57a(r30)
/* 80CF1074  2C 00 00 00 */	cmpwi r0, 0
/* 80CF1078  40 82 00 F8 */	bne lbl_80CF1170
/* 80CF107C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CF1080  4B 57 68 D5 */	bl cM_rndF__Ff
/* 80CF1084  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CF1088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF108C  40 80 00 20 */	bge lbl_80CF10AC
/* 80CF1090  38 7E 08 64 */	addi r3, r30, 0x864
/* 80CF1094  38 80 00 05 */	li r4, 5
/* 80CF1098  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF109C  38 A0 00 02 */	li r5, 2
/* 80CF10A0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF10A4  4B FF F8 55 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF10A8  48 00 00 7C */	b lbl_80CF1124
lbl_80CF10AC:
/* 80CF10AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CF10B0  4B 57 68 A5 */	bl cM_rndF__Ff
/* 80CF10B4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80CF10B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF10BC  40 80 00 20 */	bge lbl_80CF10DC
/* 80CF10C0  38 7E 08 64 */	addi r3, r30, 0x864
/* 80CF10C4  38 80 00 06 */	li r4, 6
/* 80CF10C8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF10CC  38 A0 00 02 */	li r5, 2
/* 80CF10D0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF10D4  4B FF F8 25 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF10D8  48 00 00 4C */	b lbl_80CF1124
lbl_80CF10DC:
/* 80CF10DC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CF10E0  4B 57 68 75 */	bl cM_rndF__Ff
/* 80CF10E4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CF10E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF10EC  40 80 00 20 */	bge lbl_80CF110C
/* 80CF10F0  38 7E 08 64 */	addi r3, r30, 0x864
/* 80CF10F4  38 80 00 07 */	li r4, 7
/* 80CF10F8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF10FC  38 A0 00 02 */	li r5, 2
/* 80CF1100  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF1104  4B FF F7 F5 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF1108  48 00 00 1C */	b lbl_80CF1124
lbl_80CF110C:
/* 80CF110C  38 7E 08 64 */	addi r3, r30, 0x864
/* 80CF1110  38 80 00 08 */	li r4, 8
/* 80CF1114  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF1118  38 A0 00 02 */	li r5, 2
/* 80CF111C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF1120  4B FF F7 D9 */	bl anm_init__FP8obj_sc_sifUcf
lbl_80CF1124:
/* 80CF1124  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CF1128  4B 57 68 2D */	bl cM_rndF__Ff
/* 80CF112C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CF1130  EC 00 08 2A */	fadds f0, f0, f1
/* 80CF1134  FC 00 00 1E */	fctiwz f0, f0
/* 80CF1138  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CF113C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF1140  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 80CF1144  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80CF1148  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00050014@l */
/* 80CF114C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF1150  38 7E 08 A8 */	addi r3, r30, 0x8a8
/* 80CF1154  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF1158  38 A0 00 00 */	li r5, 0
/* 80CF115C  38 C0 FF FF */	li r6, -1
/* 80CF1160  81 9E 08 B8 */	lwz r12, 0x8b8(r30)
/* 80CF1164  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CF1168  7D 89 03 A6 */	mtctr r12
/* 80CF116C  4E 80 04 21 */	bctrl 
lbl_80CF1170:
/* 80CF1170  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80CF1174  2C 00 00 00 */	cmpwi r0, 0
/* 80CF1178  40 82 01 C0 */	bne lbl_80CF1338
/* 80CF117C  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 80CF1180  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CF1184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF1188  40 81 01 B0 */	ble lbl_80CF1338
/* 80CF118C  38 61 00 28 */	addi r3, r1, 0x28
/* 80CF1190  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF1194  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF1198  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CF119C  48 00 1E 41 */	bl getLeftHandPos__9daPy_py_cCFv
/* 80CF11A0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CF11A4  38 9E 05 38 */	addi r4, r30, 0x538
/* 80CF11A8  38 A1 00 28 */	addi r5, r1, 0x28
/* 80CF11AC  4B 57 59 89 */	bl __mi__4cXyzCFRC3Vec
/* 80CF11B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CF11B4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CF11B8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80CF11BC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CF11C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CF11C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CF11C8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80CF11CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CF11D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CF11D4  38 61 00 34 */	addi r3, r1, 0x34
/* 80CF11D8  4B 65 5F 61 */	bl PSVECSquareMag
/* 80CF11DC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF11E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF11E4  40 81 00 58 */	ble lbl_80CF123C
/* 80CF11E8  FC 00 08 34 */	frsqrte f0, f1
/* 80CF11EC  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80CF11F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF11F4  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80CF11F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF11FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1200  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1204  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1208  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF120C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1210  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1214  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1218  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF121C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF1220  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1224  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1228  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF122C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1230  FC 21 00 32 */	fmul f1, f1, f0
/* 80CF1234  FC 20 08 18 */	frsp f1, f1
/* 80CF1238  48 00 00 88 */	b lbl_80CF12C0
lbl_80CF123C:
/* 80CF123C  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80CF1240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF1244  40 80 00 10 */	bge lbl_80CF1254
/* 80CF1248  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CF124C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CF1250  48 00 00 70 */	b lbl_80CF12C0
lbl_80CF1254:
/* 80CF1254  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CF1258  80 81 00 08 */	lwz r4, 8(r1)
/* 80CF125C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CF1260  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CF1264  7C 03 00 00 */	cmpw r3, r0
/* 80CF1268  41 82 00 14 */	beq lbl_80CF127C
/* 80CF126C  40 80 00 40 */	bge lbl_80CF12AC
/* 80CF1270  2C 03 00 00 */	cmpwi r3, 0
/* 80CF1274  41 82 00 20 */	beq lbl_80CF1294
/* 80CF1278  48 00 00 34 */	b lbl_80CF12AC
lbl_80CF127C:
/* 80CF127C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF1280  41 82 00 0C */	beq lbl_80CF128C
/* 80CF1284  38 00 00 01 */	li r0, 1
/* 80CF1288  48 00 00 28 */	b lbl_80CF12B0
lbl_80CF128C:
/* 80CF128C  38 00 00 02 */	li r0, 2
/* 80CF1290  48 00 00 20 */	b lbl_80CF12B0
lbl_80CF1294:
/* 80CF1294  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF1298  41 82 00 0C */	beq lbl_80CF12A4
/* 80CF129C  38 00 00 05 */	li r0, 5
/* 80CF12A0  48 00 00 10 */	b lbl_80CF12B0
lbl_80CF12A4:
/* 80CF12A4  38 00 00 03 */	li r0, 3
/* 80CF12A8  48 00 00 08 */	b lbl_80CF12B0
lbl_80CF12AC:
/* 80CF12AC  38 00 00 04 */	li r0, 4
lbl_80CF12B0:
/* 80CF12B0  2C 00 00 01 */	cmpwi r0, 1
/* 80CF12B4  40 82 00 0C */	bne lbl_80CF12C0
/* 80CF12B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CF12BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CF12C0:
/* 80CF12C0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80CF12C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF12C8  40 80 00 70 */	bge lbl_80CF1338
/* 80CF12CC  38 00 00 01 */	li r0, 1
/* 80CF12D0  B0 1E 08 CC */	sth r0, 0x8cc(r30)
/* 80CF12D4  38 7E 08 64 */	addi r3, r30, 0x864
/* 80CF12D8  38 80 00 0D */	li r4, 0xd
/* 80CF12DC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CF12E0  38 A0 00 00 */	li r5, 0
/* 80CF12E4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF12E8  4B FF F6 11 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF12EC  38 00 E1 65 */	li r0, -7835
/* 80CF12F0  B0 1E 05 80 */	sth r0, 0x580(r30)
/* 80CF12F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CF12F8  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 80CF12FC  38 00 00 00 */	li r0, 0
/* 80CF1300  B0 1E 05 94 */	sth r0, 0x594(r30)
/* 80CF1304  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CF1308  D0 3E 05 90 */	stfs f1, 0x590(r30)
/* 80CF130C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CF1310  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CF1314  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CF1318  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CF131C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF1320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF1324  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CF1328  38 80 00 03 */	li r4, 3
/* 80CF132C  38 A0 00 1F */	li r5, 0x1f
/* 80CF1330  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CF1334  4B 37 E6 F1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80CF1338:
/* 80CF1338  A8 1E 05 7C */	lha r0, 0x57c(r30)
/* 80CF133C  2C 00 00 01 */	cmpwi r0, 1
/* 80CF1340  40 82 00 2C */	bne lbl_80CF136C
/* 80CF1344  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF1348  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 80CF134C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80CF1350  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 80CF1354  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80CF1358  D0 1E 05 90 */	stfs f0, 0x590(r30)
/* 80CF135C  38 00 13 88 */	li r0, 0x1388
/* 80CF1360  B0 1E 05 94 */	sth r0, 0x594(r30)
/* 80CF1364  38 00 40 00 */	li r0, 0x4000
/* 80CF1368  B0 1E 05 80 */	sth r0, 0x580(r30)
lbl_80CF136C:
/* 80CF136C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CF1370  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80CF1374  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CF1378  7C 08 03 A6 */	mtlr r0
/* 80CF137C  38 21 00 50 */	addi r1, r1, 0x50
/* 80CF1380  4E 80 00 20 */	blr 
