lbl_8094D2A4:
/* 8094D2A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8094D2A8  7C 08 02 A6 */	mflr r0
/* 8094D2AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8094D2B0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8094D2B4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8094D2B8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8094D2BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8094D2C0  7C 7E 1B 78 */	mr r30, r3
/* 8094D2C4  3C 80 80 95 */	lis r4, lit_3958@ha
/* 8094D2C8  3B E4 11 C0 */	addi r31, r4, lit_3958@l
/* 8094D2CC  C3 FF 00 24 */	lfs f31, 0x24(r31)
/* 8094D2D0  A8 03 05 FC */	lha r0, 0x5fc(r3)
/* 8094D2D4  2C 00 00 02 */	cmpwi r0, 2
/* 8094D2D8  41 82 01 28 */	beq lbl_8094D400
/* 8094D2DC  40 80 00 14 */	bge lbl_8094D2F0
/* 8094D2E0  2C 00 00 00 */	cmpwi r0, 0
/* 8094D2E4  41 82 00 18 */	beq lbl_8094D2FC
/* 8094D2E8  40 80 00 3C */	bge lbl_8094D324
/* 8094D2EC  48 00 02 8C */	b lbl_8094D578
lbl_8094D2F0:
/* 8094D2F0  2C 00 00 04 */	cmpwi r0, 4
/* 8094D2F4  40 80 02 84 */	bge lbl_8094D578
/* 8094D2F8  48 00 02 10 */	b lbl_8094D508
lbl_8094D2FC:
/* 8094D2FC  38 80 00 0B */	li r4, 0xb
/* 8094D300  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094D304  38 A0 00 02 */	li r5, 2
/* 8094D308  FC 40 F8 90 */	fmr f2, f31
/* 8094D30C  4B FF E9 9D */	bl anm_init__FP8ni_classifUcf
/* 8094D310  A8 7E 05 FC */	lha r3, 0x5fc(r30)
/* 8094D314  38 03 00 01 */	addi r0, r3, 1
/* 8094D318  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094D31C  FC 00 F8 90 */	fmr f0, f31
/* 8094D320  D0 1E 09 E8 */	stfs f0, 0x9e8(r30)
lbl_8094D324:
/* 8094D324  7F C3 F3 78 */	mr r3, r30
/* 8094D328  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8094D32C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8094D330  4B 6C FB A0 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8094D334  2C 03 00 00 */	cmpwi r3, 0
/* 8094D338  41 82 00 3C */	beq lbl_8094D374
/* 8094D33C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8094D340  4B 91 A6 4C */	b cM_rndFX__Ff
/* 8094D344  FC 00 08 1E */	fctiwz f0, f1
/* 8094D348  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8094D34C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8094D350  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8094D354  3C 03 00 01 */	addis r0, r3, 1
/* 8094D358  7C 60 22 14 */	add r3, r0, r4
/* 8094D35C  38 03 80 00 */	addi r0, r3, -32768
/* 8094D360  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 8094D364  38 00 00 80 */	li r0, 0x80
/* 8094D368  B0 1E 06 06 */	sth r0, 0x606(r30)
/* 8094D36C  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8094D370  48 00 00 80 */	b lbl_8094D3F0
lbl_8094D374:
/* 8094D374  38 61 00 0C */	addi r3, r1, 0xc
/* 8094D378  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8094D37C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094D380  4B 91 97 B4 */	b __mi__4cXyzCFRC3Vec
/* 8094D384  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8094D388  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094D38C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8094D390  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8094D394  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8094D398  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8094D39C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8094D3A0  4B 91 A5 EC */	b cM_rndFX__Ff
/* 8094D3A4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8094D3A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8094D3AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094D3B0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8094D3B4  4B 91 A5 D8 */	b cM_rndFX__Ff
/* 8094D3B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8094D3BC  EC 40 08 2A */	fadds f2, f0, f1
/* 8094D3C0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8094D3C4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8094D3C8  4B 91 A2 AC */	b cM_atan2s__Fff
/* 8094D3CC  B0 7E 05 DC */	sth r3, 0x5dc(r30)
/* 8094D3D0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8094D3D4  4B 91 A5 80 */	b cM_rndF__Ff
/* 8094D3D8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8094D3DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8094D3E0  FC 00 00 1E */	fctiwz f0, f0
/* 8094D3E4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8094D3E8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8094D3EC  B0 1E 06 04 */	sth r0, 0x604(r30)
lbl_8094D3F0:
/* 8094D3F0  A8 7E 05 FC */	lha r3, 0x5fc(r30)
/* 8094D3F4  38 03 00 01 */	addi r0, r3, 1
/* 8094D3F8  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094D3FC  48 00 01 7C */	b lbl_8094D578
lbl_8094D400:
/* 8094D400  C3 FF 00 98 */	lfs f31, 0x98(r31)
/* 8094D404  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8094D408  A8 9E 05 DC */	lha r4, 0x5dc(r30)
/* 8094D40C  38 A0 00 04 */	li r5, 4
/* 8094D410  38 C0 01 00 */	li r6, 0x100
/* 8094D414  4B 92 31 F4 */	b cLib_addCalcAngleS2__FPssss
/* 8094D418  A8 1E 06 04 */	lha r0, 0x604(r30)
/* 8094D41C  2C 00 00 00 */	cmpwi r0, 0
/* 8094D420  41 82 00 28 */	beq lbl_8094D448
/* 8094D424  7F C3 F3 78 */	mr r3, r30
/* 8094D428  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8094D42C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8094D430  4B 6C FA A0 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8094D434  2C 03 00 00 */	cmpwi r3, 0
/* 8094D438  41 82 00 18 */	beq lbl_8094D450
/* 8094D43C  A8 1E 06 06 */	lha r0, 0x606(r30)
/* 8094D440  2C 00 00 00 */	cmpwi r0, 0
/* 8094D444  40 82 00 0C */	bne lbl_8094D450
lbl_8094D448:
/* 8094D448  38 00 00 01 */	li r0, 1
/* 8094D44C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094D450:
/* 8094D450  A8 1E 05 60 */	lha r0, 0x560(r30)
/* 8094D454  2C 00 00 00 */	cmpwi r0, 0
/* 8094D458  41 82 01 20 */	beq lbl_8094D578
/* 8094D45C  38 00 00 00 */	li r0, 0
/* 8094D460  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 8094D464  A8 7E 05 FC */	lha r3, 0x5fc(r30)
/* 8094D468  38 03 00 01 */	addi r0, r3, 1
/* 8094D46C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094D470  7F C3 F3 78 */	mr r3, r30
/* 8094D474  38 80 00 09 */	li r4, 9
/* 8094D478  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094D47C  38 A0 00 02 */	li r5, 2
/* 8094D480  FC 40 08 90 */	fmr f2, f1
/* 8094D484  4B FF E8 25 */	bl anm_init__FP8ni_classifUcf
/* 8094D488  38 00 00 0A */	li r0, 0xa
/* 8094D48C  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 8094D490  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8094D494  4B 91 A4 C0 */	b cM_rndF__Ff
/* 8094D498  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8094D49C  EC 00 08 2A */	fadds f0, f0, f1
/* 8094D4A0  FC 00 00 1E */	fctiwz f0, f0
/* 8094D4A4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8094D4A8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8094D4AC  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 8094D4B0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050007@ha */
/* 8094D4B4  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00050007@l */
/* 8094D4B8  90 01 00 08 */	stw r0, 8(r1)
/* 8094D4BC  38 7E 0A 28 */	addi r3, r30, 0xa28
/* 8094D4C0  38 81 00 08 */	addi r4, r1, 8
/* 8094D4C4  38 A0 00 00 */	li r5, 0
/* 8094D4C8  38 C0 FF FF */	li r6, -1
/* 8094D4CC  81 9E 0A 38 */	lwz r12, 0xa38(r30)
/* 8094D4D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094D4D4  7D 89 03 A6 */	mtctr r12
/* 8094D4D8  4E 80 04 21 */	bctrl 
/* 8094D4DC  7F C3 F3 78 */	mr r3, r30
/* 8094D4E0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094D4E4  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8094D4E8  4B FF E8 81 */	bl hane_set__FP8ni_classff
/* 8094D4EC  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8094D4F0  4B 91 A4 64 */	b cM_rndF__Ff
/* 8094D4F4  FC 00 08 1E */	fctiwz f0, f1
/* 8094D4F8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8094D4FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8094D500  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 8094D504  48 00 00 74 */	b lbl_8094D578
lbl_8094D508:
/* 8094D508  C3 FF 00 98 */	lfs f31, 0x98(r31)
/* 8094D50C  A8 1E 05 F8 */	lha r0, 0x5f8(r30)
/* 8094D510  1C 00 23 28 */	mulli r0, r0, 0x2328
/* 8094D514  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8094D518  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8094D51C  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8094D520  7C 24 04 2E */	lfsx f1, r4, r0
/* 8094D524  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8094D528  EC 00 00 72 */	fmuls f0, f0, f1
/* 8094D52C  FC 00 00 1E */	fctiwz f0, f0
/* 8094D530  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8094D534  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8094D538  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8094D53C  A8 1E 06 08 */	lha r0, 0x608(r30)
/* 8094D540  2C 00 00 00 */	cmpwi r0, 0
/* 8094D544  40 82 00 20 */	bne lbl_8094D564
/* 8094D548  38 00 00 01 */	li r0, 1
/* 8094D54C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094D550  38 80 00 0B */	li r4, 0xb
/* 8094D554  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094D558  38 A0 00 02 */	li r5, 2
/* 8094D55C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8094D560  4B FF E7 49 */	bl anm_init__FP8ni_classifUcf
lbl_8094D564:
/* 8094D564  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8094D568  A8 9E 05 DC */	lha r4, 0x5dc(r30)
/* 8094D56C  38 A0 00 04 */	li r5, 4
/* 8094D570  38 C0 04 00 */	li r6, 0x400
/* 8094D574  4B 92 30 94 */	b cLib_addCalcAngleS2__FPssss
lbl_8094D578:
/* 8094D578  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8094D57C  FC 20 F8 90 */	fmr f1, f31
/* 8094D580  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094D584  FC 60 10 90 */	fmr f3, f2
/* 8094D588  4B 92 24 B4 */	b cLib_addCalc2__FPffff
/* 8094D58C  88 1E 09 E4 */	lbz r0, 0x9e4(r30)
/* 8094D590  7C 00 07 75 */	extsb. r0, r0
/* 8094D594  40 82 00 58 */	bne lbl_8094D5EC
/* 8094D598  88 1E 08 48 */	lbz r0, 0x848(r30)
/* 8094D59C  7C 00 07 75 */	extsb. r0, r0
/* 8094D5A0  40 82 00 4C */	bne lbl_8094D5EC
/* 8094D5A4  38 00 00 01 */	li r0, 1
/* 8094D5A8  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8094D5AC  38 00 00 02 */	li r0, 2
/* 8094D5B0  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094D5B4  7F C3 F3 78 */	mr r3, r30
/* 8094D5B8  38 80 00 06 */	li r4, 6
/* 8094D5BC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094D5C0  38 A0 00 02 */	li r5, 2
/* 8094D5C4  FC 40 08 90 */	fmr f2, f1
/* 8094D5C8  4B FF E6 E1 */	bl anm_init__FP8ni_classifUcf
/* 8094D5CC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8094D5D0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8094D5D4  7F C3 F3 78 */	mr r3, r30
/* 8094D5D8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094D5DC  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8094D5E0  4B FF E7 89 */	bl hane_set__FP8ni_classff
/* 8094D5E4  38 00 00 1E */	li r0, 0x1e
/* 8094D5E8  98 1E 09 E4 */	stb r0, 0x9e4(r30)
lbl_8094D5EC:
/* 8094D5EC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8094D5F0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8094D5F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8094D5F8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8094D5FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8094D600  7C 08 03 A6 */	mtlr r0
/* 8094D604  38 21 00 50 */	addi r1, r1, 0x50
/* 8094D608  4E 80 00 20 */	blr 
