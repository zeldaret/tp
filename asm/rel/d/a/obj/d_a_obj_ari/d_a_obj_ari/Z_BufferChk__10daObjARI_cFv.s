lbl_80BA44F0:
/* 80BA44F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BA44F4  7C 08 02 A6 */	mflr r0
/* 80BA44F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BA44FC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BA4500  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BA4504  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80BA4508  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80BA450C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BA4510  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BA4514  7C 7E 1B 78 */	mr r30, r3
/* 80BA4518  3C 60 80 BA */	lis r3, lit_3776@ha /* 0x80BA5408@ha */
/* 80BA451C  3B E3 54 08 */	addi r31, r3, lit_3776@l /* 0x80BA5408@l */
/* 80BA4520  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BA4524  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BA4528  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BA452C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BA4530  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BA4534  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BA4538  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80BA453C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA4540  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BA4544  38 61 00 08 */	addi r3, r1, 8
/* 80BA4548  38 81 00 14 */	addi r4, r1, 0x14
/* 80BA454C  4B 47 0D C5 */	bl mDoLib_project__FP3VecP3Vec
/* 80BA4550  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA4554  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA4558  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80BA455C  28 03 00 00 */	cmplwi r3, 0
/* 80BA4560  41 82 00 0C */	beq lbl_80BA456C
/* 80BA4564  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80BA4568  48 00 00 08 */	b lbl_80BA4570
lbl_80BA456C:
/* 80BA456C  C0 7F 00 6C */	lfs f3, 0x6c(r31)
lbl_80BA4570:
/* 80BA4570  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BA4574  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA4578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA457C  40 81 00 5C */	ble lbl_80BA45D8
/* 80BA4580  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80BA4584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA4588  40 80 00 50 */	bge lbl_80BA45D8
/* 80BA458C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80BA4590  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80BA4594  40 81 00 44 */	ble lbl_80BA45D8
/* 80BA4598  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80BA459C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BA45A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BA45A4  40 80 00 34 */	bge lbl_80BA45D8
/* 80BA45A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA45AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA45B0  3C 63 00 02 */	addis r3, r3, 2
/* 80BA45B4  FC 00 08 1E */	fctiwz f0, f1
/* 80BA45B8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BA45BC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80BA45C0  FC 00 10 1E */	fctiwz f0, f2
/* 80BA45C4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BA45C8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80BA45CC  38 DE 06 2C */	addi r6, r30, 0x62c
/* 80BA45D0  38 63 C0 F4 */	addi r3, r3, -16140
/* 80BA45D4  4B 4B 1A 45 */	bl newData__13dDlst_peekZ_cFssPUl
lbl_80BA45D8:
/* 80BA45D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA45DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA45E0  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80BA45E4  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80BA45E8  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80BA45EC  38 61 00 08 */	addi r3, r1, 8
/* 80BA45F0  38 81 00 14 */	addi r4, r1, 0x14
/* 80BA45F4  4B 47 0E F9 */	bl mDoLib_pos2camera__FP3VecP3Vec
/* 80BA45F8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80BA45FC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80BA4600  EC 21 00 2A */	fadds f1, f1, f0
/* 80BA4604  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BA4608  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA460C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA4610  40 81 00 08 */	ble lbl_80BA4618
/* 80BA4614  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80BA4618:
/* 80BA4618  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
/* 80BA461C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80BA4620  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80BA4624  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BA4628  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BA462C  EC 3F 00 2A */	fadds f1, f31, f0
/* 80BA4630  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80BA4634  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BA4638  EC 02 00 2A */	fadds f0, f2, f0
/* 80BA463C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BA4640  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80BA4644  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BA4648  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BA464C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80BA4650  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80BA4654  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BA4658  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BA465C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BA4660  7C 08 03 A6 */	mtlr r0
/* 80BA4664  38 21 00 60 */	addi r1, r1, 0x60
/* 80BA4668  4E 80 00 20 */	blr 
