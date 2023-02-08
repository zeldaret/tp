lbl_80AC3FD0:
/* 80AC3FD0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AC3FD4  7C 08 02 A6 */	mflr r0
/* 80AC3FD8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AC3FDC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AC3FE0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AC3FE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80AC3FE8  4B 89 E1 F5 */	bl _savegpr_29
/* 80AC3FEC  7C 7F 1B 78 */	mr r31, r3
/* 80AC3FF0  7C 80 23 78 */	mr r0, r4
/* 80AC3FF4  FF E0 08 90 */	fmr f31, f1
/* 80AC3FF8  7C BD 2B 78 */	mr r29, r5
/* 80AC3FFC  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha /* 0x80AC44F8@ha */
/* 80AC4000  3B C3 44 F8 */	addi r30, r3, m__18daNpc_Saru_Param_c@l /* 0x80AC44F8@l */
/* 80AC4004  38 A0 00 00 */	li r5, 0
/* 80AC4008  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AC400C  28 04 00 00 */	cmplwi r4, 0
/* 80AC4010  41 82 01 40 */	beq lbl_80AC4150
/* 80AC4014  38 61 00 18 */	addi r3, r1, 0x18
/* 80AC4018  7C 05 03 78 */	mr r5, r0
/* 80AC401C  4B 7A 2B 19 */	bl __mi__4cXyzCFRC3Vec
/* 80AC4020  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AC4024  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AC4028  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AC402C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AC4030  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AC4034  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AC4038  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AC403C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AC4040  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AC4044  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AC4048  38 61 00 0C */	addi r3, r1, 0xc
/* 80AC404C  4B 88 30 ED */	bl PSVECSquareMag
/* 80AC4050  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AC4054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AC4058  40 81 00 58 */	ble lbl_80AC40B0
/* 80AC405C  FC 00 08 34 */	frsqrte f0, f1
/* 80AC4060  C8 9E 00 F8 */	lfd f4, 0xf8(r30)
/* 80AC4064  FC 44 00 32 */	fmul f2, f4, f0
/* 80AC4068  C8 7E 01 00 */	lfd f3, 0x100(r30)
/* 80AC406C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AC4070  FC 01 00 32 */	fmul f0, f1, f0
/* 80AC4074  FC 03 00 28 */	fsub f0, f3, f0
/* 80AC4078  FC 02 00 32 */	fmul f0, f2, f0
/* 80AC407C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AC4080  FC 00 00 32 */	fmul f0, f0, f0
/* 80AC4084  FC 01 00 32 */	fmul f0, f1, f0
/* 80AC4088  FC 03 00 28 */	fsub f0, f3, f0
/* 80AC408C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AC4090  FC 44 00 32 */	fmul f2, f4, f0
/* 80AC4094  FC 00 00 32 */	fmul f0, f0, f0
/* 80AC4098  FC 01 00 32 */	fmul f0, f1, f0
/* 80AC409C  FC 03 00 28 */	fsub f0, f3, f0
/* 80AC40A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80AC40A4  FC 41 00 32 */	fmul f2, f1, f0
/* 80AC40A8  FC 40 10 18 */	frsp f2, f2
/* 80AC40AC  48 00 00 90 */	b lbl_80AC413C
lbl_80AC40B0:
/* 80AC40B0  C8 1E 01 08 */	lfd f0, 0x108(r30)
/* 80AC40B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AC40B8  40 80 00 10 */	bge lbl_80AC40C8
/* 80AC40BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AC40C0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AC40C4  48 00 00 78 */	b lbl_80AC413C
lbl_80AC40C8:
/* 80AC40C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AC40CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80AC40D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AC40D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AC40D8  7C 03 00 00 */	cmpw r3, r0
/* 80AC40DC  41 82 00 14 */	beq lbl_80AC40F0
/* 80AC40E0  40 80 00 40 */	bge lbl_80AC4120
/* 80AC40E4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC40E8  41 82 00 20 */	beq lbl_80AC4108
/* 80AC40EC  48 00 00 34 */	b lbl_80AC4120
lbl_80AC40F0:
/* 80AC40F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AC40F4  41 82 00 0C */	beq lbl_80AC4100
/* 80AC40F8  38 00 00 01 */	li r0, 1
/* 80AC40FC  48 00 00 28 */	b lbl_80AC4124
lbl_80AC4100:
/* 80AC4100  38 00 00 02 */	li r0, 2
/* 80AC4104  48 00 00 20 */	b lbl_80AC4124
lbl_80AC4108:
/* 80AC4108  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AC410C  41 82 00 0C */	beq lbl_80AC4118
/* 80AC4110  38 00 00 05 */	li r0, 5
/* 80AC4114  48 00 00 10 */	b lbl_80AC4124
lbl_80AC4118:
/* 80AC4118  38 00 00 03 */	li r0, 3
/* 80AC411C  48 00 00 08 */	b lbl_80AC4124
lbl_80AC4120:
/* 80AC4120  38 00 00 04 */	li r0, 4
lbl_80AC4124:
/* 80AC4124  2C 00 00 01 */	cmpwi r0, 1
/* 80AC4128  40 82 00 10 */	bne lbl_80AC4138
/* 80AC412C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AC4130  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AC4134  48 00 00 08 */	b lbl_80AC413C
lbl_80AC4138:
/* 80AC4138  FC 40 08 90 */	fmr f2, f1
lbl_80AC413C:
/* 80AC413C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AC4140  4B 7A 35 35 */	bl cM_atan2s__Fff
/* 80AC4144  7C 03 00 D0 */	neg r0, r3
/* 80AC4148  7C 05 07 34 */	extsh r5, r0
/* 80AC414C  7C A5 EA 14 */	add r5, r5, r29
lbl_80AC4150:
/* 80AC4150  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AC4154  7C A5 02 14 */	add r5, r5, r0
/* 80AC4158  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 80AC415C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AC4160  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AC4164  C8 5E 00 F0 */	lfd f2, 0xf0(r30)
/* 80AC4168  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AC416C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC4170  3C 60 43 30 */	lis r3, 0x4330
/* 80AC4174  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AC4178  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AC417C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AC4180  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AC4184  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AC4188  7C A0 07 34 */	extsh r0, r5
/* 80AC418C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AC4190  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AC4194  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AC4198  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AC419C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AC41A0  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AC41A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80AC41A8  FC 00 00 1E */	fctiwz f0, f0
/* 80AC41AC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AC41B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AC41B4  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AC41B8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AC41BC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AC41C0  39 61 00 60 */	addi r11, r1, 0x60
/* 80AC41C4  4B 89 E0 65 */	bl _restgpr_29
/* 80AC41C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AC41CC  7C 08 03 A6 */	mtlr r0
/* 80AC41D0  38 21 00 70 */	addi r1, r1, 0x70
/* 80AC41D4  4E 80 00 20 */	blr 
