lbl_802C110C:
/* 802C110C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C1110  7C 08 02 A6 */	mflr r0
/* 802C1114  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C1118  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802C111C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802C1120  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802C1124  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802C1128  39 61 00 30 */	addi r11, r1, 0x30
/* 802C112C  48 0A 10 AD */	bl _savegpr_28
/* 802C1130  7C 7D 1B 78 */	mr r29, r3
/* 802C1134  7C 9E 23 78 */	mr r30, r4
/* 802C1138  7C BC 2B 78 */	mr r28, r5
/* 802C113C  80 04 00 00 */	lwz r0, 0(r4)
/* 802C1140  90 01 00 08 */	stw r0, 8(r1)
/* 802C1144  38 7D 00 08 */	addi r3, r29, 8
/* 802C1148  38 81 00 08 */	addi r4, r1, 8
/* 802C114C  81 9D 00 18 */	lwz r12, 0x18(r29)
/* 802C1150  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C1154  7D 89 03 A6 */	mtctr r12
/* 802C1158  4E 80 04 21 */	bctrl 
/* 802C115C  7C 7F 1B 78 */	mr r31, r3
/* 802C1160  88 9D 00 A0 */	lbz r4, 0xa0(r29)
/* 802C1164  38 04 FF E7 */	addi r0, r4, -25
/* 802C1168  28 00 00 1D */	cmplwi r0, 0x1d
/* 802C116C  41 81 01 88 */	bgt lbl_802C12F4
/* 802C1170  3C 80 80 3D */	lis r4, lit_4094@ha /* 0x803CB630@ha */
/* 802C1174  38 84 B6 30 */	addi r4, r4, lit_4094@l /* 0x803CB630@l */
/* 802C1178  54 00 10 3A */	slwi r0, r0, 2
/* 802C117C  7C 04 00 2E */	lwzx r0, r4, r0
/* 802C1180  7C 09 03 A6 */	mtctr r0
/* 802C1184  4E 80 04 20 */	bctr 
/* 802C1188  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C118C  3C 63 FF F9 */	addis r3, r3, 0xfff9
/* 802C1190  28 03 00 96 */	cmplwi r3, 0x96
/* 802C1194  40 82 00 28 */	bne lbl_802C11BC
/* 802C1198  38 00 00 01 */	li r0, 1
/* 802C119C  98 1D 00 A3 */	stb r0, 0xa3(r29)
/* 802C11A0  7F A4 EB 78 */	mr r4, r29
/* 802C11A4  28 1D 00 00 */	cmplwi r29, 0
/* 802C11A8  41 82 00 08 */	beq lbl_802C11B0
/* 802C11AC  38 9D 00 90 */	addi r4, r29, 0x90
lbl_802C11B0:
/* 802C11B0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802C11B4  48 01 AF A9 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802C11B8  48 00 01 3C */	b lbl_802C12F4
lbl_802C11BC:
/* 802C11BC  88 1D 00 A3 */	lbz r0, 0xa3(r29)
/* 802C11C0  28 00 00 00 */	cmplwi r0, 0
/* 802C11C4  41 82 01 30 */	beq lbl_802C12F4
/* 802C11C8  28 03 00 95 */	cmplwi r3, 0x95
/* 802C11CC  40 82 01 28 */	bne lbl_802C12F4
/* 802C11D0  38 00 00 00 */	li r0, 0
/* 802C11D4  98 1D 00 A3 */	stb r0, 0xa3(r29)
/* 802C11D8  7F A4 EB 78 */	mr r4, r29
/* 802C11DC  28 1D 00 00 */	cmplwi r29, 0
/* 802C11E0  41 82 00 08 */	beq lbl_802C11E8
/* 802C11E4  38 9D 00 90 */	addi r4, r29, 0x90
lbl_802C11E8:
/* 802C11E8  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802C11EC  48 01 AD 61 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802C11F0  48 00 01 04 */	b lbl_802C12F4
/* 802C11F4  28 1F 00 00 */	cmplwi r31, 0
/* 802C11F8  41 82 00 FC */	beq lbl_802C12F4
/* 802C11FC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C1200  28 00 00 00 */	cmplwi r0, 0
/* 802C1204  41 82 00 F0 */	beq lbl_802C12F4
/* 802C1208  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C120C  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C1210  28 00 03 20 */	cmplwi r0, 0x320
/* 802C1214  40 82 00 E0 */	bne lbl_802C12F4
/* 802C1218  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C121C  93 81 00 14 */	stw r28, 0x14(r1)
/* 802C1220  3C 00 43 30 */	lis r0, 0x4330
/* 802C1224  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C1228  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C122C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C1230  C0 42 C2 44 */	lfs f2, lit_4090(r2)
/* 802C1234  C0 62 C2 48 */	lfs f3, lit_4091(r2)
/* 802C1238  C0 82 C2 4C */	lfs f4, lit_4092(r2)
/* 802C123C  C0 A2 C2 20 */	lfs f5, lit_3669(r2)
/* 802C1240  38 60 00 00 */	li r3, 0
/* 802C1244  4B FE 84 49 */	bl linearTransform__6Z2CalcFfffffb
/* 802C1248  FF E0 08 90 */	fmr f31, f1
/* 802C124C  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C1250  93 81 00 1C */	stw r28, 0x1c(r1)
/* 802C1254  3C 00 43 30 */	lis r0, 0x4330
/* 802C1258  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C125C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C1260  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C1264  C0 42 C2 44 */	lfs f2, lit_4090(r2)
/* 802C1268  C0 62 C2 48 */	lfs f3, lit_4091(r2)
/* 802C126C  C0 82 C2 14 */	lfs f4, lit_3666(r2)
/* 802C1270  C0 A2 C2 18 */	lfs f5, lit_3667(r2)
/* 802C1274  38 60 00 00 */	li r3, 0
/* 802C1278  4B FE 84 15 */	bl linearTransform__6Z2CalcFfffffb
/* 802C127C  FF C0 08 90 */	fmr f30, f1
/* 802C1280  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C1284  38 63 00 48 */	addi r3, r3, 0x48
/* 802C1288  FC 20 F8 90 */	fmr f1, f31
/* 802C128C  38 80 00 00 */	li r4, 0
/* 802C1290  4B FE 1B 25 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C1294  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C1298  38 63 00 48 */	addi r3, r3, 0x48
/* 802C129C  FC 20 F0 90 */	fmr f1, f30
/* 802C12A0  38 80 00 00 */	li r4, 0
/* 802C12A4  4B FE 1B 69 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C12A8  48 00 00 4C */	b lbl_802C12F4
/* 802C12AC  A0 9D 00 24 */	lhz r4, 0x24(r29)
/* 802C12B0  48 00 1B A5 */	bl Z2_E_ms_modVol__FP17Z2SoundHandlePoolUl
/* 802C12B4  48 00 00 40 */	b lbl_802C12F4
/* 802C12B8  7F 84 E3 78 */	mr r4, r28
/* 802C12BC  48 00 1B 25 */	bl Z2_E_sw_modPitch__FP17Z2SoundHandlePoolUl
/* 802C12C0  48 00 00 34 */	b lbl_802C12F4
/* 802C12C4  A0 9D 00 24 */	lhz r4, 0x24(r29)
/* 802C12C8  48 00 1B D5 */	bl Z2_E_mm_modPitch__FP17Z2SoundHandlePoolUl
/* 802C12CC  48 00 00 28 */	b lbl_802C12F4
/* 802C12D0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C12D4  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C12D8  28 00 02 7B */	cmplwi r0, 0x27b
/* 802C12DC  40 82 00 18 */	bne lbl_802C12F4
/* 802C12E0  38 00 00 01 */	li r0, 1
/* 802C12E4  98 1D 00 A3 */	stb r0, 0xa3(r29)
/* 802C12E8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C12EC  88 8D 82 E9 */	lbz r4, struct_80450868+0x1(r13)
/* 802C12F0  4B FF 38 0D */	bl setBattleLastHit__8Z2SeqMgrFUc
lbl_802C12F4:
/* 802C12F4  80 9E 00 00 */	lwz r4, 0(r30)
/* 802C12F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070460@ha */
/* 802C12FC  38 03 04 60 */	addi r0, r3, 0x0460 /* 0x00070460@l */
/* 802C1300  7C 04 00 00 */	cmpw r4, r0
/* 802C1304  41 82 00 28 */	beq lbl_802C132C
/* 802C1308  40 80 00 38 */	bge lbl_802C1340
/* 802C130C  38 03 04 38 */	addi r0, r3, 0x438
/* 802C1310  7C 04 00 00 */	cmpw r4, r0
/* 802C1314  41 82 00 08 */	beq lbl_802C131C
/* 802C1318  48 00 00 28 */	b lbl_802C1340
lbl_802C131C:
/* 802C131C  7F E3 FB 78 */	mr r3, r31
/* 802C1320  A0 9D 00 24 */	lhz r4, 0x24(r29)
/* 802C1324  48 00 1B C1 */	bl Z2_B_zan_modPitch__FP17Z2SoundHandlePoolUl
/* 802C1328  48 00 00 18 */	b lbl_802C1340
lbl_802C132C:
/* 802C132C  A0 1D 00 24 */	lhz r0, 0x24(r29)
/* 802C1330  28 00 00 64 */	cmplwi r0, 0x64
/* 802C1334  40 81 00 0C */	ble lbl_802C1340
/* 802C1338  38 60 00 00 */	li r3, 0
/* 802C133C  48 00 00 08 */	b lbl_802C1344
lbl_802C1340:
/* 802C1340  7F E3 FB 78 */	mr r3, r31
lbl_802C1344:
/* 802C1344  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802C1348  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802C134C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802C1350  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802C1354  39 61 00 30 */	addi r11, r1, 0x30
/* 802C1358  48 0A 0E CD */	bl _restgpr_28
/* 802C135C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C1360  7C 08 03 A6 */	mtlr r0
/* 802C1364  38 21 00 50 */	addi r1, r1, 0x50
/* 802C1368  4E 80 00 20 */	blr 
