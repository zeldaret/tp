lbl_80BE3D24:
/* 80BE3D24  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80BE3D28  7C 08 02 A6 */	mflr r0
/* 80BE3D2C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80BE3D30  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80BE3D34  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80BE3D38  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80BE3D3C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80BE3D40  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80BE3D44  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 80BE3D48  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BE3D4C  4B 77 E4 8D */	bl _savegpr_28
/* 80BE3D50  7C 7C 1B 78 */	mr r28, r3
/* 80BE3D54  7C 9D 23 78 */	mr r29, r4
/* 80BE3D58  3C 60 80 BE */	lis r3, lit_3677@ha /* 0x80BE4AB0@ha */
/* 80BE3D5C  3B E3 4A B0 */	addi r31, r3, lit_3677@l /* 0x80BE4AB0@l */
/* 80BE3D60  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BE3D64  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BE3D68  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BE3D6C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BE3D70  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BE3D74  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BE3D78  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80BE3D7C  4B 42 8F E9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE3D80  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80BE3D84  4B 42 91 C1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE3D88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE3D8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE3D90  38 81 00 28 */	addi r4, r1, 0x28
/* 80BE3D94  7C 85 23 78 */	mr r5, r4
/* 80BE3D98  4B 76 2F D5 */	bl PSMTXMultVec
/* 80BE3D9C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BE3DA0  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80BE3DA4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BE3DA8  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80BE3DAC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BE3DB0  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80BE3DB4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BE3DB8  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80BE3DBC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BE3DC0  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80BE3DC4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BE3DC8  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80BE3DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE3DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE3DD4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80BE3DD8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BE3DDC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BE3DE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BE3DE4  FC 00 02 10 */	fabs f0, f0
/* 80BE3DE8  FF C0 00 18 */	frsp f30, f0
/* 80BE3DEC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BE3DF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BE3DF4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE3DF8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BE3DFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BE3E00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BE3E04  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BE3E08  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BE3E0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BE3E10  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BE3E14  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80BE3E18  38 61 00 10 */	addi r3, r1, 0x10
/* 80BE3E1C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BE3E20  4B 76 35 7D */	bl PSVECSquareDistance
/* 80BE3E24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BE3E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE3E2C  40 81 00 58 */	ble lbl_80BE3E84
/* 80BE3E30  FC 00 08 34 */	frsqrte f0, f1
/* 80BE3E34  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80BE3E38  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE3E3C  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80BE3E40  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE3E44  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE3E48  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE3E4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE3E50  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE3E54  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE3E58  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE3E5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE3E60  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE3E64  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE3E68  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE3E6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE3E70  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE3E74  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE3E78  FF E1 00 32 */	fmul f31, f1, f0
/* 80BE3E7C  FF E0 F8 18 */	frsp f31, f31
/* 80BE3E80  48 00 00 90 */	b lbl_80BE3F10
lbl_80BE3E84:
/* 80BE3E84  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80BE3E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE3E8C  40 80 00 10 */	bge lbl_80BE3E9C
/* 80BE3E90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE3E94  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE3E98  48 00 00 78 */	b lbl_80BE3F10
lbl_80BE3E9C:
/* 80BE3E9C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BE3EA0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BE3EA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE3EA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE3EAC  7C 03 00 00 */	cmpw r3, r0
/* 80BE3EB0  41 82 00 14 */	beq lbl_80BE3EC4
/* 80BE3EB4  40 80 00 40 */	bge lbl_80BE3EF4
/* 80BE3EB8  2C 03 00 00 */	cmpwi r3, 0
/* 80BE3EBC  41 82 00 20 */	beq lbl_80BE3EDC
/* 80BE3EC0  48 00 00 34 */	b lbl_80BE3EF4
lbl_80BE3EC4:
/* 80BE3EC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE3EC8  41 82 00 0C */	beq lbl_80BE3ED4
/* 80BE3ECC  38 00 00 01 */	li r0, 1
/* 80BE3ED0  48 00 00 28 */	b lbl_80BE3EF8
lbl_80BE3ED4:
/* 80BE3ED4  38 00 00 02 */	li r0, 2
/* 80BE3ED8  48 00 00 20 */	b lbl_80BE3EF8
lbl_80BE3EDC:
/* 80BE3EDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE3EE0  41 82 00 0C */	beq lbl_80BE3EEC
/* 80BE3EE4  38 00 00 05 */	li r0, 5
/* 80BE3EE8  48 00 00 10 */	b lbl_80BE3EF8
lbl_80BE3EEC:
/* 80BE3EEC  38 00 00 03 */	li r0, 3
/* 80BE3EF0  48 00 00 08 */	b lbl_80BE3EF8
lbl_80BE3EF4:
/* 80BE3EF4  38 00 00 04 */	li r0, 4
lbl_80BE3EF8:
/* 80BE3EF8  2C 00 00 01 */	cmpwi r0, 1
/* 80BE3EFC  40 82 00 10 */	bne lbl_80BE3F0C
/* 80BE3F00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE3F04  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE3F08  48 00 00 08 */	b lbl_80BE3F10
lbl_80BE3F0C:
/* 80BE3F0C  FF E0 08 90 */	fmr f31, f1
lbl_80BE3F10:
/* 80BE3F10  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BE3F14  38 81 00 28 */	addi r4, r1, 0x28
/* 80BE3F18  4B 76 34 85 */	bl PSVECSquareDistance
/* 80BE3F1C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BE3F20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE3F24  40 81 00 58 */	ble lbl_80BE3F7C
/* 80BE3F28  FC 00 08 34 */	frsqrte f0, f1
/* 80BE3F2C  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80BE3F30  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE3F34  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80BE3F38  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE3F3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE3F40  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE3F44  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE3F48  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE3F4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE3F50  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE3F54  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE3F58  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE3F5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE3F60  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE3F64  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE3F68  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE3F6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE3F70  FF A1 00 32 */	fmul f29, f1, f0
/* 80BE3F74  FF A0 E8 18 */	frsp f29, f29
/* 80BE3F78  48 00 00 90 */	b lbl_80BE4008
lbl_80BE3F7C:
/* 80BE3F7C  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80BE3F80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE3F84  40 80 00 10 */	bge lbl_80BE3F94
/* 80BE3F88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE3F8C  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE3F90  48 00 00 78 */	b lbl_80BE4008
lbl_80BE3F94:
/* 80BE3F94  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BE3F98  80 81 00 08 */	lwz r4, 8(r1)
/* 80BE3F9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE3FA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE3FA4  7C 03 00 00 */	cmpw r3, r0
/* 80BE3FA8  41 82 00 14 */	beq lbl_80BE3FBC
/* 80BE3FAC  40 80 00 40 */	bge lbl_80BE3FEC
/* 80BE3FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80BE3FB4  41 82 00 20 */	beq lbl_80BE3FD4
/* 80BE3FB8  48 00 00 34 */	b lbl_80BE3FEC
lbl_80BE3FBC:
/* 80BE3FBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE3FC0  41 82 00 0C */	beq lbl_80BE3FCC
/* 80BE3FC4  38 00 00 01 */	li r0, 1
/* 80BE3FC8  48 00 00 28 */	b lbl_80BE3FF0
lbl_80BE3FCC:
/* 80BE3FCC  38 00 00 02 */	li r0, 2
/* 80BE3FD0  48 00 00 20 */	b lbl_80BE3FF0
lbl_80BE3FD4:
/* 80BE3FD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE3FD8  41 82 00 0C */	beq lbl_80BE3FE4
/* 80BE3FDC  38 00 00 05 */	li r0, 5
/* 80BE3FE0  48 00 00 10 */	b lbl_80BE3FF0
lbl_80BE3FE4:
/* 80BE3FE4  38 00 00 03 */	li r0, 3
/* 80BE3FE8  48 00 00 08 */	b lbl_80BE3FF0
lbl_80BE3FEC:
/* 80BE3FEC  38 00 00 04 */	li r0, 4
lbl_80BE3FF0:
/* 80BE3FF0  2C 00 00 01 */	cmpwi r0, 1
/* 80BE3FF4  40 82 00 10 */	bne lbl_80BE4004
/* 80BE3FF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE3FFC  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE4000  48 00 00 08 */	b lbl_80BE4008
lbl_80BE4004:
/* 80BE4004  FF A0 08 90 */	fmr f29, f1
lbl_80BE4008:
/* 80BE4008  38 61 00 34 */	addi r3, r1, 0x34
/* 80BE400C  4B 49 3C 5D */	bl __ct__11dBgS_LinChkFv
/* 80BE4010  38 61 00 34 */	addi r3, r1, 0x34
/* 80BE4014  38 9E 05 38 */	addi r4, r30, 0x538
/* 80BE4018  38 BC 05 50 */	addi r5, r28, 0x550
/* 80BE401C  7F 86 E3 78 */	mr r6, r28
/* 80BE4020  4B 49 3D 45 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BE4024  3B C0 00 00 */	li r30, 0
/* 80BE4028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE402C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE4030  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BE4034  38 81 00 34 */	addi r4, r1, 0x34
/* 80BE4038  4B 49 03 7D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BE403C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE4040  40 82 00 38 */	bne lbl_80BE4078
/* 80BE4044  7F 83 E3 78 */	mr r3, r28
/* 80BE4048  48 00 07 59 */	bl checkHang2__14daObjFallObj_cFv
/* 80BE404C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE4050  40 82 00 28 */	bne lbl_80BE4078
/* 80BE4054  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 80BE4058  40 80 00 20 */	bge lbl_80BE4078
/* 80BE405C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BE4060  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80BE4064  40 80 00 14 */	bge lbl_80BE4078
/* 80BE4068  88 1C 05 F0 */	lbz r0, 0x5f0(r28)
/* 80BE406C  28 00 00 00 */	cmplwi r0, 0
/* 80BE4070  40 82 00 08 */	bne lbl_80BE4078
/* 80BE4074  3B C0 00 01 */	li r30, 1
lbl_80BE4078:
/* 80BE4078  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80BE407C  41 82 00 1C */	beq lbl_80BE4098
/* 80BE4080  38 00 00 22 */	li r0, 0x22
/* 80BE4084  98 1C 05 46 */	stb r0, 0x546(r28)
/* 80BE4088  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80BE408C  60 00 00 04 */	ori r0, r0, 4
/* 80BE4090  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80BE4094  48 00 00 18 */	b lbl_80BE40AC
lbl_80BE4098:
/* 80BE4098  38 00 00 00 */	li r0, 0
/* 80BE409C  98 1C 05 46 */	stb r0, 0x546(r28)
/* 80BE40A0  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80BE40A4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80BE40A8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80BE40AC:
/* 80BE40AC  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 80BE40B0  38 03 00 01 */	addi r0, r3, 1
/* 80BE40B4  90 1C 05 E0 */	stw r0, 0x5e0(r28)
/* 80BE40B8  7F 83 E3 78 */	mr r3, r28
/* 80BE40BC  48 00 00 7D */	bl action__14daObjFallObj_cFv
/* 80BE40C0  38 1C 05 6C */	addi r0, r28, 0x56c
/* 80BE40C4  90 1D 00 00 */	stw r0, 0(r29)
/* 80BE40C8  7F 83 E3 78 */	mr r3, r28
/* 80BE40CC  4B FF F9 59 */	bl setBaseMtx__14daObjFallObj_cFv
/* 80BE40D0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80BE40D4  7C 03 07 74 */	extsb r3, r0
/* 80BE40D8  4B 44 8F 95 */	bl dComIfGp_getReverb__Fi
/* 80BE40DC  7C 65 1B 78 */	mr r5, r3
/* 80BE40E0  38 7C 05 F4 */	addi r3, r28, 0x5f4
/* 80BE40E4  38 80 00 00 */	li r4, 0
/* 80BE40E8  81 9C 06 04 */	lwz r12, 0x604(r28)
/* 80BE40EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BE40F0  7D 89 03 A6 */	mtctr r12
/* 80BE40F4  4E 80 04 21 */	bctrl 
/* 80BE40F8  38 61 00 34 */	addi r3, r1, 0x34
/* 80BE40FC  38 80 FF FF */	li r4, -1
/* 80BE4100  4B 49 3B DD */	bl __dt__11dBgS_LinChkFv
/* 80BE4104  38 60 00 01 */	li r3, 1
/* 80BE4108  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80BE410C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80BE4110  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80BE4114  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80BE4118  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80BE411C  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80BE4120  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BE4124  4B 77 E1 01 */	bl _restgpr_28
/* 80BE4128  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80BE412C  7C 08 03 A6 */	mtlr r0
/* 80BE4130  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80BE4134  4E 80 00 20 */	blr 
