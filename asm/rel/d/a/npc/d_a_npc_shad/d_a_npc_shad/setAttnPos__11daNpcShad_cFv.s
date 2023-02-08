lbl_80AE0FAC:
/* 80AE0FAC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AE0FB0  7C 08 02 A6 */	mflr r0
/* 80AE0FB4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AE0FB8  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE0FBC  4B 88 12 21 */	bl _savegpr_29
/* 80AE0FC0  7C 7D 1B 78 */	mr r29, r3
/* 80AE0FC4  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80AE0FC8  3B C3 1F DC */	addi r30, r3, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80AE0FCC  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80AE0FD0  2C 00 00 01 */	cmpwi r0, 1
/* 80AE0FD4  40 82 00 34 */	bne lbl_80AE1008
/* 80AE0FD8  38 60 00 00 */	li r3, 0
/* 80AE0FDC  7C 66 1B 78 */	mr r6, r3
/* 80AE0FE0  7C 65 1B 78 */	mr r5, r3
/* 80AE0FE4  7C 64 1B 78 */	mr r4, r3
/* 80AE0FE8  38 00 00 03 */	li r0, 3
/* 80AE0FEC  7C 09 03 A6 */	mtctr r0
lbl_80AE0FF0:
/* 80AE0FF0  7C FD 1A 14 */	add r7, r29, r3
/* 80AE0FF4  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80AE0FF8  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80AE0FFC  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80AE1000  38 63 00 06 */	addi r3, r3, 6
/* 80AE1004  42 00 FF EC */	bdnz lbl_80AE0FF0
lbl_80AE1008:
/* 80AE1008  7F A3 EB 78 */	mr r3, r29
/* 80AE100C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AE1010  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AE1014  7D 89 03 A6 */	mtctr r12
/* 80AE1018  4E 80 04 21 */	bctrl 
/* 80AE101C  7F A3 EB 78 */	mr r3, r29
/* 80AE1020  48 00 03 01 */	bl lookat__11daNpcShad_cFv
/* 80AE1024  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AE1028  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AE102C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AE1030  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80AE1034  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AE1038  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AE103C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE1040  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE1044  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE1048  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80AE104C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE1050  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE1054  4B 86 54 5D */	bl PSMTXCopy
/* 80AE1058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE105C  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE1060  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AE1064  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80AE1068  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AE106C  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80AE1070  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AE1074  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80AE1078  7F E3 FB 78 */	mr r3, r31
/* 80AE107C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80AE1080  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AE1084  4B 86 5C E9 */	bl PSMTXMultVec
/* 80AE1088  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80AE108C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AE1090  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE1094  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE1098  38 81 00 3C */	addi r4, r1, 0x3c
/* 80AE109C  7C 85 23 78 */	mr r5, r4
/* 80AE10A0  4B 86 5C CD */	bl PSMTXMultVec
/* 80AE10A4  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AE10A8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80AE10AC  4B 78 FB C9 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80AE10B0  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80AE10B4  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AE10B8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80AE10BC  4B 78 FB 49 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AE10C0  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80AE10C4  80 9D 0C 14 */	lwz r4, 0xc14(r29)
/* 80AE10C8  28 04 00 00 */	cmplwi r4, 0
/* 80AE10CC  41 82 01 70 */	beq lbl_80AE123C
/* 80AE10D0  38 61 00 18 */	addi r3, r1, 0x18
/* 80AE10D4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AE10D8  4B 78 5A 5D */	bl __mi__4cXyzCFRC3Vec
/* 80AE10DC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80AE10E0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80AE10E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AE10E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AE10EC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80AE10F0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80AE10F4  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80AE10F8  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80AE10FC  7C 03 02 14 */	add r0, r3, r0
/* 80AE1100  7C 00 00 D0 */	neg r0, r0
/* 80AE1104  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AE1108  4B 78 65 6D */	bl cM_atan2s__Fff
/* 80AE110C  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80AE1110  7C 00 1A 14 */	add r0, r0, r3
/* 80AE1114  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AE1118  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80AE111C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AE1120  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80AE1124  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AE1128  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80AE112C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AE1130  38 61 00 0C */	addi r3, r1, 0xc
/* 80AE1134  4B 86 60 05 */	bl PSVECSquareMag
/* 80AE1138  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80AE113C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AE1140  40 81 00 58 */	ble lbl_80AE1198
/* 80AE1144  FC 00 08 34 */	frsqrte f0, f1
/* 80AE1148  C8 9E 04 78 */	lfd f4, 0x478(r30)
/* 80AE114C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AE1150  C8 7E 04 80 */	lfd f3, 0x480(r30)
/* 80AE1154  FC 00 00 32 */	fmul f0, f0, f0
/* 80AE1158  FC 01 00 32 */	fmul f0, f1, f0
/* 80AE115C  FC 03 00 28 */	fsub f0, f3, f0
/* 80AE1160  FC 02 00 32 */	fmul f0, f2, f0
/* 80AE1164  FC 44 00 32 */	fmul f2, f4, f0
/* 80AE1168  FC 00 00 32 */	fmul f0, f0, f0
/* 80AE116C  FC 01 00 32 */	fmul f0, f1, f0
/* 80AE1170  FC 03 00 28 */	fsub f0, f3, f0
/* 80AE1174  FC 02 00 32 */	fmul f0, f2, f0
/* 80AE1178  FC 44 00 32 */	fmul f2, f4, f0
/* 80AE117C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AE1180  FC 01 00 32 */	fmul f0, f1, f0
/* 80AE1184  FC 03 00 28 */	fsub f0, f3, f0
/* 80AE1188  FC 02 00 32 */	fmul f0, f2, f0
/* 80AE118C  FC 41 00 32 */	fmul f2, f1, f0
/* 80AE1190  FC 40 10 18 */	frsp f2, f2
/* 80AE1194  48 00 00 90 */	b lbl_80AE1224
lbl_80AE1198:
/* 80AE1198  C8 1E 04 88 */	lfd f0, 0x488(r30)
/* 80AE119C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AE11A0  40 80 00 10 */	bge lbl_80AE11B0
/* 80AE11A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AE11A8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AE11AC  48 00 00 78 */	b lbl_80AE1224
lbl_80AE11B0:
/* 80AE11B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AE11B4  80 81 00 08 */	lwz r4, 8(r1)
/* 80AE11B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AE11BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AE11C0  7C 03 00 00 */	cmpw r3, r0
/* 80AE11C4  41 82 00 14 */	beq lbl_80AE11D8
/* 80AE11C8  40 80 00 40 */	bge lbl_80AE1208
/* 80AE11CC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE11D0  41 82 00 20 */	beq lbl_80AE11F0
/* 80AE11D4  48 00 00 34 */	b lbl_80AE1208
lbl_80AE11D8:
/* 80AE11D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AE11DC  41 82 00 0C */	beq lbl_80AE11E8
/* 80AE11E0  38 00 00 01 */	li r0, 1
/* 80AE11E4  48 00 00 28 */	b lbl_80AE120C
lbl_80AE11E8:
/* 80AE11E8  38 00 00 02 */	li r0, 2
/* 80AE11EC  48 00 00 20 */	b lbl_80AE120C
lbl_80AE11F0:
/* 80AE11F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AE11F4  41 82 00 0C */	beq lbl_80AE1200
/* 80AE11F8  38 00 00 05 */	li r0, 5
/* 80AE11FC  48 00 00 10 */	b lbl_80AE120C
lbl_80AE1200:
/* 80AE1200  38 00 00 03 */	li r0, 3
/* 80AE1204  48 00 00 08 */	b lbl_80AE120C
lbl_80AE1208:
/* 80AE1208  38 00 00 04 */	li r0, 4
lbl_80AE120C:
/* 80AE120C  2C 00 00 01 */	cmpwi r0, 1
/* 80AE1210  40 82 00 10 */	bne lbl_80AE1220
/* 80AE1214  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AE1218  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AE121C  48 00 00 08 */	b lbl_80AE1224
lbl_80AE1220:
/* 80AE1220  FC 40 08 90 */	fmr f2, f1
lbl_80AE1224:
/* 80AE1224  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80AE1228  4B 78 64 4D */	bl cM_atan2s__Fff
/* 80AE122C  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 80AE1230  7C 03 00 50 */	subf r0, r3, r0
/* 80AE1234  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80AE1238  48 00 00 10 */	b lbl_80AE1248
lbl_80AE123C:
/* 80AE123C  38 00 00 00 */	li r0, 0
/* 80AE1240  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AE1244  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80AE1248:
/* 80AE1248  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 80AE124C  C0 3D 08 E8 */	lfs f1, 0x8e8(r29)
/* 80AE1250  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80AE1254  EC 21 00 2A */	fadds f1, f1, f0
/* 80AE1258  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 80AE125C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80AE1260  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80AE1264  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80AE1268  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AE126C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE1270  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE1274  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE1278  38 63 00 60 */	addi r3, r3, 0x60
/* 80AE127C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE1280  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE1284  4B 86 52 2D */	bl PSMTXCopy
/* 80AE1288  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AE128C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AE1290  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80AE1294  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AE1298  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AE129C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AE12A0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80AE12A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AE12A8  38 7D 0D D4 */	addi r3, r29, 0xdd4
/* 80AE12AC  38 81 00 24 */	addi r4, r1, 0x24
/* 80AE12B0  4B 78 DF 2D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AE12B4  38 7D 0D D4 */	addi r3, r29, 0xdd4
/* 80AE12B8  38 9E 00 00 */	addi r4, r30, 0
/* 80AE12BC  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80AE12C0  4B 78 DF 39 */	bl SetH__8cM3dGCylFf
/* 80AE12C4  38 7D 0D D4 */	addi r3, r29, 0xdd4
/* 80AE12C8  88 1D 0E 20 */	lbz r0, 0xe20(r29)
/* 80AE12CC  28 00 00 00 */	cmplwi r0, 0
/* 80AE12D0  40 82 00 0C */	bne lbl_80AE12DC
/* 80AE12D4  C0 3E 04 DC */	lfs f1, 0x4dc(r30)
/* 80AE12D8  48 00 00 0C */	b lbl_80AE12E4
lbl_80AE12DC:
/* 80AE12DC  38 9E 00 00 */	addi r4, r30, 0
/* 80AE12E0  C0 24 00 1C */	lfs f1, 0x1c(r4)
lbl_80AE12E4:
/* 80AE12E4  4B 78 DF 1D */	bl SetR__8cM3dGCylFf
/* 80AE12E8  88 1D 0E 1E */	lbz r0, 0xe1e(r29)
/* 80AE12EC  28 00 00 00 */	cmplwi r0, 0
/* 80AE12F0  41 82 00 18 */	beq lbl_80AE1308
/* 80AE12F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE12F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE12FC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AE1300  38 9D 0C B0 */	addi r4, r29, 0xcb0
/* 80AE1304  4B 78 38 A5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AE1308:
/* 80AE1308  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE130C  4B 88 0F 1D */	bl _restgpr_29
/* 80AE1310  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AE1314  7C 08 03 A6 */	mtlr r0
/* 80AE1318  38 21 00 60 */	addi r1, r1, 0x60
/* 80AE131C  4E 80 00 20 */	blr 
