lbl_806B40D8:
/* 806B40D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806B40DC  7C 08 02 A6 */	mflr r0
/* 806B40E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806B40E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806B40E8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806B40EC  7C 7E 1B 78 */	mr r30, r3
/* 806B40F0  3C 60 80 6B */	lis r3, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B40F4  3B E3 5C D4 */	addi r31, r3, lit_3792@l /* 0x806B5CD4@l */
/* 806B40F8  88 1E 07 78 */	lbz r0, 0x778(r30)
/* 806B40FC  28 00 00 00 */	cmplwi r0, 0
/* 806B4100  41 82 06 0C */	beq lbl_806B470C
/* 806B4104  C0 3E 06 BC */	lfs f1, 0x6bc(r30)
/* 806B4108  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 806B410C  EC 01 00 2A */	fadds f0, f1, f0
/* 806B4110  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
/* 806B4114  C0 3E 06 BC */	lfs f1, 0x6bc(r30)
/* 806B4118  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 806B411C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B4120  40 80 00 08 */	bge lbl_806B4128
/* 806B4124  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
lbl_806B4128:
/* 806B4128  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 806B412C  38 9E 06 B8 */	addi r4, r30, 0x6b8
/* 806B4130  7C 65 1B 78 */	mr r5, r3
/* 806B4134  4B C9 2F 5D */	bl PSVECAdd
/* 806B4138  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 806B413C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B4140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B4144  4C 40 13 82 */	cror 2, 0, 2
/* 806B4148  40 82 00 08 */	bne lbl_806B4150
/* 806B414C  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
lbl_806B4150:
/* 806B4150  88 1E 07 78 */	lbz r0, 0x778(r30)
/* 806B4154  2C 00 00 02 */	cmpwi r0, 2
/* 806B4158  41 82 03 48 */	beq lbl_806B44A0
/* 806B415C  40 80 00 10 */	bge lbl_806B416C
/* 806B4160  2C 00 00 01 */	cmpwi r0, 1
/* 806B4164  40 80 00 14 */	bge lbl_806B4178
/* 806B4168  48 00 05 A4 */	b lbl_806B470C
lbl_806B416C:
/* 806B416C  2C 00 00 05 */	cmpwi r0, 5
/* 806B4170  40 80 05 9C */	bge lbl_806B470C
/* 806B4174  48 00 04 58 */	b lbl_806B45CC
lbl_806B4178:
/* 806B4178  A8 7E 06 C4 */	lha r3, 0x6c4(r30)
/* 806B417C  38 03 04 00 */	addi r0, r3, 0x400
/* 806B4180  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806B4184  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 806B4188  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B418C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806B4190  4C 40 13 82 */	cror 2, 0, 2
/* 806B4194  40 82 00 78 */	bne lbl_806B420C
/* 806B4198  38 00 E0 00 */	li r0, -8192
/* 806B419C  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806B41A0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 806B41A4  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 806B41A8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806B41AC  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
/* 806B41B0  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 806B41B4  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 806B41B8  38 00 00 02 */	li r0, 2
/* 806B41BC  98 1E 07 78 */	stb r0, 0x778(r30)
/* 806B41C0  7F C3 F3 78 */	mr r3, r30
/* 806B41C4  4B FF B9 F9 */	bl setBoxTubaLandEffect__8daE_DT_cFv
/* 806B41C8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002F@ha */
/* 806B41CC  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0006002F@l */
/* 806B41D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B41D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806B41D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806B41DC  80 63 00 00 */	lwz r3, 0(r3)
/* 806B41E0  38 81 00 0C */	addi r4, r1, 0xc
/* 806B41E4  38 BE 06 AC */	addi r5, r30, 0x6ac
/* 806B41E8  38 C0 00 00 */	li r6, 0
/* 806B41EC  38 E0 00 00 */	li r7, 0
/* 806B41F0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806B41F4  FC 40 08 90 */	fmr f2, f1
/* 806B41F8  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 806B41FC  FC 80 18 90 */	fmr f4, f3
/* 806B4200  39 00 00 00 */	li r8, 0
/* 806B4204  4B BF 77 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806B4208  48 00 05 04 */	b lbl_806B470C
lbl_806B420C:
/* 806B420C  C0 5E 06 C0 */	lfs f2, 0x6c0(r30)
/* 806B4210  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 806B4214  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4218  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806B421C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806B4220  38 61 00 10 */	addi r3, r1, 0x10
/* 806B4224  4B C9 2F 15 */	bl PSVECSquareMag
/* 806B4228  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B422C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B4230  40 81 00 58 */	ble lbl_806B4288
/* 806B4234  FC 00 08 34 */	frsqrte f0, f1
/* 806B4238  C8 9F 00 90 */	lfd f4, 0x90(r31)
/* 806B423C  FC 44 00 32 */	fmul f2, f4, f0
/* 806B4240  C8 7F 00 98 */	lfd f3, 0x98(r31)
/* 806B4244  FC 00 00 32 */	fmul f0, f0, f0
/* 806B4248  FC 01 00 32 */	fmul f0, f1, f0
/* 806B424C  FC 03 00 28 */	fsub f0, f3, f0
/* 806B4250  FC 02 00 32 */	fmul f0, f2, f0
/* 806B4254  FC 44 00 32 */	fmul f2, f4, f0
/* 806B4258  FC 00 00 32 */	fmul f0, f0, f0
/* 806B425C  FC 01 00 32 */	fmul f0, f1, f0
/* 806B4260  FC 03 00 28 */	fsub f0, f3, f0
/* 806B4264  FC 02 00 32 */	fmul f0, f2, f0
/* 806B4268  FC 44 00 32 */	fmul f2, f4, f0
/* 806B426C  FC 00 00 32 */	fmul f0, f0, f0
/* 806B4270  FC 01 00 32 */	fmul f0, f1, f0
/* 806B4274  FC 03 00 28 */	fsub f0, f3, f0
/* 806B4278  FC 02 00 32 */	fmul f0, f2, f0
/* 806B427C  FC 41 00 32 */	fmul f2, f1, f0
/* 806B4280  FC 40 10 18 */	frsp f2, f2
/* 806B4284  48 00 00 90 */	b lbl_806B4314
lbl_806B4288:
/* 806B4288  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 806B428C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B4290  40 80 00 10 */	bge lbl_806B42A0
/* 806B4294  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806B4298  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806B429C  48 00 00 78 */	b lbl_806B4314
lbl_806B42A0:
/* 806B42A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 806B42A4  80 81 00 08 */	lwz r4, 8(r1)
/* 806B42A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806B42AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 806B42B0  7C 03 00 00 */	cmpw r3, r0
/* 806B42B4  41 82 00 14 */	beq lbl_806B42C8
/* 806B42B8  40 80 00 40 */	bge lbl_806B42F8
/* 806B42BC  2C 03 00 00 */	cmpwi r3, 0
/* 806B42C0  41 82 00 20 */	beq lbl_806B42E0
/* 806B42C4  48 00 00 34 */	b lbl_806B42F8
lbl_806B42C8:
/* 806B42C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B42CC  41 82 00 0C */	beq lbl_806B42D8
/* 806B42D0  38 00 00 01 */	li r0, 1
/* 806B42D4  48 00 00 28 */	b lbl_806B42FC
lbl_806B42D8:
/* 806B42D8  38 00 00 02 */	li r0, 2
/* 806B42DC  48 00 00 20 */	b lbl_806B42FC
lbl_806B42E0:
/* 806B42E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B42E4  41 82 00 0C */	beq lbl_806B42F0
/* 806B42E8  38 00 00 05 */	li r0, 5
/* 806B42EC  48 00 00 10 */	b lbl_806B42FC
lbl_806B42F0:
/* 806B42F0  38 00 00 03 */	li r0, 3
/* 806B42F4  48 00 00 08 */	b lbl_806B42FC
lbl_806B42F8:
/* 806B42F8  38 00 00 04 */	li r0, 4
lbl_806B42FC:
/* 806B42FC  2C 00 00 01 */	cmpwi r0, 1
/* 806B4300  40 82 00 10 */	bne lbl_806B4310
/* 806B4304  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806B4308  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806B430C  48 00 00 08 */	b lbl_806B4314
lbl_806B4310:
/* 806B4310  FC 40 08 90 */	fmr f2, f1
lbl_806B4314:
/* 806B4314  C0 3E 06 BC */	lfs f1, 0x6bc(r30)
/* 806B4318  4B BB 33 5D */	bl cM_atan2s__Fff
/* 806B431C  20 03 40 00 */	subfic r0, r3, 0x4000
/* 806B4320  7C 04 07 34 */	extsh r4, r0
/* 806B4324  38 7E 06 CA */	addi r3, r30, 0x6ca
/* 806B4328  38 A0 00 08 */	li r5, 8
/* 806B432C  38 C0 10 00 */	li r6, 0x1000
/* 806B4330  38 E0 01 00 */	li r7, 0x100
/* 806B4334  4B BB C2 0D */	bl cLib_addCalcAngleS__FPsssss
/* 806B4338  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 806B433C  A8 9E 06 CA */	lha r4, 0x6ca(r30)
/* 806B4340  38 A0 00 08 */	li r5, 8
/* 806B4344  38 C0 10 00 */	li r6, 0x1000
/* 806B4348  38 E0 01 00 */	li r7, 0x100
/* 806B434C  4B BB C1 F5 */	bl cLib_addCalcAngleS__FPsssss
/* 806B4350  38 7E 06 D6 */	addi r3, r30, 0x6d6
/* 806B4354  A8 9E 06 D0 */	lha r4, 0x6d0(r30)
/* 806B4358  38 A0 00 08 */	li r5, 8
/* 806B435C  38 C0 10 00 */	li r6, 0x1000
/* 806B4360  38 E0 01 00 */	li r7, 0x100
/* 806B4364  4B BB C1 DD */	bl cLib_addCalcAngleS__FPsssss
/* 806B4368  38 00 00 00 */	li r0, 0
/* 806B436C  B0 1E 06 D8 */	sth r0, 0x6d8(r30)
/* 806B4370  B0 1E 06 D2 */	sth r0, 0x6d2(r30)
/* 806B4374  B0 1E 06 CC */	sth r0, 0x6cc(r30)
/* 806B4378  A8 7E 06 DC */	lha r3, 0x6dc(r30)
/* 806B437C  38 03 08 00 */	addi r0, r3, 0x800
/* 806B4380  B0 1E 06 DC */	sth r0, 0x6dc(r30)
/* 806B4384  A8 1E 06 DC */	lha r0, 0x6dc(r30)
/* 806B4388  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 806B438C  7C 00 1E 70 */	srawi r0, r0, 3
/* 806B4390  54 00 18 38 */	slwi r0, r0, 3
/* 806B4394  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806B4398  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806B439C  7C 23 04 2E */	lfsx f1, r3, r0
/* 806B43A0  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 806B43A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806B43A8  FC 00 00 1E */	fctiwz f0, f0
/* 806B43AC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806B43B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B43B4  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 806B43B8  A8 9E 06 DC */	lha r4, 0x6dc(r30)
/* 806B43BC  38 04 40 00 */	addi r0, r4, 0x4000
/* 806B43C0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 806B43C4  7C 00 1E 70 */	srawi r0, r0, 3
/* 806B43C8  54 00 18 38 */	slwi r0, r0, 3
/* 806B43CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 806B43D0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806B43D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806B43D8  FC 00 00 1E */	fctiwz f0, f0
/* 806B43DC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806B43E0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806B43E4  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 806B43E8  A8 9E 06 DC */	lha r4, 0x6dc(r30)
/* 806B43EC  3C 84 00 01 */	addis r4, r4, 1
/* 806B43F0  38 04 80 00 */	addi r0, r4, -32768
/* 806B43F4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 806B43F8  7C 00 1E 70 */	srawi r0, r0, 3
/* 806B43FC  54 00 18 38 */	slwi r0, r0, 3
/* 806B4400  7C 23 04 2E */	lfsx f1, r3, r0
/* 806B4404  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 806B4408  EC 00 00 72 */	fmuls f0, f0, f1
/* 806B440C  FC 00 00 1E */	fctiwz f0, f0
/* 806B4410  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806B4414  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B4418  B0 1E 06 DA */	sth r0, 0x6da(r30)
/* 806B441C  A8 9E 06 DE */	lha r4, 0x6de(r30)
/* 806B4420  38 04 10 00 */	addi r0, r4, 0x1000
/* 806B4424  B0 1E 06 DE */	sth r0, 0x6de(r30)
/* 806B4428  A8 1E 06 DE */	lha r0, 0x6de(r30)
/* 806B442C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806B4430  7C 43 04 2E */	lfsx f2, r3, r0
/* 806B4434  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806B4438  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 806B443C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806B4440  EC 01 00 2A */	fadds f0, f1, f0
/* 806B4444  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 806B4448  A8 9E 06 DE */	lha r4, 0x6de(r30)
/* 806B444C  38 04 40 00 */	addi r0, r4, 0x4000
/* 806B4450  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806B4454  7C 43 04 2E */	lfsx f2, r3, r0
/* 806B4458  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 806B445C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806B4460  EC 01 00 2A */	fadds f0, f1, f0
/* 806B4464  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
/* 806B4468  A8 9E 06 DE */	lha r4, 0x6de(r30)
/* 806B446C  3C 84 00 01 */	addis r4, r4, 1
/* 806B4470  38 04 80 00 */	addi r0, r4, -32768
/* 806B4474  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806B4478  7C 43 04 2E */	lfsx f2, r3, r0
/* 806B447C  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 806B4480  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806B4484  EC 01 00 2A */	fadds f0, f1, f0
/* 806B4488  D0 1E 06 F8 */	stfs f0, 0x6f8(r30)
/* 806B448C  D0 3E 06 FC */	stfs f1, 0x6fc(r30)
/* 806B4490  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 806B4494  D0 1E 07 00 */	stfs f0, 0x700(r30)
/* 806B4498  D0 3E 07 18 */	stfs f1, 0x718(r30)
/* 806B449C  48 00 02 70 */	b lbl_806B470C
lbl_806B44A0:
/* 806B44A0  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 806B44A4  38 80 00 00 */	li r4, 0
/* 806B44A8  38 A0 04 00 */	li r5, 0x400
/* 806B44AC  4B BB C6 E5 */	bl cLib_chaseAngleS__FPsss
/* 806B44B0  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 806B44B4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B44B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806B44BC  40 80 00 84 */	bge lbl_806B4540
/* 806B44C0  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 806B44C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806B44C8  4C 40 13 82 */	cror 2, 0, 2
/* 806B44CC  40 82 00 74 */	bne lbl_806B4540
/* 806B44D0  38 00 00 00 */	li r0, 0
/* 806B44D4  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806B44D8  D0 3E 06 B8 */	stfs f1, 0x6b8(r30)
/* 806B44DC  D0 3E 06 BC */	stfs f1, 0x6bc(r30)
/* 806B44E0  D0 3E 06 C0 */	stfs f1, 0x6c0(r30)
/* 806B44E4  D0 3E 06 AC */	stfs f1, 0x6ac(r30)
/* 806B44E8  D0 3E 06 B0 */	stfs f1, 0x6b0(r30)
/* 806B44EC  D0 3E 06 B4 */	stfs f1, 0x6b4(r30)
/* 806B44F0  88 9E 07 7A */	lbz r4, 0x77a(r30)
/* 806B44F4  28 04 00 FF */	cmplwi r4, 0xff
/* 806B44F8  41 82 00 38 */	beq lbl_806B4530
/* 806B44FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B4500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B4504  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806B4508  7C 05 07 74 */	extsb r5, r0
/* 806B450C  4B 98 0E 55 */	bl isSwitch__10dSv_info_cCFii
/* 806B4510  2C 03 00 00 */	cmpwi r3, 0
/* 806B4514  40 82 00 1C */	bne lbl_806B4530
/* 806B4518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B451C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B4520  88 9E 07 7A */	lbz r4, 0x77a(r30)
/* 806B4524  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806B4528  7C 05 07 74 */	extsb r5, r0
/* 806B452C  4B 98 0C D5 */	bl onSwitch__10dSv_info_cFii
lbl_806B4530:
/* 806B4530  38 00 00 03 */	li r0, 3
/* 806B4534  98 1E 07 78 */	stb r0, 0x778(r30)
/* 806B4538  38 00 00 32 */	li r0, 0x32
/* 806B453C  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_806B4540:
/* 806B4540  38 7E 06 CA */	addi r3, r30, 0x6ca
/* 806B4544  38 80 00 00 */	li r4, 0
/* 806B4548  38 A0 00 10 */	li r5, 0x10
/* 806B454C  38 C0 20 00 */	li r6, 0x2000
/* 806B4550  38 E0 00 80 */	li r7, 0x80
/* 806B4554  4B BB BF ED */	bl cLib_addCalcAngleS__FPsssss
/* 806B4558  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 806B455C  A8 9E 06 CA */	lha r4, 0x6ca(r30)
/* 806B4560  38 A0 00 10 */	li r5, 0x10
/* 806B4564  38 C0 20 00 */	li r6, 0x2000
/* 806B4568  38 E0 00 80 */	li r7, 0x80
/* 806B456C  4B BB BF D5 */	bl cLib_addCalcAngleS__FPsssss
/* 806B4570  38 7E 06 D6 */	addi r3, r30, 0x6d6
/* 806B4574  A8 9E 06 D0 */	lha r4, 0x6d0(r30)
/* 806B4578  38 A0 00 10 */	li r5, 0x10
/* 806B457C  38 C0 20 00 */	li r6, 0x2000
/* 806B4580  38 E0 00 80 */	li r7, 0x80
/* 806B4584  4B BB BF BD */	bl cLib_addCalcAngleS__FPsssss
/* 806B4588  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 806B458C  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 806B4590  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806B4594  4B BB C1 AD */	bl cLib_chaseF__FPfff
/* 806B4598  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 806B459C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B45A0  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 806B45A4  4B BB C1 9D */	bl cLib_chaseF__FPfff
/* 806B45A8  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 806B45AC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806B45B0  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 806B45B4  4B BB C1 8D */	bl cLib_chaseF__FPfff
/* 806B45B8  38 7E 07 00 */	addi r3, r30, 0x700
/* 806B45BC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806B45C0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B45C4  4B BB C1 7D */	bl cLib_chaseF__FPfff
/* 806B45C8  48 00 01 44 */	b lbl_806B470C
lbl_806B45CC:
/* 806B45CC  38 7E 06 CA */	addi r3, r30, 0x6ca
/* 806B45D0  38 80 00 00 */	li r4, 0
/* 806B45D4  38 A0 00 10 */	li r5, 0x10
/* 806B45D8  38 C0 20 00 */	li r6, 0x2000
/* 806B45DC  38 E0 00 80 */	li r7, 0x80
/* 806B45E0  4B BB BF 61 */	bl cLib_addCalcAngleS__FPsssss
/* 806B45E4  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 806B45E8  A8 9E 06 CA */	lha r4, 0x6ca(r30)
/* 806B45EC  38 A0 00 10 */	li r5, 0x10
/* 806B45F0  38 C0 20 00 */	li r6, 0x2000
/* 806B45F4  38 E0 00 80 */	li r7, 0x80
/* 806B45F8  4B BB BF 49 */	bl cLib_addCalcAngleS__FPsssss
/* 806B45FC  38 7E 06 D6 */	addi r3, r30, 0x6d6
/* 806B4600  A8 9E 06 D0 */	lha r4, 0x6d0(r30)
/* 806B4604  38 A0 00 10 */	li r5, 0x10
/* 806B4608  38 C0 20 00 */	li r6, 0x2000
/* 806B460C  38 E0 00 80 */	li r7, 0x80
/* 806B4610  4B BB BF 31 */	bl cLib_addCalcAngleS__FPsssss
/* 806B4614  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 806B4618  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 806B461C  C0 5F 01 D8 */	lfs f2, 0x1d8(r31)
/* 806B4620  4B BB C1 21 */	bl cLib_chaseF__FPfff
/* 806B4624  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 806B4628  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 806B462C  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 806B4630  4B BB C1 11 */	bl cLib_chaseF__FPfff
/* 806B4634  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 806B4638  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806B463C  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 806B4640  4B BB C1 01 */	bl cLib_chaseF__FPfff
/* 806B4644  38 7E 07 00 */	addi r3, r30, 0x700
/* 806B4648  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 806B464C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B4650  4B BB C0 F1 */	bl cLib_chaseF__FPfff
/* 806B4654  88 1E 07 78 */	lbz r0, 0x778(r30)
/* 806B4658  28 00 00 03 */	cmplwi r0, 3
/* 806B465C  40 82 00 40 */	bne lbl_806B469C
/* 806B4660  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806B4664  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806B4668  40 82 00 14 */	bne lbl_806B467C
/* 806B466C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806B4670  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 806B4674  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 806B4678  D0 1E 07 1C */	stfs f0, 0x71c(r30)
lbl_806B467C:
/* 806B467C  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806B4680  2C 00 00 00 */	cmpwi r0, 0
/* 806B4684  40 82 00 88 */	bne lbl_806B470C
/* 806B4688  38 00 00 04 */	li r0, 4
/* 806B468C  98 1E 07 78 */	stb r0, 0x778(r30)
/* 806B4690  38 00 00 64 */	li r0, 0x64
/* 806B4694  90 1E 07 68 */	stw r0, 0x768(r30)
/* 806B4698  48 00 00 74 */	b lbl_806B470C
lbl_806B469C:
/* 806B469C  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806B46A0  2C 00 00 46 */	cmpwi r0, 0x46
/* 806B46A4  40 80 00 68 */	bge lbl_806B470C
/* 806B46A8  38 7E 07 18 */	addi r3, r30, 0x718
/* 806B46AC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B46B0  C0 5F 01 D8 */	lfs f2, 0x1d8(r31)
/* 806B46B4  4B BB C0 8D */	bl cLib_chaseF__FPfff
/* 806B46B8  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806B46BC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806B46C0  40 80 00 4C */	bge lbl_806B470C
/* 806B46C4  38 7E 07 20 */	addi r3, r30, 0x720
/* 806B46C8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B46CC  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 806B46D0  4B BB C0 71 */	bl cLib_chaseF__FPfff
/* 806B46D4  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806B46D8  2C 00 00 0F */	cmpwi r0, 0xf
/* 806B46DC  40 80 00 30 */	bge lbl_806B470C
/* 806B46E0  38 7E 07 1C */	addi r3, r30, 0x71c
/* 806B46E4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B46E8  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 806B46EC  4B BB C0 55 */	bl cLib_chaseF__FPfff
/* 806B46F0  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 806B46F4  2C 00 00 00 */	cmpwi r0, 0
/* 806B46F8  40 82 00 14 */	bne lbl_806B470C
/* 806B46FC  38 7E 07 24 */	addi r3, r30, 0x724
/* 806B4700  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B4704  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 806B4708  4B BB C0 39 */	bl cLib_chaseF__FPfff
lbl_806B470C:
/* 806B470C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806B4710  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806B4714  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806B4718  7C 08 03 A6 */	mtlr r0
/* 806B471C  38 21 00 40 */	addi r1, r1, 0x40
/* 806B4720  4E 80 00 20 */	blr 
