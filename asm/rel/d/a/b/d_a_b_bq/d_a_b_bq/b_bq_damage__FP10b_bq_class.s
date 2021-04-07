lbl_805B4614:
/* 805B4614  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805B4618  7C 08 02 A6 */	mflr r0
/* 805B461C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805B4620  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805B4624  4B DA DB B5 */	bl _savegpr_28
/* 805B4628  7C 7D 1B 78 */	mr r29, r3
/* 805B462C  3C 80 80 5C */	lis r4, lit_3816@ha /* 0x805BA588@ha */
/* 805B4630  3B E4 A5 88 */	addi r31, r4, lit_3816@l /* 0x805BA588@l */
/* 805B4634  3B C0 00 00 */	li r30, 0
/* 805B4638  A8 03 06 CC */	lha r0, 0x6cc(r3)
/* 805B463C  28 00 00 29 */	cmplwi r0, 0x29
/* 805B4640  41 81 04 58 */	bgt lbl_805B4A98
/* 805B4644  3C 80 80 5C */	lis r4, lit_4431@ha /* 0x805BA894@ha */
/* 805B4648  38 84 A8 94 */	addi r4, r4, lit_4431@l /* 0x805BA894@l */
/* 805B464C  54 00 10 3A */	slwi r0, r0, 2
/* 805B4650  7C 04 00 2E */	lwzx r0, r4, r0
/* 805B4654  7C 09 03 A6 */	mtctr r0
/* 805B4658  4E 80 04 20 */	bctr 
lbl_805B465C:
/* 805B465C  38 80 00 0C */	li r4, 0xc
/* 805B4660  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805B4664  38 A0 00 00 */	li r5, 0
/* 805B4668  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805B466C  4B FF EF 35 */	bl anm_init__FP10b_bq_classifUcf
/* 805B4670  38 00 00 01 */	li r0, 1
/* 805B4674  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B4678  38 00 03 E8 */	li r0, 0x3e8
/* 805B467C  B0 1D 06 D4 */	sth r0, 0x6d4(r29)
/* 805B4680  38 00 00 32 */	li r0, 0x32
/* 805B4684  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 805B4688  38 00 00 04 */	li r0, 4
/* 805B468C  98 1D 13 92 */	stb r0, 0x1392(r29)
lbl_805B4690:
/* 805B4690  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B4694  38 63 00 0C */	addi r3, r3, 0xc
/* 805B4698  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805B469C  4B D7 3D 91 */	bl checkPass__12J3DFrameCtrlFf
/* 805B46A0  2C 03 00 00 */	cmpwi r3, 0
/* 805B46A4  41 82 01 2C */	beq lbl_805B47D0
/* 805B46A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B46AC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805B46B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805B46B4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805B46B8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805B46BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B46C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B46C4  3B 83 5B D4 */	addi r28, r3, 0x5bd4
/* 805B46C8  7F 83 E3 78 */	mr r3, r28
/* 805B46CC  38 80 00 05 */	li r4, 5
/* 805B46D0  38 A0 00 0E */	li r5, 0xe
/* 805B46D4  38 C1 00 4C */	addi r6, r1, 0x4c
/* 805B46D8  4B AB B3 4D */	bl StartShock__12dVibration_cFii4cXyz
/* 805B46DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B46E0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805B46E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805B46E8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B46EC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805B46F0  7F 83 E3 78 */	mr r3, r28
/* 805B46F4  38 80 00 08 */	li r4, 8
/* 805B46F8  38 A0 00 1F */	li r5, 0x1f
/* 805B46FC  38 C1 00 40 */	addi r6, r1, 0x40
/* 805B4700  4B AB B3 25 */	bl StartShock__12dVibration_cFii4cXyz
/* 805B4704  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011A@ha */
/* 805B4708  38 03 01 1A */	addi r0, r3, 0x011A /* 0x0007011A@l */
/* 805B470C  90 01 00 30 */	stw r0, 0x30(r1)
/* 805B4710  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805B4714  38 81 00 30 */	addi r4, r1, 0x30
/* 805B4718  38 A0 00 00 */	li r5, 0
/* 805B471C  38 C0 FF FF */	li r6, -1
/* 805B4720  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805B4724  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B4728  7D 89 03 A6 */	mtctr r12
/* 805B472C  4E 80 04 21 */	bctrl 
/* 805B4730  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B4734  80 63 00 04 */	lwz r3, 4(r3)
/* 805B4738  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B473C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B4740  38 63 09 60 */	addi r3, r3, 0x960
/* 805B4744  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B4748  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B474C  80 84 00 00 */	lwz r4, 0(r4)
/* 805B4750  4B D9 1D 61 */	bl PSMTXCopy
/* 805B4754  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 805B4758  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805B475C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B4760  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805B4764  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805B4768  38 61 00 88 */	addi r3, r1, 0x88
/* 805B476C  38 81 00 7C */	addi r4, r1, 0x7c
/* 805B4770  4B CB C7 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B4774  38 7D 12 20 */	addi r3, r29, 0x1220
/* 805B4778  38 9D 12 24 */	addi r4, r29, 0x1224
/* 805B477C  38 BD 05 38 */	addi r5, r29, 0x538
/* 805B4780  38 C0 00 00 */	li r6, 0
/* 805B4784  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 805B4788  38 FD 01 0C */	addi r7, r29, 0x10c
/* 805B478C  39 00 00 01 */	li r8, 1
/* 805B4790  4B A6 88 91 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805B4794  88 1D 11 50 */	lbz r0, 0x1150(r29)
/* 805B4798  7C 00 07 74 */	extsb r0, r0
/* 805B479C  2C 00 00 02 */	cmpwi r0, 2
/* 805B47A0  41 80 00 18 */	blt lbl_805B47B8
/* 805B47A4  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 805B47A8  60 00 00 01 */	ori r0, r0, 1
/* 805B47AC  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 805B47B0  38 00 00 32 */	li r0, 0x32
/* 805B47B4  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_805B47B8:
/* 805B47B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B47BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B47C0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B47C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B47C8  38 80 00 02 */	li r4, 2
/* 805B47CC  4B CF B7 C1 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_805B47D0:
/* 805B47D0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B47D4  38 80 00 01 */	li r4, 1
/* 805B47D8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B47DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B47E0  40 82 00 18 */	bne lbl_805B47F8
/* 805B47E4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B47E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B47EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B47F0  41 82 00 08 */	beq lbl_805B47F8
/* 805B47F4  38 80 00 00 */	li r4, 0
lbl_805B47F8:
/* 805B47F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B47FC  41 82 02 9C */	beq lbl_805B4A98
/* 805B4800  7F A3 EB 78 */	mr r3, r29
/* 805B4804  38 80 00 0E */	li r4, 0xe
/* 805B4808  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805B480C  38 A0 00 02 */	li r5, 2
/* 805B4810  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805B4814  4B FF ED 8D */	bl anm_init__FP10b_bq_classifUcf
/* 805B4818  38 00 00 02 */	li r0, 2
/* 805B481C  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B4820  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805BAD60@ha */
/* 805B4824  38 63 AD 60 */	addi r3, r3, l_HIO@l /* 0x805BAD60@l */
/* 805B4828  A8 03 00 0C */	lha r0, 0xc(r3)
/* 805B482C  B0 1D 06 D4 */	sth r0, 0x6d4(r29)
/* 805B4830  48 00 02 68 */	b lbl_805B4A98
lbl_805B4834:
/* 805B4834  A8 1D 06 D8 */	lha r0, 0x6d8(r29)
/* 805B4838  2C 00 00 00 */	cmpwi r0, 0
/* 805B483C  40 82 02 5C */	bne lbl_805B4A98
/* 805B4840  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805B4844  4B CB 31 11 */	bl cM_rndF__Ff
/* 805B4848  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805B484C  EC 00 08 2A */	fadds f0, f0, f1
/* 805B4850  FC 00 00 1E */	fctiwz f0, f0
/* 805B4854  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 805B4858  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 805B485C  B0 1D 06 D8 */	sth r0, 0x6d8(r29)
/* 805B4860  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070110@ha */
/* 805B4864  38 03 01 10 */	addi r0, r3, 0x0110 /* 0x00070110@l */
/* 805B4868  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B486C  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805B4870  38 81 00 2C */	addi r4, r1, 0x2c
/* 805B4874  38 A0 FF FF */	li r5, -1
/* 805B4878  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805B487C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B4880  7D 89 03 A6 */	mtctr r12
/* 805B4884  4E 80 04 21 */	bctrl 
/* 805B4888  48 00 02 10 */	b lbl_805B4A98
lbl_805B488C:
/* 805B488C  38 80 00 0D */	li r4, 0xd
/* 805B4890  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 805B4894  38 A0 00 00 */	li r5, 0
/* 805B4898  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805B489C  4B FF ED 05 */	bl anm_init__FP10b_bq_classifUcf
/* 805B48A0  38 00 00 0B */	li r0, 0xb
/* 805B48A4  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B48A8  48 00 01 F0 */	b lbl_805B4A98
lbl_805B48AC:
/* 805B48AC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B48B0  38 80 00 01 */	li r4, 1
/* 805B48B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B48B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B48BC  40 82 00 18 */	bne lbl_805B48D4
/* 805B48C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B48C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B48C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B48CC  41 82 00 08 */	beq lbl_805B48D4
/* 805B48D0  38 80 00 00 */	li r4, 0
lbl_805B48D4:
/* 805B48D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B48D8  41 82 01 C0 */	beq lbl_805B4A98
/* 805B48DC  7F A3 EB 78 */	mr r3, r29
/* 805B48E0  38 80 00 0E */	li r4, 0xe
/* 805B48E4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B48E8  38 A0 00 02 */	li r5, 2
/* 805B48EC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805B48F0  4B FF EC B1 */	bl anm_init__FP10b_bq_classifUcf
/* 805B48F4  38 00 00 02 */	li r0, 2
/* 805B48F8  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B48FC  48 00 01 9C */	b lbl_805B4A98
lbl_805B4900:
/* 805B4900  88 7D 11 50 */	lbz r3, 0x1150(r29)
/* 805B4904  38 03 00 01 */	addi r0, r3, 1
/* 805B4908  98 1D 11 50 */	stb r0, 0x1150(r29)
/* 805B490C  88 1D 11 50 */	lbz r0, 0x1150(r29)
/* 805B4910  7C 00 07 74 */	extsb r0, r0
/* 805B4914  2C 00 00 03 */	cmpwi r0, 3
/* 805B4918  41 80 00 44 */	blt lbl_805B495C
/* 805B491C  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 805B4920  2C 00 00 00 */	cmpwi r0, 0
/* 805B4924  40 81 00 1C */	ble lbl_805B4940
/* 805B4928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B492C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B4930  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805B4934  80 03 05 70 */	lwz r0, 0x570(r3)
/* 805B4938  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805B493C  41 82 00 20 */	beq lbl_805B495C
lbl_805B4940:
/* 805B4940  38 00 00 04 */	li r0, 4
/* 805B4944  B0 1D 06 CA */	sth r0, 0x6ca(r29)
/* 805B4948  38 00 00 00 */	li r0, 0
/* 805B494C  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B4950  38 00 00 32 */	li r0, 0x32
/* 805B4954  B0 1D 12 38 */	sth r0, 0x1238(r29)
/* 805B4958  48 00 03 DC */	b lbl_805B4D34
lbl_805B495C:
/* 805B495C  7F A3 EB 78 */	mr r3, r29
/* 805B4960  38 80 00 12 */	li r4, 0x12
/* 805B4964  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805B4968  38 A0 00 00 */	li r5, 0
/* 805B496C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805B4970  4B FF EC 31 */	bl anm_init__FP10b_bq_classifUcf
/* 805B4974  38 00 00 15 */	li r0, 0x15
/* 805B4978  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B497C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070114@ha */
/* 805B4980  38 03 01 14 */	addi r0, r3, 0x0114 /* 0x00070114@l */
/* 805B4984  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B4988  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805B498C  38 81 00 28 */	addi r4, r1, 0x28
/* 805B4990  38 A0 FF FF */	li r5, -1
/* 805B4994  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805B4998  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B499C  7D 89 03 A6 */	mtctr r12
/* 805B49A0  4E 80 04 21 */	bctrl 
/* 805B49A4  48 00 00 F4 */	b lbl_805B4A98
lbl_805B49A8:
/* 805B49A8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B49AC  38 80 00 01 */	li r4, 1
/* 805B49B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B49B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B49B8  40 82 00 18 */	bne lbl_805B49D0
/* 805B49BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B49C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B49C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B49C8  41 82 00 08 */	beq lbl_805B49D0
/* 805B49CC  38 80 00 00 */	li r4, 0
lbl_805B49D0:
/* 805B49D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B49D4  41 82 00 C4 */	beq lbl_805B4A98
/* 805B49D8  3B C0 00 01 */	li r30, 1
/* 805B49DC  48 00 00 BC */	b lbl_805B4A98
lbl_805B49E0:
/* 805B49E0  38 80 00 13 */	li r4, 0x13
/* 805B49E4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 805B49E8  38 A0 00 00 */	li r5, 0
/* 805B49EC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805B49F0  4B FF EB B1 */	bl anm_init__FP10b_bq_classifUcf
/* 805B49F4  38 00 00 1F */	li r0, 0x1f
/* 805B49F8  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B49FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070113@ha */
/* 805B4A00  38 03 01 13 */	addi r0, r3, 0x0113 /* 0x00070113@l */
/* 805B4A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B4A08  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805B4A0C  38 81 00 24 */	addi r4, r1, 0x24
/* 805B4A10  38 A0 FF FF */	li r5, -1
/* 805B4A14  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805B4A18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B4A1C  7D 89 03 A6 */	mtctr r12
/* 805B4A20  4E 80 04 21 */	bctrl 
/* 805B4A24  48 00 00 74 */	b lbl_805B4A98
lbl_805B4A28:
/* 805B4A28  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B4A2C  38 80 00 01 */	li r4, 1
/* 805B4A30  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B4A34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B4A38  40 82 00 18 */	bne lbl_805B4A50
/* 805B4A3C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B4A40  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B4A44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B4A48  41 82 00 08 */	beq lbl_805B4A50
/* 805B4A4C  38 80 00 00 */	li r4, 0
lbl_805B4A50:
/* 805B4A50  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B4A54  41 82 00 44 */	beq lbl_805B4A98
/* 805B4A58  3B C0 00 01 */	li r30, 1
/* 805B4A5C  48 00 00 3C */	b lbl_805B4A98
lbl_805B4A60:
/* 805B4A60  38 00 00 29 */	li r0, 0x29
/* 805B4A64  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B4A68  38 00 00 2D */	li r0, 0x2d
/* 805B4A6C  B0 1D 06 D4 */	sth r0, 0x6d4(r29)
lbl_805B4A70:
/* 805B4A70  A8 1D 06 D4 */	lha r0, 0x6d4(r29)
/* 805B4A74  2C 00 00 00 */	cmpwi r0, 0
/* 805B4A78  40 82 00 20 */	bne lbl_805B4A98
/* 805B4A7C  38 00 00 04 */	li r0, 4
/* 805B4A80  B0 1D 06 CA */	sth r0, 0x6ca(r29)
/* 805B4A84  38 00 00 00 */	li r0, 0
/* 805B4A88  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B4A8C  38 00 00 32 */	li r0, 0x32
/* 805B4A90  B0 1D 12 38 */	sth r0, 0x1238(r29)
/* 805B4A94  48 00 02 A0 */	b lbl_805B4D34
lbl_805B4A98:
/* 805B4A98  A8 1D 06 CC */	lha r0, 0x6cc(r29)
/* 805B4A9C  2C 00 00 14 */	cmpwi r0, 0x14
/* 805B4AA0  40 80 00 18 */	bge lbl_805B4AB8
/* 805B4AA4  A8 1D 06 D4 */	lha r0, 0x6d4(r29)
/* 805B4AA8  2C 00 00 00 */	cmpwi r0, 0
/* 805B4AAC  40 82 00 0C */	bne lbl_805B4AB8
/* 805B4AB0  38 00 00 1E */	li r0, 0x1e
/* 805B4AB4  B0 1D 06 CC */	sth r0, 0x6cc(r29)
lbl_805B4AB8:
/* 805B4AB8  7F C0 07 75 */	extsb. r0, r30
/* 805B4ABC  41 82 00 44 */	beq lbl_805B4B00
/* 805B4AC0  38 00 00 01 */	li r0, 1
/* 805B4AC4  B0 1D 06 CA */	sth r0, 0x6ca(r29)
/* 805B4AC8  38 60 00 00 */	li r3, 0
/* 805B4ACC  B0 7D 06 CC */	sth r3, 0x6cc(r29)
/* 805B4AD0  38 00 00 0A */	li r0, 0xa
/* 805B4AD4  98 1D 06 FC */	stb r0, 0x6fc(r29)
/* 805B4AD8  B0 7D 06 F6 */	sth r3, 0x6f6(r29)
/* 805B4ADC  B0 7D 06 D4 */	sth r3, 0x6d4(r29)
/* 805B4AE0  38 00 00 50 */	li r0, 0x50
/* 805B4AE4  B0 1D 06 D8 */	sth r0, 0x6d8(r29)
/* 805B4AE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B4AEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B4AF0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B4AF4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B4AF8  38 80 00 01 */	li r4, 1
/* 805B4AFC  4B CF B4 91 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_805B4B00:
/* 805B4B00  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B4B04  80 63 00 04 */	lwz r3, 4(r3)
/* 805B4B08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B4B0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B4B10  38 63 09 F0 */	addi r3, r3, 0x9f0
/* 805B4B14  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805B4B18  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805B4B1C  4B D9 19 95 */	bl PSMTXCopy
/* 805B4B20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805B4B24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805B4B28  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805B4B2C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805B4B30  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805B4B34  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805B4B38  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805B4B3C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805B4B40  38 61 00 34 */	addi r3, r1, 0x34
/* 805B4B44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B4B48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B4B4C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805B4B50  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805B4B54  38 A1 00 70 */	addi r5, r1, 0x70
/* 805B4B58  4B CB 1F DD */	bl __mi__4cXyzCFRC3Vec
/* 805B4B5C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 805B4B60  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 805B4B64  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805B4B68  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805B4B6C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 805B4B70  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 805B4B74  4B CB 2B 01 */	bl cM_atan2s__Fff
/* 805B4B78  7C 64 1B 78 */	mr r4, r3
/* 805B4B7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B4B80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B4B84  80 63 00 00 */	lwz r3, 0(r3)
/* 805B4B88  4B A5 78 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 805B4B8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B4B90  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805B4B94  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805B4B98  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805B4B9C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805B4BA0  38 61 00 64 */	addi r3, r1, 0x64
/* 805B4BA4  38 81 00 58 */	addi r4, r1, 0x58
/* 805B4BA8  4B CB C3 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B4BAC  38 61 00 58 */	addi r3, r1, 0x58
/* 805B4BB0  38 81 00 70 */	addi r4, r1, 0x70
/* 805B4BB4  7C 65 1B 78 */	mr r5, r3
/* 805B4BB8  4B D9 24 D9 */	bl PSVECAdd
/* 805B4BBC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805B4BC0  D0 1D 05 68 */	stfs f0, 0x568(r29)
/* 805B4BC4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805B4BC8  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 805B4BCC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805B4BD0  D0 1D 05 70 */	stfs f0, 0x570(r29)
/* 805B4BD4  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 805B4BD8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805B4BDC  41 82 01 58 */	beq lbl_805B4D34
/* 805B4BE0  7F A3 EB 78 */	mr r3, r29
/* 805B4BE4  38 80 00 16 */	li r4, 0x16
/* 805B4BE8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 805B4BEC  38 A0 00 00 */	li r5, 0
/* 805B4BF0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805B4BF4  4B FF E9 AD */	bl anm_init__FP10b_bq_classifUcf
/* 805B4BF8  38 00 00 01 */	li r0, 1
/* 805B4BFC  98 1D 05 C0 */	stb r0, 0x5c0(r29)
/* 805B4C00  38 00 00 28 */	li r0, 0x28
/* 805B4C04  B0 1D 06 CC */	sth r0, 0x6cc(r29)
/* 805B4C08  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 805B4C0C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805B4C10  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 805B4C14  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 805B4C18  38 00 FF E8 */	li r0, -24
/* 805B4C1C  7C 60 00 38 */	and r0, r3, r0
/* 805B4C20  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 805B4C24  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070160@ha */
/* 805B4C28  38 03 01 60 */	addi r0, r3, 0x0160 /* 0x00070160@l */
/* 805B4C2C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B4C30  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805B4C34  38 81 00 20 */	addi r4, r1, 0x20
/* 805B4C38  38 A0 FF FF */	li r5, -1
/* 805B4C3C  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805B4C40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B4C44  7D 89 03 A6 */	mtctr r12
/* 805B4C48  4E 80 04 21 */	bctrl 
/* 805B4C4C  38 00 01 2C */	li r0, 0x12c
/* 805B4C50  B0 1D 06 DE */	sth r0, 0x6de(r29)
/* 805B4C54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B4C58  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B4C5C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B4C60  38 80 00 00 */	li r4, 0
/* 805B4C64  90 81 00 08 */	stw r4, 8(r1)
/* 805B4C68  38 00 FF FF */	li r0, -1
/* 805B4C6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B4C70  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4C74  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B4C78  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4C7C  38 80 00 00 */	li r4, 0
/* 805B4C80  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000836C@ha */
/* 805B4C84  38 A5 83 6C */	addi r5, r5, 0x836C /* 0x0000836C@l */
/* 805B4C88  38 C1 00 70 */	addi r6, r1, 0x70
/* 805B4C8C  38 E0 00 00 */	li r7, 0
/* 805B4C90  39 00 00 00 */	li r8, 0
/* 805B4C94  39 20 00 00 */	li r9, 0
/* 805B4C98  39 40 00 FF */	li r10, 0xff
/* 805B4C9C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805B4CA0  4B A9 7D F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B4CA4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B4CA8  38 80 00 00 */	li r4, 0
/* 805B4CAC  90 81 00 08 */	stw r4, 8(r1)
/* 805B4CB0  38 00 FF FF */	li r0, -1
/* 805B4CB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B4CB8  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4CBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B4CC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4CC4  38 80 00 00 */	li r4, 0
/* 805B4CC8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000836D@ha */
/* 805B4CCC  38 A5 83 6D */	addi r5, r5, 0x836D /* 0x0000836D@l */
/* 805B4CD0  38 C1 00 70 */	addi r6, r1, 0x70
/* 805B4CD4  38 E0 00 00 */	li r7, 0
/* 805B4CD8  39 00 00 00 */	li r8, 0
/* 805B4CDC  39 20 00 00 */	li r9, 0
/* 805B4CE0  39 40 00 FF */	li r10, 0xff
/* 805B4CE4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805B4CE8  4B A9 7D A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B4CEC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B4CF0  38 80 00 00 */	li r4, 0
/* 805B4CF4  90 81 00 08 */	stw r4, 8(r1)
/* 805B4CF8  38 00 FF FF */	li r0, -1
/* 805B4CFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B4D00  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4D04  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B4D08  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4D0C  38 80 00 00 */	li r4, 0
/* 805B4D10  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000836E@ha */
/* 805B4D14  38 A5 83 6E */	addi r5, r5, 0x836E /* 0x0000836E@l */
/* 805B4D18  38 C1 00 70 */	addi r6, r1, 0x70
/* 805B4D1C  38 E0 00 00 */	li r7, 0
/* 805B4D20  39 00 00 00 */	li r8, 0
/* 805B4D24  39 20 00 00 */	li r9, 0
/* 805B4D28  39 40 00 FF */	li r10, 0xff
/* 805B4D2C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805B4D30  4B A9 7D 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_805B4D34:
/* 805B4D34  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805B4D38  4B DA D4 ED */	bl _restgpr_28
/* 805B4D3C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805B4D40  7C 08 03 A6 */	mtlr r0
/* 805B4D44  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805B4D48  4E 80 00 20 */	blr 
