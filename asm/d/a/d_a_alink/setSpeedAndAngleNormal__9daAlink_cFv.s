lbl_800B3FD4:
/* 800B3FD4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800B3FD8  7C 08 02 A6 */	mflr r0
/* 800B3FDC  90 01 00 74 */	stw r0, 0x74(r1)
/* 800B3FE0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800B3FE4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800B3FE8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800B3FEC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 800B3FF0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 800B3FF4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 800B3FF8  39 61 00 40 */	addi r11, r1, 0x40
/* 800B3FFC  48 2A E1 DD */	bl _savegpr_28
/* 800B4000  7C 7E 1B 78 */	mr r30, r3
/* 800B4004  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800B4008  54 03 06 F7 */	rlwinm. r3, r0, 0, 0x1b, 0x1b
/* 800B400C  40 82 00 10 */	bne lbl_800B401C
/* 800B4010  A0 1E 30 FC */	lhz r0, 0x30fc(r30)
/* 800B4014  28 00 00 00 */	cmplwi r0, 0
/* 800B4018  41 82 00 80 */	beq lbl_800B4098
lbl_800B401C:
/* 800B401C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B4020  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B4024  40 82 00 74 */	bne lbl_800B4098
/* 800B4028  28 03 00 00 */	cmplwi r3, 0
/* 800B402C  41 82 00 44 */	beq lbl_800B4070
/* 800B4030  38 7E 18 B0 */	addi r3, r30, 0x18b0
/* 800B4034  38 00 00 03 */	li r0, 3
/* 800B4038  7C 09 03 A6 */	mtctr r0
lbl_800B403C:
/* 800B403C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800B4040  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B4044  41 82 00 24 */	beq lbl_800B4068
/* 800B4048  A8 83 00 3C */	lha r4, 0x3c(r3)
/* 800B404C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 800B4050  3C 63 00 01 */	addis r3, r3, 1
/* 800B4054  38 03 80 00 */	addi r0, r3, -32768
/* 800B4058  7C 04 00 50 */	subf r0, r4, r0
/* 800B405C  7C 03 07 34 */	extsh r3, r0
/* 800B4060  48 2B 10 71 */	bl abs
/* 800B4064  48 00 00 0C */	b lbl_800B4070
lbl_800B4068:
/* 800B4068  38 63 00 40 */	addi r3, r3, 0x40
/* 800B406C  42 00 FF D0 */	bdnz lbl_800B403C
lbl_800B4070:
/* 800B4070  A0 1E 30 FC */	lhz r0, 0x30fc(r30)
/* 800B4074  28 00 00 00 */	cmplwi r0, 0
/* 800B4078  41 82 00 20 */	beq lbl_800B4098
/* 800B407C  A8 9E 30 FA */	lha r4, 0x30fa(r30)
/* 800B4080  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 800B4084  3C 63 00 01 */	addis r3, r3, 1
/* 800B4088  38 03 80 00 */	addi r0, r3, -32768
/* 800B408C  7C 04 00 50 */	subf r0, r4, r0
/* 800B4090  7C 03 07 34 */	extsh r3, r0
/* 800B4094  48 2B 10 3D */	bl abs
lbl_800B4098:
/* 800B4098  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800B409C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B40A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B40A4  40 81 02 AC */	ble lbl_800B4350
/* 800B40A8  3B E0 00 00 */	li r31, 0
/* 800B40AC  EF E1 00 72 */	fmuls f31, f1, f1
/* 800B40B0  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 800B40B4  3B 80 00 01 */	li r28, 1
/* 800B40B8  7F A3 EB 78 */	mr r3, r29
/* 800B40BC  4B FB F7 29 */	bl LockonTruth__12dAttention_cFv
/* 800B40C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B40C4  40 82 00 14 */	bne lbl_800B40D8
/* 800B40C8  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800B40CC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B40D0  40 82 00 08 */	bne lbl_800B40D8
/* 800B40D4  3B 80 00 00 */	li r28, 0
lbl_800B40D8:
/* 800B40D8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800B40DC  40 82 00 F0 */	bne lbl_800B41CC
/* 800B40E0  A8 7E 2F E2 */	lha r3, 0x2fe2(r30)
/* 800B40E4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 800B40E8  48 1B CD 3D */	bl cLib_distanceAngleS__Fss
/* 800B40EC  2C 03 78 00 */	cmpwi r3, 0x7800
/* 800B40F0  40 81 00 DC */	ble lbl_800B41CC
/* 800B40F4  A0 7E 2F E8 */	lhz r3, 0x2fe8(r30)
/* 800B40F8  28 03 00 09 */	cmplwi r3, 9
/* 800B40FC  41 82 00 D0 */	beq lbl_800B41CC
/* 800B4100  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800B4104  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800B4108  40 82 03 14 */	bne lbl_800B441C
/* 800B410C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 800B4110  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800B4114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B4118  40 80 00 08 */	bge lbl_800B4120
/* 800B411C  48 00 03 00 */	b lbl_800B441C
lbl_800B4120:
/* 800B4120  28 03 00 04 */	cmplwi r3, 4
/* 800B4124  40 82 00 84 */	bne lbl_800B41A8
/* 800B4128  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 800B412C  EC 21 00 24 */	fdivs f1, f1, f0
/* 800B4130  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B4134  3B E3 D6 BC */	addi r31, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B4138  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 800B413C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B4140  40 81 00 20 */	ble lbl_800B4160
/* 800B4144  A8 7E 2F E0 */	lha r3, 0x2fe0(r30)
/* 800B4148  A8 1E 30 7C */	lha r0, 0x307c(r30)
/* 800B414C  7C 03 00 50 */	subf r0, r3, r0
/* 800B4150  7C 03 07 34 */	extsh r3, r0
/* 800B4154  4B FF F3 41 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B4158  2C 03 00 01 */	cmpwi r3, 1
/* 800B415C  41 82 02 C0 */	beq lbl_800B441C
lbl_800B4160:
/* 800B4160  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 800B4164  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 800B4168  EC 21 00 24 */	fdivs f1, f1, f0
/* 800B416C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 800B4170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B4174  4C 40 13 82 */	cror 2, 0, 2
/* 800B4178  40 82 00 28 */	bne lbl_800B41A0
/* 800B417C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 800B4180  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800B4184  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B4188  38 E5 D6 BC */	addi r7, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B418C  A8 A7 00 18 */	lha r5, 0x18(r7)
/* 800B4190  A8 C7 00 14 */	lha r6, 0x14(r7)
/* 800B4194  A8 E7 00 16 */	lha r7, 0x16(r7)
/* 800B4198  48 1B C3 A9 */	bl cLib_addCalcAngleS__FPsssss
/* 800B419C  48 00 02 80 */	b lbl_800B441C
lbl_800B41A0:
/* 800B41A0  3B E0 00 01 */	li r31, 1
/* 800B41A4  48 00 00 F4 */	b lbl_800B4298
lbl_800B41A8:
/* 800B41A8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 800B41AC  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800B41B0  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B41B4  38 E5 D6 BC */	addi r7, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B41B8  A8 A7 00 18 */	lha r5, 0x18(r7)
/* 800B41BC  A8 C7 00 14 */	lha r6, 0x14(r7)
/* 800B41C0  A8 E7 00 16 */	lha r7, 0x16(r7)
/* 800B41C4  48 1B C3 7D */	bl cLib_addCalcAngleS__FPsssss
/* 800B41C8  48 00 00 D0 */	b lbl_800B4298
lbl_800B41CC:
/* 800B41CC  7F C3 F3 78 */	mr r3, r30
/* 800B41D0  48 06 1A 51 */	bl checkEventRun__9daAlink_cCFv
/* 800B41D4  2C 03 00 00 */	cmpwi r3, 0
/* 800B41D8  41 82 00 18 */	beq lbl_800B41F0
/* 800B41DC  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B41E0  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B41E4  A8 C3 00 14 */	lha r6, 0x14(r3)
/* 800B41E8  A8 E3 00 16 */	lha r7, 0x16(r3)
/* 800B41EC  48 00 00 94 */	b lbl_800B4280
lbl_800B41F0:
/* 800B41F0  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B41F4  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B41F8  A8 03 00 14 */	lha r0, 0x14(r3)
/* 800B41FC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800B4200  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800B4204  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B4208  3C 00 43 30 */	lis r0, 0x4330
/* 800B420C  90 01 00 08 */	stw r0, 8(r1)
/* 800B4210  C8 01 00 08 */	lfd f0, 8(r1)
/* 800B4214  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B4218  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800B421C  FC 00 00 1E */	fctiwz f0, f0
/* 800B4220  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800B4224  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 800B4228  7C C0 07 34 */	extsh r0, r6
/* 800B422C  2C 00 00 0A */	cmpwi r0, 0xa
/* 800B4230  40 80 00 08 */	bge lbl_800B4238
/* 800B4234  38 C0 00 0A */	li r6, 0xa
lbl_800B4238:
/* 800B4238  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B423C  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B4240  A8 03 00 16 */	lha r0, 0x16(r3)
/* 800B4244  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800B4248  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800B424C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800B4250  3C 00 43 30 */	lis r0, 0x4330
/* 800B4254  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B4258  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800B425C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B4260  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800B4264  FC 00 00 1E */	fctiwz f0, f0
/* 800B4268  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800B426C  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 800B4270  7C E0 07 34 */	extsh r0, r7
/* 800B4274  2C 00 00 01 */	cmpwi r0, 1
/* 800B4278  40 80 00 08 */	bge lbl_800B4280
/* 800B427C  38 E0 00 01 */	li r7, 1
lbl_800B4280:
/* 800B4280  38 7E 04 DE */	addi r3, r30, 0x4de
/* 800B4284  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800B4288  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B428C  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B4290  A8 A5 00 18 */	lha r5, 0x18(r5)
/* 800B4294  48 1B C2 AD */	bl cLib_addCalcAngleS__FPsssss
lbl_800B4298:
/* 800B4298  2C 1F 00 00 */	cmpwi r31, 0
/* 800B429C  40 82 00 AC */	bne lbl_800B4348
/* 800B42A0  7F C3 F3 78 */	mr r3, r30
/* 800B42A4  4B FF FC 89 */	bl getStickAngleDistanceRate__9daAlink_cFv
/* 800B42A8  FF C0 08 90 */	fmr f30, f1
/* 800B42AC  7F C3 F3 78 */	mr r3, r30
/* 800B42B0  48 06 19 71 */	bl checkEventRun__9daAlink_cCFv
/* 800B42B4  2C 03 00 00 */	cmpwi r3, 0
/* 800B42B8  41 82 00 20 */	beq lbl_800B42D8
/* 800B42BC  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B42C0  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B42C4  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 800B42C8  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800B42CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B42D0  EF DE 00 32 */	fmuls f30, f30, f0
/* 800B42D4  48 00 00 80 */	b lbl_800B4354
lbl_800B42D8:
/* 800B42D8  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800B42DC  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 800B42E0  EC 01 00 24 */	fdivs f0, f1, f0
/* 800B42E4  FC 00 02 10 */	fabs f0, f0
/* 800B42E8  FC 40 00 18 */	frsp f2, f0
/* 800B42EC  C0 22 94 A8 */	lfs f1, lit_16570(r2)
/* 800B42F0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B42F4  EC 00 10 28 */	fsubs f0, f0, f2
/* 800B42F8  EF A1 00 32 */	fmuls f29, f1, f0
/* 800B42FC  7F C3 F3 78 */	mr r3, r30
/* 800B4300  38 80 00 01 */	li r4, 1
/* 800B4304  38 A0 00 01 */	li r5, 1
/* 800B4308  48 00 71 B1 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800B430C  2C 03 00 00 */	cmpwi r3, 0
/* 800B4310  41 82 00 0C */	beq lbl_800B431C
/* 800B4314  C0 1E 34 34 */	lfs f0, 0x3434(r30)
/* 800B4318  EF BD 00 32 */	fmuls f29, f29, f0
lbl_800B431C:
/* 800B431C  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800B4320  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 800B4324  40 81 00 1C */	ble lbl_800B4340
/* 800B4328  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B432C  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B4330  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800B4334  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800B4338  EF DE 00 32 */	fmuls f30, f30, f0
/* 800B433C  48 00 00 18 */	b lbl_800B4354
lbl_800B4340:
/* 800B4340  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800B4344  48 00 00 10 */	b lbl_800B4354
lbl_800B4348:
/* 800B4348  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800B434C  48 00 00 08 */	b lbl_800B4354
lbl_800B4350:
/* 800B4350  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
lbl_800B4354:
/* 800B4354  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 800B4358  3B 80 00 01 */	li r28, 1
/* 800B435C  7F A3 EB 78 */	mr r3, r29
/* 800B4360  4B FB F4 85 */	bl LockonTruth__12dAttention_cFv
/* 800B4364  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4368  40 82 00 14 */	bne lbl_800B437C
/* 800B436C  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800B4370  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B4374  40 82 00 08 */	bne lbl_800B437C
/* 800B4378  3B 80 00 00 */	li r28, 0
lbl_800B437C:
/* 800B437C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800B4380  40 82 00 84 */	bne lbl_800B4404
/* 800B4384  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800B4388  28 00 00 09 */	cmplwi r0, 9
/* 800B438C  41 82 00 78 */	beq lbl_800B4404
/* 800B4390  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800B4394  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B4398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B439C  40 81 00 68 */	ble lbl_800B4404
/* 800B43A0  AB 9E 04 E6 */	lha r28, 0x4e6(r30)
/* 800B43A4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 800B43A8  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800B43AC  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B43B0  38 E5 D6 BC */	addi r7, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B43B4  A8 A7 00 18 */	lha r5, 0x18(r7)
/* 800B43B8  A8 07 00 14 */	lha r0, 0x14(r7)
/* 800B43BC  54 00 08 3C */	slwi r0, r0, 1
/* 800B43C0  7C 06 07 34 */	extsh r6, r0
/* 800B43C4  A8 07 00 16 */	lha r0, 0x16(r7)
/* 800B43C8  54 00 08 3C */	slwi r0, r0, 1
/* 800B43CC  7C 07 07 34 */	extsh r7, r0
/* 800B43D0  48 1B C1 71 */	bl cLib_addCalcAngleS__FPsssss
/* 800B43D4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 800B43D8  7C 04 E0 50 */	subf r0, r4, r28
/* 800B43DC  7C 03 07 34 */	extsh r3, r0
/* 800B43E0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800B43E4  7C 04 00 50 */	subf r0, r4, r0
/* 800B43E8  7C 00 07 34 */	extsh r0, r0
/* 800B43EC  7C 60 19 D7 */	mullw. r3, r0, r3
/* 800B43F0  41 81 00 14 */	bgt lbl_800B4404
/* 800B43F4  3C 00 FF 00 */	lis r0, 0xff00
/* 800B43F8  7C 03 00 00 */	cmpw r3, r0
/* 800B43FC  41 80 00 08 */	blt lbl_800B4404
/* 800B4400  B0 9E 04 E6 */	sth r4, 0x4e6(r30)
lbl_800B4404:
/* 800B4404  7F C3 F3 78 */	mr r3, r30
/* 800B4408  FC 20 F0 90 */	fmr f1, f30
/* 800B440C  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800B4410  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800B4414  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 800B4418  4B FF F5 0D */	bl setNormalSpeedF__9daAlink_cFff
lbl_800B441C:
/* 800B441C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800B4420  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800B4424  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 800B4428  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800B442C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 800B4430  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800B4434  39 61 00 40 */	addi r11, r1, 0x40
/* 800B4438  48 2A DD ED */	bl _restgpr_28
/* 800B443C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800B4440  7C 08 03 A6 */	mtlr r0
/* 800B4444  38 21 00 70 */	addi r1, r1, 0x70
/* 800B4448  4E 80 00 20 */	blr 
