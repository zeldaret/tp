lbl_8079A560:
/* 8079A560  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8079A564  7C 08 02 A6 */	mflr r0
/* 8079A568  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8079A56C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8079A570  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8079A574  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8079A578  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 8079A57C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8079A580  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 8079A584  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 8079A588  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 8079A58C  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 8079A590  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 8079A594  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 8079A598  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 8079A59C  39 61 00 90 */	addi r11, r1, 0x90
/* 8079A5A0  4B BC 7C 21 */	bl _savegpr_22
/* 8079A5A4  7C 7A 1B 78 */	mr r26, r3
/* 8079A5A8  3C 60 80 7A */	lis r3, lit_3790@ha /* 0x8079D5B0@ha */
/* 8079A5AC  3B E3 D5 B0 */	addi r31, r3, lit_3790@l /* 0x8079D5B0@l */
/* 8079A5B0  3B BA 07 14 */	addi r29, r26, 0x714
/* 8079A5B4  3B 9A 07 6E */	addi r28, r26, 0x76e
/* 8079A5B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079A5BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079A5C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8079A5C4  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 8079A5C8  4B 87 1E 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 8079A5CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079A5D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079A5D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8079A5D8  A8 9A 04 E4 */	lha r4, 0x4e4(r26)
/* 8079A5DC  4B 87 1D C1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8079A5E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079A5E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8079A5E8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8079A5EC  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8079A5F0  C0 1A 08 34 */	lfs f0, 0x834(r26)
/* 8079A5F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8079A5F8  C0 1A 08 30 */	lfs f0, 0x830(r26)
/* 8079A5FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8079A600  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8079A604  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8079A608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079A60C  40 81 00 08 */	ble lbl_8079A614
/* 8079A610  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8079A614:
/* 8079A614  88 1A 06 A8 */	lbz r0, 0x6a8(r26)
/* 8079A618  7C 00 07 74 */	extsb r0, r0
/* 8079A61C  2C 00 00 01 */	cmpwi r0, 1
/* 8079A620  40 82 00 18 */	bne lbl_8079A638
/* 8079A624  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8079A628  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8079A62C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079A630  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079A634  48 00 00 30 */	b lbl_8079A664
lbl_8079A638:
/* 8079A638  2C 00 00 02 */	cmpwi r0, 2
/* 8079A63C  40 82 00 18 */	bne lbl_8079A654
/* 8079A640  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8079A644  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8079A648  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079A64C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079A650  48 00 00 14 */	b lbl_8079A664
lbl_8079A654:
/* 8079A654  2C 00 00 03 */	cmpwi r0, 3
/* 8079A658  40 82 00 0C */	bne lbl_8079A664
/* 8079A65C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8079A660  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8079A664:
/* 8079A664  38 61 00 44 */	addi r3, r1, 0x44
/* 8079A668  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079A66C  4B AD 68 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079A670  A8 1A 06 82 */	lha r0, 0x682(r26)
/* 8079A674  2C 00 00 0B */	cmpwi r0, 0xb
/* 8079A678  40 82 00 0C */	bne lbl_8079A684
/* 8079A67C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8079A680  48 00 00 24 */	b lbl_8079A6A4
lbl_8079A684:
/* 8079A684  88 7A 06 A9 */	lbz r3, 0x6a9(r26)
/* 8079A688  28 03 00 00 */	cmplwi r3, 0
/* 8079A68C  41 82 00 14 */	beq lbl_8079A6A0
/* 8079A690  38 03 FF FF */	addi r0, r3, -1
/* 8079A694  98 1A 06 A9 */	stb r0, 0x6a9(r26)
/* 8079A698  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8079A69C  48 00 00 08 */	b lbl_8079A6A4
lbl_8079A6A0:
/* 8079A6A0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
lbl_8079A6A4:
/* 8079A6A4  38 7A 06 AC */	addi r3, r26, 0x6ac
/* 8079A6A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079A6AC  C0 7F 00 EC */	lfs f3, 0xec(r31)
/* 8079A6B0  4B AD 53 8D */	bl cLib_addCalc2__FPffff
/* 8079A6B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079A6B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8079A6BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8079A6C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8079A6C4  88 7A 06 AA */	lbz r3, 0x6aa(r26)
/* 8079A6C8  28 03 00 00 */	cmplwi r3, 0
/* 8079A6CC  41 82 00 20 */	beq lbl_8079A6EC
/* 8079A6D0  38 03 FF FF */	addi r0, r3, -1
/* 8079A6D4  98 1A 06 AA */	stb r0, 0x6aa(r26)
/* 8079A6D8  88 1A 08 3C */	lbz r0, 0x83c(r26)
/* 8079A6DC  54 00 08 3C */	slwi r0, r0, 1
/* 8079A6E0  3C 60 80 7A */	lis r3, swsp_d@ha /* 0x8079D87C@ha */
/* 8079A6E4  38 63 D8 7C */	addi r3, r3, swsp_d@l /* 0x8079D87C@l */
/* 8079A6E8  7F 63 02 AE */	lhax r27, r3, r0
lbl_8079A6EC:
/* 8079A6EC  C3 BF 00 04 */	lfs f29, 4(r31)
/* 8079A6F0  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 8079A6F4  D3 A1 00 48 */	stfs f29, 0x48(r1)
/* 8079A6F8  C3 DF 00 00 */	lfs f30, 0(r31)
/* 8079A6FC  C0 1A 08 34 */	lfs f0, 0x834(r26)
/* 8079A700  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8079A704  C0 1A 08 30 */	lfs f0, 0x830(r26)
/* 8079A708  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079A70C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079A710  3B C0 00 01 */	li r30, 1
/* 8079A714  3B 20 DC D8 */	li r25, -9000
/* 8079A718  C3 FF 00 08 */	lfs f31, 8(r31)
/* 8079A71C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079A720  3B 03 07 68 */	addi r24, r3, calc_mtx@l /* 0x80450768@l */
lbl_8079A724:
/* 8079A724  88 1A 06 AA */	lbz r0, 0x6aa(r26)
/* 8079A728  28 00 00 00 */	cmplwi r0, 0
/* 8079A72C  41 82 00 B4 */	beq lbl_8079A7E0
/* 8079A730  A8 1A 06 80 */	lha r0, 0x680(r26)
/* 8079A734  7C 00 D9 D6 */	mullw r0, r0, r27
/* 8079A738  7C 19 02 14 */	add r0, r25, r0
/* 8079A73C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8079A740  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8079A744  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8079A748  7F 83 04 2E */	lfsx f28, r3, r0
/* 8079A74C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079A750  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079A754  80 63 00 00 */	lwz r3, 0(r3)
/* 8079A758  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 8079A75C  4B 87 1C 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 8079A760  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079A764  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079A768  80 63 00 00 */	lwz r3, 0(r3)
/* 8079A76C  A8 9A 04 E4 */	lha r4, 0x4e4(r26)
/* 8079A770  4B 87 1C 2D */	bl mDoMtx_XrotM__FPA4_fs
/* 8079A774  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079A778  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079A77C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079A780  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8079A784  EC 00 07 32 */	fmuls f0, f0, f28
/* 8079A788  FC 00 00 1E */	fctiwz f0, f0
/* 8079A78C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8079A790  80 81 00 54 */	lwz r4, 0x54(r1)
/* 8079A794  4B 87 1C A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8079A798  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079A79C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8079A7A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079A7A4  C0 7F 00 F4 */	lfs f3, 0xf4(r31)
/* 8079A7A8  C0 5F 00 F8 */	lfs f2, 0xf8(r31)
/* 8079A7AC  88 1A 06 AA */	lbz r0, 0x6aa(r26)
/* 8079A7B0  C8 3F 00 B8 */	lfd f1, 0xb8(r31)
/* 8079A7B4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8079A7B8  3C 00 43 30 */	lis r0, 0x4330
/* 8079A7BC  90 01 00 58 */	stw r0, 0x58(r1)
/* 8079A7C0  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8079A7C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8079A7C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079A7CC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8079A7D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8079A7D4  38 61 00 14 */	addi r3, r1, 0x14
/* 8079A7D8  38 81 00 08 */	addi r4, r1, 8
/* 8079A7DC  4B AD 67 11 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_8079A7E0:
/* 8079A7E0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8079A7E4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8079A7E8  EC 3E 00 2A */	fadds f1, f30, f0
/* 8079A7EC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8079A7F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079A7F4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8079A7F8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8079A7FC  38 61 00 20 */	addi r3, r1, 0x20
/* 8079A800  4B 88 34 BD */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8079A804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079A808  41 82 00 24 */	beq lbl_8079A82C
/* 8079A80C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8079A810  C0 1A 08 34 */	lfs f0, 0x834(r26)
/* 8079A814  EC 21 00 32 */	fmuls f1, f1, f0
/* 8079A818  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 8079A81C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 8079A820  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A824  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079A828  48 00 00 1C */	b lbl_8079A844
lbl_8079A82C:
/* 8079A82C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8079A830  C0 1A 08 34 */	lfs f0, 0x834(r26)
/* 8079A834  EC 21 00 32 */	fmuls f1, f1, f0
/* 8079A838  C0 1A 09 2C */	lfs f0, 0x92c(r26)
/* 8079A83C  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A840  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_8079A844:
/* 8079A844  C0 41 00 08 */	lfs f2, 8(r1)
/* 8079A848  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8079A84C  C0 1D FF F4 */	lfs f0, -0xc(r29)
/* 8079A850  EC 21 00 28 */	fsubs f1, f1, f0
/* 8079A854  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8079A858  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8079A85C  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A860  EF 82 00 2A */	fadds f28, f2, f0
/* 8079A864  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8079A868  C0 5A 06 AC */	lfs f2, 0x6ac(r26)
/* 8079A86C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8079A870  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8079A874  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8079A878  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A87C  EC 02 00 2A */	fadds f0, f2, f0
/* 8079A880  EC 23 00 2A */	fadds f1, f3, f0
/* 8079A884  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8079A888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079A88C  40 80 00 08 */	bge lbl_8079A894
/* 8079A890  FC 20 00 90 */	fmr f1, f0
lbl_8079A894:
/* 8079A894  C0 1D FF F8 */	lfs f0, -8(r29)
/* 8079A898  EF 61 00 28 */	fsubs f27, f1, f0
/* 8079A89C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8079A8A0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8079A8A4  C0 1D FF FC */	lfs f0, -4(r29)
/* 8079A8A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8079A8AC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8079A8B0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8079A8B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A8B8  EF 42 00 2A */	fadds f26, f2, f0
/* 8079A8BC  FC 20 E0 90 */	fmr f1, f28
/* 8079A8C0  FC 40 D0 90 */	fmr f2, f26
/* 8079A8C4  4B AC CD B1 */	bl cM_atan2s__Fff
/* 8079A8C8  7C 76 07 34 */	extsh r22, r3
/* 8079A8CC  EC 3C 07 32 */	fmuls f1, f28, f28
/* 8079A8D0  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 8079A8D4  EC 41 00 2A */	fadds f2, f1, f0
/* 8079A8D8  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 8079A8DC  40 81 00 0C */	ble lbl_8079A8E8
/* 8079A8E0  FC 00 10 34 */	frsqrte f0, f2
/* 8079A8E4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8079A8E8:
/* 8079A8E8  FC 20 D8 90 */	fmr f1, f27
/* 8079A8EC  4B AC CD 89 */	bl cM_atan2s__Fff
/* 8079A8F0  7C 03 00 D0 */	neg r0, r3
/* 8079A8F4  7C 17 07 34 */	extsh r23, r0
/* 8079A8F8  80 78 00 00 */	lwz r3, 0(r24)
/* 8079A8FC  7E C4 B3 78 */	mr r4, r22
/* 8079A900  4B 87 1A DD */	bl mDoMtx_YrotS__FPA4_fs
/* 8079A904  80 78 00 00 */	lwz r3, 0(r24)
/* 8079A908  7E E4 BB 78 */	mr r4, r23
/* 8079A90C  4B 87 1A 91 */	bl mDoMtx_XrotM__FPA4_fs
/* 8079A910  38 61 00 44 */	addi r3, r1, 0x44
/* 8079A914  38 81 00 38 */	addi r4, r1, 0x38
/* 8079A918  4B AD 65 D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079A91C  C0 3D FF F4 */	lfs f1, -0xc(r29)
/* 8079A920  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8079A924  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A928  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8079A92C  C0 3D FF F8 */	lfs f1, -8(r29)
/* 8079A930  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8079A934  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A938  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8079A93C  C0 3D FF FC */	lfs f1, -4(r29)
/* 8079A940  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8079A944  EC 01 00 2A */	fadds f0, f1, f0
/* 8079A948  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8079A94C  B2 FC 00 00 */	sth r23, 0(r28)
/* 8079A950  B2 DC 00 02 */	sth r22, 2(r28)
/* 8079A954  3B DE 00 01 */	addi r30, r30, 1
/* 8079A958  2C 1E 00 08 */	cmpwi r30, 8
/* 8079A95C  3B 39 DC D8 */	addi r25, r25, -9000
/* 8079A960  3B BD 00 0C */	addi r29, r29, 0xc
/* 8079A964  3B 9C 00 06 */	addi r28, r28, 6
/* 8079A968  41 80 FD BC */	blt lbl_8079A724
/* 8079A96C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8079A970  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8079A974  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 8079A978  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8079A97C  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 8079A980  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8079A984  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 8079A988  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 8079A98C  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 8079A990  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 8079A994  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 8079A998  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 8079A99C  39 61 00 90 */	addi r11, r1, 0x90
/* 8079A9A0  4B BC 78 6D */	bl _restgpr_22
/* 8079A9A4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8079A9A8  7C 08 03 A6 */	mtlr r0
/* 8079A9AC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8079A9B0  4E 80 00 20 */	blr 
