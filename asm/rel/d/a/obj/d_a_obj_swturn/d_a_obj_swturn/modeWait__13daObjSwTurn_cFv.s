lbl_80D01198:
/* 80D01198  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D0119C  7C 08 02 A6 */	mflr r0
/* 80D011A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D011A4  39 61 00 60 */	addi r11, r1, 0x60
/* 80D011A8  4B 66 10 2D */	bl _savegpr_27
/* 80D011AC  7C 7F 1B 78 */	mr r31, r3
/* 80D011B0  3C 60 80 D0 */	lis r3, l_bmd@ha /* 0x80D0206C@ha */
/* 80D011B4  3B A3 20 6C */	addi r29, r3, l_bmd@l /* 0x80D0206C@l */
/* 80D011B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D011BC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D011C0  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80D011C4  3B 60 00 01 */	li r27, 1
/* 80D011C8  38 00 FF FF */	li r0, -1
/* 80D011CC  88 7F 05 AF */	lbz r3, 0x5af(r31)
/* 80D011D0  28 03 00 00 */	cmplwi r3, 0
/* 80D011D4  41 82 03 54 */	beq lbl_80D01528
/* 80D011D8  38 C0 00 00 */	li r6, 0
/* 80D011DC  38 60 00 02 */	li r3, 2
/* 80D011E0  7C 69 03 A6 */	mtctr r3
lbl_80D011E4:
/* 80D011E4  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 80D011E8  54 63 07 7B */	rlwinm. r3, r3, 0, 0x1d, 0x1d
/* 80D011EC  41 82 00 14 */	beq lbl_80D01200
/* 80D011F0  88 9F 05 AD */	lbz r4, 0x5ad(r31)
/* 80D011F4  38 7D 00 1C */	addi r3, r29, 0x1c
/* 80D011F8  7C 63 20 AE */	lbzx r3, r3, r4
/* 80D011FC  48 00 00 10 */	b lbl_80D0120C
lbl_80D01200:
/* 80D01200  88 9F 05 AD */	lbz r4, 0x5ad(r31)
/* 80D01204  38 7D 00 20 */	addi r3, r29, 0x20
/* 80D01208  7C 63 20 AE */	lbzx r3, r3, r4
lbl_80D0120C:
/* 80D0120C  38 A6 05 B0 */	addi r5, r6, 0x5b0
/* 80D01210  7C 9F 28 AE */	lbzx r4, r31, r5
/* 80D01214  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80D01218  7C 04 18 40 */	cmplw r4, r3
/* 80D0121C  40 82 00 08 */	bne lbl_80D01224
/* 80D01220  90 DF 05 C0 */	stw r6, 0x5c0(r31)
lbl_80D01224:
/* 80D01224  7C 7F 28 AE */	lbzx r3, r31, r5
/* 80D01228  28 03 00 00 */	cmplwi r3, 0
/* 80D0122C  41 82 00 08 */	beq lbl_80D01234
/* 80D01230  7C C0 33 78 */	mr r0, r6
lbl_80D01234:
/* 80D01234  38 C6 00 01 */	addi r6, r6, 1
/* 80D01238  42 00 FF AC */	bdnz lbl_80D011E4
/* 80D0123C  88 7F 05 AD */	lbz r3, 0x5ad(r31)
/* 80D01240  28 03 00 00 */	cmplwi r3, 0
/* 80D01244  40 82 00 44 */	bne lbl_80D01288
/* 80D01248  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80D0124C  2C 04 00 00 */	cmpwi r4, 0
/* 80D01250  40 82 00 10 */	bne lbl_80D01260
/* 80D01254  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D01258  2C 03 00 01 */	cmpwi r3, 1
/* 80D0125C  41 82 00 18 */	beq lbl_80D01274
lbl_80D01260:
/* 80D01260  2C 04 00 01 */	cmpwi r4, 1
/* 80D01264  40 82 00 1C */	bne lbl_80D01280
/* 80D01268  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D0126C  2C 03 00 00 */	cmpwi r3, 0
/* 80D01270  40 82 00 10 */	bne lbl_80D01280
lbl_80D01274:
/* 80D01274  38 60 FF FF */	li r3, -1
/* 80D01278  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80D0127C  48 00 00 64 */	b lbl_80D012E0
lbl_80D01280:
/* 80D01280  3B 60 00 00 */	li r27, 0
/* 80D01284  48 00 00 5C */	b lbl_80D012E0
lbl_80D01288:
/* 80D01288  28 03 00 01 */	cmplwi r3, 1
/* 80D0128C  40 82 00 50 */	bne lbl_80D012DC
/* 80D01290  80 BF 05 C0 */	lwz r5, 0x5c0(r31)
/* 80D01294  2C 05 00 00 */	cmpwi r5, 0
/* 80D01298  40 82 00 14 */	bne lbl_80D012AC
/* 80D0129C  A8 9F 05 C4 */	lha r4, 0x5c4(r31)
/* 80D012A0  88 7F 05 CE */	lbz r3, 0x5ce(r31)
/* 80D012A4  7C 04 18 00 */	cmpw r4, r3
/* 80D012A8  41 82 00 20 */	beq lbl_80D012C8
lbl_80D012AC:
/* 80D012AC  2C 05 00 01 */	cmpwi r5, 1
/* 80D012B0  40 82 00 24 */	bne lbl_80D012D4
/* 80D012B4  A8 9F 05 C4 */	lha r4, 0x5c4(r31)
/* 80D012B8  88 7F 05 CF */	lbz r3, 0x5cf(r31)
/* 80D012BC  7C 63 00 D0 */	neg r3, r3
/* 80D012C0  7C 04 18 00 */	cmpw r4, r3
/* 80D012C4  40 82 00 10 */	bne lbl_80D012D4
lbl_80D012C8:
/* 80D012C8  38 60 FF FF */	li r3, -1
/* 80D012CC  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80D012D0  48 00 00 10 */	b lbl_80D012E0
lbl_80D012D4:
/* 80D012D4  3B 60 00 00 */	li r27, 0
/* 80D012D8  48 00 00 08 */	b lbl_80D012E0
lbl_80D012DC:
/* 80D012DC  3B 60 00 00 */	li r27, 0
lbl_80D012E0:
/* 80D012E0  38 A0 00 00 */	li r5, 0
/* 80D012E4  88 7F 05 AD */	lbz r3, 0x5ad(r31)
/* 80D012E8  28 03 00 00 */	cmplwi r3, 0
/* 80D012EC  40 82 00 34 */	bne lbl_80D01320
/* 80D012F0  2C 00 00 00 */	cmpwi r0, 0
/* 80D012F4  40 82 00 10 */	bne lbl_80D01304
/* 80D012F8  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D012FC  2C 03 00 00 */	cmpwi r3, 0
/* 80D01300  41 82 00 18 */	beq lbl_80D01318
lbl_80D01304:
/* 80D01304  2C 00 00 01 */	cmpwi r0, 1
/* 80D01308  40 82 00 5C */	bne lbl_80D01364
/* 80D0130C  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D01310  2C 03 00 01 */	cmpwi r3, 1
/* 80D01314  40 82 00 50 */	bne lbl_80D01364
lbl_80D01318:
/* 80D01318  38 A0 00 01 */	li r5, 1
/* 80D0131C  48 00 00 48 */	b lbl_80D01364
lbl_80D01320:
/* 80D01320  28 03 00 01 */	cmplwi r3, 1
/* 80D01324  40 82 00 40 */	bne lbl_80D01364
/* 80D01328  38 A0 00 01 */	li r5, 1
/* 80D0132C  2C 00 00 00 */	cmpwi r0, 0
/* 80D01330  40 82 00 14 */	bne lbl_80D01344
/* 80D01334  A8 9F 05 C4 */	lha r4, 0x5c4(r31)
/* 80D01338  88 7F 05 CE */	lbz r3, 0x5ce(r31)
/* 80D0133C  7C 04 18 00 */	cmpw r4, r3
/* 80D01340  41 82 00 20 */	beq lbl_80D01360
lbl_80D01344:
/* 80D01344  2C 00 00 01 */	cmpwi r0, 1
/* 80D01348  40 82 00 1C */	bne lbl_80D01364
/* 80D0134C  A8 9F 05 C4 */	lha r4, 0x5c4(r31)
/* 80D01350  88 7F 05 CF */	lbz r3, 0x5cf(r31)
/* 80D01354  7C 63 00 D0 */	neg r3, r3
/* 80D01358  7C 04 18 00 */	cmpw r4, r3
/* 80D0135C  40 82 00 08 */	bne lbl_80D01364
lbl_80D01360:
/* 80D01360  38 A0 00 00 */	li r5, 0
lbl_80D01364:
/* 80D01364  54 A3 06 3F */	clrlwi. r3, r5, 0x18
/* 80D01368  41 82 01 74 */	beq lbl_80D014DC
/* 80D0136C  2C 00 00 00 */	cmpwi r0, 0
/* 80D01370  40 82 00 1C */	bne lbl_80D0138C
/* 80D01374  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80D01378  38 80 01 F4 */	li r4, 0x1f4
/* 80D0137C  38 A0 00 3C */	li r5, 0x3c
/* 80D01380  38 C0 00 05 */	li r6, 5
/* 80D01384  4B 56 F2 85 */	bl cLib_addCalcAngleS2__FPssss
/* 80D01388  48 00 00 18 */	b lbl_80D013A0
lbl_80D0138C:
/* 80D0138C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80D01390  38 80 FE 0C */	li r4, -500
/* 80D01394  38 A0 00 3C */	li r5, 0x3c
/* 80D01398  38 C0 00 05 */	li r6, 5
/* 80D0139C  4B 56 F2 6D */	bl cLib_addCalcAngleS2__FPssss
lbl_80D013A0:
/* 80D013A0  88 1F 05 C6 */	lbz r0, 0x5c6(r31)
/* 80D013A4  28 00 00 12 */	cmplwi r0, 0x12
/* 80D013A8  40 82 00 B4 */	bne lbl_80D0145C
/* 80D013AC  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80D013B0  28 00 00 00 */	cmplwi r0, 0
/* 80D013B4  40 82 00 54 */	bne lbl_80D01408
/* 80D013B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D013BC  7C 03 07 74 */	extsb r3, r0
/* 80D013C0  4B 32 BC AD */	bl dComIfGp_getReverb__Fi
/* 80D013C4  7C 67 1B 78 */	mr r7, r3
/* 80D013C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801AA@ha */
/* 80D013CC  38 03 01 AA */	addi r0, r3, 0x01AA /* 0x000801AA@l */
/* 80D013D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D013D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D013D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D013DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D013E0  38 81 00 10 */	addi r4, r1, 0x10
/* 80D013E4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D013E8  38 C0 00 00 */	li r6, 0
/* 80D013EC  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80D013F0  FC 40 08 90 */	fmr f2, f1
/* 80D013F4  C0 7D 00 2C */	lfs f3, 0x2c(r29)
/* 80D013F8  FC 80 18 90 */	fmr f4, f3
/* 80D013FC  39 00 00 00 */	li r8, 0
/* 80D01400  4B 5A A5 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D01404  48 00 00 58 */	b lbl_80D0145C
lbl_80D01408:
/* 80D01408  28 00 00 01 */	cmplwi r0, 1
/* 80D0140C  40 82 00 50 */	bne lbl_80D0145C
/* 80D01410  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D01414  7C 03 07 74 */	extsb r3, r0
/* 80D01418  4B 32 BC 55 */	bl dComIfGp_getReverb__Fi
/* 80D0141C  7C 67 1B 78 */	mr r7, r3
/* 80D01420  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801AF@ha */
/* 80D01424  38 03 01 AF */	addi r0, r3, 0x01AF /* 0x000801AF@l */
/* 80D01428  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0142C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D01430  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D01434  80 63 00 00 */	lwz r3, 0(r3)
/* 80D01438  38 81 00 0C */	addi r4, r1, 0xc
/* 80D0143C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D01440  38 C0 00 00 */	li r6, 0
/* 80D01444  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80D01448  FC 40 08 90 */	fmr f2, f1
/* 80D0144C  C0 7D 00 2C */	lfs f3, 0x2c(r29)
/* 80D01450  FC 80 18 90 */	fmr f4, f3
/* 80D01454  39 00 00 00 */	li r8, 0
/* 80D01458  4B 5A A5 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D0145C:
/* 80D0145C  88 7F 05 C6 */	lbz r3, 0x5c6(r31)
/* 80D01460  38 03 00 01 */	addi r0, r3, 1
/* 80D01464  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 80D01468  88 1F 05 C6 */	lbz r0, 0x5c6(r31)
/* 80D0146C  1C 00 03 E0 */	mulli r0, r0, 0x3e0
/* 80D01470  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D01474  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D01478  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D0147C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80D01480  FC 00 02 10 */	fabs f0, f0
/* 80D01484  FC 60 00 18 */	frsp f3, f0
/* 80D01488  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 80D0148C  A8 1F 05 BC */	lha r0, 0x5bc(r31)
/* 80D01490  C8 3D 00 38 */	lfd f1, 0x38(r29)
/* 80D01494  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D01498  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0149C  3C 00 43 30 */	lis r0, 0x4330
/* 80D014A0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80D014A4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80D014A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D014AC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80D014B0  EC 02 00 2A */	fadds f0, f2, f0
/* 80D014B4  FC 00 00 1E */	fctiwz f0, f0
/* 80D014B8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80D014BC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80D014C0  B0 1F 05 BA */	sth r0, 0x5ba(r31)
/* 80D014C4  A8 7F 05 BA */	lha r3, 0x5ba(r31)
/* 80D014C8  A8 1F 05 DC */	lha r0, 0x5dc(r31)
/* 80D014CC  7C 03 00 00 */	cmpw r3, r0
/* 80D014D0  40 82 00 0C */	bne lbl_80D014DC
/* 80D014D4  38 03 00 01 */	addi r0, r3, 1
/* 80D014D8  B0 1F 05 BA */	sth r0, 0x5ba(r31)
lbl_80D014DC:
/* 80D014DC  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80D014E0  2C 00 FF FF */	cmpwi r0, -1
/* 80D014E4  41 82 01 00 */	beq lbl_80D015E4
/* 80D014E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D014EC  54 04 66 3E */	rlwinm r4, r0, 0xc, 0x18, 0x1f
/* 80D014F0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D014F4  41 82 00 18 */	beq lbl_80D0150C
/* 80D014F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D014FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D01500  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D01504  7C 05 07 74 */	extsb r5, r0
/* 80D01508  4B 33 3C F9 */	bl onSwitch__10dSv_info_cFii
lbl_80D0150C:
/* 80D0150C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80D01510  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80D01514  60 00 08 00 */	ori r0, r0, 0x800
/* 80D01518  90 03 05 70 */	stw r0, 0x570(r3)
/* 80D0151C  7F E3 FB 78 */	mr r3, r31
/* 80D01520  48 00 02 51 */	bl init_modeRotate__13daObjSwTurn_cFv
/* 80D01524  48 00 00 C0 */	b lbl_80D015E4
lbl_80D01528:
/* 80D01528  88 1F 05 C6 */	lbz r0, 0x5c6(r31)
/* 80D0152C  28 00 00 12 */	cmplwi r0, 0x12
/* 80D01530  41 80 00 0C */	blt lbl_80D0153C
/* 80D01534  38 00 00 01 */	li r0, 1
/* 80D01538  98 1F 05 D1 */	stb r0, 0x5d1(r31)
lbl_80D0153C:
/* 80D0153C  38 00 00 00 */	li r0, 0
/* 80D01540  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 80D01544  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 80D01548  AB DF 05 BA */	lha r30, 0x5ba(r31)
/* 80D0154C  38 7F 05 BA */	addi r3, r31, 0x5ba
/* 80D01550  38 80 00 00 */	li r4, 0
/* 80D01554  38 A0 00 04 */	li r5, 4
/* 80D01558  38 C0 00 32 */	li r6, 0x32
/* 80D0155C  38 E0 00 05 */	li r7, 5
/* 80D01560  4B 56 EF E1 */	bl cLib_addCalcAngleS__FPsssss
/* 80D01564  7F C0 07 35 */	extsh. r0, r30
/* 80D01568  41 82 00 7C */	beq lbl_80D015E4
/* 80D0156C  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80D01570  2C 00 00 00 */	cmpwi r0, 0
/* 80D01574  40 82 00 70 */	bne lbl_80D015E4
/* 80D01578  88 1F 05 D1 */	lbz r0, 0x5d1(r31)
/* 80D0157C  28 00 00 00 */	cmplwi r0, 0
/* 80D01580  41 82 00 64 */	beq lbl_80D015E4
/* 80D01584  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80D01588  28 00 00 00 */	cmplwi r0, 0
/* 80D0158C  40 82 00 58 */	bne lbl_80D015E4
/* 80D01590  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D01594  7C 03 07 74 */	extsb r3, r0
/* 80D01598  4B 32 BA D5 */	bl dComIfGp_getReverb__Fi
/* 80D0159C  7C 67 1B 78 */	mr r7, r3
/* 80D015A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801AB@ha */
/* 80D015A4  38 03 01 AB */	addi r0, r3, 0x01AB /* 0x000801AB@l */
/* 80D015A8  90 01 00 08 */	stw r0, 8(r1)
/* 80D015AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D015B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D015B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D015B8  38 81 00 08 */	addi r4, r1, 8
/* 80D015BC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D015C0  38 C0 00 00 */	li r6, 0
/* 80D015C4  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 80D015C8  FC 40 08 90 */	fmr f2, f1
/* 80D015CC  C0 7D 00 2C */	lfs f3, 0x2c(r29)
/* 80D015D0  FC 80 18 90 */	fmr f4, f3
/* 80D015D4  39 00 00 00 */	li r8, 0
/* 80D015D8  4B 5A A3 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D015DC  38 00 00 00 */	li r0, 0
/* 80D015E0  98 1F 05 D1 */	stb r0, 0x5d1(r31)
lbl_80D015E4:
/* 80D015E4  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80D015E8  28 00 00 01 */	cmplwi r0, 1
/* 80D015EC  40 82 00 2C */	bne lbl_80D01618
/* 80D015F0  A8 BF 05 BA */	lha r5, 0x5ba(r31)
/* 80D015F4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80D015F8  A8 1F 05 C4 */	lha r0, 0x5c4(r31)
/* 80D015FC  54 03 70 22 */	slwi r3, r0, 0xe
/* 80D01600  38 00 00 03 */	li r0, 3
/* 80D01604  7C 03 03 D6 */	divw r0, r3, r0
/* 80D01608  7C 00 2A 14 */	add r0, r0, r5
/* 80D0160C  7C 04 02 14 */	add r0, r4, r0
/* 80D01610  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D01614  48 00 00 20 */	b lbl_80D01634
lbl_80D01618:
/* 80D01618  A8 9F 05 BA */	lha r4, 0x5ba(r31)
/* 80D0161C  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80D01620  A8 1F 05 C4 */	lha r0, 0x5c4(r31)
/* 80D01624  54 00 70 22 */	slwi r0, r0, 0xe
/* 80D01628  7C 00 22 14 */	add r0, r0, r4
/* 80D0162C  7C 03 02 14 */	add r0, r3, r0
/* 80D01630  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80D01634:
/* 80D01634  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80D01638  41 82 00 2C */	beq lbl_80D01664
/* 80D0163C  38 80 00 00 */	li r4, 0
/* 80D01640  38 60 00 00 */	li r3, 0
/* 80D01644  38 00 00 02 */	li r0, 2
/* 80D01648  7C 09 03 A6 */	mtctr r0
lbl_80D0164C:
/* 80D0164C  38 04 05 B0 */	addi r0, r4, 0x5b0
/* 80D01650  7C 7F 01 AE */	stbx r3, r31, r0
/* 80D01654  38 84 00 01 */	addi r4, r4, 1
/* 80D01658  42 00 FF F4 */	bdnz lbl_80D0164C
/* 80D0165C  38 00 FF FF */	li r0, -1
/* 80D01660  90 1F 05 C0 */	stw r0, 0x5c0(r31)
lbl_80D01664:
/* 80D01664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D01668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0166C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D01670  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D01674  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D01678  41 82 00 CC */	beq lbl_80D01744
/* 80D0167C  38 61 00 14 */	addi r3, r1, 0x14
/* 80D01680  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80D01684  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D01688  4B 56 54 AD */	bl __mi__4cXyzCFRC3Vec
/* 80D0168C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D01690  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D01694  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D01698  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D0169C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D016A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D016A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D016A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D016AC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80D016B0  7C 00 00 D0 */	neg r0, r0
/* 80D016B4  7C 04 07 34 */	extsh r4, r0
/* 80D016B8  4B 30 AD 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D016BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D016C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D016C4  38 81 00 20 */	addi r4, r1, 0x20
/* 80D016C8  7C 85 23 78 */	mr r5, r4
/* 80D016CC  4B 64 56 A1 */	bl PSMTXMultVec
/* 80D016D0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80D016D4  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80D016D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D016DC  40 81 00 38 */	ble lbl_80D01714
/* 80D016E0  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D016E4  88 1F 05 CF */	lbz r0, 0x5cf(r31)
/* 80D016E8  7C 00 00 D0 */	neg r0, r0
/* 80D016EC  7C 03 00 00 */	cmpw r3, r0
/* 80D016F0  40 82 00 14 */	bne lbl_80D01704
/* 80D016F4  38 00 00 00 */	li r0, 0
/* 80D016F8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D016FC  98 03 00 14 */	stb r0, 0x14(r3)
/* 80D01700  48 00 00 50 */	b lbl_80D01750
lbl_80D01704:
/* 80D01704  38 00 00 01 */	li r0, 1
/* 80D01708  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D0170C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80D01710  48 00 00 40 */	b lbl_80D01750
lbl_80D01714:
/* 80D01714  A8 7F 05 C4 */	lha r3, 0x5c4(r31)
/* 80D01718  88 1F 05 CE */	lbz r0, 0x5ce(r31)
/* 80D0171C  7C 03 00 00 */	cmpw r3, r0
/* 80D01720  40 82 00 14 */	bne lbl_80D01734
/* 80D01724  38 00 00 00 */	li r0, 0
/* 80D01728  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D0172C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80D01730  48 00 00 20 */	b lbl_80D01750
lbl_80D01734:
/* 80D01734  38 00 00 01 */	li r0, 1
/* 80D01738  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D0173C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80D01740  48 00 00 10 */	b lbl_80D01750
lbl_80D01744:
/* 80D01744  38 00 00 01 */	li r0, 1
/* 80D01748  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D0174C  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80D01750:
/* 80D01750  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80D01754  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 80D01758  39 61 00 60 */	addi r11, r1, 0x60
/* 80D0175C  4B 66 0A C5 */	bl _restgpr_27
/* 80D01760  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D01764  7C 08 03 A6 */	mtlr r0
/* 80D01768  38 21 00 60 */	addi r1, r1, 0x60
/* 80D0176C  4E 80 00 20 */	blr 
