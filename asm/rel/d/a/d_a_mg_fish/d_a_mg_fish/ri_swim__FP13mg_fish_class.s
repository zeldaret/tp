lbl_8052D3BC:
/* 8052D3BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8052D3C0  7C 08 02 A6 */	mflr r0
/* 8052D3C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8052D3C8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8052D3CC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8052D3D0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8052D3D4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8052D3D8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8052D3DC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8052D3E0  7C 7E 1B 78 */	mr r30, r3
/* 8052D3E4  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052D3E8  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 8052D3EC  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 8052D3F0  C3 DF 00 94 */	lfs f30, 0x94(r31)
/* 8052D3F4  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 8052D3F8  2C 00 00 03 */	cmpwi r0, 3
/* 8052D3FC  41 82 03 60 */	beq lbl_8052D75C
/* 8052D400  40 80 00 1C */	bge lbl_8052D41C
/* 8052D404  2C 00 00 01 */	cmpwi r0, 1
/* 8052D408  41 82 00 EC */	beq lbl_8052D4F4
/* 8052D40C  40 80 02 84 */	bge lbl_8052D690
/* 8052D410  2C 00 00 00 */	cmpwi r0, 0
/* 8052D414  40 80 00 18 */	bge lbl_8052D42C
/* 8052D418  48 00 06 00 */	b lbl_8052DA18
lbl_8052D41C:
/* 8052D41C  2C 00 00 05 */	cmpwi r0, 5
/* 8052D420  41 82 05 C8 */	beq lbl_8052D9E8
/* 8052D424  40 80 05 F4 */	bge lbl_8052DA18
/* 8052D428  48 00 05 10 */	b lbl_8052D938
lbl_8052D42C:
/* 8052D42C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8052D430  4B D3 A5 5C */	b cM_rndFX__Ff
/* 8052D434  FC 00 08 1E */	fctiwz f0, f1
/* 8052D438  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8052D43C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8052D440  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8052D444  3C 03 00 01 */	addis r0, r3, 1
/* 8052D448  7C 60 22 14 */	add r3, r0, r4
/* 8052D44C  38 03 80 00 */	addi r0, r3, -32768
/* 8052D450  7C 04 07 34 */	extsh r4, r0
/* 8052D454  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052D458  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052D45C  80 63 00 00 */	lwz r3, 0(r3)
/* 8052D460  4B AD EF 7C */	b mDoMtx_YrotS__FPA4_fs
/* 8052D464  FC 00 F8 90 */	fmr f0, f31
/* 8052D468  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052D46C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052D470  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8052D474  4B D3 A4 E0 */	b cM_rndF__Ff
/* 8052D478  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8052D47C  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D480  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8052D484  38 61 00 28 */	addi r3, r1, 0x28
/* 8052D488  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052D48C  4B D4 3A 60 */	b MtxPosition__FP4cXyzP4cXyz
/* 8052D490  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8052D494  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8052D498  7C 65 1B 78 */	mr r5, r3
/* 8052D49C  4B E1 9B F4 */	b PSVECAdd
/* 8052D4A0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8052D4A4  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052D4A8  7F C3 F3 78 */	mr r3, r30
/* 8052D4AC  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052D4B0  4B FF E5 1D */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 8052D4B4  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 8052D4B8  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052D4BC  C0 3E 05 DC */	lfs f1, 0x5dc(r30)
/* 8052D4C0  EC 40 08 28 */	fsubs f2, f0, f1
/* 8052D4C4  FC 00 F8 90 */	fmr f0, f31
/* 8052D4C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052D4CC  40 81 05 4C */	ble lbl_8052DA18
/* 8052D4D0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8052D4D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052D4D8  40 80 05 40 */	bge lbl_8052DA18
/* 8052D4DC  D0 3E 05 C4 */	stfs f1, 0x5c4(r30)
/* 8052D4E0  A8 7E 05 B8 */	lha r3, 0x5b8(r30)
/* 8052D4E4  38 03 00 01 */	addi r0, r3, 1
/* 8052D4E8  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D4EC  38 00 00 00 */	li r0, 0
/* 8052D4F0  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_8052D4F4:
/* 8052D4F4  C3 FF 00 A8 */	lfs f31, 0xa8(r31)
/* 8052D4F8  C3 DF 00 94 */	lfs f30, 0x94(r31)
/* 8052D4FC  38 61 00 1C */	addi r3, r1, 0x1c
/* 8052D500  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052D504  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052D508  4B D3 96 2C */	b __mi__4cXyzCFRC3Vec
/* 8052D50C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8052D510  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8052D514  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8052D518  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052D51C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8052D520  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8052D524  4B D3 A1 50 */	b cM_atan2s__Fff
/* 8052D528  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052D52C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8052D530  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052D534  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8052D538  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052D53C  EC 41 00 2A */	fadds f2, f1, f0
/* 8052D540  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D544  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052D548  40 81 00 0C */	ble lbl_8052D554
/* 8052D54C  FC 00 10 34 */	frsqrte f0, f2
/* 8052D550  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052D554:
/* 8052D554  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8052D558  4B D3 A1 1C */	b cM_atan2s__Fff
/* 8052D55C  7C 03 00 D0 */	neg r0, r3
/* 8052D560  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8052D564  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D568  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052D56C  38 61 00 28 */	addi r3, r1, 0x28
/* 8052D570  4B E1 9B C8 */	b PSVECSquareMag
/* 8052D574  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D57C  40 81 00 58 */	ble lbl_8052D5D4
/* 8052D580  FC 00 08 34 */	frsqrte f0, f1
/* 8052D584  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052D588  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D58C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052D590  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D594  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D598  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D59C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D5A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D5A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D5A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D5AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D5B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D5B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D5B8  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D5BC  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D5C0  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D5C4  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D5C8  FC 21 00 32 */	fmul f1, f1, f0
/* 8052D5CC  FC 20 08 18 */	frsp f1, f1
/* 8052D5D0  48 00 00 88 */	b lbl_8052D658
lbl_8052D5D4:
/* 8052D5D4  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052D5D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D5DC  40 80 00 10 */	bge lbl_8052D5EC
/* 8052D5E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052D5E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052D5E8  48 00 00 70 */	b lbl_8052D658
lbl_8052D5EC:
/* 8052D5EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8052D5F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8052D5F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052D5F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052D5FC  7C 03 00 00 */	cmpw r3, r0
/* 8052D600  41 82 00 14 */	beq lbl_8052D614
/* 8052D604  40 80 00 40 */	bge lbl_8052D644
/* 8052D608  2C 03 00 00 */	cmpwi r3, 0
/* 8052D60C  41 82 00 20 */	beq lbl_8052D62C
/* 8052D610  48 00 00 34 */	b lbl_8052D644
lbl_8052D614:
/* 8052D614  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D618  41 82 00 0C */	beq lbl_8052D624
/* 8052D61C  38 00 00 01 */	li r0, 1
/* 8052D620  48 00 00 28 */	b lbl_8052D648
lbl_8052D624:
/* 8052D624  38 00 00 02 */	li r0, 2
/* 8052D628  48 00 00 20 */	b lbl_8052D648
lbl_8052D62C:
/* 8052D62C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D630  41 82 00 0C */	beq lbl_8052D63C
/* 8052D634  38 00 00 05 */	li r0, 5
/* 8052D638  48 00 00 10 */	b lbl_8052D648
lbl_8052D63C:
/* 8052D63C  38 00 00 03 */	li r0, 3
/* 8052D640  48 00 00 08 */	b lbl_8052D648
lbl_8052D644:
/* 8052D644  38 00 00 04 */	li r0, 4
lbl_8052D648:
/* 8052D648  2C 00 00 01 */	cmpwi r0, 1
/* 8052D64C  40 82 00 0C */	bne lbl_8052D658
/* 8052D650  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052D654  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052D658:
/* 8052D658  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052D65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D660  40 80 03 B8 */	bge lbl_8052DA18
/* 8052D664  38 00 00 02 */	li r0, 2
/* 8052D668  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D66C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8052D670  4B D3 A2 E4 */	b cM_rndF__Ff
/* 8052D674  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8052D678  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D67C  FC 00 00 1E */	fctiwz f0, f0
/* 8052D680  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8052D684  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8052D688  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052D68C  48 00 03 8C */	b lbl_8052DA18
lbl_8052D690:
/* 8052D690  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 8052D694  38 80 00 00 */	li r4, 0
/* 8052D698  38 A0 00 20 */	li r5, 0x20
/* 8052D69C  38 C0 00 50 */	li r6, 0x50
/* 8052D6A0  4B D4 2F 68 */	b cLib_addCalcAngleS2__FPssss
/* 8052D6A4  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052D6A8  2C 00 00 00 */	cmpwi r0, 0
/* 8052D6AC  40 82 03 6C */	bne lbl_8052DA18
/* 8052D6B0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8052D6B4  4B D3 A2 A0 */	b cM_rndF__Ff
/* 8052D6B8  FC 00 08 1E */	fctiwz f0, f1
/* 8052D6BC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8052D6C0  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8052D6C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052D6C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052D6CC  80 63 00 00 */	lwz r3, 0(r3)
/* 8052D6D0  4B AD ED 0C */	b mDoMtx_YrotS__FPA4_fs
/* 8052D6D4  FC 00 F8 90 */	fmr f0, f31
/* 8052D6D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052D6DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052D6E0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8052D6E4  4B D3 A2 70 */	b cM_rndF__Ff
/* 8052D6E8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8052D6EC  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D6F0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8052D6F4  38 61 00 28 */	addi r3, r1, 0x28
/* 8052D6F8  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052D6FC  4B D4 37 F0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8052D700  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8052D704  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8052D708  7C 65 1B 78 */	mr r5, r3
/* 8052D70C  4B E1 99 84 */	b PSVECAdd
/* 8052D710  7F C3 F3 78 */	mr r3, r30
/* 8052D714  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052D718  4B FF E2 B5 */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 8052D71C  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 8052D720  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8052D724  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 8052D728  EC 41 00 28 */	fsubs f2, f1, f0
/* 8052D72C  FC 00 F8 90 */	fmr f0, f31
/* 8052D730  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052D734  40 81 02 E4 */	ble lbl_8052DA18
/* 8052D738  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8052D73C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052D740  40 80 02 D8 */	bge lbl_8052DA18
/* 8052D744  D0 3E 05 C4 */	stfs f1, 0x5c4(r30)
/* 8052D748  38 00 00 03 */	li r0, 3
/* 8052D74C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D750  38 00 00 00 */	li r0, 0
/* 8052D754  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8052D758  48 00 02 C0 */	b lbl_8052DA18
lbl_8052D75C:
/* 8052D75C  C3 FF 00 A8 */	lfs f31, 0xa8(r31)
/* 8052D760  38 61 00 10 */	addi r3, r1, 0x10
/* 8052D764  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052D768  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052D76C  4B D3 93 C8 */	b __mi__4cXyzCFRC3Vec
/* 8052D770  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8052D774  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8052D778  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8052D77C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052D780  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8052D784  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8052D788  4B D3 9E EC */	b cM_atan2s__Fff
/* 8052D78C  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052D790  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8052D794  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052D798  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8052D79C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052D7A0  EC 41 00 2A */	fadds f2, f1, f0
/* 8052D7A4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D7A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052D7AC  40 81 00 0C */	ble lbl_8052D7B8
/* 8052D7B0  FC 00 10 34 */	frsqrte f0, f2
/* 8052D7B4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052D7B8:
/* 8052D7B8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8052D7BC  4B D3 9E B8 */	b cM_atan2s__Fff
/* 8052D7C0  7C 03 00 D0 */	neg r0, r3
/* 8052D7C4  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8052D7C8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D7CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052D7D0  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 8052D7D4  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 8052D7D8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8052D7DC  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 8052D7E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052D7E4  EC 02 00 2A */	fadds f0, f2, f0
/* 8052D7E8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8052D7EC  4C 41 13 82 */	cror 2, 1, 2
/* 8052D7F0  40 82 02 28 */	bne lbl_8052DA18
/* 8052D7F4  38 61 00 28 */	addi r3, r1, 0x28
/* 8052D7F8  4B E1 99 40 */	b PSVECSquareMag
/* 8052D7FC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052D800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D804  40 81 00 58 */	ble lbl_8052D85C
/* 8052D808  FC 00 08 34 */	frsqrte f0, f1
/* 8052D80C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052D810  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D814  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052D818  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D81C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D820  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D824  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D828  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D82C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D830  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D834  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D838  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D83C  FC 44 00 32 */	fmul f2, f4, f0
/* 8052D840  FC 00 00 32 */	fmul f0, f0, f0
/* 8052D844  FC 01 00 32 */	fmul f0, f1, f0
/* 8052D848  FC 03 00 28 */	fsub f0, f3, f0
/* 8052D84C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052D850  FC 21 00 32 */	fmul f1, f1, f0
/* 8052D854  FC 20 08 18 */	frsp f1, f1
/* 8052D858  48 00 00 88 */	b lbl_8052D8E0
lbl_8052D85C:
/* 8052D85C  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052D860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D864  40 80 00 10 */	bge lbl_8052D874
/* 8052D868  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052D86C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052D870  48 00 00 70 */	b lbl_8052D8E0
lbl_8052D874:
/* 8052D874  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052D878  80 81 00 08 */	lwz r4, 8(r1)
/* 8052D87C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052D880  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052D884  7C 03 00 00 */	cmpw r3, r0
/* 8052D888  41 82 00 14 */	beq lbl_8052D89C
/* 8052D88C  40 80 00 40 */	bge lbl_8052D8CC
/* 8052D890  2C 03 00 00 */	cmpwi r3, 0
/* 8052D894  41 82 00 20 */	beq lbl_8052D8B4
/* 8052D898  48 00 00 34 */	b lbl_8052D8CC
lbl_8052D89C:
/* 8052D89C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D8A0  41 82 00 0C */	beq lbl_8052D8AC
/* 8052D8A4  38 00 00 01 */	li r0, 1
/* 8052D8A8  48 00 00 28 */	b lbl_8052D8D0
lbl_8052D8AC:
/* 8052D8AC  38 00 00 02 */	li r0, 2
/* 8052D8B0  48 00 00 20 */	b lbl_8052D8D0
lbl_8052D8B4:
/* 8052D8B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052D8B8  41 82 00 0C */	beq lbl_8052D8C4
/* 8052D8BC  38 00 00 05 */	li r0, 5
/* 8052D8C0  48 00 00 10 */	b lbl_8052D8D0
lbl_8052D8C4:
/* 8052D8C4  38 00 00 03 */	li r0, 3
/* 8052D8C8  48 00 00 08 */	b lbl_8052D8D0
lbl_8052D8CC:
/* 8052D8CC  38 00 00 04 */	li r0, 4
lbl_8052D8D0:
/* 8052D8D0  2C 00 00 01 */	cmpwi r0, 1
/* 8052D8D4  40 82 00 0C */	bne lbl_8052D8E0
/* 8052D8D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052D8DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052D8E0:
/* 8052D8E0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052D8E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D8E8  40 80 01 30 */	bge lbl_8052DA18
/* 8052D8EC  38 00 00 04 */	li r0, 4
/* 8052D8F0  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D8F4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8052D8F8  4B D3 A0 5C */	b cM_rndF__Ff
/* 8052D8FC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8052D900  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D904  FC 00 00 1E */	fctiwz f0, f0
/* 8052D908  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8052D90C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8052D910  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052D914  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8052D918  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 8052D91C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 8052D920  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 8052D924  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8052D928  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 8052D92C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 8052D930  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8052D934  FF E0 08 90 */	fmr f31, f1
lbl_8052D938:
/* 8052D938  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 8052D93C  FC 00 02 10 */	fabs f0, f0
/* 8052D940  FC 60 00 18 */	frsp f3, f0
/* 8052D944  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8052D948  C0 3E 05 C0 */	lfs f1, 0x5c0(r30)
/* 8052D94C  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8052D950  4B D4 20 EC */	b cLib_addCalc2__FPffff
/* 8052D954  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 8052D958  FC 00 02 10 */	fabs f0, f0
/* 8052D95C  FC 60 00 18 */	frsp f3, f0
/* 8052D960  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8052D964  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 8052D968  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8052D96C  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 8052D970  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052D974  EC 22 00 2A */	fadds f1, f2, f0
/* 8052D978  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8052D97C  4B D4 20 C0 */	b cLib_addCalc2__FPffff
/* 8052D980  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8052D984  FC 00 02 10 */	fabs f0, f0
/* 8052D988  FC 60 00 18 */	frsp f3, f0
/* 8052D98C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8052D990  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 8052D994  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8052D998  4B D4 20 A4 */	b cLib_addCalc2__FPffff
/* 8052D99C  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 8052D9A0  38 80 F6 00 */	li r4, -2560
/* 8052D9A4  38 A0 00 20 */	li r5, 0x20
/* 8052D9A8  38 C0 00 50 */	li r6, 0x50
/* 8052D9AC  4B D4 2C 5C */	b cLib_addCalcAngleS2__FPssss
/* 8052D9B0  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052D9B4  2C 00 00 00 */	cmpwi r0, 0
/* 8052D9B8  40 82 00 60 */	bne lbl_8052DA18
/* 8052D9BC  38 00 00 05 */	li r0, 5
/* 8052D9C0  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052D9C4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8052D9C8  4B D3 9F 8C */	b cM_rndF__Ff
/* 8052D9CC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8052D9D0  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D9D4  FC 00 00 1E */	fctiwz f0, f0
/* 8052D9D8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8052D9DC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8052D9E0  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052D9E4  48 00 00 34 */	b lbl_8052DA18
lbl_8052D9E8:
/* 8052D9E8  C3 FF 00 BC */	lfs f31, 0xbc(r31)
/* 8052D9EC  C3 DF 00 C0 */	lfs f30, 0xc0(r31)
/* 8052D9F0  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 8052D9F4  38 80 F6 00 */	li r4, -2560
/* 8052D9F8  38 A0 00 20 */	li r5, 0x20
/* 8052D9FC  38 C0 00 50 */	li r6, 0x50
/* 8052DA00  4B D4 2C 08 */	b cLib_addCalcAngleS2__FPssss
/* 8052DA04  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052DA08  2C 00 00 00 */	cmpwi r0, 0
/* 8052DA0C  40 82 00 0C */	bne lbl_8052DA18
/* 8052DA10  38 00 00 00 */	li r0, 0
/* 8052DA14  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8052DA18:
/* 8052DA18  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8052DA1C  FC 20 F8 90 */	fmr f1, f31
/* 8052DA20  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8052DA24  FC 60 F0 90 */	fmr f3, f30
/* 8052DA28  4B D4 20 14 */	b cLib_addCalc2__FPffff
/* 8052DA2C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8052DA30  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8052DA34  38 A0 00 08 */	li r5, 8
/* 8052DA38  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052DA3C  4B D4 2B CC */	b cLib_addCalcAngleS2__FPssss
/* 8052DA40  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8052DA44  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 8052DA48  38 A0 00 08 */	li r5, 8
/* 8052DA4C  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052DA50  4B D4 2B B8 */	b cLib_addCalcAngleS2__FPssss
/* 8052DA54  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8052DA58  38 80 03 00 */	li r4, 0x300
/* 8052DA5C  38 A0 00 01 */	li r5, 1
/* 8052DA60  38 C0 00 10 */	li r6, 0x10
/* 8052DA64  4B D4 2B A4 */	b cLib_addCalcAngleS2__FPssss
/* 8052DA68  38 60 00 00 */	li r3, 0
/* 8052DA6C  38 80 00 00 */	li r4, 0
/* 8052DA70  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 8052DA74  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l
/* 8052DA78  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8052DA7C  38 00 00 03 */	li r0, 3
/* 8052DA80  7C 09 03 A6 */	mtctr r0
lbl_8052DA84:
/* 8052DA84  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8052DA88  1C 00 05 14 */	mulli r0, r0, 0x514
/* 8052DA8C  7C 00 22 14 */	add r0, r0, r4
/* 8052DA90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8052DA94  7C 06 04 2E */	lfsx f0, r6, r0
/* 8052DA98  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052DA9C  FC 00 00 1E */	fctiwz f0, f0
/* 8052DAA0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8052DAA4  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8052DAA8  38 03 06 F2 */	addi r0, r3, 0x6f2
/* 8052DAAC  7C BE 03 2E */	sthx r5, r30, r0
/* 8052DAB0  38 63 00 06 */	addi r3, r3, 6
/* 8052DAB4  38 84 3E 80 */	addi r4, r4, 0x3e80
/* 8052DAB8  42 00 FF CC */	bdnz lbl_8052DA84
/* 8052DABC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8052DAC0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8052DAC4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8052DAC8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8052DACC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8052DAD0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8052DAD4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8052DAD8  7C 08 03 A6 */	mtlr r0
/* 8052DADC  38 21 00 70 */	addi r1, r1, 0x70
/* 8052DAE0  4E 80 00 20 */	blr 
