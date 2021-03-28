lbl_8086D55C:
/* 8086D55C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8086D560  7C 08 02 A6 */	mflr r0
/* 8086D564  90 01 00 54 */	stw r0, 0x54(r1)
/* 8086D568  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8086D56C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8086D570  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8086D574  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8086D578  7C 7E 1B 78 */	mr r30, r3
/* 8086D57C  3C 60 80 87 */	lis r3, lit_3829@ha
/* 8086D580  3B E3 00 94 */	addi r31, r3, lit_3829@l
/* 8086D584  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8086D588  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8086D58C  A8 1E 40 10 */	lha r0, 0x4010(r30)
/* 8086D590  2C 00 00 01 */	cmpwi r0, 1
/* 8086D594  41 82 00 48 */	beq lbl_8086D5DC
/* 8086D598  40 80 00 10 */	bge lbl_8086D5A8
/* 8086D59C  2C 00 00 00 */	cmpwi r0, 0
/* 8086D5A0  40 80 00 14 */	bge lbl_8086D5B4
/* 8086D5A4  48 00 02 3C */	b lbl_8086D7E0
lbl_8086D5A8:
/* 8086D5A8  2C 00 00 03 */	cmpwi r0, 3
/* 8086D5AC  40 80 02 34 */	bge lbl_8086D7E0
/* 8086D5B0  48 00 00 74 */	b lbl_8086D624
lbl_8086D5B4:
/* 8086D5B4  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8086D5B8  D0 1E 40 14 */	stfs f0, 0x4014(r30)
/* 8086D5BC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8086D5C0  D0 1E 40 18 */	stfs f0, 0x4018(r30)
/* 8086D5C4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8086D5C8  D0 1E 40 1C */	stfs f0, 0x401c(r30)
/* 8086D5CC  38 00 00 00 */	li r0, 0
/* 8086D5D0  B0 1E 40 24 */	sth r0, 0x4024(r30)
/* 8086D5D4  B0 1E 40 20 */	sth r0, 0x4020(r30)
/* 8086D5D8  48 00 02 08 */	b lbl_8086D7E0
lbl_8086D5DC:
/* 8086D5DC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8086D5E0  D0 1E 40 14 */	stfs f0, 0x4014(r30)
/* 8086D5E4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8086D5E8  D0 1E 40 18 */	stfs f0, 0x4018(r30)
/* 8086D5EC  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8086D5F0  D0 1E 40 1C */	stfs f0, 0x401c(r30)
/* 8086D5F4  38 00 C0 00 */	li r0, -16384
/* 8086D5F8  B0 1E 40 22 */	sth r0, 0x4022(r30)
/* 8086D5FC  38 7E 40 20 */	addi r3, r30, 0x4020
/* 8086D600  38 80 00 00 */	li r4, 0
/* 8086D604  38 A0 00 02 */	li r5, 2
/* 8086D608  38 C0 02 00 */	li r6, 0x200
/* 8086D60C  4B A0 2F FC */	b cLib_addCalcAngleS2__FPssss
/* 8086D610  38 7E 40 24 */	addi r3, r30, 0x4024
/* 8086D614  38 80 00 00 */	li r4, 0
/* 8086D618  38 A0 00 02 */	li r5, 2
/* 8086D61C  38 C0 02 00 */	li r6, 0x200
/* 8086D620  4B A0 2F E8 */	b cLib_addCalcAngleS2__FPssss
lbl_8086D624:
/* 8086D624  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8086D628  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8086D62C  A8 1E 40 10 */	lha r0, 0x4010(r30)
/* 8086D630  2C 00 00 02 */	cmpwi r0, 2
/* 8086D634  40 82 01 AC */	bne lbl_8086D7E0
/* 8086D638  3C 60 80 87 */	lis r3, data_80870AC4@ha
/* 8086D63C  38 83 0A C4 */	addi r4, r3, data_80870AC4@l
/* 8086D640  88 04 00 00 */	lbz r0, 0(r4)
/* 8086D644  7C 00 07 75 */	extsb. r0, r0
/* 8086D648  40 82 00 18 */	bne lbl_8086D660
/* 8086D64C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8086D650  3C 60 80 87 */	lis r3, old_stick_x@ha
/* 8086D654  D0 03 0A C0 */	stfs f0, old_stick_x@l(r3)
/* 8086D658  38 00 00 01 */	li r0, 1
/* 8086D65C  98 04 00 00 */	stb r0, 0(r4)
lbl_8086D660:
/* 8086D660  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 8086D664  38 83 D2 E8 */	addi r4, r3, m_cpadInfo__8mDoCPd_c@l
/* 8086D668  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8086D66C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8086D670  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8086D674  4C 41 13 82 */	cror 2, 1, 2
/* 8086D678  40 82 00 14 */	bne lbl_8086D68C
/* 8086D67C  3C 60 80 87 */	lis r3, old_stick_x@ha
/* 8086D680  C0 03 0A C0 */	lfs f0, old_stick_x@l(r3)
/* 8086D684  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8086D688  41 80 00 24 */	blt lbl_8086D6AC
lbl_8086D68C:
/* 8086D68C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8086D690  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8086D694  4C 40 13 82 */	cror 2, 0, 2
/* 8086D698  40 82 00 3C */	bne lbl_8086D6D4
/* 8086D69C  3C 60 80 87 */	lis r3, old_stick_x@ha
/* 8086D6A0  C0 03 0A C0 */	lfs f0, old_stick_x@l(r3)
/* 8086D6A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8086D6A8  40 81 00 2C */	ble lbl_8086D6D4
lbl_8086D6AC:
/* 8086D6AC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8086D6B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8086D6B4  40 81 00 14 */	ble lbl_8086D6C8
/* 8086D6B8  A8 7E 40 62 */	lha r3, 0x4062(r30)
/* 8086D6BC  38 03 40 00 */	addi r0, r3, 0x4000
/* 8086D6C0  B0 1E 40 62 */	sth r0, 0x4062(r30)
/* 8086D6C4  48 00 00 10 */	b lbl_8086D6D4
lbl_8086D6C8:
/* 8086D6C8  A8 7E 40 62 */	lha r3, 0x4062(r30)
/* 8086D6CC  38 03 C0 00 */	addi r0, r3, -16384
/* 8086D6D0  B0 1E 40 62 */	sth r0, 0x4062(r30)
lbl_8086D6D4:
/* 8086D6D4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8086D6D8  3C 60 80 87 */	lis r3, old_stick_x@ha
/* 8086D6DC  D0 03 0A C0 */	stfs f0, old_stick_x@l(r3)
/* 8086D6E0  38 7E 40 60 */	addi r3, r30, 0x4060
/* 8086D6E4  A8 9E 40 62 */	lha r4, 0x4062(r30)
/* 8086D6E8  38 A0 00 04 */	li r5, 4
/* 8086D6EC  38 C0 10 00 */	li r6, 0x1000
/* 8086D6F0  4B A0 2F 18 */	b cLib_addCalcAngleS2__FPssss
/* 8086D6F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8086D6F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8086D6FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8086D700  A8 1E 40 60 */	lha r0, 0x4060(r30)
/* 8086D704  7C 00 00 D0 */	neg r0, r0
/* 8086D708  7C 04 07 34 */	extsh r4, r0
/* 8086D70C  4B 79 EC D0 */	b mDoMtx_YrotS__FPA4_fs
/* 8086D710  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 8086D714  C4 03 D2 E8 */	lfsu f0, m_cpadInfo__8mDoCPd_c@l(r3)
/* 8086D718  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8086D71C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8086D720  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8086D724  C0 03 00 04 */	lfs f0, 4(r3)
/* 8086D728  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8086D72C  38 61 00 14 */	addi r3, r1, 0x14
/* 8086D730  38 81 00 08 */	addi r4, r1, 8
/* 8086D734  4B A0 37 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8086D738  C0 41 00 08 */	lfs f2, 8(r1)
/* 8086D73C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8086D740  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8086D744  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8086D748  40 81 00 0C */	ble lbl_8086D754
/* 8086D74C  EF E2 08 28 */	fsubs f31, f2, f1
/* 8086D750  48 00 00 1C */	b lbl_8086D76C
lbl_8086D754:
/* 8086D754  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8086D758  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8086D75C  40 80 00 0C */	bge lbl_8086D768
/* 8086D760  EF E2 08 2A */	fadds f31, f2, f1
/* 8086D764  48 00 00 08 */	b lbl_8086D76C
lbl_8086D768:
/* 8086D768  C3 FF 00 1C */	lfs f31, 0x1c(r31)
lbl_8086D76C:
/* 8086D76C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8086D770  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8086D774  40 81 00 0C */	ble lbl_8086D780
/* 8086D778  EC 63 08 28 */	fsubs f3, f3, f1
/* 8086D77C  48 00 00 1C */	b lbl_8086D798
lbl_8086D780:
/* 8086D780  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8086D784  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8086D788  40 80 00 0C */	bge lbl_8086D794
/* 8086D78C  EC 63 08 2A */	fadds f3, f3, f1
/* 8086D790  48 00 00 08 */	b lbl_8086D798
lbl_8086D794:
/* 8086D794  C0 7F 00 1C */	lfs f3, 0x1c(r31)
lbl_8086D798:
/* 8086D798  38 7E 40 20 */	addi r3, r30, 0x4020
/* 8086D79C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8086D7A0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8086D7A4  FC 00 00 1E */	fctiwz f0, f0
/* 8086D7A8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8086D7AC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8086D7B0  38 A0 00 04 */	li r5, 4
/* 8086D7B4  38 C0 02 00 */	li r6, 0x200
/* 8086D7B8  4B A0 2E 50 */	b cLib_addCalcAngleS2__FPssss
/* 8086D7BC  38 7E 40 24 */	addi r3, r30, 0x4024
/* 8086D7C0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8086D7C4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8086D7C8  FC 00 00 1E */	fctiwz f0, f0
/* 8086D7CC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8086D7D0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8086D7D4  38 A0 00 04 */	li r5, 4
/* 8086D7D8  38 C0 02 00 */	li r6, 0x200
/* 8086D7DC  4B A0 2E 2C */	b cLib_addCalcAngleS2__FPssss
lbl_8086D7E0:
/* 8086D7E0  3C 60 80 87 */	lis r3, s_sel_sub__FPvPv@ha
/* 8086D7E4  38 63 D4 8C */	addi r3, r3, s_sel_sub__FPvPv@l
/* 8086D7E8  7F C4 F3 78 */	mr r4, r30
/* 8086D7EC  4B 7B 3B 4C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8086D7F0  90 7E 40 08 */	stw r3, 0x4008(r30)
/* 8086D7F4  80 7E 40 08 */	lwz r3, 0x4008(r30)
/* 8086D7F8  28 03 00 00 */	cmplwi r3, 0
/* 8086D7FC  41 82 00 38 */	beq lbl_8086D834
/* 8086D800  7F C4 F3 78 */	mr r4, r30
/* 8086D804  4B FF F9 9D */	bl stage_copy__FP11fshop_classP11fshop_class
/* 8086D808  38 00 00 00 */	li r0, 0
/* 8086D80C  80 7E 40 08 */	lwz r3, 0x4008(r30)
/* 8086D810  98 03 40 0D */	stb r0, 0x400d(r3)
/* 8086D814  3C 60 80 87 */	lis r3, s_ball_sub__FPvPv@ha
/* 8086D818  38 63 D5 00 */	addi r3, r3, s_ball_sub__FPvPv@l
/* 8086D81C  7F C4 F3 78 */	mr r4, r30
/* 8086D820  4B 7B 3B 18 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8086D824  28 03 00 00 */	cmplwi r3, 0
/* 8086D828  41 82 00 0C */	beq lbl_8086D834
/* 8086D82C  80 1E 40 08 */	lwz r0, 0x4008(r30)
/* 8086D830  90 03 40 08 */	stw r0, 0x4008(r3)
lbl_8086D834:
/* 8086D834  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8086D838  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8086D83C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8086D840  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8086D844  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8086D848  7C 08 03 A6 */	mtlr r0
/* 8086D84C  38 21 00 50 */	addi r1, r1, 0x50
/* 8086D850  4E 80 00 20 */	blr 
