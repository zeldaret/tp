lbl_80683FF4:
/* 80683FF4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80683FF8  7C 08 02 A6 */	mflr r0
/* 80683FFC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80684000  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80684004  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80684008  39 61 00 50 */	addi r11, r1, 0x50
/* 8068400C  4B CD E1 CD */	bl _savegpr_28
/* 80684010  7C 7D 1B 78 */	mr r29, r3
/* 80684014  7C 9E 23 78 */	mr r30, r4
/* 80684018  3C 60 80 68 */	lis r3, lit_3770@ha /* 0x80685434@ha */
/* 8068401C  3B E3 54 34 */	addi r31, r3, lit_3770@l /* 0x80685434@l */
/* 80684020  38 61 00 0C */	addi r3, r1, 0xc
/* 80684024  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80684028  38 BE 00 10 */	addi r5, r30, 0x10
/* 8068402C  4B BE 2B 09 */	bl __mi__4cXyzCFRC3Vec
/* 80684030  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80684034  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80684038  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8068403C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80684040  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80684044  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80684048  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068404C  EC 03 00 2A */	fadds f0, f3, f0
/* 80684050  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80684054  A8 9E 00 48 */	lha r4, 0x48(r30)
/* 80684058  1C 04 11 94 */	mulli r0, r4, 0x1194
/* 8068405C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80684060  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80684064  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80684068  7F E3 04 2E */	lfsx f31, r3, r0
/* 8068406C  1C 04 15 7C */	mulli r0, r4, 0x157c
/* 80684070  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80684074  7C 63 04 2E */	lfsx f3, r3, r0
/* 80684078  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8068407C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80684080  FC 00 00 1E */	fctiwz f0, f0
/* 80684084  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80684088  83 81 00 2C */	lwz r28, 0x2c(r1)
/* 8068408C  4B BE 35 E9 */	bl cM_atan2s__Fff
/* 80684090  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80684094  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80684098  FC 00 00 1E */	fctiwz f0, f0
/* 8068409C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806840A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806840A4  7C 00 1A 14 */	add r0, r0, r3
/* 806840A8  7C 04 07 34 */	extsh r4, r0
/* 806840AC  38 7E 00 36 */	addi r3, r30, 0x36
/* 806840B0  38 A0 00 01 */	li r5, 1
/* 806840B4  38 C0 10 00 */	li r6, 0x1000
/* 806840B8  4B BE C5 51 */	bl cLib_addCalcAngleS2__FPssss
/* 806840BC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806840C0  EC 20 00 32 */	fmuls f1, f0, f0
/* 806840C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806840C8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806840CC  EC 41 00 2A */	fadds f2, f1, f0
/* 806840D0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806840D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806840D8  40 81 00 0C */	ble lbl_806840E4
/* 806840DC  FC 00 10 34 */	frsqrte f0, f2
/* 806840E0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806840E4:
/* 806840E4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 806840E8  4B BE 35 8D */	bl cM_atan2s__Fff
/* 806840EC  7C 03 E0 50 */	subf r0, r3, r28
/* 806840F0  7C 04 07 34 */	extsh r4, r0
/* 806840F4  38 7E 00 34 */	addi r3, r30, 0x34
/* 806840F8  38 A0 00 01 */	li r5, 1
/* 806840FC  38 C0 10 00 */	li r6, 0x1000
/* 80684100  4B BE C5 09 */	bl cLib_addCalcAngleS2__FPssss
/* 80684104  A8 7E 00 48 */	lha r3, 0x48(r30)
/* 80684108  38 03 00 01 */	addi r0, r3, 1
/* 8068410C  B0 1E 00 48 */	sth r0, 0x48(r30)
/* 80684110  38 7E 00 38 */	addi r3, r30, 0x38
/* 80684114  38 80 80 00 */	li r4, -32768
/* 80684118  38 A0 00 04 */	li r5, 4
/* 8068411C  38 C0 04 00 */	li r6, 0x400
/* 80684120  4B BE C4 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 80684124  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80684128  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 8068412C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80684130  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80684134  80 63 00 00 */	lwz r3, 0(r3)
/* 80684138  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 8068413C  4B 98 82 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80684140  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80684144  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80684148  80 63 00 00 */	lwz r3, 0(r3)
/* 8068414C  A8 9E 00 34 */	lha r4, 0x34(r30)
/* 80684150  4B 98 82 4D */	bl mDoMtx_XrotM__FPA4_fs
/* 80684154  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80684158  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8068415C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80684160  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80684164  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80684168  38 61 00 18 */	addi r3, r1, 0x18
/* 8068416C  38 9E 00 28 */	addi r4, r30, 0x28
/* 80684170  4B BE CD 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80684174  38 7E 00 10 */	addi r3, r30, 0x10
/* 80684178  38 9E 00 28 */	addi r4, r30, 0x28
/* 8068417C  7C 65 1B 78 */	mr r5, r3
/* 80684180  4B CC 2F 11 */	bl PSVECAdd
/* 80684184  88 1E 00 4F */	lbz r0, 0x4f(r30)
/* 80684188  28 00 00 00 */	cmplwi r0, 0
/* 8068418C  40 82 00 8C */	bne lbl_80684218
/* 80684190  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 80684194  90 01 00 08 */	stw r0, 8(r1)
/* 80684198  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8068419C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806841A0  38 81 00 08 */	addi r4, r1, 8
/* 806841A4  4B 99 56 55 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806841A8  28 03 00 00 */	cmplwi r3, 0
/* 806841AC  41 82 00 30 */	beq lbl_806841DC
/* 806841B0  88 03 0A A0 */	lbz r0, 0xaa0(r3)
/* 806841B4  28 00 00 00 */	cmplwi r0, 0
/* 806841B8  41 82 00 24 */	beq lbl_806841DC
/* 806841BC  38 00 00 03 */	li r0, 3
/* 806841C0  98 1E 00 4C */	stb r0, 0x4c(r30)
/* 806841C4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806841C8  4B BE 37 8D */	bl cM_rndF__Ff
/* 806841CC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 806841D0  EC 00 08 2A */	fadds f0, f0, f1
/* 806841D4  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 806841D8  48 00 00 40 */	b lbl_80684218
lbl_806841DC:
/* 806841DC  38 00 00 01 */	li r0, 1
/* 806841E0  98 1E 00 4C */	stb r0, 0x4c(r30)
/* 806841E4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806841E8  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 806841EC  38 00 00 00 */	li r0, 0
/* 806841F0  98 1E 00 4D */	stb r0, 0x4d(r30)
/* 806841F4  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 806841F8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806841FC  4B BE 37 59 */	bl cM_rndF__Ff
/* 80684200  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80684204  EC 00 08 2A */	fadds f0, f0, f1
/* 80684208  FC 00 00 1E */	fctiwz f0, f0
/* 8068420C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80684210  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80684214  B0 1E 00 4A */	sth r0, 0x4a(r30)
lbl_80684218:
/* 80684218  38 00 00 01 */	li r0, 1
/* 8068421C  98 1E 00 4E */	stb r0, 0x4e(r30)
/* 80684220  7F C3 F3 78 */	mr r3, r30
/* 80684224  4B FF E7 85 */	bl bee_mtxset__FP5bee_s
/* 80684228  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8068422C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80684230  39 61 00 50 */	addi r11, r1, 0x50
/* 80684234  4B CD DF F1 */	bl _restgpr_28
/* 80684238  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8068423C  7C 08 03 A6 */	mtlr r0
/* 80684240  38 21 00 60 */	addi r1, r1, 0x60
/* 80684244  4E 80 00 20 */	blr 
