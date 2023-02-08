lbl_80C110F8:
/* 80C110F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C110FC  7C 08 02 A6 */	mflr r0
/* 80C11100  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C11104  39 61 00 60 */	addi r11, r1, 0x60
/* 80C11108  4B 75 10 D5 */	bl _savegpr_29
/* 80C1110C  7C 7E 1B 78 */	mr r30, r3
/* 80C11110  3C 60 80 C1 */	lis r3, mCcDCyl__14daObjGraRock_c@ha /* 0x80C123BC@ha */
/* 80C11114  3B E3 23 BC */	addi r31, r3, mCcDCyl__14daObjGraRock_c@l /* 0x80C123BC@l */
/* 80C11118  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C1111C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C11120  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C11124  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C11128  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C1112C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C11130  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C11134  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C11138  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80C1113C  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80C11140  A8 DE 04 E0 */	lha r6, 0x4e0(r30)
/* 80C11144  4B 3F B0 C5 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C11148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C1114C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C11150  38 81 00 10 */	addi r4, r1, 0x10
/* 80C11154  38 BE 05 50 */	addi r5, r30, 0x550
/* 80C11158  4B 73 5C 15 */	bl PSMTXMultVec
/* 80C1115C  38 7E 05 50 */	addi r3, r30, 0x550
/* 80C11160  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C11164  7C 65 1B 78 */	mr r5, r3
/* 80C11168  4B 73 5F 29 */	bl PSVECAdd
/* 80C1116C  38 60 00 08 */	li r3, 8
/* 80C11170  38 80 00 05 */	li r4, 5
/* 80C11174  4B 54 49 61 */	bl daNpcF_getDistTableIdx__Fii
/* 80C11178  98 7E 05 44 */	stb r3, 0x544(r30)
/* 80C1117C  38 00 00 01 */	li r0, 1
/* 80C11180  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C11184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C11188  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1118C  3B A3 56 B8 */	addi r29, r3, 0x56b8
/* 80C11190  7F A3 EB 78 */	mr r3, r29
/* 80C11194  4B 46 26 51 */	bl LockonTruth__12dAttention_cFv
/* 80C11198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C1119C  41 82 01 78 */	beq lbl_80C11314
/* 80C111A0  7F A3 EB 78 */	mr r3, r29
/* 80C111A4  38 80 00 00 */	li r4, 0
/* 80C111A8  4B 46 23 95 */	bl LockonTarget__12dAttention_cFl
/* 80C111AC  7C 03 F0 40 */	cmplw r3, r30
/* 80C111B0  40 82 01 58 */	bne lbl_80C11308
/* 80C111B4  88 1E 09 BC */	lbz r0, 0x9bc(r30)
/* 80C111B8  28 00 00 00 */	cmplwi r0, 0
/* 80C111BC  40 82 01 4C */	bne lbl_80C11308
/* 80C111C0  A8 1E 09 B6 */	lha r0, 0x9b6(r30)
/* 80C111C4  2C 00 00 00 */	cmpwi r0, 0
/* 80C111C8  40 82 01 40 */	bne lbl_80C11308
/* 80C111CC  38 00 00 5A */	li r0, 0x5a
/* 80C111D0  B0 1E 09 B6 */	sth r0, 0x9b6(r30)
/* 80C111D4  38 00 00 03 */	li r0, 3
/* 80C111D8  98 1E 09 BD */	stb r0, 0x9bd(r30)
/* 80C111DC  38 60 00 00 */	li r3, 0
/* 80C111E0  3C 80 00 01 */	lis r4, 1
/* 80C111E4  48 00 11 45 */	bl func_80C12328
/* 80C111E8  7C 7D 07 34 */	extsh r29, r3
/* 80C111EC  38 60 04 00 */	li r3, 0x400
/* 80C111F0  38 80 02 00 */	li r4, 0x200
/* 80C111F4  48 00 11 35 */	bl func_80C12328
/* 80C111F8  7C 60 07 34 */	extsh r0, r3
/* 80C111FC  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 80C11200  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80C11204  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80C11208  3C A0 43 30 */	lis r5, 0x4330
/* 80C1120C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80C11210  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C11214  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C11218  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C1121C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C11220  57 A7 04 38 */	rlwinm r7, r29, 0, 0x10, 0x1c
/* 80C11224  7C 64 3A 14 */	add r3, r4, r7
/* 80C11228  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C1122C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C11230  FC 00 00 1E */	fctiwz f0, f0
/* 80C11234  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C11238  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C1123C  B0 1E 09 B2 */	sth r0, 0x9b2(r30)
/* 80C11240  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80C11244  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80C11248  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C1124C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C11250  7C 04 3C 2E */	lfsx f0, r4, r7
/* 80C11254  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C11258  FC 00 00 1E */	fctiwz f0, f0
/* 80C1125C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C11260  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C11264  B0 1E 09 B4 */	sth r0, 0x9b4(r30)
/* 80C11268  38 60 00 02 */	li r3, 2
/* 80C1126C  38 80 00 02 */	li r4, 2
/* 80C11270  48 00 10 B9 */	bl func_80C12328
/* 80C11274  B0 7E 09 B8 */	sth r3, 0x9b8(r30)
/* 80C11278  38 60 00 02 */	li r3, 2
/* 80C1127C  38 80 00 02 */	li r4, 2
/* 80C11280  48 00 10 A9 */	bl func_80C12328
/* 80C11284  B0 7E 09 BA */	sth r3, 0x9ba(r30)
/* 80C11288  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008029B@ha */
/* 80C1128C  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0008029B@l */
/* 80C11290  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C11294  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C11298  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C1129C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C112A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C112A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C112A8  38 C0 00 00 */	li r6, 0
/* 80C112AC  38 E0 00 00 */	li r7, 0
/* 80C112B0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C112B4  FC 40 08 90 */	fmr f2, f1
/* 80C112B8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C112BC  FC 80 18 90 */	fmr f4, f3
/* 80C112C0  39 00 00 00 */	li r8, 0
/* 80C112C4  4B 69 A6 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C112C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D9@ha */
/* 80C112CC  38 03 01 D9 */	addi r0, r3, 0x01D9 /* 0x000501D9@l */
/* 80C112D0  90 01 00 08 */	stw r0, 8(r1)
/* 80C112D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C112D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C112DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C112E0  38 81 00 08 */	addi r4, r1, 8
/* 80C112E4  38 BE 05 50 */	addi r5, r30, 0x550
/* 80C112E8  38 C0 00 00 */	li r6, 0
/* 80C112EC  38 E0 00 00 */	li r7, 0
/* 80C112F0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C112F4  FC 40 08 90 */	fmr f2, f1
/* 80C112F8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C112FC  FC 80 18 90 */	fmr f4, f3
/* 80C11300  39 00 00 00 */	li r8, 0
/* 80C11304  4B 69 A6 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C11308:
/* 80C11308  38 00 00 01 */	li r0, 1
/* 80C1130C  98 1E 09 BC */	stb r0, 0x9bc(r30)
/* 80C11310  48 00 00 0C */	b lbl_80C1131C
lbl_80C11314:
/* 80C11314  38 00 00 00 */	li r0, 0
/* 80C11318  98 1E 09 BC */	stb r0, 0x9bc(r30)
lbl_80C1131C:
/* 80C1131C  38 7E 09 B6 */	addi r3, r30, 0x9b6
/* 80C11320  48 00 0F D1 */	bl func_80C122F0
/* 80C11324  7C 60 07 35 */	extsh. r0, r3
/* 80C11328  41 82 00 EC */	beq lbl_80C11414
/* 80C1132C  A8 7E 09 B8 */	lha r3, 0x9b8(r30)
/* 80C11330  A8 FE 09 B6 */	lha r7, 0x9b6(r30)
/* 80C11334  54 E0 80 1E */	slwi r0, r7, 0x10
/* 80C11338  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C1133C  38 C0 00 5A */	li r6, 0x5a
/* 80C11340  7C 00 33 D6 */	divw r0, r0, r6
/* 80C11344  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C11348  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C1134C  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C11350  7C 85 04 2E */	lfsx f4, r5, r0
/* 80C11354  A8 1E 09 B2 */	lha r0, 0x9b2(r30)
/* 80C11358  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 80C1135C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C11360  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C11364  3C 80 43 30 */	lis r4, 0x4330
/* 80C11368  90 81 00 38 */	stw r4, 0x38(r1)
/* 80C1136C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C11370  EC 20 18 28 */	fsubs f1, f0, f3
/* 80C11374  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80C11378  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C1137C  90 81 00 30 */	stw r4, 0x30(r1)
/* 80C11380  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C11384  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C11388  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C1138C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80C11390  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C11394  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C11398  FC 00 00 1E */	fctiwz f0, f0
/* 80C1139C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C113A0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C113A4  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80C113A8  A8 7E 09 BA */	lha r3, 0x9ba(r30)
/* 80C113AC  A8 FE 09 B6 */	lha r7, 0x9b6(r30)
/* 80C113B0  54 E0 80 1E */	slwi r0, r7, 0x10
/* 80C113B4  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C113B8  7C 00 33 D6 */	divw r0, r0, r6
/* 80C113BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C113C0  7C 85 04 2E */	lfsx f4, r5, r0
/* 80C113C4  A8 1E 09 B4 */	lha r0, 0x9b4(r30)
/* 80C113C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C113CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C113D0  90 81 00 20 */	stw r4, 0x20(r1)
/* 80C113D4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C113D8  EC 20 18 28 */	fsubs f1, f0, f3
/* 80C113DC  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80C113E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C113E4  90 81 00 40 */	stw r4, 0x40(r1)
/* 80C113E8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C113EC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C113F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C113F4  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C113F8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C113FC  FC 00 00 1E */	fctiwz f0, f0
/* 80C11400  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C11404  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C11408  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80C1140C  7F C3 F3 78 */	mr r3, r30
/* 80C11410  48 00 00 B1 */	bl setPrtcl__14daObjGraRock_cFv
lbl_80C11414:
/* 80C11414  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80C11418  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C1141C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C11420  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C11424  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C11428  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C1142C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C11430  4B 75 0D F9 */	bl _restgpr_29
/* 80C11434  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C11438  7C 08 03 A6 */	mtlr r0
/* 80C1143C  38 21 00 60 */	addi r1, r1, 0x60
/* 80C11440  4E 80 00 20 */	blr 
