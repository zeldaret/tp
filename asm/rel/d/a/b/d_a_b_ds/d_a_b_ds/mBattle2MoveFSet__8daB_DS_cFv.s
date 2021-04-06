lbl_805D429C:
/* 805D429C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805D42A0  7C 08 02 A6 */	mflr r0
/* 805D42A4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805D42A8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 805D42AC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 805D42B0  39 61 00 90 */	addi r11, r1, 0x90
/* 805D42B4  4B D8 DF 21 */	bl _savegpr_27
/* 805D42B8  7C 7B 1B 78 */	mr r27, r3
/* 805D42BC  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805D42C0  3B C4 CA 54 */	addi r30, r4, lit_3932@l /* 0x805DCA54@l */
/* 805D42C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D42C8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D42CC  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 805D42D0  3C 80 80 5E */	lis r4, l_HIO@ha /* 0x805DDABC@ha */
/* 805D42D4  38 84 DA BC */	addi r4, r4, l_HIO@l /* 0x805DDABC@l */
/* 805D42D8  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 805D42DC  4B FF FD 79 */	bl mRailInOutCheck__8daB_DS_cFv
/* 805D42E0  7C 7C 1B 78 */	mr r28, r3
/* 805D42E4  38 61 00 48 */	addi r3, r1, 0x48
/* 805D42E8  38 9B 07 18 */	addi r4, r27, 0x718
/* 805D42EC  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 805D42F0  4B C9 28 45 */	bl __mi__4cXyzCFRC3Vec
/* 805D42F4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805D42F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D42FC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805D4300  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D4304  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805D4308  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D430C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D4310  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D4314  A8 1B 07 CC */	lha r0, 0x7cc(r27)
/* 805D4318  2C 00 28 80 */	cmpwi r0, 0x2880
/* 805D431C  41 81 01 30 */	bgt lbl_805D444C
/* 805D4320  38 61 00 54 */	addi r3, r1, 0x54
/* 805D4324  4B D7 2E 15 */	bl PSVECSquareMag
/* 805D4328  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D432C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4330  40 81 00 58 */	ble lbl_805D4388
/* 805D4334  FC 00 08 34 */	frsqrte f0, f1
/* 805D4338  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805D433C  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4340  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805D4344  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4348  FC 01 00 32 */	fmul f0, f1, f0
/* 805D434C  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4350  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4354  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4358  FC 00 00 32 */	fmul f0, f0, f0
/* 805D435C  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4360  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4364  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4368  FC 44 00 32 */	fmul f2, f4, f0
/* 805D436C  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4370  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4374  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4378  FC 02 00 32 */	fmul f0, f2, f0
/* 805D437C  FC 21 00 32 */	fmul f1, f1, f0
/* 805D4380  FC 20 08 18 */	frsp f1, f1
/* 805D4384  48 00 00 88 */	b lbl_805D440C
lbl_805D4388:
/* 805D4388  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805D438C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4390  40 80 00 10 */	bge lbl_805D43A0
/* 805D4394  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D4398  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805D439C  48 00 00 70 */	b lbl_805D440C
lbl_805D43A0:
/* 805D43A0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805D43A4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805D43A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D43AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D43B0  7C 03 00 00 */	cmpw r3, r0
/* 805D43B4  41 82 00 14 */	beq lbl_805D43C8
/* 805D43B8  40 80 00 40 */	bge lbl_805D43F8
/* 805D43BC  2C 03 00 00 */	cmpwi r3, 0
/* 805D43C0  41 82 00 20 */	beq lbl_805D43E0
/* 805D43C4  48 00 00 34 */	b lbl_805D43F8
lbl_805D43C8:
/* 805D43C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D43CC  41 82 00 0C */	beq lbl_805D43D8
/* 805D43D0  38 00 00 01 */	li r0, 1
/* 805D43D4  48 00 00 28 */	b lbl_805D43FC
lbl_805D43D8:
/* 805D43D8  38 00 00 02 */	li r0, 2
/* 805D43DC  48 00 00 20 */	b lbl_805D43FC
lbl_805D43E0:
/* 805D43E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D43E4  41 82 00 0C */	beq lbl_805D43F0
/* 805D43E8  38 00 00 05 */	li r0, 5
/* 805D43EC  48 00 00 10 */	b lbl_805D43FC
lbl_805D43F0:
/* 805D43F0  38 00 00 03 */	li r0, 3
/* 805D43F4  48 00 00 08 */	b lbl_805D43FC
lbl_805D43F8:
/* 805D43F8  38 00 00 04 */	li r0, 4
lbl_805D43FC:
/* 805D43FC  2C 00 00 01 */	cmpwi r0, 1
/* 805D4400  40 82 00 0C */	bne lbl_805D440C
/* 805D4404  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D4408  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805D440C:
/* 805D440C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805D4410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4414  40 80 00 38 */	bge lbl_805D444C
/* 805D4418  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 805D441C  40 82 00 10 */	bne lbl_805D442C
/* 805D4420  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 805D4424  EF FF 00 2A */	fadds f31, f31, f0
/* 805D4428  48 00 00 24 */	b lbl_805D444C
lbl_805D442C:
/* 805D442C  80 1B 06 80 */	lwz r0, 0x680(r27)
/* 805D4430  2C 00 00 03 */	cmpwi r0, 3
/* 805D4434  41 82 00 10 */	beq lbl_805D4444
/* 805D4438  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 805D443C  EF FF 00 2A */	fadds f31, f31, f0
/* 805D4440  48 00 00 0C */	b lbl_805D444C
lbl_805D4444:
/* 805D4444  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 805D4448  EF FF 00 28 */	fsubs f31, f31, f0
lbl_805D444C:
/* 805D444C  38 7B 08 0C */	addi r3, r27, 0x80c
/* 805D4450  FC 20 F8 90 */	fmr f1, f31
/* 805D4454  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D4458  C0 7E 02 B4 */	lfs f3, 0x2b4(r30)
/* 805D445C  4B C9 B5 E1 */	bl cLib_addCalc2__FPffff
/* 805D4460  3B 80 00 00 */	li r28, 0
/* 805D4464  38 61 00 3C */	addi r3, r1, 0x3c
/* 805D4468  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805D446C  38 BB 04 A8 */	addi r5, r27, 0x4a8
/* 805D4470  4B C9 26 C5 */	bl __mi__4cXyzCFRC3Vec
/* 805D4474  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805D4478  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D447C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805D4480  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D4484  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805D4488  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D448C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D4490  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D4494  38 61 00 54 */	addi r3, r1, 0x54
/* 805D4498  4B C9 2C 91 */	bl atan2sX_Z__4cXyzCFv
/* 805D449C  A8 1B 07 CC */	lha r0, 0x7cc(r27)
/* 805D44A0  7C 00 18 50 */	subf r0, r0, r3
/* 805D44A4  7C 04 07 34 */	extsh r4, r0
/* 805D44A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805D44AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805D44B0  80 63 00 00 */	lwz r3, 0(r3)
/* 805D44B4  4B A3 7F 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 805D44B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D44BC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D44C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805D44C4  C0 1B 08 0C */	lfs f0, 0x80c(r27)
/* 805D44C8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805D44CC  38 61 00 60 */	addi r3, r1, 0x60
/* 805D44D0  38 9B 07 18 */	addi r4, r27, 0x718
/* 805D44D4  4B C9 CA 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805D44D8  38 61 00 30 */	addi r3, r1, 0x30
/* 805D44DC  38 9B 07 18 */	addi r4, r27, 0x718
/* 805D44E0  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 805D44E4  4B C9 26 51 */	bl __mi__4cXyzCFRC3Vec
/* 805D44E8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805D44EC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D44F0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805D44F4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D44F8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805D44FC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D4500  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D4504  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D4508  38 61 00 54 */	addi r3, r1, 0x54
/* 805D450C  4B D7 2C 2D */	bl PSVECSquareMag
/* 805D4510  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D4514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4518  40 81 00 58 */	ble lbl_805D4570
/* 805D451C  FC 00 08 34 */	frsqrte f0, f1
/* 805D4520  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805D4524  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4528  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805D452C  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4530  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4534  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4538  FC 02 00 32 */	fmul f0, f2, f0
/* 805D453C  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4540  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4544  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4548  FC 03 00 28 */	fsub f0, f3, f0
/* 805D454C  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4550  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4554  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4558  FC 01 00 32 */	fmul f0, f1, f0
/* 805D455C  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4560  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4564  FC 21 00 32 */	fmul f1, f1, f0
/* 805D4568  FC 20 08 18 */	frsp f1, f1
/* 805D456C  48 00 00 88 */	b lbl_805D45F4
lbl_805D4570:
/* 805D4570  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805D4574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4578  40 80 00 10 */	bge lbl_805D4588
/* 805D457C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D4580  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805D4584  48 00 00 70 */	b lbl_805D45F4
lbl_805D4588:
/* 805D4588  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805D458C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805D4590  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D4594  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D4598  7C 03 00 00 */	cmpw r3, r0
/* 805D459C  41 82 00 14 */	beq lbl_805D45B0
/* 805D45A0  40 80 00 40 */	bge lbl_805D45E0
/* 805D45A4  2C 03 00 00 */	cmpwi r3, 0
/* 805D45A8  41 82 00 20 */	beq lbl_805D45C8
/* 805D45AC  48 00 00 34 */	b lbl_805D45E0
lbl_805D45B0:
/* 805D45B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D45B4  41 82 00 0C */	beq lbl_805D45C0
/* 805D45B8  38 00 00 01 */	li r0, 1
/* 805D45BC  48 00 00 28 */	b lbl_805D45E4
lbl_805D45C0:
/* 805D45C0  38 00 00 02 */	li r0, 2
/* 805D45C4  48 00 00 20 */	b lbl_805D45E4
lbl_805D45C8:
/* 805D45C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D45CC  41 82 00 0C */	beq lbl_805D45D8
/* 805D45D0  38 00 00 05 */	li r0, 5
/* 805D45D4  48 00 00 10 */	b lbl_805D45E4
lbl_805D45D8:
/* 805D45D8  38 00 00 03 */	li r0, 3
/* 805D45DC  48 00 00 08 */	b lbl_805D45E4
lbl_805D45E0:
/* 805D45E0  38 00 00 04 */	li r0, 4
lbl_805D45E4:
/* 805D45E4  2C 00 00 01 */	cmpwi r0, 1
/* 805D45E8  40 82 00 0C */	bne lbl_805D45F4
/* 805D45EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D45F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805D45F4:
/* 805D45F4  C0 1B 08 0C */	lfs f0, 0x80c(r27)
/* 805D45F8  EF E1 00 28 */	fsubs f31, f1, f0
/* 805D45FC  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 805D4600  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805D4604  41 80 00 14 */	blt lbl_805D4618
/* 805D4608  7F 63 DB 78 */	mr r3, r27
/* 805D460C  4B FF F9 85 */	bl mChkScreenIn__8daB_DS_cFv
/* 805D4610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D4614  40 82 00 0C */	bne lbl_805D4620
lbl_805D4618:
/* 805D4618  C3 FE 01 90 */	lfs f31, 0x190(r30)
/* 805D461C  48 00 00 14 */	b lbl_805D4630
lbl_805D4620:
/* 805D4620  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 805D4624  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805D4628  40 81 00 08 */	ble lbl_805D4630
/* 805D462C  FF E0 00 90 */	fmr f31, f0
lbl_805D4630:
/* 805D4630  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 805D4634  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 805D4638  EC 01 00 32 */	fmuls f0, f1, f0
/* 805D463C  EF FF 00 2A */	fadds f31, f31, f0
/* 805D4640  38 61 00 24 */	addi r3, r1, 0x24
/* 805D4644  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805D4648  38 BB 04 A8 */	addi r5, r27, 0x4a8
/* 805D464C  4B C9 24 E9 */	bl __mi__4cXyzCFRC3Vec
/* 805D4650  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805D4654  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D4658  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805D465C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D4660  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805D4664  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D4668  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D466C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D4670  38 61 00 54 */	addi r3, r1, 0x54
/* 805D4674  4B D7 2A C5 */	bl PSVECSquareMag
/* 805D4678  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D467C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4680  40 81 00 58 */	ble lbl_805D46D8
/* 805D4684  FC 00 08 34 */	frsqrte f0, f1
/* 805D4688  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805D468C  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4690  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805D4694  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4698  FC 01 00 32 */	fmul f0, f1, f0
/* 805D469C  FC 03 00 28 */	fsub f0, f3, f0
/* 805D46A0  FC 02 00 32 */	fmul f0, f2, f0
/* 805D46A4  FC 44 00 32 */	fmul f2, f4, f0
/* 805D46A8  FC 00 00 32 */	fmul f0, f0, f0
/* 805D46AC  FC 01 00 32 */	fmul f0, f1, f0
/* 805D46B0  FC 03 00 28 */	fsub f0, f3, f0
/* 805D46B4  FC 02 00 32 */	fmul f0, f2, f0
/* 805D46B8  FC 44 00 32 */	fmul f2, f4, f0
/* 805D46BC  FC 00 00 32 */	fmul f0, f0, f0
/* 805D46C0  FC 01 00 32 */	fmul f0, f1, f0
/* 805D46C4  FC 03 00 28 */	fsub f0, f3, f0
/* 805D46C8  FC 02 00 32 */	fmul f0, f2, f0
/* 805D46CC  FC 21 00 32 */	fmul f1, f1, f0
/* 805D46D0  FC 20 08 18 */	frsp f1, f1
/* 805D46D4  48 00 00 88 */	b lbl_805D475C
lbl_805D46D8:
/* 805D46D8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805D46DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D46E0  40 80 00 10 */	bge lbl_805D46F0
/* 805D46E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D46E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805D46EC  48 00 00 70 */	b lbl_805D475C
lbl_805D46F0:
/* 805D46F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805D46F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805D46F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D46FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D4700  7C 03 00 00 */	cmpw r3, r0
/* 805D4704  41 82 00 14 */	beq lbl_805D4718
/* 805D4708  40 80 00 40 */	bge lbl_805D4748
/* 805D470C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4710  41 82 00 20 */	beq lbl_805D4730
/* 805D4714  48 00 00 34 */	b lbl_805D4748
lbl_805D4718:
/* 805D4718  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D471C  41 82 00 0C */	beq lbl_805D4728
/* 805D4720  38 00 00 01 */	li r0, 1
/* 805D4724  48 00 00 28 */	b lbl_805D474C
lbl_805D4728:
/* 805D4728  38 00 00 02 */	li r0, 2
/* 805D472C  48 00 00 20 */	b lbl_805D474C
lbl_805D4730:
/* 805D4730  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D4734  41 82 00 0C */	beq lbl_805D4740
/* 805D4738  38 00 00 05 */	li r0, 5
/* 805D473C  48 00 00 10 */	b lbl_805D474C
lbl_805D4740:
/* 805D4740  38 00 00 03 */	li r0, 3
/* 805D4744  48 00 00 08 */	b lbl_805D474C
lbl_805D4748:
/* 805D4748  38 00 00 04 */	li r0, 4
lbl_805D474C:
/* 805D474C  2C 00 00 01 */	cmpwi r0, 1
/* 805D4750  40 82 00 0C */	bne lbl_805D475C
/* 805D4754  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D4758  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805D475C:
/* 805D475C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 805D4760  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4764  40 81 01 C0 */	ble lbl_805D4924
/* 805D4768  38 7B 08 08 */	addi r3, r27, 0x808
/* 805D476C  FC 20 F8 90 */	fmr f1, f31
/* 805D4770  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D4774  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805D4778  4B C9 B2 C5 */	bl cLib_addCalc2__FPffff
/* 805D477C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805D4780  C0 3B 07 18 */	lfs f1, 0x718(r27)
/* 805D4784  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D4788  C0 7B 08 08 */	lfs f3, 0x808(r27)
/* 805D478C  4B C9 B2 B1 */	bl cLib_addCalc2__FPffff
/* 805D4790  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 805D4794  C0 3B 07 20 */	lfs f1, 0x720(r27)
/* 805D4798  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D479C  C0 7B 08 08 */	lfs f3, 0x808(r27)
/* 805D47A0  4B C9 B2 9D */	bl cLib_addCalc2__FPffff
/* 805D47A4  38 61 00 18 */	addi r3, r1, 0x18
/* 805D47A8  38 9B 07 18 */	addi r4, r27, 0x718
/* 805D47AC  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 805D47B0  4B C9 23 85 */	bl __mi__4cXyzCFRC3Vec
/* 805D47B4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805D47B8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805D47BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805D47C0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D47C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805D47C8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D47CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D47D0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805D47D4  80 1B 08 34 */	lwz r0, 0x834(r27)
/* 805D47D8  2C 00 00 00 */	cmpwi r0, 0
/* 805D47DC  41 82 00 FC */	beq lbl_805D48D8
/* 805D47E0  38 61 00 54 */	addi r3, r1, 0x54
/* 805D47E4  4B D7 29 55 */	bl PSVECSquareMag
/* 805D47E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D47EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D47F0  40 81 00 58 */	ble lbl_805D4848
/* 805D47F4  FC 00 08 34 */	frsqrte f0, f1
/* 805D47F8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805D47FC  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4800  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805D4804  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4808  FC 01 00 32 */	fmul f0, f1, f0
/* 805D480C  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4810  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4814  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4818  FC 00 00 32 */	fmul f0, f0, f0
/* 805D481C  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4820  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4824  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4828  FC 44 00 32 */	fmul f2, f4, f0
/* 805D482C  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4830  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4834  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4838  FC 02 00 32 */	fmul f0, f2, f0
/* 805D483C  FC 21 00 32 */	fmul f1, f1, f0
/* 805D4840  FC 20 08 18 */	frsp f1, f1
/* 805D4844  48 00 00 88 */	b lbl_805D48CC
lbl_805D4848:
/* 805D4848  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805D484C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4850  40 80 00 10 */	bge lbl_805D4860
/* 805D4854  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D4858  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805D485C  48 00 00 70 */	b lbl_805D48CC
lbl_805D4860:
/* 805D4860  D0 21 00 08 */	stfs f1, 8(r1)
/* 805D4864  80 81 00 08 */	lwz r4, 8(r1)
/* 805D4868  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D486C  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D4870  7C 03 00 00 */	cmpw r3, r0
/* 805D4874  41 82 00 14 */	beq lbl_805D4888
/* 805D4878  40 80 00 40 */	bge lbl_805D48B8
/* 805D487C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4880  41 82 00 20 */	beq lbl_805D48A0
/* 805D4884  48 00 00 34 */	b lbl_805D48B8
lbl_805D4888:
/* 805D4888  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D488C  41 82 00 0C */	beq lbl_805D4898
/* 805D4890  38 00 00 01 */	li r0, 1
/* 805D4894  48 00 00 28 */	b lbl_805D48BC
lbl_805D4898:
/* 805D4898  38 00 00 02 */	li r0, 2
/* 805D489C  48 00 00 20 */	b lbl_805D48BC
lbl_805D48A0:
/* 805D48A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D48A4  41 82 00 0C */	beq lbl_805D48B0
/* 805D48A8  38 00 00 05 */	li r0, 5
/* 805D48AC  48 00 00 10 */	b lbl_805D48BC
lbl_805D48B0:
/* 805D48B0  38 00 00 03 */	li r0, 3
/* 805D48B4  48 00 00 08 */	b lbl_805D48BC
lbl_805D48B8:
/* 805D48B8  38 00 00 04 */	li r0, 4
lbl_805D48BC:
/* 805D48BC  2C 00 00 01 */	cmpwi r0, 1
/* 805D48C0  40 82 00 0C */	bne lbl_805D48CC
/* 805D48C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805D48C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805D48CC:
/* 805D48CC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805D48D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D48D4  40 80 00 08 */	bge lbl_805D48DC
lbl_805D48D8:
/* 805D48D8  3B 80 00 01 */	li r28, 1
lbl_805D48DC:
/* 805D48DC  38 7B 06 90 */	addi r3, r27, 0x690
/* 805D48E0  48 00 80 05 */	bl func_805DC8E4
/* 805D48E4  2C 03 00 00 */	cmpwi r3, 0
/* 805D48E8  40 82 00 3C */	bne lbl_805D4924
/* 805D48EC  80 1B 2D 90 */	lwz r0, 0x2d90(r27)
/* 805D48F0  28 00 00 00 */	cmplwi r0, 0
/* 805D48F4  41 82 00 18 */	beq lbl_805D490C
/* 805D48F8  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805D48FC  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805D4900  A8 03 00 34 */	lha r0, 0x34(r3)
/* 805D4904  90 1B 06 90 */	stw r0, 0x690(r27)
/* 805D4908  48 00 00 14 */	b lbl_805D491C
lbl_805D490C:
/* 805D490C  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805D4910  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805D4914  A8 03 00 32 */	lha r0, 0x32(r3)
/* 805D4918  90 1B 06 90 */	stw r0, 0x690(r27)
lbl_805D491C:
/* 805D491C  38 00 00 01 */	li r0, 1
/* 805D4920  98 1B 08 60 */	stb r0, 0x860(r27)
lbl_805D4924:
/* 805D4924  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805D4928  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D492C  81 8C 01 F0 */	lwz r12, 0x1f0(r12)
/* 805D4930  7D 89 03 A6 */	mtctr r12
/* 805D4934  4E 80 04 21 */	bctrl 
/* 805D4938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D493C  41 82 00 1C */	beq lbl_805D4958
/* 805D4940  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805D4944  D0 1B 06 F4 */	stfs f0, 0x6f4(r27)
/* 805D4948  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805D494C  D0 1B 06 F8 */	stfs f0, 0x6f8(r27)
/* 805D4950  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805D4954  D0 1B 06 FC */	stfs f0, 0x6fc(r27)
lbl_805D4958:
/* 805D4958  7F 83 E3 78 */	mr r3, r28
/* 805D495C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 805D4960  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 805D4964  39 61 00 90 */	addi r11, r1, 0x90
/* 805D4968  4B D8 D8 B9 */	bl _restgpr_27
/* 805D496C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805D4970  7C 08 03 A6 */	mtlr r0
/* 805D4974  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805D4978  4E 80 00 20 */	blr 
