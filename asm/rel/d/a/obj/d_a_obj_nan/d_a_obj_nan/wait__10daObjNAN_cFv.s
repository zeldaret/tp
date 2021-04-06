lbl_80CA0E7C:
/* 80CA0E7C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80CA0E80  7C 08 02 A6 */	mflr r0
/* 80CA0E84  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80CA0E88  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80CA0E8C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80CA0E90  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CA0E94  4B 6C 13 49 */	bl _savegpr_29
/* 80CA0E98  7C 7F 1B 78 */	mr r31, r3
/* 80CA0E9C  3C 60 80 CA */	lis r3, lit_3774@ha /* 0x80CA31BC@ha */
/* 80CA0EA0  3B C3 31 BC */	addi r30, r3, lit_3774@l /* 0x80CA31BC@l */
/* 80CA0EA4  80 7F 07 D0 */	lwz r3, 0x7d0(r31)
/* 80CA0EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80CA0EAC  40 82 00 10 */	bne lbl_80CA0EBC
/* 80CA0EB0  38 03 00 01 */	addi r0, r3, 1
/* 80CA0EB4  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80CA0EB8  48 00 02 AC */	b lbl_80CA1164
lbl_80CA0EBC:
/* 80CA0EBC  2C 03 FF FF */	cmpwi r3, -1
/* 80CA0EC0  40 82 00 20 */	bne lbl_80CA0EE0
/* 80CA0EC4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CA0EC8  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80CA0ECC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CA0ED0  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80CA0ED4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CA0ED8  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80CA0EDC  48 00 02 88 */	b lbl_80CA1164
lbl_80CA0EE0:
/* 80CA0EE0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CA0EE4  4B 3D 6D 85 */	bl __ct__11dBgS_LinChkFv
/* 80CA0EE8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80CA0EEC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80CA0EF0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80CA0EF4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CA0EF8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80CA0EFC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CA0F00  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80CA0F04  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CA0F08  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CA0F0C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CA0F10  4B 36 BE 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA0F14  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80CA0F18  4B 36 C0 2D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA0F1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0F20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA0F24  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CA0F28  7C 85 23 78 */	mr r5, r4
/* 80CA0F2C  4B 6A 5E 41 */	bl PSMTXMultVec
/* 80CA0F30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA0F34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA0F38  38 81 00 30 */	addi r4, r1, 0x30
/* 80CA0F3C  7C 85 23 78 */	mr r5, r4
/* 80CA0F40  4B 6A 5E 2D */	bl PSMTXMultVec
/* 80CA0F44  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80CA0F48  4B 3D 7F 21 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CA0F4C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CA0F50  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CA0F54  38 A1 00 30 */	addi r5, r1, 0x30
/* 80CA0F58  38 C0 00 00 */	li r6, 0
/* 80CA0F5C  4B 3D 6E 09 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CA0F60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA0F64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA0F68  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CA0F6C  7F A3 EB 78 */	mr r3, r29
/* 80CA0F70  38 81 00 5C */	addi r4, r1, 0x5c
/* 80CA0F74  4B 3D 34 41 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80CA0F78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA0F7C  41 82 01 DC */	beq lbl_80CA1158
/* 80CA0F80  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha /* 0x80CA3468@ha */
/* 80CA0F84  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CA3468@l */
/* 80CA0F88  90 01 00 58 */	stw r0, 0x58(r1)
/* 80CA0F8C  7F A3 EB 78 */	mr r3, r29
/* 80CA0F90  38 81 00 70 */	addi r4, r1, 0x70
/* 80CA0F94  38 A1 00 48 */	addi r5, r1, 0x48
/* 80CA0F98  4B 3D 37 AD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CA0F9C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA0FA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CA0FA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CA0FA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CA0FAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CA0FB0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CA0FB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CA0FB8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CA0FBC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CA0FC0  38 61 00 24 */	addi r3, r1, 0x24
/* 80CA0FC4  38 81 00 18 */	addi r4, r1, 0x18
/* 80CA0FC8  4B 6A 63 D5 */	bl PSVECSquareDistance
/* 80CA0FCC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CA0FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA0FD4  40 81 00 58 */	ble lbl_80CA102C
/* 80CA0FD8  FC 00 08 34 */	frsqrte f0, f1
/* 80CA0FDC  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 80CA0FE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA0FE4  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 80CA0FE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA0FEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA0FF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA0FF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA0FF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA0FFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1000  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA1004  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA1008  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA100C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CA1010  FC 00 00 32 */	fmul f0, f0, f0
/* 80CA1014  FC 01 00 32 */	fmul f0, f1, f0
/* 80CA1018  FC 03 00 28 */	fsub f0, f3, f0
/* 80CA101C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CA1020  FF E1 00 32 */	fmul f31, f1, f0
/* 80CA1024  FF E0 F8 18 */	frsp f31, f31
/* 80CA1028  48 00 00 90 */	b lbl_80CA10B8
lbl_80CA102C:
/* 80CA102C  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 80CA1030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA1034  40 80 00 10 */	bge lbl_80CA1044
/* 80CA1038  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CA103C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CA1040  48 00 00 78 */	b lbl_80CA10B8
lbl_80CA1044:
/* 80CA1044  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CA1048  80 81 00 08 */	lwz r4, 8(r1)
/* 80CA104C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CA1050  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CA1054  7C 03 00 00 */	cmpw r3, r0
/* 80CA1058  41 82 00 14 */	beq lbl_80CA106C
/* 80CA105C  40 80 00 40 */	bge lbl_80CA109C
/* 80CA1060  2C 03 00 00 */	cmpwi r3, 0
/* 80CA1064  41 82 00 20 */	beq lbl_80CA1084
/* 80CA1068  48 00 00 34 */	b lbl_80CA109C
lbl_80CA106C:
/* 80CA106C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA1070  41 82 00 0C */	beq lbl_80CA107C
/* 80CA1074  38 00 00 01 */	li r0, 1
/* 80CA1078  48 00 00 28 */	b lbl_80CA10A0
lbl_80CA107C:
/* 80CA107C  38 00 00 02 */	li r0, 2
/* 80CA1080  48 00 00 20 */	b lbl_80CA10A0
lbl_80CA1084:
/* 80CA1084  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CA1088  41 82 00 0C */	beq lbl_80CA1094
/* 80CA108C  38 00 00 05 */	li r0, 5
/* 80CA1090  48 00 00 10 */	b lbl_80CA10A0
lbl_80CA1094:
/* 80CA1094  38 00 00 03 */	li r0, 3
/* 80CA1098  48 00 00 08 */	b lbl_80CA10A0
lbl_80CA109C:
/* 80CA109C  38 00 00 04 */	li r0, 4
lbl_80CA10A0:
/* 80CA10A0  2C 00 00 01 */	cmpwi r0, 1
/* 80CA10A4  40 82 00 10 */	bne lbl_80CA10B4
/* 80CA10A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CA10AC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CA10B0  48 00 00 08 */	b lbl_80CA10B8
lbl_80CA10B4:
/* 80CA10B4  FF E0 08 90 */	fmr f31, f1
lbl_80CA10B8:
/* 80CA10B8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80CA10BC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80CA10C0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80CA10C4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80CA10C8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80CA10CC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80CA10D0  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80CA10D4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CA10D8  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80CA10DC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CA10E0  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80CA10E4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CA10E8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80CA10EC  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80CA10F0  4B 5C 65 85 */	bl cM_atan2s__Fff
/* 80CA10F4  B0 7F 07 DA */	sth r3, 0x7da(r31)
/* 80CA10F8  B0 7F 07 D4 */	sth r3, 0x7d4(r31)
/* 80CA10FC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80CA1100  FC 40 F8 90 */	fmr f2, f31
/* 80CA1104  4B 5C 65 71 */	bl cM_atan2s__Fff
/* 80CA1108  7C 03 00 D0 */	neg r0, r3
/* 80CA110C  B0 1F 07 DE */	sth r0, 0x7de(r31)
/* 80CA1110  B0 1F 07 D8 */	sth r0, 0x7d8(r31)
/* 80CA1114  38 00 00 00 */	li r0, 0
/* 80CA1118  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CA111C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CA1120  3C 60 80 CA */	lis r3, lit_4034@ha /* 0x80CA331C@ha */
/* 80CA1124  38 83 33 1C */	addi r4, r3, lit_4034@l /* 0x80CA331C@l */
/* 80CA1128  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA112C  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA1130  90 61 00 0C */	stw r3, 0xc(r1)
/* 80CA1134  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA1138  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA113C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA1140  7F E3 FB 78 */	mr r3, r31
/* 80CA1144  38 81 00 0C */	addi r4, r1, 0xc
/* 80CA1148  4B FF F4 8D */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA114C  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha /* 0x80CA3468@ha */
/* 80CA1150  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CA3468@l */
/* 80CA1154  90 01 00 58 */	stw r0, 0x58(r1)
lbl_80CA1158:
/* 80CA1158  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CA115C  38 80 FF FF */	li r4, -1
/* 80CA1160  4B 3D 6B 7D */	bl __dt__11dBgS_LinChkFv
lbl_80CA1164:
/* 80CA1164  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80CA1168  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80CA116C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80CA1170  4B 6C 10 B9 */	bl _restgpr_29
/* 80CA1174  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80CA1178  7C 08 03 A6 */	mtlr r0
/* 80CA117C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80CA1180  4E 80 00 20 */	blr 
