lbl_804A0F0C:
/* 804A0F0C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804A0F10  7C 08 02 A6 */	mflr r0
/* 804A0F14  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804A0F18  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 804A0F1C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 804A0F20  39 61 00 90 */	addi r11, r1, 0x90
/* 804A0F24  4B EC 12 AD */	bl _savegpr_26
/* 804A0F28  7C 7B 1B 78 */	mr r27, r3
/* 804A0F2C  3C 60 80 4A */	lis r3, lit_4078@ha /* 0x804A2850@ha */
/* 804A0F30  3B E3 28 50 */	addi r31, r3, lit_4078@l /* 0x804A2850@l */
/* 804A0F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A0F38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A0F3C  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 804A0F40  88 1B 09 57 */	lbz r0, 0x957(r27)
/* 804A0F44  28 00 00 00 */	cmplwi r0, 0
/* 804A0F48  41 82 00 58 */	beq lbl_804A0FA0
/* 804A0F4C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 804A0F50  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 804A0F54  88 7B 09 57 */	lbz r3, 0x957(r27)
/* 804A0F58  38 03 FF FF */	addi r0, r3, -1
/* 804A0F5C  98 1B 09 57 */	stb r0, 0x957(r27)
/* 804A0F60  88 1B 09 57 */	lbz r0, 0x957(r27)
/* 804A0F64  28 00 00 00 */	cmplwi r0, 0
/* 804A0F68  40 82 00 1C */	bne lbl_804A0F84
/* 804A0F6C  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0F70  60 00 00 02 */	ori r0, r0, 2
/* 804A0F74  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A0F78  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0F7C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804A0F80  90 1B 09 64 */	stw r0, 0x964(r27)
lbl_804A0F84:
/* 804A0F84  38 7B 09 A8 */	addi r3, r27, 0x9a8
/* 804A0F88  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 804A0F8C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 804A0F90  FC 60 10 90 */	fmr f3, f2
/* 804A0F94  C0 9F 01 20 */	lfs f4, 0x120(r31)
/* 804A0F98  4B DC E9 E5 */	bl cLib_addCalc__FPfffff
/* 804A0F9C  48 00 00 40 */	b lbl_804A0FDC
lbl_804A0FA0:
/* 804A0FA0  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0FA4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804A0FA8  41 82 00 14 */	beq lbl_804A0FBC
/* 804A0FAC  7F C3 F3 78 */	mr r3, r30
/* 804A0FB0  4B C3 F1 01 */	bl getBoomCatchSpeed__9daAlink_cCFv
/* 804A0FB4  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 804A0FB8  48 00 00 0C */	b lbl_804A0FC4
lbl_804A0FBC:
/* 804A0FBC  C0 1B 09 88 */	lfs f0, 0x988(r27)
/* 804A0FC0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_804A0FC4:
/* 804A0FC4  38 7B 09 A8 */	addi r3, r27, 0x9a8
/* 804A0FC8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804A0FCC  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 804A0FD0  FC 60 10 90 */	fmr f3, f2
/* 804A0FD4  C0 9F 01 20 */	lfs f4, 0x120(r31)
/* 804A0FD8  4B DC E9 A5 */	bl cLib_addCalc__FPfffff
lbl_804A0FDC:
/* 804A0FDC  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 804A0FE0  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 804A0FE4  90 61 00 58 */	stw r3, 0x58(r1)
/* 804A0FE8  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804A0FEC  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 804A0FF0  90 01 00 60 */	stw r0, 0x60(r1)
/* 804A0FF4  C0 3B 09 A8 */	lfs f1, 0x9a8(r27)
/* 804A0FF8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 804A0FFC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804A1000  80 7B 05 6C */	lwz r3, 0x56c(r27)
/* 804A1004  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 804A1008  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804A100C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804A1010  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 804A1014  80 7B 09 64 */	lwz r3, 0x964(r27)
/* 804A1018  38 00 FD 7F */	li r0, -641
/* 804A101C  7C 60 00 38 */	and r0, r3, r0
/* 804A1020  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A1024  7F 63 DB 78 */	mr r3, r27
/* 804A1028  4B FF EC A9 */	bl setRotAngle__13daBoomerang_cFv
/* 804A102C  7F 63 DB 78 */	mr r3, r27
/* 804A1030  4B FF ED 3D */	bl setAimPos__13daBoomerang_cFv
/* 804A1034  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1038  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804A103C  41 82 00 A4 */	beq lbl_804A10E0
/* 804A1040  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1044  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 804A1048  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A104C  7F C3 F3 78 */	mr r3, r30
/* 804A1050  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1054  54 04 06 B4 */	rlwinm r4, r0, 0, 0x1a, 0x1a
/* 804A1058  4B C3 F8 6D */	bl returnBoomerang__9daAlink_cFi
/* 804A105C  2C 03 00 00 */	cmpwi r3, 0
/* 804A1060  41 82 00 70 */	beq lbl_804A10D0
/* 804A1064  38 00 00 00 */	li r0, 0
/* 804A1068  90 1B 00 B0 */	stw r0, 0xb0(r27)
/* 804A106C  3C 60 80 4A */	lis r3, lit_5579@ha /* 0x804A2B08@ha */
/* 804A1070  38 83 2B 08 */	addi r4, r3, lit_5579@l /* 0x804A2B08@l */
/* 804A1074  80 64 00 00 */	lwz r3, 0(r4)
/* 804A1078  80 04 00 04 */	lwz r0, 4(r4)
/* 804A107C  90 7B 0D C0 */	stw r3, 0xdc0(r27)
/* 804A1080  90 1B 0D C4 */	stw r0, 0xdc4(r27)
/* 804A1084  80 04 00 08 */	lwz r0, 8(r4)
/* 804A1088  90 1B 0D C8 */	stw r0, 0xdc8(r27)
/* 804A108C  80 7B 09 64 */	lwz r3, 0x964(r27)
/* 804A1090  38 00 FA DB */	li r0, -1317
/* 804A1094  7C 60 00 38 */	and r0, r3, r0
/* 804A1098  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A109C  38 00 FF FF */	li r0, -1
/* 804A10A0  90 1B 06 A8 */	stw r0, 0x6a8(r27)
/* 804A10A4  C0 1B 09 90 */	lfs f0, 0x990(r27)
/* 804A10A8  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 804A10AC  C0 1B 09 94 */	lfs f0, 0x994(r27)
/* 804A10B0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 804A10B4  C0 1B 09 98 */	lfs f0, 0x998(r27)
/* 804A10B8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 804A10BC  7F 63 DB 78 */	mr r3, r27
/* 804A10C0  4B FF EA ED */	bl setMoveMatrix__13daBoomerang_cFv
/* 804A10C4  7F 63 DB 78 */	mr r3, r27
/* 804A10C8  4B FF E8 DD */	bl resetLockActor__13daBoomerang_cFv
/* 804A10CC  48 00 00 0C */	b lbl_804A10D8
lbl_804A10D0:
/* 804A10D0  7F 63 DB 78 */	mr r3, r27
/* 804A10D4  4B B7 8B A9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_804A10D8:
/* 804A10D8  38 60 00 01 */	li r3, 1
/* 804A10DC  48 00 07 18 */	b lbl_804A17F4
lbl_804A10E0:
/* 804A10E0  38 61 00 28 */	addi r3, r1, 0x28
/* 804A10E4  38 9B 09 90 */	addi r4, r27, 0x990
/* 804A10E8  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804A10EC  4B DC 5A 49 */	bl __mi__4cXyzCFRC3Vec
/* 804A10F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804A10F4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804A10F8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804A10FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A1100  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804A1104  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804A1108  38 61 00 4C */	addi r3, r1, 0x4c
/* 804A110C  4B EA 60 2D */	bl PSVECSquareMag
/* 804A1110  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804A1114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A1118  40 81 00 58 */	ble lbl_804A1170
/* 804A111C  FC 00 08 34 */	frsqrte f0, f1
/* 804A1120  C8 9F 00 E8 */	lfd f4, 0xe8(r31)
/* 804A1124  FC 44 00 32 */	fmul f2, f4, f0
/* 804A1128  C8 7F 00 F0 */	lfd f3, 0xf0(r31)
/* 804A112C  FC 00 00 32 */	fmul f0, f0, f0
/* 804A1130  FC 01 00 32 */	fmul f0, f1, f0
/* 804A1134  FC 03 00 28 */	fsub f0, f3, f0
/* 804A1138  FC 02 00 32 */	fmul f0, f2, f0
/* 804A113C  FC 44 00 32 */	fmul f2, f4, f0
/* 804A1140  FC 00 00 32 */	fmul f0, f0, f0
/* 804A1144  FC 01 00 32 */	fmul f0, f1, f0
/* 804A1148  FC 03 00 28 */	fsub f0, f3, f0
/* 804A114C  FC 02 00 32 */	fmul f0, f2, f0
/* 804A1150  FC 44 00 32 */	fmul f2, f4, f0
/* 804A1154  FC 00 00 32 */	fmul f0, f0, f0
/* 804A1158  FC 01 00 32 */	fmul f0, f1, f0
/* 804A115C  FC 03 00 28 */	fsub f0, f3, f0
/* 804A1160  FC 02 00 32 */	fmul f0, f2, f0
/* 804A1164  FF E1 00 32 */	fmul f31, f1, f0
/* 804A1168  FF E0 F8 18 */	frsp f31, f31
/* 804A116C  48 00 00 90 */	b lbl_804A11FC
lbl_804A1170:
/* 804A1170  C8 1F 00 F8 */	lfd f0, 0xf8(r31)
/* 804A1174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A1178  40 80 00 10 */	bge lbl_804A1188
/* 804A117C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A1180  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804A1184  48 00 00 78 */	b lbl_804A11FC
lbl_804A1188:
/* 804A1188  D0 21 00 08 */	stfs f1, 8(r1)
/* 804A118C  80 81 00 08 */	lwz r4, 8(r1)
/* 804A1190  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804A1194  3C 00 7F 80 */	lis r0, 0x7f80
/* 804A1198  7C 03 00 00 */	cmpw r3, r0
/* 804A119C  41 82 00 14 */	beq lbl_804A11B0
/* 804A11A0  40 80 00 40 */	bge lbl_804A11E0
/* 804A11A4  2C 03 00 00 */	cmpwi r3, 0
/* 804A11A8  41 82 00 20 */	beq lbl_804A11C8
/* 804A11AC  48 00 00 34 */	b lbl_804A11E0
lbl_804A11B0:
/* 804A11B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A11B4  41 82 00 0C */	beq lbl_804A11C0
/* 804A11B8  38 00 00 01 */	li r0, 1
/* 804A11BC  48 00 00 28 */	b lbl_804A11E4
lbl_804A11C0:
/* 804A11C0  38 00 00 02 */	li r0, 2
/* 804A11C4  48 00 00 20 */	b lbl_804A11E4
lbl_804A11C8:
/* 804A11C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A11CC  41 82 00 0C */	beq lbl_804A11D8
/* 804A11D0  38 00 00 05 */	li r0, 5
/* 804A11D4  48 00 00 10 */	b lbl_804A11E4
lbl_804A11D8:
/* 804A11D8  38 00 00 03 */	li r0, 3
/* 804A11DC  48 00 00 08 */	b lbl_804A11E4
lbl_804A11E0:
/* 804A11E0  38 00 00 04 */	li r0, 4
lbl_804A11E4:
/* 804A11E4  2C 00 00 01 */	cmpwi r0, 1
/* 804A11E8  40 82 00 10 */	bne lbl_804A11F8
/* 804A11EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A11F0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804A11F4  48 00 00 08 */	b lbl_804A11FC
lbl_804A11F8:
/* 804A11F8  FF E0 08 90 */	fmr f31, f1
lbl_804A11FC:
/* 804A11FC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 804A1200  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A1204  40 81 00 30 */	ble lbl_804A1234
/* 804A1208  38 61 00 1C */	addi r3, r1, 0x1c
/* 804A120C  38 81 00 4C */	addi r4, r1, 0x4c
/* 804A1210  FC 20 F8 90 */	fmr f1, f31
/* 804A1214  4B DC 5A 05 */	bl __dv__4cXyzCFf
/* 804A1218  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A121C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804A1220  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804A1224  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A1228  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804A122C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A1230  48 00 00 1C */	b lbl_804A124C
lbl_804A1234:
/* 804A1234  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804A1238  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804A123C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804A1240  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A1244  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804A1248  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_804A124C:
/* 804A124C  38 61 00 40 */	addi r3, r1, 0x40
/* 804A1250  4B DC 5E D9 */	bl atan2sX_Z__4cXyzCFv
/* 804A1254  7C 7D 1B 78 */	mr r29, r3
/* 804A1258  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A125C  7F A3 07 34 */	extsh r3, r29
/* 804A1260  7C 00 18 50 */	subf r0, r0, r3
/* 804A1264  7C 1C 07 34 */	extsh r28, r0
/* 804A1268  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A126C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804A1270  41 82 00 58 */	beq lbl_804A12C8
/* 804A1274  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1278  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804A127C  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A1280  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1284  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A1288  41 82 00 10 */	beq lbl_804A1298
/* 804A128C  38 03 30 00 */	addi r0, r3, 0x3000
/* 804A1290  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 804A1294  48 00 00 28 */	b lbl_804A12BC
lbl_804A1298:
/* 804A1298  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A129C  7C 00 18 50 */	subf r0, r0, r3
/* 804A12A0  7C 00 07 35 */	extsh. r0, r0
/* 804A12A4  41 80 00 10 */	blt lbl_804A12B4
/* 804A12A8  38 03 D0 00 */	addi r0, r3, -12288
/* 804A12AC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 804A12B0  48 00 00 0C */	b lbl_804A12BC
lbl_804A12B4:
/* 804A12B4  38 03 30 00 */	addi r0, r3, 0x3000
/* 804A12B8  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_804A12BC:
/* 804A12BC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A12C0  7C 00 18 50 */	subf r0, r0, r3
/* 804A12C4  7C 1C 07 34 */	extsh r28, r0
lbl_804A12C8:
/* 804A12C8  A8 7B 09 60 */	lha r3, 0x960(r27)
/* 804A12CC  2C 03 00 00 */	cmpwi r3, 0
/* 804A12D0  41 82 00 0C */	beq lbl_804A12DC
/* 804A12D4  38 03 FF FF */	addi r0, r3, -1
/* 804A12D8  B0 1B 09 60 */	sth r0, 0x960(r27)
lbl_804A12DC:
/* 804A12DC  88 7B 09 54 */	lbz r3, 0x954(r27)
/* 804A12E0  28 03 00 00 */	cmplwi r3, 0
/* 804A12E4  41 82 00 40 */	beq lbl_804A1324
/* 804A12E8  38 03 FF FF */	addi r0, r3, -1
/* 804A12EC  98 1B 09 54 */	stb r0, 0x954(r27)
/* 804A12F0  88 1B 09 54 */	lbz r0, 0x954(r27)
/* 804A12F4  28 00 00 00 */	cmplwi r0, 0
/* 804A12F8  40 82 00 2C */	bne lbl_804A1324
/* 804A12FC  38 00 00 1E */	li r0, 0x1e
/* 804A1300  98 1B 09 54 */	stb r0, 0x954(r27)
/* 804A1304  88 7B 09 55 */	lbz r3, 0x955(r27)
/* 804A1308  38 03 00 01 */	addi r0, r3, 1
/* 804A130C  98 1B 09 55 */	stb r0, 0x955(r27)
/* 804A1310  88 1B 09 55 */	lbz r0, 0x955(r27)
/* 804A1314  28 00 00 30 */	cmplwi r0, 0x30
/* 804A1318  40 81 00 0C */	ble lbl_804A1324
/* 804A131C  38 00 00 30 */	li r0, 0x30
/* 804A1320  98 1B 09 55 */	stb r0, 0x955(r27)
lbl_804A1324:
/* 804A1324  3B 40 00 00 */	li r26, 0
/* 804A1328  A8 1B 09 60 */	lha r0, 0x960(r27)
/* 804A132C  2C 00 00 00 */	cmpwi r0, 0
/* 804A1330  40 82 00 2C */	bne lbl_804A135C
/* 804A1334  38 9E 35 34 */	addi r4, r30, 0x3534
/* 804A1338  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 804A133C  4B EA 60 61 */	bl PSVECSquareDistance
/* 804A1340  C0 5B 05 2C */	lfs f2, 0x52c(r27)
/* 804A1344  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804A1348  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A134C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A1350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A1354  40 80 00 08 */	bge lbl_804A135C
/* 804A1358  3B 40 00 01 */	li r26, 1
lbl_804A135C:
/* 804A135C  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1360  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A1364  40 82 00 0C */	bne lbl_804A1370
/* 804A1368  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804A136C  41 82 00 3C */	beq lbl_804A13A8
lbl_804A1370:
/* 804A1370  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804A1374  40 82 00 18 */	bne lbl_804A138C
/* 804A1378  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 804A137C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804A1380  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A1384  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A1388  40 80 00 20 */	bge lbl_804A13A8
lbl_804A138C:
/* 804A138C  38 00 00 00 */	li r0, 0
/* 804A1390  98 1B 09 57 */	stb r0, 0x957(r27)
/* 804A1394  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1398  60 00 00 41 */	ori r0, r0, 0x41
/* 804A139C  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A13A0  7F 63 DB 78 */	mr r3, r27
/* 804A13A4  4B FF E6 01 */	bl resetLockActor__13daBoomerang_cFv
lbl_804A13A8:
/* 804A13A8  80 7B 09 64 */	lwz r3, 0x964(r27)
/* 804A13AC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804A13B0  40 82 00 48 */	bne lbl_804A13F8
/* 804A13B4  88 1B 09 57 */	lbz r0, 0x957(r27)
/* 804A13B8  28 00 00 00 */	cmplwi r0, 0
/* 804A13BC  40 82 00 3C */	bne lbl_804A13F8
/* 804A13C0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804A13C4  40 82 00 34 */	bne lbl_804A13F8
/* 804A13C8  88 7B 09 50 */	lbz r3, 0x950(r27)
/* 804A13CC  88 1B 09 51 */	lbz r0, 0x951(r27)
/* 804A13D0  7C 03 00 40 */	cmplw r3, r0
/* 804A13D4  41 81 00 24 */	bgt lbl_804A13F8
/* 804A13D8  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A13DC  60 00 00 03 */	ori r0, r0, 3
/* 804A13E0  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A13E4  7F 63 DB 78 */	mr r3, r27
/* 804A13E8  4B FF E5 BD */	bl resetLockActor__13daBoomerang_cFv
/* 804A13EC  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A13F0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804A13F4  90 1B 09 64 */	stw r0, 0x964(r27)
lbl_804A13F8:
/* 804A13F8  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A13FC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804A1400  41 82 00 1C */	beq lbl_804A141C
/* 804A1404  B3 BB 04 DE */	sth r29, 0x4de(r27)
/* 804A1408  38 00 00 00 */	li r0, 0
/* 804A140C  98 1B 09 55 */	stb r0, 0x955(r27)
/* 804A1410  38 00 00 1E */	li r0, 0x1e
/* 804A1414  98 1B 09 54 */	stb r0, 0x954(r27)
/* 804A1418  48 00 00 EC */	b lbl_804A1504
lbl_804A141C:
/* 804A141C  88 1B 09 57 */	lbz r0, 0x957(r27)
/* 804A1420  28 00 00 00 */	cmplwi r0, 0
/* 804A1424  41 82 00 18 */	beq lbl_804A143C
/* 804A1428  38 7B 04 DE */	addi r3, r27, 0x4de
/* 804A142C  7F A4 EB 78 */	mr r4, r29
/* 804A1430  38 A0 20 00 */	li r5, 0x2000
/* 804A1434  4B DC F7 5D */	bl cLib_chaseAngleS__FPsss
/* 804A1438  48 00 00 CC */	b lbl_804A1504
lbl_804A143C:
/* 804A143C  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 804A1440  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 804A1444  EC 20 07 F2 */	fmuls f1, f0, f31
/* 804A1448  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804A144C  EC 01 00 24 */	fdivs f0, f1, f0
/* 804A1450  EC 62 00 28 */	fsubs f3, f2, f0
/* 804A1454  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804A1458  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804A145C  40 80 00 0C */	bge lbl_804A1468
/* 804A1460  FC 60 00 90 */	fmr f3, f0
/* 804A1464  48 00 00 20 */	b lbl_804A1484
lbl_804A1468:
/* 804A1468  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 804A146C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804A1470  40 81 00 14 */	ble lbl_804A1484
/* 804A1474  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 804A1478  EC 03 00 28 */	fsubs f0, f3, f0
/* 804A147C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A1480  EC 62 00 2A */	fadds f3, f2, f0
lbl_804A1484:
/* 804A1484  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 804A1488  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 804A148C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804A1490  EC 01 00 2A */	fadds f0, f1, f0
/* 804A1494  FC 00 00 1E */	fctiwz f0, f0
/* 804A1498  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 804A149C  80 81 00 6C */	lwz r4, 0x6c(r1)
/* 804A14A0  7C 80 07 34 */	extsh r0, r4
/* 804A14A4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804A14A8  40 81 00 0C */	ble lbl_804A14B4
/* 804A14AC  38 80 40 00 */	li r4, 0x4000
/* 804A14B0  48 00 00 20 */	b lbl_804A14D0
lbl_804A14B4:
/* 804A14B4  88 1B 09 55 */	lbz r0, 0x955(r27)
/* 804A14B8  54 00 40 2E */	slwi r0, r0, 8
/* 804A14BC  7C 04 02 14 */	add r0, r4, r0
/* 804A14C0  7C 04 07 34 */	extsh r4, r0
/* 804A14C4  2C 04 40 00 */	cmpwi r4, 0x4000
/* 804A14C8  40 81 00 08 */	ble lbl_804A14D0
/* 804A14CC  38 80 40 00 */	li r4, 0x4000
lbl_804A14D0:
/* 804A14D0  7F 83 07 34 */	extsh r3, r28
/* 804A14D4  7C 80 07 34 */	extsh r0, r4
/* 804A14D8  7C 03 00 00 */	cmpw r3, r0
/* 804A14DC  40 81 00 0C */	ble lbl_804A14E8
/* 804A14E0  7C 9C 23 78 */	mr r28, r4
/* 804A14E4  48 00 00 14 */	b lbl_804A14F8
lbl_804A14E8:
/* 804A14E8  7C 00 00 D0 */	neg r0, r0
/* 804A14EC  7C 03 00 00 */	cmpw r3, r0
/* 804A14F0  40 80 00 08 */	bge lbl_804A14F8
/* 804A14F4  7C 1C 07 34 */	extsh r28, r0
lbl_804A14F8:
/* 804A14F8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A14FC  7C 00 E2 14 */	add r0, r0, r28
/* 804A1500  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_804A1504:
/* 804A1504  38 61 00 40 */	addi r3, r1, 0x40
/* 804A1508  4B DC 5C 49 */	bl atan2sY_XZ__4cXyzCFv
/* 804A150C  B0 7B 04 DC */	sth r3, 0x4dc(r27)
/* 804A1510  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A1514  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804A1518  7C 00 1E 70 */	srawi r0, r0, 3
/* 804A151C  54 00 18 38 */	slwi r0, r0, 3
/* 804A1520  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804A1524  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804A1528  7C 43 04 2E */	lfsx f2, r3, r0
/* 804A152C  38 83 00 04 */	addi r4, r3, 4
/* 804A1530  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 804A1534  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804A1538  7C 00 1E 70 */	srawi r0, r0, 3
/* 804A153C  54 00 18 38 */	slwi r0, r0, 3
/* 804A1540  7C 64 04 2E */	lfsx f3, r4, r0
/* 804A1544  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 804A1548  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804A154C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804A1550  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A1554  EC 01 00 2A */	fadds f0, f1, f0
/* 804A1558  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 804A155C  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 804A1560  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A1564  7C 43 04 2E */	lfsx f2, r3, r0
/* 804A1568  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 804A156C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804A1570  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A1574  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A1578  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 804A157C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A1580  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A1584  7C 44 04 2E */	lfsx f2, r4, r0
/* 804A1588  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 804A158C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A1590  7C 64 04 2E */	lfsx f3, r4, r0
/* 804A1594  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 804A1598  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804A159C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804A15A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A15A4  EC 01 00 2A */	fadds f0, f1, f0
/* 804A15A8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 804A15AC  38 61 00 10 */	addi r3, r1, 0x10
/* 804A15B0  38 9B 09 90 */	addi r4, r27, 0x990
/* 804A15B4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804A15B8  4B DC 55 7D */	bl __mi__4cXyzCFRC3Vec
/* 804A15BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A15C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804A15C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A15C8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804A15CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804A15D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804A15D4  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804A15D8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A15DC  40 80 00 FC */	bge lbl_804A16D8
/* 804A15E0  88 1B 09 57 */	lbz r0, 0x957(r27)
/* 804A15E4  28 00 00 00 */	cmplwi r0, 0
/* 804A15E8  40 82 00 F0 */	bne lbl_804A16D8
/* 804A15EC  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A15F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A15F4  40 82 00 E4 */	bne lbl_804A16D8
/* 804A15F8  38 61 00 34 */	addi r3, r1, 0x34
/* 804A15FC  38 81 00 4C */	addi r4, r1, 0x4c
/* 804A1600  4B EA 5B 95 */	bl PSVECDotProduct
/* 804A1604  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804A1608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A160C  4C 40 13 82 */	cror 2, 0, 2
/* 804A1610  40 82 00 C8 */	bne lbl_804A16D8
/* 804A1614  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1618  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804A161C  41 82 00 20 */	beq lbl_804A163C
/* 804A1620  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1624  60 00 00 02 */	ori r0, r0, 2
/* 804A1628  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A162C  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A1630  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804A1634  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A1638  48 00 00 3C */	b lbl_804A1674
lbl_804A163C:
/* 804A163C  38 00 00 0A */	li r0, 0xa
/* 804A1640  98 1B 09 57 */	stb r0, 0x957(r27)
/* 804A1644  C0 1B 09 90 */	lfs f0, 0x990(r27)
/* 804A1648  D0 1B 09 AC */	stfs f0, 0x9ac(r27)
/* 804A164C  C0 1B 09 94 */	lfs f0, 0x994(r27)
/* 804A1650  D0 1B 09 B0 */	stfs f0, 0x9b0(r27)
/* 804A1654  C0 1B 09 98 */	lfs f0, 0x998(r27)
/* 804A1658  D0 1B 09 B4 */	stfs f0, 0x9b4(r27)
/* 804A165C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 804A1660  D0 1B 09 C4 */	stfs f0, 0x9c4(r27)
/* 804A1664  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804A1668  D0 1B 09 C8 */	stfs f0, 0x9c8(r27)
/* 804A166C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 804A1670  D0 1B 09 CC */	stfs f0, 0x9cc(r27)
lbl_804A1674:
/* 804A1674  38 80 00 00 */	li r4, 0
/* 804A1678  88 1B 09 51 */	lbz r0, 0x951(r27)
/* 804A167C  54 00 10 3A */	slwi r0, r0, 2
/* 804A1680  7C 7B 02 14 */	add r3, r27, r0
/* 804A1684  90 83 06 C0 */	stw r4, 0x6c0(r3)
/* 804A1688  38 80 FF FF */	li r4, -1
/* 804A168C  88 1B 09 51 */	lbz r0, 0x951(r27)
/* 804A1690  54 00 10 3A */	slwi r0, r0, 2
/* 804A1694  7C 7B 02 14 */	add r3, r27, r0
/* 804A1698  90 83 06 AC */	stw r4, 0x6ac(r3)
/* 804A169C  88 1B 09 51 */	lbz r0, 0x951(r27)
/* 804A16A0  7C 7B 02 14 */	add r3, r27, r0
/* 804A16A4  88 03 07 18 */	lbz r0, 0x718(r3)
/* 804A16A8  28 00 00 00 */	cmplwi r0, 0
/* 804A16AC  41 82 00 10 */	beq lbl_804A16BC
/* 804A16B0  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A16B4  60 00 02 00 */	ori r0, r0, 0x200
/* 804A16B8  90 1B 09 64 */	stw r0, 0x964(r27)
lbl_804A16BC:
/* 804A16BC  38 80 00 00 */	li r4, 0
/* 804A16C0  88 1B 09 51 */	lbz r0, 0x951(r27)
/* 804A16C4  7C 7B 02 14 */	add r3, r27, r0
/* 804A16C8  98 83 07 18 */	stb r4, 0x718(r3)
/* 804A16CC  88 7B 09 51 */	lbz r3, 0x951(r27)
/* 804A16D0  38 03 00 01 */	addi r0, r3, 1
/* 804A16D4  98 1B 09 51 */	stb r0, 0x951(r27)
lbl_804A16D8:
/* 804A16D8  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 804A16DC  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 804A16E0  38 A0 00 03 */	li r5, 3
/* 804A16E4  38 C0 10 00 */	li r6, 0x1000
/* 804A16E8  38 E0 04 00 */	li r7, 0x400
/* 804A16EC  4B DC EE 55 */	bl cLib_addCalcAngleS__FPsssss
/* 804A16F0  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 804A16F4  A8 9B 04 DC */	lha r4, 0x4dc(r27)
/* 804A16F8  38 A0 00 03 */	li r5, 3
/* 804A16FC  38 C0 10 00 */	li r6, 0x1000
/* 804A1700  38 E0 04 00 */	li r7, 0x400
/* 804A1704  4B DC EE 3D */	bl cLib_addCalcAngleS__FPsssss
/* 804A1708  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A170C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A1710  40 82 00 14 */	bne lbl_804A1724
/* 804A1714  7F 63 DB 78 */	mr r3, r27
/* 804A1718  38 9B 04 BC */	addi r4, r27, 0x4bc
/* 804A171C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804A1720  4B FF E7 4D */	bl checkBgHit__13daBoomerang_cFP4cXyzP4cXyz
lbl_804A1724:
/* 804A1724  7F 80 07 34 */	extsh r0, r28
/* 804A1728  54 00 08 3C */	slwi r0, r0, 1
/* 804A172C  7C 00 00 D0 */	neg r0, r0
/* 804A1730  7C 00 07 34 */	extsh r0, r0
/* 804A1734  2C 00 01 00 */	cmpwi r0, 0x100
/* 804A1738  40 81 00 0C */	ble lbl_804A1744
/* 804A173C  38 80 10 00 */	li r4, 0x1000
/* 804A1740  48 00 00 18 */	b lbl_804A1758
lbl_804A1744:
/* 804A1744  2C 00 FF 00 */	cmpwi r0, -256
/* 804A1748  40 80 00 0C */	bge lbl_804A1754
/* 804A174C  38 80 F0 00 */	li r4, -4096
/* 804A1750  48 00 00 08 */	b lbl_804A1758
lbl_804A1754:
/* 804A1754  A8 9B 09 58 */	lha r4, 0x958(r27)
lbl_804A1758:
/* 804A1758  B0 9B 09 58 */	sth r4, 0x958(r27)
/* 804A175C  38 7B 04 E8 */	addi r3, r27, 0x4e8
/* 804A1760  38 A0 00 10 */	li r5, 0x10
/* 804A1764  38 C0 10 00 */	li r6, 0x1000
/* 804A1768  38 E0 00 10 */	li r7, 0x10
/* 804A176C  4B DC ED D5 */	bl cLib_addCalcAngleS__FPsssss
/* 804A1770  7F 63 DB 78 */	mr r3, r27
/* 804A1774  4B FF E4 39 */	bl setMoveMatrix__13daBoomerang_cFv
/* 804A1778  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020011@ha */
/* 804A177C  38 03 00 11 */	addi r0, r3, 0x0011 /* 0x00020011@l */
/* 804A1780  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A1784  38 7B 07 20 */	addi r3, r27, 0x720
/* 804A1788  38 81 00 0C */	addi r4, r1, 0xc
/* 804A178C  38 A0 00 00 */	li r5, 0
/* 804A1790  38 C0 FF FF */	li r6, -1
/* 804A1794  81 9B 07 30 */	lwz r12, 0x730(r27)
/* 804A1798  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804A179C  7D 89 03 A6 */	mtctr r12
/* 804A17A0  4E 80 04 21 */	bctrl 
/* 804A17A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A17A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A17AC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804A17B0  28 00 00 00 */	cmplwi r0, 0
/* 804A17B4  40 82 00 2C */	bne lbl_804A17E0
/* 804A17B8  38 63 23 3C */	addi r3, r3, 0x233c
/* 804A17BC  38 9B 0B 50 */	addi r4, r27, 0xb50
/* 804A17C0  4B DC 33 E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 804A17C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A17C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A17CC  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 804A17D0  38 9B 0B 50 */	addi r4, r27, 0xb50
/* 804A17D4  38 A0 00 01 */	li r5, 1
/* 804A17D8  4B BE 45 C1 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 804A17DC  48 00 00 14 */	b lbl_804A17F0
lbl_804A17E0:
/* 804A17E0  38 7B 0A 0C */	addi r3, r27, 0xa0c
/* 804A17E4  4B BE 2B 35 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 804A17E8  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 804A17EC  4B BE 2B 2D */	bl ResetAtHit__12dCcD_GObjInfFv
lbl_804A17F0:
/* 804A17F0  38 60 00 01 */	li r3, 1
lbl_804A17F4:
/* 804A17F4  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 804A17F8  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 804A17FC  39 61 00 90 */	addi r11, r1, 0x90
/* 804A1800  4B EC 0A 1D */	bl _restgpr_26
/* 804A1804  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804A1808  7C 08 03 A6 */	mtlr r0
/* 804A180C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804A1810  4E 80 00 20 */	blr 
