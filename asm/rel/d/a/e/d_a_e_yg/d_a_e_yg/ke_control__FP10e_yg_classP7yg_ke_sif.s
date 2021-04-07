lbl_807FA478:
/* 807FA478  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 807FA47C  7C 08 02 A6 */	mflr r0
/* 807FA480  90 01 01 14 */	stw r0, 0x114(r1)
/* 807FA484  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 807FA488  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 807FA48C  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 807FA490  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 807FA494  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 807FA498  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 807FA49C  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 807FA4A0  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 807FA4A4  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 807FA4A8  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 807FA4AC  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 807FA4B0  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 807FA4B4  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 807FA4B8  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 807FA4BC  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 807FA4C0  F3 01 00 98 */	psq_st f24, 152(r1), 0, 0 /* qr0 */
/* 807FA4C4  DA E1 00 80 */	stfd f23, 0x80(r1)
/* 807FA4C8  F2 E1 00 88 */	psq_st f23, 136(r1), 0, 0 /* qr0 */
/* 807FA4CC  DA C1 00 70 */	stfd f22, 0x70(r1)
/* 807FA4D0  F2 C1 00 78 */	psq_st f22, 120(r1), 0, 0 /* qr0 */
/* 807FA4D4  39 61 00 70 */	addi r11, r1, 0x70
/* 807FA4D8  4B B6 7C DD */	bl _savegpr_19
/* 807FA4DC  7C 73 1B 78 */	mr r19, r3
/* 807FA4E0  7C 99 23 78 */	mr r25, r4
/* 807FA4E4  3C 60 80 80 */	lis r3, lit_3801@ha /* 0x807FCCB4@ha */
/* 807FA4E8  3A 83 CC B4 */	addi r20, r3, lit_3801@l /* 0x807FCCB4@l */
/* 807FA4EC  3B 79 00 0C */	addi r27, r25, 0xc
/* 807FA4F0  3B 59 00 84 */	addi r26, r25, 0x84
/* 807FA4F4  C0 14 00 04 */	lfs f0, 4(r20)
/* 807FA4F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807FA4FC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807FA500  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807FA504  88 13 08 B0 */	lbz r0, 0x8b0(r19)
/* 807FA508  7C 00 07 75 */	extsb. r0, r0
/* 807FA50C  41 82 00 0C */	beq lbl_807FA518
/* 807FA510  C3 34 00 C8 */	lfs f25, 0xc8(r20)
/* 807FA514  48 00 00 08 */	b lbl_807FA51C
lbl_807FA518:
/* 807FA518  C3 34 00 CC */	lfs f25, 0xcc(r20)
lbl_807FA51C:
/* 807FA51C  C0 34 00 D0 */	lfs f1, 0xd0(r20)
/* 807FA520  4B A6 D5 AD */	bl cM_rndF2__Ff
/* 807FA524  FC 00 08 1E */	fctiwz f0, f1
/* 807FA528  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807FA52C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807FA530  C0 34 00 78 */	lfs f1, 0x78(r20)
/* 807FA534  C0 13 07 70 */	lfs f0, 0x770(r19)
/* 807FA538  EF 01 00 2A */	fadds f24, f1, f0
/* 807FA53C  C0 13 06 90 */	lfs f0, 0x690(r19)
/* 807FA540  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 807FA544  40 80 00 08 */	bge lbl_807FA54C
/* 807FA548  FF 00 00 90 */	fmr f24, f0
lbl_807FA54C:
/* 807FA54C  3B 80 00 01 */	li r28, 1
/* 807FA550  3B 00 17 70 */	li r24, 0x1770
/* 807FA554  3A E0 1B 58 */	li r23, 0x1b58
/* 807FA558  7C 1D 07 34 */	extsh r29, r0
/* 807FA55C  3B DD 27 10 */	addi r30, r29, 0x2710
/* 807FA560  C3 74 00 D4 */	lfs f27, 0xd4(r20)
/* 807FA564  CB 94 00 E0 */	lfd f28, 0xe0(r20)
/* 807FA568  3F E0 43 30 */	lis r31, 0x4330
/* 807FA56C  C3 B4 00 78 */	lfs f29, 0x78(r20)
/* 807FA570  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807FA574  3A A3 9A 20 */	addi r21, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807FA578  C3 D4 00 04 */	lfs f30, 4(r20)
/* 807FA57C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FA580  3A C3 07 68 */	addi r22, r3, calc_mtx@l /* 0x80450768@l */
/* 807FA584  C3 F4 00 D8 */	lfs f31, 0xd8(r20)
lbl_807FA588:
/* 807FA588  20 1C 00 0A */	subfic r0, r28, 0xa
/* 807FA58C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807FA590  90 01 00 34 */	stw r0, 0x34(r1)
/* 807FA594  93 E1 00 30 */	stw r31, 0x30(r1)
/* 807FA598  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807FA59C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 807FA5A0  EC BB 00 32 */	fmuls f5, f27, f0
/* 807FA5A4  C0 5A 00 00 */	lfs f2, 0(r26)
/* 807FA5A8  7C 1D BA 14 */	add r0, r29, r23
/* 807FA5AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FA5B0  7C 15 04 2E */	lfsx f0, r21, r0
/* 807FA5B4  EC 3D 00 32 */	fmuls f1, f29, f0
/* 807FA5B8  C0 19 00 F0 */	lfs f0, 0xf0(r25)
/* 807FA5BC  EC 00 01 72 */	fmuls f0, f0, f5
/* 807FA5C0  EC 01 00 2A */	fadds f0, f1, f0
/* 807FA5C4  EC 82 00 2A */	fadds f4, f2, f0
/* 807FA5C8  D0 81 00 08 */	stfs f4, 8(r1)
/* 807FA5CC  C0 3A 00 04 */	lfs f1, 4(r26)
/* 807FA5D0  C0 19 00 F4 */	lfs f0, 0xf4(r25)
/* 807FA5D4  EC 00 01 72 */	fmuls f0, f0, f5
/* 807FA5D8  EC 61 00 2A */	fadds f3, f1, f0
/* 807FA5DC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 807FA5E0  C0 5A 00 08 */	lfs f2, 8(r26)
/* 807FA5E4  7C 1E C2 14 */	add r0, r30, r24
/* 807FA5E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FA5EC  7C 15 04 2E */	lfsx f0, r21, r0
/* 807FA5F0  EC 3D 00 32 */	fmuls f1, f29, f0
/* 807FA5F4  C0 19 00 F8 */	lfs f0, 0xf8(r25)
/* 807FA5F8  EC 00 01 72 */	fmuls f0, f0, f5
/* 807FA5FC  EC 01 00 2A */	fadds f0, f1, f0
/* 807FA600  EC 42 00 2A */	fadds f2, f2, f0
/* 807FA604  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807FA608  C0 3B 00 00 */	lfs f1, 0(r27)
/* 807FA60C  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 807FA610  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FA614  EF 44 00 2A */	fadds f26, f4, f0
/* 807FA618  C0 3B 00 08 */	lfs f1, 8(r27)
/* 807FA61C  C0 1B FF FC */	lfs f0, -4(r27)
/* 807FA620  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FA624  EE C2 00 2A */	fadds f22, f2, f0
/* 807FA628  C0 1B 00 04 */	lfs f0, 4(r27)
/* 807FA62C  EC 00 18 2A */	fadds f0, f0, f3
/* 807FA630  EC 39 00 2A */	fadds f1, f25, f0
/* 807FA634  FC 01 C0 40 */	fcmpo cr0, f1, f24
/* 807FA638  40 80 00 08 */	bge lbl_807FA640
/* 807FA63C  FC 20 C0 90 */	fmr f1, f24
lbl_807FA640:
/* 807FA640  C0 1B FF F8 */	lfs f0, -8(r27)
/* 807FA644  EE E1 00 28 */	fsubs f23, f1, f0
/* 807FA648  FC 20 B8 90 */	fmr f1, f23
/* 807FA64C  FC 40 B0 90 */	fmr f2, f22
/* 807FA650  4B A6 D0 25 */	bl cM_atan2s__Fff
/* 807FA654  7C 03 00 D0 */	neg r0, r3
/* 807FA658  7C 14 07 34 */	extsh r20, r0
/* 807FA65C  EC 37 05 F2 */	fmuls f1, f23, f23
/* 807FA660  EC 16 05 B2 */	fmuls f0, f22, f22
/* 807FA664  EC 41 00 2A */	fadds f2, f1, f0
/* 807FA668  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 807FA66C  40 81 00 0C */	ble lbl_807FA678
/* 807FA670  FC 00 10 34 */	frsqrte f0, f2
/* 807FA674  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807FA678:
/* 807FA678  FC 20 D0 90 */	fmr f1, f26
/* 807FA67C  4B A6 CF F9 */	bl cM_atan2s__Fff
/* 807FA680  7C 73 07 34 */	extsh r19, r3
/* 807FA684  80 76 00 00 */	lwz r3, 0(r22)
/* 807FA688  7E 84 A3 78 */	mr r4, r20
/* 807FA68C  4B 81 1C B9 */	bl mDoMtx_XrotS__FPA4_fs
/* 807FA690  80 76 00 00 */	lwz r3, 0(r22)
/* 807FA694  7E 64 9B 78 */	mr r4, r19
/* 807FA698  4B 81 1D 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 807FA69C  38 61 00 20 */	addi r3, r1, 0x20
/* 807FA6A0  38 81 00 14 */	addi r4, r1, 0x14
/* 807FA6A4  4B A7 68 49 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807FA6A8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 807FA6AC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 807FA6B0  C0 1B 00 04 */	lfs f0, 4(r27)
/* 807FA6B4  D0 1A 00 04 */	stfs f0, 4(r26)
/* 807FA6B8  C0 1B 00 08 */	lfs f0, 8(r27)
/* 807FA6BC  D0 1A 00 08 */	stfs f0, 8(r26)
/* 807FA6C0  C0 3B FF F4 */	lfs f1, -0xc(r27)
/* 807FA6C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807FA6C8  EC 01 00 2A */	fadds f0, f1, f0
/* 807FA6CC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 807FA6D0  C0 3B FF F8 */	lfs f1, -8(r27)
/* 807FA6D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807FA6D8  EC 01 00 2A */	fadds f0, f1, f0
/* 807FA6DC  D0 1B 00 04 */	stfs f0, 4(r27)
/* 807FA6E0  C0 3B FF FC */	lfs f1, -4(r27)
/* 807FA6E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807FA6E8  EC 01 00 2A */	fadds f0, f1, f0
/* 807FA6EC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 807FA6F0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 807FA6F4  C0 1A 00 00 */	lfs f0, 0(r26)
/* 807FA6F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FA6FC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807FA700  D0 1A 00 00 */	stfs f0, 0(r26)
/* 807FA704  C0 3B 00 04 */	lfs f1, 4(r27)
/* 807FA708  C0 1A 00 04 */	lfs f0, 4(r26)
/* 807FA70C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FA710  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807FA714  D0 1A 00 04 */	stfs f0, 4(r26)
/* 807FA718  C0 3B 00 08 */	lfs f1, 8(r27)
/* 807FA71C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 807FA720  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FA724  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807FA728  D0 1A 00 08 */	stfs f0, 8(r26)
/* 807FA72C  3B 9C 00 01 */	addi r28, r28, 1
/* 807FA730  2C 1C 00 0A */	cmpwi r28, 0xa
/* 807FA734  3B 18 17 70 */	addi r24, r24, 0x1770
/* 807FA738  3A F7 1B 58 */	addi r23, r23, 0x1b58
/* 807FA73C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 807FA740  3B 5A 00 0C */	addi r26, r26, 0xc
/* 807FA744  41 80 FE 44 */	blt lbl_807FA588
/* 807FA748  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 807FA74C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 807FA750  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 807FA754  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 807FA758  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 807FA75C  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 807FA760  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 807FA764  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 807FA768  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 807FA76C  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 807FA770  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 807FA774  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 807FA778  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 807FA77C  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 807FA780  E3 01 00 98 */	psq_l f24, 152(r1), 0, 0 /* qr0 */
/* 807FA784  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 807FA788  E2 E1 00 88 */	psq_l f23, 136(r1), 0, 0 /* qr0 */
/* 807FA78C  CA E1 00 80 */	lfd f23, 0x80(r1)
/* 807FA790  E2 C1 00 78 */	psq_l f22, 120(r1), 0, 0 /* qr0 */
/* 807FA794  CA C1 00 70 */	lfd f22, 0x70(r1)
/* 807FA798  39 61 00 70 */	addi r11, r1, 0x70
/* 807FA79C  4B B6 7A 65 */	bl _restgpr_19
/* 807FA7A0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 807FA7A4  7C 08 03 A6 */	mtlr r0
/* 807FA7A8  38 21 01 10 */	addi r1, r1, 0x110
/* 807FA7AC  4E 80 00 20 */	blr 
