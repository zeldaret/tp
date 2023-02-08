lbl_800F4140:
/* 800F4140  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800F4144  7C 08 02 A6 */	mflr r0
/* 800F4148  90 01 00 84 */	stw r0, 0x84(r1)
/* 800F414C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800F4150  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800F4154  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 800F4158  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 800F415C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 800F4160  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 800F4164  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 800F4168  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 800F416C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800F4170  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800F4174  7C 7F 1B 78 */	mr r31, r3
/* 800F4178  C0 03 1F E0 */	lfs f0, 0x1fe0(r3)
/* 800F417C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800F4180  C0 03 1F F8 */	lfs f0, 0x1ff8(r3)
/* 800F4184  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800F4188  C0 03 1F 28 */	lfs f0, 0x1f28(r3)
/* 800F418C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800F4190  80 03 05 80 */	lwz r0, 0x580(r3)
/* 800F4194  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800F4198  41 82 00 10 */	beq lbl_800F41A8
/* 800F419C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F41A0  D0 1F 20 54 */	stfs f0, 0x2054(r31)
/* 800F41A4  48 00 00 0C */	b lbl_800F41B0
lbl_800F41A8:
/* 800F41A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F41AC  D0 1F 20 54 */	stfs f0, 0x2054(r31)
lbl_800F41B0:
/* 800F41B0  83 DF 28 28 */	lwz r30, 0x2828(r31)
/* 800F41B4  28 1E 00 00 */	cmplwi r30, 0
/* 800F41B8  41 82 00 20 */	beq lbl_800F41D8
/* 800F41BC  7F E3 FB 78 */	mr r3, r31
/* 800F41C0  48 02 1A 61 */	bl checkEventRun__9daAlink_cCFv
/* 800F41C4  2C 03 00 00 */	cmpwi r3, 0
/* 800F41C8  40 82 00 10 */	bne lbl_800F41D8
/* 800F41CC  C3 BE 14 C8 */	lfs f29, 0x14c8(r30)
/* 800F41D0  C3 9E 14 CC */	lfs f28, 0x14cc(r30)
/* 800F41D4  48 00 00 0C */	b lbl_800F41E0
lbl_800F41D8:
/* 800F41D8  C3 A2 92 C0 */	lfs f29, lit_6108(r2)
/* 800F41DC  FF 80 E8 90 */	fmr f28, f29
lbl_800F41E0:
/* 800F41E0  EC 3D 07 72 */	fmuls f1, f29, f29
/* 800F41E4  EC 1C 07 32 */	fmuls f0, f28, f28
/* 800F41E8  EF E1 00 2A */	fadds f31, f1, f0
/* 800F41EC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F41F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800F41F4  40 81 00 0C */	ble lbl_800F4200
/* 800F41F8  FC 00 F8 34 */	frsqrte f0, f31
/* 800F41FC  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_800F4200:
/* 800F4200  FC 20 E8 50 */	fneg f1, f29
/* 800F4204  FC 40 E0 90 */	fmr f2, f28
/* 800F4208  48 17 34 6D */	bl cM_atan2s__Fff
/* 800F420C  7C 63 07 34 */	extsh r3, r3
/* 800F4210  48 27 0E C1 */	bl abs
/* 800F4214  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F4218  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800F421C  40 81 01 90 */	ble lbl_800F43AC
/* 800F4220  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F4224  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 800F4228  40 81 00 68 */	ble lbl_800F4290
/* 800F422C  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 800F4230  FC 00 EA 10 */	fabs f0, f29
/* 800F4234  C0 42 93 F8 */	lfs f2, lit_13700(r2)
/* 800F4238  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800F423C  FC 00 00 18 */	frsp f0, f0
/* 800F4240  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800F4244  EC 21 00 28 */	fsubs f1, f1, f0
/* 800F4248  C8 62 92 B0 */	lfd f3, lit_6025(r2)
/* 800F424C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F4250  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800F4254  3C 80 43 30 */	lis r4, 0x4330
/* 800F4258  90 81 00 18 */	stw r4, 0x18(r1)
/* 800F425C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800F4260  EC 00 18 28 */	fsubs f0, f0, f3
/* 800F4264  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F4268  EC 22 00 32 */	fmuls f1, f2, f0
/* 800F426C  C0 42 95 10 */	lfs f2, lit_20790(r2)
/* 800F4270  20 03 40 00 */	subfic r0, r3, 0x4000
/* 800F4274  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F4278  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F427C  90 81 00 20 */	stw r4, 0x20(r1)
/* 800F4280  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800F4284  EC 00 18 28 */	fsubs f0, f0, f3
/* 800F4288  EF C2 00 32 */	fmuls f30, f2, f0
/* 800F428C  48 00 00 78 */	b lbl_800F4304
lbl_800F4290:
/* 800F4290  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 800F4294  FC A0 EA 10 */	fabs f5, f29
/* 800F4298  C8 82 92 B0 */	lfd f4, lit_6025(r2)
/* 800F429C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F42A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F42A4  3C 80 43 30 */	lis r4, 0x4330
/* 800F42A8  90 81 00 20 */	stw r4, 0x20(r1)
/* 800F42AC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800F42B0  EC 60 20 28 */	fsubs f3, f0, f4
/* 800F42B4  C0 42 94 08 */	lfs f2, lit_14064(r2)
/* 800F42B8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800F42BC  FC 00 28 18 */	frsp f0, f5
/* 800F42C0  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800F42C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 800F42C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800F42CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 800F42D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800F42D4  EC 00 20 28 */	fsubs f0, f0, f4
/* 800F42D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F42DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F42E0  EC 23 00 28 */	fsubs f1, f3, f0
/* 800F42E4  C0 42 95 10 */	lfs f2, lit_20790(r2)
/* 800F42E8  38 03 C0 00 */	addi r0, r3, -16384
/* 800F42EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F42F0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800F42F4  90 81 00 28 */	stw r4, 0x28(r1)
/* 800F42F8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800F42FC  EC 00 20 28 */	fsubs f0, f0, f4
/* 800F4300  EF C2 00 32 */	fmuls f30, f2, f0
lbl_800F4304:
/* 800F4304  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F4308  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 800F430C  40 80 00 48 */	bge lbl_800F4354
/* 800F4310  A8 1F 1F F0 */	lha r0, 0x1ff0(r31)
/* 800F4314  FC 00 E2 10 */	fabs f0, f28
/* 800F4318  C0 82 92 98 */	lfs f4, lit_5943(r2)
/* 800F431C  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800F4320  FC 00 00 18 */	frsp f0, f0
/* 800F4324  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800F4328  EC 62 00 28 */	fsubs f3, f2, f0
/* 800F432C  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800F4330  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F4334  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800F4338  3C 00 43 30 */	lis r0, 0x4330
/* 800F433C  90 01 00 28 */	stw r0, 0x28(r1)
/* 800F4340  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800F4344  EC 00 10 28 */	fsubs f0, f0, f2
/* 800F4348  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F434C  EF 84 00 32 */	fmuls f28, f4, f0
/* 800F4350  48 00 00 A8 */	b lbl_800F43F8
lbl_800F4354:
/* 800F4354  A8 1F 1F F0 */	lha r0, 0x1ff0(r31)
/* 800F4358  FC C0 E2 10 */	fabs f6, f28
/* 800F435C  C8 A2 92 B0 */	lfd f5, lit_6025(r2)
/* 800F4360  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800F4364  90 61 00 2C */	stw r3, 0x2c(r1)
/* 800F4368  3C 00 43 30 */	lis r0, 0x4330
/* 800F436C  90 01 00 28 */	stw r0, 0x28(r1)
/* 800F4370  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800F4374  EC 80 28 28 */	fsubs f4, f0, f5
/* 800F4378  C0 62 92 98 */	lfs f3, lit_5943(r2)
/* 800F437C  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800F4380  FC 00 30 18 */	frsp f0, f6
/* 800F4384  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800F4388  EC 42 00 28 */	fsubs f2, f2, f0
/* 800F438C  90 61 00 24 */	stw r3, 0x24(r1)
/* 800F4390  90 01 00 20 */	stw r0, 0x20(r1)
/* 800F4394  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800F4398  EC 00 28 28 */	fsubs f0, f0, f5
/* 800F439C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F43A0  EC 03 00 32 */	fmuls f0, f3, f0
/* 800F43A4  EF 84 00 28 */	fsubs f28, f4, f0
/* 800F43A8  48 00 00 50 */	b lbl_800F43F8
lbl_800F43AC:
/* 800F43AC  C0 22 93 F8 */	lfs f1, lit_13700(r2)
/* 800F43B0  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 800F43B4  C8 62 92 B0 */	lfd f3, lit_6025(r2)
/* 800F43B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F43BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800F43C0  3C 60 43 30 */	lis r3, 0x4330
/* 800F43C4  90 61 00 28 */	stw r3, 0x28(r1)
/* 800F43C8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800F43CC  EC 00 18 28 */	fsubs f0, f0, f3
/* 800F43D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 800F43D4  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F43D8  A8 1F 1F F0 */	lha r0, 0x1ff0(r31)
/* 800F43DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F43E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F43E4  90 61 00 20 */	stw r3, 0x20(r1)
/* 800F43E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800F43EC  EC 00 18 28 */	fsubs f0, f0, f3
/* 800F43F0  EF 82 00 32 */	fmuls f28, f2, f0
/* 800F43F4  FF C0 10 90 */	fmr f30, f2
lbl_800F43F8:
/* 800F43F8  38 61 00 10 */	addi r3, r1, 0x10
/* 800F43FC  C0 42 94 A8 */	lfs f2, lit_16570(r2)
/* 800F4400  C0 62 94 08 */	lfs f3, lit_14064(r2)
/* 800F4404  C0 82 93 88 */	lfs f4, lit_8782(r2)
/* 800F4408  48 17 B5 75 */	bl cLib_addCalc__FPfffff
/* 800F440C  38 61 00 0C */	addi r3, r1, 0xc
/* 800F4410  FC 20 E0 90 */	fmr f1, f28
/* 800F4414  C0 42 94 A8 */	lfs f2, lit_16570(r2)
/* 800F4418  C0 62 94 08 */	lfs f3, lit_14064(r2)
/* 800F441C  C0 82 93 88 */	lfs f4, lit_8782(r2)
/* 800F4420  48 17 B5 5D */	bl cLib_addCalc__FPfffff
/* 800F4424  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F4428  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 800F442C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800F4430  D0 1F 1F F8 */	stfs f0, 0x1ff8(r31)
/* 800F4434  38 61 00 08 */	addi r3, r1, 8
/* 800F4438  FC 20 F0 90 */	fmr f1, f30
/* 800F443C  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 800F4440  48 17 C3 01 */	bl cLib_chaseF__FPfff
/* 800F4444  7F E3 FB 78 */	mr r3, r31
/* 800F4448  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800F444C  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F4450  EC 21 00 28 */	fsubs f1, f1, f0
/* 800F4454  4B FB 82 E5 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 800F4458  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800F445C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800F4460  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 800F4464  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 800F4468  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 800F446C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 800F4470  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 800F4474  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 800F4478  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800F447C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800F4480  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800F4484  7C 08 03 A6 */	mtlr r0
/* 800F4488  38 21 00 80 */	addi r1, r1, 0x80
/* 800F448C  4E 80 00 20 */	blr 
