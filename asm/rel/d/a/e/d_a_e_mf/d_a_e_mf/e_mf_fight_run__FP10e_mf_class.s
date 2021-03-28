lbl_8070D2C8:
/* 8070D2C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8070D2CC  7C 08 02 A6 */	mflr r0
/* 8070D2D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8070D2D4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8070D2D8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8070D2DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8070D2E0  4B C5 4E F8 */	b _savegpr_28
/* 8070D2E4  7C 7E 1B 78 */	mr r30, r3
/* 8070D2E8  3C 80 80 71 */	lis r4, lit_3828@ha
/* 8070D2EC  3B E4 39 74 */	addi r31, r4, lit_3828@l
/* 8070D2F0  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8070D2F4  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 8070D2F8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8070D2FC  FC 00 00 1E */	fctiwz f0, f0
/* 8070D300  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070D304  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8070D308  3B 80 00 01 */	li r28, 1
/* 8070D30C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8070D310  C0 03 06 B8 */	lfs f0, 0x6b8(r3)
/* 8070D314  EC 21 00 2A */	fadds f1, f1, f0
/* 8070D318  38 80 7F FF */	li r4, 0x7fff
/* 8070D31C  4B FF E4 51 */	bl pl_check__FP10e_mf_classfs
/* 8070D320  2C 03 00 00 */	cmpwi r3, 0
/* 8070D324  40 82 00 24 */	bne lbl_8070D348
/* 8070D328  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070D32C  2C 00 00 00 */	cmpwi r0, 0
/* 8070D330  40 82 00 18 */	bne lbl_8070D348
/* 8070D334  A8 1E 06 CA */	lha r0, 0x6ca(r30)
/* 8070D338  2C 00 00 00 */	cmpwi r0, 0
/* 8070D33C  40 82 00 14 */	bne lbl_8070D350
/* 8070D340  3B 80 00 00 */	li r28, 0
/* 8070D344  48 00 00 0C */	b lbl_8070D350
lbl_8070D348:
/* 8070D348  38 00 00 28 */	li r0, 0x28
/* 8070D34C  B0 1E 06 CA */	sth r0, 0x6ca(r30)
lbl_8070D350:
/* 8070D350  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8070D354  2C 00 00 00 */	cmpwi r0, 0
/* 8070D358  41 82 00 C4 */	beq lbl_8070D41C
/* 8070D35C  40 80 00 1C */	bge lbl_8070D378
/* 8070D360  2C 00 FF F7 */	cmpwi r0, -9
/* 8070D364  41 82 00 90 */	beq lbl_8070D3F4
/* 8070D368  40 80 03 70 */	bge lbl_8070D6D8
/* 8070D36C  2C 00 FF F6 */	cmpwi r0, -10
/* 8070D370  40 80 00 18 */	bge lbl_8070D388
/* 8070D374  48 00 03 64 */	b lbl_8070D6D8
lbl_8070D378:
/* 8070D378  2C 00 00 02 */	cmpwi r0, 2
/* 8070D37C  41 82 01 F0 */	beq lbl_8070D56C
/* 8070D380  40 80 03 58 */	bge lbl_8070D6D8
/* 8070D384  48 00 00 CC */	b lbl_8070D450
lbl_8070D388:
/* 8070D388  7F C3 F3 78 */	mr r3, r30
/* 8070D38C  38 80 00 1F */	li r4, 0x1f
/* 8070D390  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070D394  38 A0 00 02 */	li r5, 2
/* 8070D398  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070D39C  4B FF D4 91 */	bl anm_init__FP10e_mf_classifUcf
/* 8070D3A0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070D3A4  4B B5 A5 B0 */	b cM_rndF__Ff
/* 8070D3A8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8070D3AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8070D3B0  FC 00 00 1E */	fctiwz f0, f0
/* 8070D3B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070D3B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070D3BC  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
/* 8070D3C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D9@ha */
/* 8070D3C4  38 03 03 D9 */	addi r0, r3, 0x03D9 /* 0x000703D9@l */
/* 8070D3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070D3CC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070D3D0  38 81 00 14 */	addi r4, r1, 0x14
/* 8070D3D4  38 A0 FF FF */	li r5, -1
/* 8070D3D8  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070D3DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070D3E0  7D 89 03 A6 */	mtctr r12
/* 8070D3E4  4E 80 04 21 */	bctrl 
/* 8070D3E8  38 00 FF F7 */	li r0, -9
/* 8070D3EC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D3F0  48 00 02 E8 */	b lbl_8070D6D8
lbl_8070D3F4:
/* 8070D3F4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070D3F8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070D3FC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8070D400  4B B6 26 80 */	b cLib_addCalc0__FPfff
/* 8070D404  A8 1E 06 C2 */	lha r0, 0x6c2(r30)
/* 8070D408  2C 00 00 00 */	cmpwi r0, 0
/* 8070D40C  40 82 02 CC */	bne lbl_8070D6D8
/* 8070D410  38 00 00 00 */	li r0, 0
/* 8070D414  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D418  48 00 02 C0 */	b lbl_8070D6D8
lbl_8070D41C:
/* 8070D41C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8070D420  4B B5 A5 6C */	b cM_rndFX__Ff
/* 8070D424  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8070D428  EC 40 08 2A */	fadds f2, f0, f1
/* 8070D42C  7F C3 F3 78 */	mr r3, r30
/* 8070D430  38 80 00 1E */	li r4, 0x1e
/* 8070D434  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070D438  38 A0 00 02 */	li r5, 2
/* 8070D43C  4B FF D3 F1 */	bl anm_init__FP10e_mf_classifUcf
/* 8070D440  38 00 00 01 */	li r0, 1
/* 8070D444  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D448  38 00 00 00 */	li r0, 0
/* 8070D44C  B0 1E 08 0C */	sth r0, 0x80c(r30)
lbl_8070D450:
/* 8070D450  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070D454  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070D458  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 8070D45C  A8 7E 06 AC */	lha r3, 0x6ac(r30)
/* 8070D460  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8070D464  40 82 00 20 */	bne lbl_8070D484
/* 8070D468  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8070D46C  41 82 00 10 */	beq lbl_8070D47C
/* 8070D470  38 00 00 01 */	li r0, 1
/* 8070D474  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070D478  48 00 00 0C */	b lbl_8070D484
lbl_8070D47C:
/* 8070D47C  38 00 00 02 */	li r0, 2
/* 8070D480  98 1E 10 C4 */	stb r0, 0x10c4(r30)
lbl_8070D484:
/* 8070D484  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 8070D488  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8070D48C  41 82 00 2C */	beq lbl_8070D4B8
/* 8070D490  7F C3 F3 78 */	mr r3, r30
/* 8070D494  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8070D498  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 8070D49C  4B 90 FA 34 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8070D4A0  2C 03 00 00 */	cmpwi r3, 0
/* 8070D4A4  40 82 00 14 */	bne lbl_8070D4B8
/* 8070D4A8  A8 7E 08 0C */	lha r3, 0x80c(r30)
/* 8070D4AC  38 03 00 01 */	addi r0, r3, 1
/* 8070D4B0  B0 1E 08 0C */	sth r0, 0x80c(r30)
/* 8070D4B4  48 00 00 5C */	b lbl_8070D510
lbl_8070D4B8:
/* 8070D4B8  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8070D4BC  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070D4C0  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070D4C4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8070D4C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D4CC  40 80 00 44 */	bge lbl_8070D510
/* 8070D4D0  7F C3 F3 78 */	mr r3, r30
/* 8070D4D4  38 80 00 20 */	li r4, 0x20
/* 8070D4D8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070D4DC  38 A0 00 02 */	li r5, 2
/* 8070D4E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070D4E4  4B FF D3 49 */	bl anm_init__FP10e_mf_classifUcf
/* 8070D4E8  38 00 00 02 */	li r0, 2
/* 8070D4EC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D4F0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8070D4F4  4B B5 A4 60 */	b cM_rndF__Ff
/* 8070D4F8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070D4FC  EC 00 08 2A */	fadds f0, f0, f1
/* 8070D500  FC 00 00 1E */	fctiwz f0, f0
/* 8070D504  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070D508  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070D50C  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
lbl_8070D510:
/* 8070D510  A8 1E 08 0C */	lha r0, 0x80c(r30)
/* 8070D514  2C 00 00 14 */	cmpwi r0, 0x14
/* 8070D518  40 81 00 18 */	ble lbl_8070D530
/* 8070D51C  38 00 00 08 */	li r0, 8
/* 8070D520  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070D524  38 00 00 00 */	li r0, 0
/* 8070D528  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D52C  48 00 06 68 */	b lbl_8070DB94
lbl_8070D530:
/* 8070D530  7F C3 F3 78 */	mr r3, r30
/* 8070D534  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8070D538  38 80 00 00 */	li r4, 0
/* 8070D53C  4B FF E3 0D */	bl move_gake_check__FP10e_mf_classfSc
/* 8070D540  2C 03 00 00 */	cmpwi r3, 0
/* 8070D544  41 82 01 94 */	beq lbl_8070D6D8
/* 8070D548  38 00 00 19 */	li r0, 0x19
/* 8070D54C  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070D550  38 00 00 00 */	li r0, 0
/* 8070D554  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D558  38 00 00 64 */	li r0, 0x64
/* 8070D55C  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8070D560  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070D564  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070D568  48 00 06 2C */	b lbl_8070DB94
lbl_8070D56C:
/* 8070D56C  38 00 00 01 */	li r0, 1
/* 8070D570  98 1E 08 0E */	stb r0, 0x80e(r30)
/* 8070D574  2C 1D 00 07 */	cmpwi r29, 7
/* 8070D578  41 82 00 0C */	beq lbl_8070D584
/* 8070D57C  2C 1D 00 15 */	cmpwi r29, 0x15
/* 8070D580  40 82 00 CC */	bne lbl_8070D64C
lbl_8070D584:
/* 8070D584  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8070D588  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8070D58C  C0 7E 06 B0 */	lfs f3, 0x6b0(r30)
/* 8070D590  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8070D594  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070D598  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070D59C  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8070D5A0  EC 00 10 2A */	fadds f0, f0, f2
/* 8070D5A4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8070D5A8  40 81 00 18 */	ble lbl_8070D5C0
/* 8070D5AC  38 00 00 00 */	li r0, 0
/* 8070D5B0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D5B4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8070D5B8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8070D5BC  48 00 01 1C */	b lbl_8070D6D8
lbl_8070D5C0:
/* 8070D5C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8070D5C4  EC 01 10 2A */	fadds f0, f1, f2
/* 8070D5C8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8070D5CC  40 81 00 10 */	ble lbl_8070D5DC
/* 8070D5D0  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 8070D5D4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8070D5D8  48 00 00 38 */	b lbl_8070D610
lbl_8070D5DC:
/* 8070D5DC  EC 02 08 28 */	fsubs f0, f2, f1
/* 8070D5E0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8070D5E4  40 80 00 14 */	bge lbl_8070D5F8
/* 8070D5E8  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 8070D5EC  7C 00 00 D0 */	neg r0, r0
/* 8070D5F0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8070D5F4  48 00 00 1C */	b lbl_8070D610
lbl_8070D5F8:
/* 8070D5F8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8070D5FC  4B B5 A3 90 */	b cM_rndFX__Ff
/* 8070D600  FC 00 08 1E */	fctiwz f0, f1
/* 8070D604  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070D608  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070D60C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8070D610:
/* 8070D610  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070D614  4B B5 A3 40 */	b cM_rndF__Ff
/* 8070D618  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8070D61C  EC 00 08 2A */	fadds f0, f0, f1
/* 8070D620  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070D624  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703DC@ha */
/* 8070D628  38 03 03 DC */	addi r0, r3, 0x03DC /* 0x000703DC@l */
/* 8070D62C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070D630  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070D634  38 81 00 10 */	addi r4, r1, 0x10
/* 8070D638  38 A0 FF FF */	li r5, -1
/* 8070D63C  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070D640  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070D644  7D 89 03 A6 */	mtctr r12
/* 8070D648  4E 80 04 21 */	bctrl 
lbl_8070D64C:
/* 8070D64C  2C 1D 00 0D */	cmpwi r29, 0xd
/* 8070D650  41 82 00 0C */	beq lbl_8070D65C
/* 8070D654  2C 1D 00 1B */	cmpwi r29, 0x1b
/* 8070D658  40 82 00 78 */	bne lbl_8070D6D0
lbl_8070D65C:
/* 8070D65C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070D660  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070D664  38 00 00 03 */	li r0, 3
/* 8070D668  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070D66C  2C 1D 00 0D */	cmpwi r29, 0xd
/* 8070D670  40 82 00 34 */	bne lbl_8070D6A4
/* 8070D674  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D6@ha */
/* 8070D678  38 03 03 D6 */	addi r0, r3, 0x03D6 /* 0x000703D6@l */
/* 8070D67C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070D680  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070D684  38 81 00 0C */	addi r4, r1, 0xc
/* 8070D688  38 A0 00 00 */	li r5, 0
/* 8070D68C  38 C0 FF FF */	li r6, -1
/* 8070D690  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070D694  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070D698  7D 89 03 A6 */	mtctr r12
/* 8070D69C  4E 80 04 21 */	bctrl 
/* 8070D6A0  48 00 00 30 */	b lbl_8070D6D0
lbl_8070D6A4:
/* 8070D6A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D7@ha */
/* 8070D6A8  38 03 03 D7 */	addi r0, r3, 0x03D7 /* 0x000703D7@l */
/* 8070D6AC  90 01 00 08 */	stw r0, 8(r1)
/* 8070D6B0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070D6B4  38 81 00 08 */	addi r4, r1, 8
/* 8070D6B8  38 A0 00 00 */	li r5, 0
/* 8070D6BC  38 C0 FF FF */	li r6, -1
/* 8070D6C0  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070D6C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070D6C8  7D 89 03 A6 */	mtctr r12
/* 8070D6CC  4E 80 04 21 */	bctrl 
lbl_8070D6D0:
/* 8070D6D0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8070D6D4  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_8070D6D8:
/* 8070D6D8  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8070D6DC  2C 00 00 00 */	cmpwi r0, 0
/* 8070D6E0  41 80 00 C0 */	blt lbl_8070D7A0
/* 8070D6E4  88 1E 08 0E */	lbz r0, 0x80e(r30)
/* 8070D6E8  7C 00 07 75 */	extsb. r0, r0
/* 8070D6EC  40 82 00 5C */	bne lbl_8070D748
/* 8070D6F0  AB BE 04 DE */	lha r29, 0x4de(r30)
/* 8070D6F4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8070D6F8  A8 9E 06 B4 */	lha r4, 0x6b4(r30)
/* 8070D6FC  38 A0 00 02 */	li r5, 2
/* 8070D700  38 C0 08 00 */	li r6, 0x800
/* 8070D704  4B B6 2F 04 */	b cLib_addCalcAngleS2__FPssss
/* 8070D708  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8070D70C  7F A3 E8 50 */	subf r29, r3, r29
/* 8070D710  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 8070D714  7C 00 18 50 */	subf r0, r0, r3
/* 8070D718  7C 00 07 34 */	extsh r0, r0
/* 8070D71C  2C 00 08 00 */	cmpwi r0, 0x800
/* 8070D720  41 81 00 0C */	bgt lbl_8070D72C
/* 8070D724  2C 00 F8 00 */	cmpwi r0, -2048
/* 8070D728  40 80 00 08 */	bge lbl_8070D730
lbl_8070D72C:
/* 8070D72C  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_8070D730:
/* 8070D730  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070D734  FC 20 F8 90 */	fmr f1, f31
/* 8070D738  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070D73C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8070D740  4B B6 22 FC */	b cLib_addCalc2__FPffff
/* 8070D744  48 00 00 24 */	b lbl_8070D768
lbl_8070D748:
/* 8070D748  AB BE 04 E6 */	lha r29, 0x4e6(r30)
/* 8070D74C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8070D750  A8 9E 06 B4 */	lha r4, 0x6b4(r30)
/* 8070D754  38 A0 00 04 */	li r5, 4
/* 8070D758  38 C0 08 00 */	li r6, 0x800
/* 8070D75C  4B B6 2E AC */	b cLib_addCalcAngleS2__FPssss
/* 8070D760  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8070D764  7F A0 E8 50 */	subf r29, r0, r29
lbl_8070D768:
/* 8070D768  57 A0 08 3C */	slwi r0, r29, 1
/* 8070D76C  7C 1D 07 34 */	extsh r29, r0
/* 8070D770  2C 1D 10 00 */	cmpwi r29, 0x1000
/* 8070D774  40 81 00 0C */	ble lbl_8070D780
/* 8070D778  3B A0 10 00 */	li r29, 0x1000
/* 8070D77C  48 00 00 10 */	b lbl_8070D78C
lbl_8070D780:
/* 8070D780  2C 1D F0 00 */	cmpwi r29, -4096
/* 8070D784  40 80 00 08 */	bge lbl_8070D78C
/* 8070D788  3B A0 F0 00 */	li r29, -4096
lbl_8070D78C:
/* 8070D78C  38 7E 08 06 */	addi r3, r30, 0x806
/* 8070D790  7F A4 EB 78 */	mr r4, r29
/* 8070D794  38 A0 00 02 */	li r5, 2
/* 8070D798  38 C0 04 00 */	li r6, 0x400
/* 8070D79C  4B B6 2E 6C */	b cLib_addCalcAngleS2__FPssss
lbl_8070D7A0:
/* 8070D7A0  3B A0 00 00 */	li r29, 0
/* 8070D7A4  3C 60 80 71 */	lis r3, shot_s_sub__FPvPv@ha
/* 8070D7A8  38 63 D0 D0 */	addi r3, r3, shot_s_sub__FPvPv@l
/* 8070D7AC  7F C4 F3 78 */	mr r4, r30
/* 8070D7B0  4B 91 3B 88 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8070D7B4  28 03 00 00 */	cmplwi r3, 0
/* 8070D7B8  40 82 00 28 */	bne lbl_8070D7E0
/* 8070D7BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070D7C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070D7C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070D7C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8070D7CC  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 8070D7D0  7D 89 03 A6 */	mtctr r12
/* 8070D7D4  4E 80 04 21 */	bctrl 
/* 8070D7D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070D7DC  41 82 00 08 */	beq lbl_8070D7E4
lbl_8070D7E0:
/* 8070D7E0  3B A0 00 01 */	li r29, 1
lbl_8070D7E4:
/* 8070D7E4  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8070D7E8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8070D7EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D7F0  40 80 00 2C */	bge lbl_8070D81C
/* 8070D7F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070D7F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070D7FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070D800  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8070D804  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 8070D808  7D 89 03 A6 */	mtctr r12
/* 8070D80C  4E 80 04 21 */	bctrl 
/* 8070D810  28 03 00 00 */	cmplwi r3, 0
/* 8070D814  41 82 00 08 */	beq lbl_8070D81C
/* 8070D818  3B A0 00 02 */	li r29, 2
lbl_8070D81C:
/* 8070D81C  7F 80 07 75 */	extsb. r0, r28
/* 8070D820  40 82 00 6C */	bne lbl_8070D88C
/* 8070D824  A8 1E 06 CA */	lha r0, 0x6ca(r30)
/* 8070D828  2C 00 00 00 */	cmpwi r0, 0
/* 8070D82C  40 82 02 14 */	bne lbl_8070DA40
/* 8070D830  38 00 00 00 */	li r0, 0
/* 8070D834  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070D838  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D83C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8070D840  4B B5 A1 14 */	b cM_rndF__Ff
/* 8070D844  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8070D848  EC 00 08 2A */	fadds f0, f0, f1
/* 8070D84C  FC 00 00 1E */	fctiwz f0, f0
/* 8070D850  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070D854  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070D858  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070D85C  7F C3 F3 78 */	mr r3, r30
/* 8070D860  38 80 00 21 */	li r4, 0x21
/* 8070D864  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070D868  38 A0 00 02 */	li r5, 2
/* 8070D86C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070D870  4B FF CF BD */	bl anm_init__FP10e_mf_classifUcf
/* 8070D874  88 1E 08 0E */	lbz r0, 0x80e(r30)
/* 8070D878  7C 00 07 75 */	extsb. r0, r0
/* 8070D87C  41 82 03 18 */	beq lbl_8070DB94
/* 8070D880  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8070D884  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8070D888  48 00 03 0C */	b lbl_8070DB94
lbl_8070D88C:
/* 8070D88C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8070D890  28 00 00 02 */	cmplwi r0, 2
/* 8070D894  41 82 00 44 */	beq lbl_8070D8D8
/* 8070D898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070D89C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070D8A0  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8070D8A4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8070D8A8  40 82 00 30 */	bne lbl_8070D8D8
/* 8070D8AC  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 8070D8B0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8070D8B4  40 80 00 0C */	bge lbl_8070D8C0
/* 8070D8B8  2C 00 F0 00 */	cmpwi r0, -4096
/* 8070D8BC  41 81 00 0C */	bgt lbl_8070D8C8
lbl_8070D8C0:
/* 8070D8C0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8070D8C4  41 82 01 7C */	beq lbl_8070DA40
lbl_8070D8C8:
/* 8070D8C8  7F C3 F3 78 */	mr r3, r30
/* 8070D8CC  4B FF DE 5D */	bl player_way_check__FP10e_mf_class
/* 8070D8D0  2C 03 00 00 */	cmpwi r3, 0
/* 8070D8D4  41 82 01 6C */	beq lbl_8070DA40
lbl_8070D8D8:
/* 8070D8D8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8070D8DC  40 82 00 54 */	bne lbl_8070D930
/* 8070D8E0  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8070D8E4  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070D8E8  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070D8EC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8070D8F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D8F4  40 80 00 9C */	bge lbl_8070D990
/* 8070D8F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070D8FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070D900  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070D904  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8070D908  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8070D90C  40 82 00 24 */	bne lbl_8070D930
/* 8070D910  88 63 05 68 */	lbz r3, 0x568(r3)
/* 8070D914  28 03 00 0A */	cmplwi r3, 0xa
/* 8070D918  41 82 00 18 */	beq lbl_8070D930
/* 8070D91C  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 8070D920  54 00 06 B7 */	rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 8070D924  41 82 00 6C */	beq lbl_8070D990
/* 8070D928  28 03 00 29 */	cmplwi r3, 0x29
/* 8070D92C  40 82 00 64 */	bne lbl_8070D990
lbl_8070D930:
/* 8070D930  C0 3E 07 2C */	lfs f1, 0x72c(r30)
/* 8070D934  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8070D938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D93C  40 80 00 54 */	bge lbl_8070D990
/* 8070D940  38 00 00 07 */	li r0, 7
/* 8070D944  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070D948  4B 97 9A 8C */	b cc_pl_cut_bit_get__Fv
/* 8070D94C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8070D950  28 00 01 00 */	cmplwi r0, 0x100
/* 8070D954  40 82 00 10 */	bne lbl_8070D964
/* 8070D958  38 00 00 00 */	li r0, 0
/* 8070D95C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070D960  48 00 00 0C */	b lbl_8070D96C
lbl_8070D964:
/* 8070D964  38 00 00 05 */	li r0, 5
/* 8070D968  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070D96C:
/* 8070D96C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070D970  D0 1E 06 E8 */	stfs f0, 0x6e8(r30)
/* 8070D974  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8070D978  B0 1E 06 EC */	sth r0, 0x6ec(r30)
/* 8070D97C  38 00 00 00 */	li r0, 0
/* 8070D980  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070D984  38 00 00 0F */	li r0, 0xf
/* 8070D988  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8070D98C  48 00 00 B4 */	b lbl_8070DA40
lbl_8070D990:
/* 8070D990  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8070D994  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070D998  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070D99C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070D9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D9A4  40 80 00 7C */	bge lbl_8070DA20
/* 8070D9A8  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 8070D9AC  2C 00 00 00 */	cmpwi r0, 0
/* 8070D9B0  40 82 00 90 */	bne lbl_8070DA40
/* 8070D9B4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8070D9B8  4B B5 9F 9C */	b cM_rndF__Ff
/* 8070D9BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070D9C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8070D9C4  FC 00 00 1E */	fctiwz f0, f0
/* 8070D9C8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070D9CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070D9D0  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 8070D9D4  7F C3 F3 78 */	mr r3, r30
/* 8070D9D8  4B FF F6 B9 */	bl way_check__FP10e_mf_class
/* 8070D9DC  2C 03 00 00 */	cmpwi r3, 0
/* 8070D9E0  40 82 00 2C */	bne lbl_8070DA0C
/* 8070D9E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070D9E8  4B B5 9F 6C */	b cM_rndF__Ff
/* 8070D9EC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8070D9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070D9F4  40 80 00 18 */	bge lbl_8070DA0C
/* 8070D9F8  38 00 00 05 */	li r0, 5
/* 8070D9FC  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070DA00  38 00 00 00 */	li r0, 0
/* 8070DA04  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DA08  48 00 00 38 */	b lbl_8070DA40
lbl_8070DA0C:
/* 8070DA0C  38 00 00 06 */	li r0, 6
/* 8070DA10  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070DA14  38 00 00 00 */	li r0, 0
/* 8070DA18  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DA1C  48 00 00 24 */	b lbl_8070DA40
lbl_8070DA20:
/* 8070DA20  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8070DA24  4B B5 9F 30 */	b cM_rndF__Ff
/* 8070DA28  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070DA2C  EC 00 08 2A */	fadds f0, f0, f1
/* 8070DA30  FC 00 00 1E */	fctiwz f0, f0
/* 8070DA34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070DA38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070DA3C  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
lbl_8070DA40:
/* 8070DA40  38 00 00 01 */	li r0, 1
/* 8070DA44  98 1E 06 D4 */	stb r0, 0x6d4(r30)
/* 8070DA48  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 8070DA4C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8070DA50  40 82 00 24 */	bne lbl_8070DA74
/* 8070DA54  7F C3 F3 78 */	mr r3, r30
/* 8070DA58  4B FF DC 89 */	bl bomb_view_check__FP10e_mf_class
/* 8070DA5C  28 03 00 00 */	cmplwi r3, 0
/* 8070DA60  41 82 00 14 */	beq lbl_8070DA74
/* 8070DA64  38 00 00 0B */	li r0, 0xb
/* 8070DA68  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070DA6C  38 00 00 00 */	li r0, 0
/* 8070DA70  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070DA74:
/* 8070DA74  7F C3 F3 78 */	mr r3, r30
/* 8070DA78  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8070DA7C  38 80 00 01 */	li r4, 1
/* 8070DA80  4B FF DD C9 */	bl move_gake_check__FP10e_mf_classfSc
/* 8070DA84  2C 03 00 00 */	cmpwi r3, 0
/* 8070DA88  41 82 00 5C */	beq lbl_8070DAE4
/* 8070DA8C  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 8070DA90  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8070DA94  40 82 00 50 */	bne lbl_8070DAE4
/* 8070DA98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070DA9C  4B B5 9E B8 */	b cM_rndF__Ff
/* 8070DAA0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8070DAA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070DAA8  40 80 00 3C */	bge lbl_8070DAE4
/* 8070DAAC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070DAB0  4B B5 9E A4 */	b cM_rndF__Ff
/* 8070DAB4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8070DAB8  EC 00 08 2A */	fadds f0, f0, f1
/* 8070DABC  FC 00 00 1E */	fctiwz f0, f0
/* 8070DAC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070DAC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070DAC8  98 1E 06 E0 */	stb r0, 0x6e0(r30)
/* 8070DACC  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8070DAD0  4B B5 9E 84 */	b cM_rndF__Ff
/* 8070DAD4  FC 00 08 1E */	fctiwz f0, f1
/* 8070DAD8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8070DADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070DAE0  98 1E 06 E1 */	stb r0, 0x6e1(r30)
lbl_8070DAE4:
/* 8070DAE4  7F C3 F3 78 */	mr r3, r30
/* 8070DAE8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8070DAEC  38 80 00 01 */	li r4, 1
/* 8070DAF0  4B FF DD 59 */	bl move_gake_check__FP10e_mf_classfSc
/* 8070DAF4  2C 03 00 00 */	cmpwi r3, 0
/* 8070DAF8  41 82 00 7C */	beq lbl_8070DB74
/* 8070DAFC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070DB00  4B B5 9E 54 */	b cM_rndF__Ff
/* 8070DB04  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8070DB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070DB0C  40 80 00 18 */	bge lbl_8070DB24
/* 8070DB10  38 00 00 06 */	li r0, 6
/* 8070DB14  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070DB18  38 00 00 00 */	li r0, 0
/* 8070DB1C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DB20  48 00 00 4C */	b lbl_8070DB6C
lbl_8070DB24:
/* 8070DB24  38 00 00 19 */	li r0, 0x19
/* 8070DB28  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070DB2C  38 00 00 00 */	li r0, 0
/* 8070DB30  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DB34  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8070DB38  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8070DB3C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8070DB40  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 8070DB44  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8070DB48  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8070DB4C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8070DB50  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 8070DB54  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8070DB58  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8070DB5C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8070DB60  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8070DB64  38 00 00 64 */	li r0, 0x64
/* 8070DB68  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
lbl_8070DB6C:
/* 8070DB6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070DB70  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8070DB74:
/* 8070DB74  A8 1E 06 AE */	lha r0, 0x6ae(r30)
/* 8070DB78  2C 00 00 03 */	cmpwi r0, 3
/* 8070DB7C  41 82 00 18 */	beq lbl_8070DB94
/* 8070DB80  88 1E 08 0E */	lbz r0, 0x80e(r30)
/* 8070DB84  7C 00 07 75 */	extsb. r0, r0
/* 8070DB88  41 82 00 0C */	beq lbl_8070DB94
/* 8070DB8C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8070DB90  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8070DB94:
/* 8070DB94  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8070DB98  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8070DB9C  39 61 00 40 */	addi r11, r1, 0x40
/* 8070DBA0  4B C5 46 84 */	b _restgpr_28
/* 8070DBA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8070DBA8  7C 08 03 A6 */	mtlr r0
/* 8070DBAC  38 21 00 50 */	addi r1, r1, 0x50
/* 8070DBB0  4E 80 00 20 */	blr 
