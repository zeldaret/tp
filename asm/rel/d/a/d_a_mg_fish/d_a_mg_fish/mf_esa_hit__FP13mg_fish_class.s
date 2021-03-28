lbl_8053109C:
/* 8053109C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805310A0  7C 08 02 A6 */	mflr r0
/* 805310A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 805310A8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805310AC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805310B0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805310B4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 805310B8  7C 7E 1B 78 */	mr r30, r3
/* 805310BC  3C 60 80 53 */	lis r3, lit_3679@ha
/* 805310C0  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 805310C4  80 1E 06 4C */	lwz r0, 0x64c(r30)
/* 805310C8  90 01 00 08 */	stw r0, 8(r1)
/* 805310CC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805310D0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805310D4  38 81 00 08 */	addi r4, r1, 8
/* 805310D8  4B AE 87 20 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805310DC  28 03 00 00 */	cmplwi r3, 0
/* 805310E0  41 82 00 14 */	beq lbl_805310F4
/* 805310E4  41 82 00 44 */	beq lbl_80531128
/* 805310E8  A8 03 0F 7E */	lha r0, 0xf7e(r3)
/* 805310EC  2C 00 00 05 */	cmpwi r0, 5
/* 805310F0  41 82 00 38 */	beq lbl_80531128
lbl_805310F4:
/* 805310F4  38 00 00 05 */	li r0, 5
/* 805310F8  B0 1E 05 B6 */	sth r0, 0x5b6(r30)
/* 805310FC  38 00 00 00 */	li r0, 0
/* 80531100  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80531104  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80531108  4B D3 68 4C */	b cM_rndF__Ff
/* 8053110C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80531110  EC 00 08 2A */	fadds f0, f0, f1
/* 80531114  FC 00 00 1E */	fctiwz f0, f0
/* 80531118  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8053111C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80531120  B0 1E 06 2E */	sth r0, 0x62e(r30)
/* 80531124  48 00 02 94 */	b lbl_805313B8
lbl_80531128:
/* 80531128  38 00 00 02 */	li r0, 2
/* 8053112C  98 1E 06 59 */	stb r0, 0x659(r30)
/* 80531130  98 03 10 A5 */	stb r0, 0x10a5(r3)
/* 80531134  38 00 01 F4 */	li r0, 0x1f4
/* 80531138  B0 1E 06 2E */	sth r0, 0x62e(r30)
/* 8053113C  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 80531140  2C 00 00 01 */	cmpwi r0, 1
/* 80531144  41 82 00 28 */	beq lbl_8053116C
/* 80531148  40 80 00 10 */	bge lbl_80531158
/* 8053114C  2C 00 00 00 */	cmpwi r0, 0
/* 80531150  40 80 00 14 */	bge lbl_80531164
/* 80531154  48 00 02 20 */	b lbl_80531374
lbl_80531158:
/* 80531158  2C 00 00 03 */	cmpwi r0, 3
/* 8053115C  40 80 02 18 */	bge lbl_80531374
/* 80531160  48 00 01 70 */	b lbl_805312D0
lbl_80531164:
/* 80531164  38 00 00 01 */	li r0, 1
/* 80531168  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8053116C:
/* 8053116C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80531170  4B D3 68 1C */	b cM_rndFX__Ff
/* 80531174  FC 00 08 1E */	fctiwz f0, f1
/* 80531178  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8053117C  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80531180  A8 7E 05 F4 */	lha r3, 0x5f4(r30)
/* 80531184  3C 03 00 01 */	addis r0, r3, 1
/* 80531188  7C 60 22 14 */	add r3, r0, r4
/* 8053118C  38 03 80 00 */	addi r0, r3, -32768
/* 80531190  7C 04 07 34 */	extsh r4, r0
/* 80531194  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80531198  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8053119C  80 63 00 00 */	lwz r3, 0(r3)
/* 805311A0  4B AD B2 3C */	b mDoMtx_YrotS__FPA4_fs
/* 805311A4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805311A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805311AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805311B0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805311B4  4B D3 67 A0 */	b cM_rndF__Ff
/* 805311B8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 805311BC  EC 00 08 2A */	fadds f0, f0, f1
/* 805311C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805311C4  38 61 00 24 */	addi r3, r1, 0x24
/* 805311C8  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 805311CC  4B D3 FD 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 805311D0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 805311D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805311D8  7C 65 1B 78 */	mr r5, r3
/* 805311DC  4B E1 5E B4 */	b PSVECAdd
/* 805311E0  7F C3 F3 78 */	mr r3, r30
/* 805311E4  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 805311E8  4B FF A7 E5 */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 805311EC  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 805311F0  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 805311F4  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 805311F8  EC 22 00 28 */	fsubs f1, f2, f0
/* 805311FC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80531200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531204  40 81 00 0C */	ble lbl_80531210
/* 80531208  EC 02 00 28 */	fsubs f0, f2, f0
/* 8053120C  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
lbl_80531210:
/* 80531210  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80531214  C3 FE 05 DC */	lfs f31, 0x5dc(r30)
/* 80531218  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8053121C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531224  40 81 01 50 */	ble lbl_80531374
/* 80531228  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8053122C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531230  40 80 01 44 */	bge lbl_80531374
/* 80531234  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80531238  4B D3 67 1C */	b cM_rndF__Ff
/* 8053123C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80531240  EC 20 08 2A */	fadds f1, f0, f1
/* 80531244  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80531248  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8053124C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80531250  EC 1F 00 2A */	fadds f0, f31, f0
/* 80531254  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80531258  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8053125C  4B D3 66 F8 */	b cM_rndF__Ff
/* 80531260  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80531264  EC 00 08 2A */	fadds f0, f0, f1
/* 80531268  FC 00 00 1E */	fctiwz f0, f0
/* 8053126C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80531270  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80531274  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80531278  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8053127C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80531280  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80531284  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80531288  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8053128C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80531290  38 61 00 18 */	addi r3, r1, 0x18
/* 80531294  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80531298  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 8053129C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805312A0  FC 00 00 1E */	fctiwz f0, f0
/* 805312A4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805312A8  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 805312AC  28 1E 00 00 */	cmplwi r30, 0
/* 805312B0  41 82 00 0C */	beq lbl_805312BC
/* 805312B4  80 BE 00 04 */	lwz r5, 4(r30)
/* 805312B8  48 00 00 08 */	b lbl_805312C0
lbl_805312BC:
/* 805312BC  38 A0 FF FF */	li r5, -1
lbl_805312C0:
/* 805312C0  38 C0 00 05 */	li r6, 5
/* 805312C4  4B C7 6E FC */	b dKy_Sound_set__F4cXyziUii
/* 805312C8  38 00 00 02 */	li r0, 2
/* 805312CC  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_805312D0:
/* 805312D0  38 61 00 0C */	addi r3, r1, 0xc
/* 805312D4  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 805312D8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805312DC  4B D3 58 58 */	b __mi__4cXyzCFRC3Vec
/* 805312E0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805312E4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805312E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805312EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805312F0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805312F4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 805312F8  4B D3 63 7C */	b cM_atan2s__Fff
/* 805312FC  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 80531300  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80531304  EC 20 00 32 */	fmuls f1, f0, f0
/* 80531308  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8053130C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80531310  EC 41 00 2A */	fadds f2, f1, f0
/* 80531314  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531318  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8053131C  40 81 00 0C */	ble lbl_80531328
/* 80531320  FC 00 10 34 */	frsqrte f0, f2
/* 80531324  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80531328:
/* 80531328  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8053132C  4B D3 63 48 */	b cM_atan2s__Fff
/* 80531330  7C 03 00 D0 */	neg r0, r3
/* 80531334  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 80531338  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8053133C  2C 00 00 00 */	cmpwi r0, 0
/* 80531340  40 82 00 0C */	bne lbl_8053134C
/* 80531344  38 00 00 01 */	li r0, 1
/* 80531348  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8053134C:
/* 8053134C  A8 1E 07 32 */	lha r0, 0x732(r30)
/* 80531350  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80531354  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80531358  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8053135C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80531360  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80531364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531368  40 81 00 0C */	ble lbl_80531374
/* 8053136C  7F C3 F3 78 */	mr r3, r30
/* 80531370  4B FF 8A 0D */	bl hit_vib_set__FP13mg_fish_class
lbl_80531374:
/* 80531374  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80531378  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8053137C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80531380  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80531384  4B D3 E6 B8 */	b cLib_addCalc2__FPffff
/* 80531388  38 00 08 00 */	li r0, 0x800
/* 8053138C  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80531390  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80531394  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 80531398  38 A0 00 02 */	li r5, 2
/* 8053139C  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 805313A0  4B D3 F2 68 */	b cLib_addCalcAngleS2__FPssss
/* 805313A4  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 805313A8  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 805313AC  38 A0 00 02 */	li r5, 2
/* 805313B0  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 805313B4  4B D3 F2 54 */	b cLib_addCalcAngleS2__FPssss
lbl_805313B8:
/* 805313B8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805313BC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805313C0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805313C4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 805313C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805313CC  7C 08 03 A6 */	mtlr r0
/* 805313D0  38 21 00 60 */	addi r1, r1, 0x60
/* 805313D4  4E 80 00 20 */	blr 
