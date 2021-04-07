lbl_809D0F7C:
/* 809D0F7C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 809D0F80  7C 08 02 A6 */	mflr r0
/* 809D0F84  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 809D0F88  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 809D0F8C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 809D0F90  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 809D0F94  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 809D0F98  39 61 00 90 */	addi r11, r1, 0x90
/* 809D0F9C  4B 99 12 2D */	bl _savegpr_24
/* 809D0FA0  7C 7D 1B 78 */	mr r29, r3
/* 809D0FA4  3C 60 80 9D */	lis r3, lit_1109@ha /* 0x809D3EB0@ha */
/* 809D0FA8  3B C3 3E B0 */	addi r30, r3, lit_1109@l /* 0x809D3EB0@l */
/* 809D0FAC  3C 60 80 9D */	lis r3, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D0FB0  3B E3 3A 04 */	addi r31, r3, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D0FB4  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809D0FB8  7C 00 07 75 */	extsb. r0, r0
/* 809D0FBC  40 82 00 38 */	bne lbl_809D0FF4
/* 809D0FC0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 809D0FC4  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809D0FC8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809D0FCC  38 7E 00 60 */	addi r3, r30, 0x60
/* 809D0FD0  D0 03 00 04 */	stfs f0, 4(r3)
/* 809D0FD4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809D0FD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 809D0FDC  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha /* 0x809D32A4@ha */
/* 809D0FE0  38 84 32 A4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809D32A4@l */
/* 809D0FE4  38 BE 00 50 */	addi r5, r30, 0x50
/* 809D0FE8  4B FF EC D1 */	bl __register_global_object
/* 809D0FEC  38 00 00 01 */	li r0, 1
/* 809D0FF0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809D0FF4:
/* 809D0FF4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 809D0FF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0FFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D1000  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 809D1004  4B 63 B3 D9 */	bl mDoMtx_YrotS__FPA4_fs
/* 809D1008  38 7D 09 84 */	addi r3, r29, 0x984
/* 809D100C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 809D1010  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 809D1014  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 809D1018  4B 89 EA 25 */	bl cLib_addCalc2__FPffff
/* 809D101C  38 7D 09 8C */	addi r3, r29, 0x98c
/* 809D1020  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 809D1024  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 809D1028  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 809D102C  4B 89 EA 11 */	bl cLib_addCalc2__FPffff
/* 809D1030  3B 00 00 00 */	li r24, 0
/* 809D1034  3B 80 00 00 */	li r28, 0
/* 809D1038  3B 60 00 00 */	li r27, 0
/* 809D103C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809D1040  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809D1044  C3 DF 00 80 */	lfs f30, 0x80(r31)
/* 809D1048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D104C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_809D1050:
/* 809D1050  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 809D1054  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809D1058  7C 39 04 2E */	lfsx f1, r25, r0
/* 809D105C  38 1B 09 84 */	addi r0, r27, 0x984
/* 809D1060  7C 1D 04 2E */	lfsx f0, r29, r0
/* 809D1064  EC 00 00 72 */	fmuls f0, f0, f1
/* 809D1068  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 809D106C  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 809D1070  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809D1074  7F 43 D3 78 */	mr r3, r26
/* 809D1078  38 81 00 30 */	addi r4, r1, 0x30
/* 809D107C  38 A1 00 24 */	addi r5, r1, 0x24
/* 809D1080  4B 97 5C ED */	bl PSMTXMultVec
/* 809D1084  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809D1088  FC 00 00 50 */	fneg f0, f0
/* 809D108C  FC 00 00 1E */	fctiwz f0, f0
/* 809D1090  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 809D1094  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809D1098  7C 7D E2 14 */	add r3, r29, r28
/* 809D109C  B0 03 09 08 */	sth r0, 0x908(r3)
/* 809D10A0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809D10A4  FC 00 00 50 */	fneg f0, f0
/* 809D10A8  FC 00 00 1E */	fctiwz f0, f0
/* 809D10AC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809D10B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809D10B4  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 809D10B8  3B 18 00 01 */	addi r24, r24, 1
/* 809D10BC  2C 18 00 03 */	cmpwi r24, 3
/* 809D10C0  3B 9C 00 06 */	addi r28, r28, 6
/* 809D10C4  3B 7B 00 04 */	addi r27, r27, 4
/* 809D10C8  41 80 FF 88 */	blt lbl_809D1050
/* 809D10CC  38 7D 09 92 */	addi r3, r29, 0x992
/* 809D10D0  38 80 00 00 */	li r4, 0
/* 809D10D4  38 A0 05 55 */	li r5, 0x555
/* 809D10D8  4B 89 F5 F9 */	bl cLib_chaseS__FPsss
/* 809D10DC  A8 1D 0E 14 */	lha r0, 0xe14(r29)
/* 809D10E0  2C 00 00 01 */	cmpwi r0, 1
/* 809D10E4  40 82 00 2C */	bne lbl_809D1110
/* 809D10E8  38 60 00 00 */	li r3, 0
/* 809D10EC  38 80 00 00 */	li r4, 0
/* 809D10F0  38 00 00 03 */	li r0, 3
/* 809D10F4  7C 09 03 A6 */	mtctr r0
lbl_809D10F8:
/* 809D10F8  7C BD 1A 14 */	add r5, r29, r3
/* 809D10FC  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 809D1100  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 809D1104  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 809D1108  38 63 00 06 */	addi r3, r3, 6
/* 809D110C  42 00 FF EC */	bdnz lbl_809D10F8
lbl_809D1110:
/* 809D1110  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809D1114  80 63 00 04 */	lwz r3, 4(r3)
/* 809D1118  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D111C  38 C0 00 00 */	li r6, 0
/* 809D1120  3C 60 80 9D */	lis r3, ctrlJointCallBack__11daNpc_Grd_cFP8J3DJointi@ha /* 0x809D0B90@ha */
/* 809D1124  38 83 0B 90 */	addi r4, r3, ctrlJointCallBack__11daNpc_Grd_cFP8J3DJointi@l /* 0x809D0B90@l */
/* 809D1128  48 00 00 18 */	b lbl_809D1140
lbl_809D112C:
/* 809D112C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 809D1130  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809D1134  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D1138  90 83 00 04 */	stw r4, 4(r3)
/* 809D113C  38 C6 00 01 */	addi r6, r6, 1
lbl_809D1140:
/* 809D1140  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809D1144  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 809D1148  7C 03 00 40 */	cmplw r3, r0
/* 809D114C  41 80 FF E0 */	blt lbl_809D112C
/* 809D1150  7F A3 EB 78 */	mr r3, r29
/* 809D1154  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D1158  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809D115C  7D 89 03 A6 */	mtctr r12
/* 809D1160  4E 80 04 21 */	bctrl 
/* 809D1164  7F A3 EB 78 */	mr r3, r29
/* 809D1168  48 00 13 2D */	bl lookat__11daNpc_Grd_cFv
/* 809D116C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809D1170  80 63 00 04 */	lwz r3, 4(r3)
/* 809D1174  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809D1178  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809D117C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809D1180  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D1184  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D1188  4B 97 53 29 */	bl PSMTXCopy
/* 809D118C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D1190  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D1194  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809D1198  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 809D119C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809D11A0  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 809D11A4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809D11A8  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 809D11AC  38 9E 00 60 */	addi r4, r30, 0x60
/* 809D11B0  38 BD 05 38 */	addi r5, r29, 0x538
/* 809D11B4  4B 97 5B B9 */	bl PSMTXMultVec
/* 809D11B8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809D11BC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809D11C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D11C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D11C8  38 9E 00 60 */	addi r4, r30, 0x60
/* 809D11CC  38 A1 00 30 */	addi r5, r1, 0x30
/* 809D11D0  4B 97 5B 9D */	bl PSMTXMultVec
/* 809D11D4  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809D11D8  38 81 00 30 */	addi r4, r1, 0x30
/* 809D11DC  4B 89 FA 99 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809D11E0  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 809D11E4  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 809D11E8  38 81 00 30 */	addi r4, r1, 0x30
/* 809D11EC  4B 89 FA 19 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809D11F0  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 809D11F4  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 809D11F8  28 04 00 00 */	cmplwi r4, 0
/* 809D11FC  41 82 01 74 */	beq lbl_809D1370
/* 809D1200  38 61 00 18 */	addi r3, r1, 0x18
/* 809D1204  38 BD 05 38 */	addi r5, r29, 0x538
/* 809D1208  4B 89 59 2D */	bl __mi__4cXyzCFRC3Vec
/* 809D120C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809D1210  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809D1214  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809D1218  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809D121C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809D1220  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809D1224  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 809D1228  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 809D122C  7C 03 02 14 */	add r0, r3, r0
/* 809D1230  7C 00 00 D0 */	neg r0, r0
/* 809D1234  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809D1238  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 809D123C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 809D1240  4B 89 64 35 */	bl cM_atan2s__Fff
/* 809D1244  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 809D1248  7C 00 1A 14 */	add r0, r0, r3
/* 809D124C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809D1250  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809D1254  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809D1258  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809D125C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D1260  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809D1264  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809D1268  38 61 00 0C */	addi r3, r1, 0xc
/* 809D126C  4B 97 5E CD */	bl PSVECSquareMag
/* 809D1270  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809D1274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D1278  40 81 00 58 */	ble lbl_809D12D0
/* 809D127C  FC 00 08 34 */	frsqrte f0, f1
/* 809D1280  C8 9F 00 A8 */	lfd f4, 0xa8(r31)
/* 809D1284  FC 44 00 32 */	fmul f2, f4, f0
/* 809D1288  C8 7F 00 B0 */	lfd f3, 0xb0(r31)
/* 809D128C  FC 00 00 32 */	fmul f0, f0, f0
/* 809D1290  FC 01 00 32 */	fmul f0, f1, f0
/* 809D1294  FC 03 00 28 */	fsub f0, f3, f0
/* 809D1298  FC 02 00 32 */	fmul f0, f2, f0
/* 809D129C  FC 44 00 32 */	fmul f2, f4, f0
/* 809D12A0  FC 00 00 32 */	fmul f0, f0, f0
/* 809D12A4  FC 01 00 32 */	fmul f0, f1, f0
/* 809D12A8  FC 03 00 28 */	fsub f0, f3, f0
/* 809D12AC  FC 02 00 32 */	fmul f0, f2, f0
/* 809D12B0  FC 44 00 32 */	fmul f2, f4, f0
/* 809D12B4  FC 00 00 32 */	fmul f0, f0, f0
/* 809D12B8  FC 01 00 32 */	fmul f0, f1, f0
/* 809D12BC  FC 03 00 28 */	fsub f0, f3, f0
/* 809D12C0  FC 02 00 32 */	fmul f0, f2, f0
/* 809D12C4  FC 41 00 32 */	fmul f2, f1, f0
/* 809D12C8  FC 40 10 18 */	frsp f2, f2
/* 809D12CC  48 00 00 90 */	b lbl_809D135C
lbl_809D12D0:
/* 809D12D0  C8 1F 00 B8 */	lfd f0, 0xb8(r31)
/* 809D12D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D12D8  40 80 00 10 */	bge lbl_809D12E8
/* 809D12DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809D12E0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809D12E4  48 00 00 78 */	b lbl_809D135C
lbl_809D12E8:
/* 809D12E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 809D12EC  80 81 00 08 */	lwz r4, 8(r1)
/* 809D12F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809D12F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 809D12F8  7C 03 00 00 */	cmpw r3, r0
/* 809D12FC  41 82 00 14 */	beq lbl_809D1310
/* 809D1300  40 80 00 40 */	bge lbl_809D1340
/* 809D1304  2C 03 00 00 */	cmpwi r3, 0
/* 809D1308  41 82 00 20 */	beq lbl_809D1328
/* 809D130C  48 00 00 34 */	b lbl_809D1340
lbl_809D1310:
/* 809D1310  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809D1314  41 82 00 0C */	beq lbl_809D1320
/* 809D1318  38 00 00 01 */	li r0, 1
/* 809D131C  48 00 00 28 */	b lbl_809D1344
lbl_809D1320:
/* 809D1320  38 00 00 02 */	li r0, 2
/* 809D1324  48 00 00 20 */	b lbl_809D1344
lbl_809D1328:
/* 809D1328  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809D132C  41 82 00 0C */	beq lbl_809D1338
/* 809D1330  38 00 00 05 */	li r0, 5
/* 809D1334  48 00 00 10 */	b lbl_809D1344
lbl_809D1338:
/* 809D1338  38 00 00 03 */	li r0, 3
/* 809D133C  48 00 00 08 */	b lbl_809D1344
lbl_809D1340:
/* 809D1340  38 00 00 04 */	li r0, 4
lbl_809D1344:
/* 809D1344  2C 00 00 01 */	cmpwi r0, 1
/* 809D1348  40 82 00 10 */	bne lbl_809D1358
/* 809D134C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809D1350  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809D1354  48 00 00 08 */	b lbl_809D135C
lbl_809D1358:
/* 809D1358  FC 40 08 90 */	fmr f2, f1
lbl_809D135C:
/* 809D135C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 809D1360  4B 89 63 15 */	bl cM_atan2s__Fff
/* 809D1364  7C 03 00 D0 */	neg r0, r3
/* 809D1368  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 809D136C  48 00 00 10 */	b lbl_809D137C
lbl_809D1370:
/* 809D1370  38 00 00 00 */	li r0, 0
/* 809D1374  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 809D1378  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_809D137C:
/* 809D137C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809D1380  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809D1384  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809D1388  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809D138C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809D1390  4B 63 B9 D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809D1394  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D1398  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D139C  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 809D13A0  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 809D13A4  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 809D13A8  4B 63 AE F9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 809D13AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D13B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D13B4  38 81 00 3C */	addi r4, r1, 0x3c
/* 809D13B8  38 A1 00 48 */	addi r5, r1, 0x48
/* 809D13BC  4B 97 59 B1 */	bl PSMTXMultVec
/* 809D13C0  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 809D13C4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 809D13C8  EC 20 F8 2A */	fadds f1, f0, f31
/* 809D13CC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809D13D0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809D13D4  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 809D13D8  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 809D13DC  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809D13E0  28 00 00 00 */	cmplwi r0, 0
/* 809D13E4  40 82 00 9C */	bne lbl_809D1480
/* 809D13E8  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809D13EC  28 00 00 00 */	cmplwi r0, 0
/* 809D13F0  40 82 00 90 */	bne lbl_809D1480
/* 809D13F4  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809D13F8  28 00 00 00 */	cmplwi r0, 0
/* 809D13FC  40 82 00 28 */	bne lbl_809D1424
/* 809D1400  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809D1404  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809D1408  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 809D140C  38 00 00 1F */	li r0, 0x1f
/* 809D1410  90 1D 0C AC */	stw r0, 0xcac(r29)
/* 809D1414  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 809D1418  60 00 00 04 */	ori r0, r0, 4
/* 809D141C  90 1D 0D 30 */	stw r0, 0xd30(r29)
/* 809D1420  48 00 00 10 */	b lbl_809D1430
lbl_809D1424:
/* 809D1424  38 00 00 00 */	li r0, 0
/* 809D1428  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 809D142C  90 1D 0C AC */	stw r0, 0xcac(r29)
lbl_809D1430:
/* 809D1430  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 809D1434  38 81 00 48 */	addi r4, r1, 0x48
/* 809D1438  4B 89 DD A5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809D143C  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 809D1440  38 9F 00 00 */	addi r4, r31, 0
/* 809D1444  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809D1448  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809D144C  EC 21 00 2A */	fadds f1, f1, f0
/* 809D1450  4B 89 DD A9 */	bl SetH__8cM3dGCylFf
/* 809D1454  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 809D1458  38 9F 00 00 */	addi r4, r31, 0
/* 809D145C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809D1460  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809D1464  EC 21 00 2A */	fadds f1, f1, f0
/* 809D1468  4B 89 DD 99 */	bl SetR__8cM3dGCylFf
/* 809D146C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D1470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D1474  38 63 23 3C */	addi r3, r3, 0x233c
/* 809D1478  38 9D 0C 94 */	addi r4, r29, 0xc94
/* 809D147C  4B 89 37 2D */	bl Set__4cCcSFP8cCcD_Obj
lbl_809D1480:
/* 809D1480  38 7D 0C 94 */	addi r3, r29, 0xc94
/* 809D1484  81 9D 0C D0 */	lwz r12, 0xcd0(r29)
/* 809D1488  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809D148C  7D 89 03 A6 */	mtctr r12
/* 809D1490  4E 80 04 21 */	bctrl 
/* 809D1494  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 809D1498  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 809D149C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 809D14A0  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 809D14A4  39 61 00 90 */	addi r11, r1, 0x90
/* 809D14A8  4B 99 0D 6D */	bl _restgpr_24
/* 809D14AC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 809D14B0  7C 08 03 A6 */	mtlr r0
/* 809D14B4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 809D14B8  4E 80 00 20 */	blr 
