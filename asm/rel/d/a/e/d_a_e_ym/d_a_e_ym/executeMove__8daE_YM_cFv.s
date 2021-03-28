lbl_8080A57C:
/* 8080A57C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8080A580  7C 08 02 A6 */	mflr r0
/* 8080A584  90 01 00 74 */	stw r0, 0x74(r1)
/* 8080A588  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8080A58C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8080A590  39 61 00 60 */	addi r11, r1, 0x60
/* 8080A594  4B B5 7C 48 */	b _savegpr_29
/* 8080A598  7C 7D 1B 78 */	mr r29, r3
/* 8080A59C  3C 60 80 81 */	lis r3, lit_3925@ha
/* 8080A5A0  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 8080A5A4  C0 3D 06 E0 */	lfs f1, 0x6e0(r29)
/* 8080A5A8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8080A5AC  EF E1 00 28 */	fsubs f31, f1, f0
/* 8080A5B0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8080A5B4  40 80 00 08 */	bge lbl_8080A5BC
/* 8080A5B8  FF E0 00 90 */	fmr f31, f0
lbl_8080A5BC:
/* 8080A5BC  7F A3 EB 78 */	mr r3, r29
/* 8080A5C0  4B FF F1 2D */	bl checkSurpriseNear__8daE_YM_cFv
/* 8080A5C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A5C8  40 82 06 CC */	bne lbl_8080AC94
/* 8080A5CC  7F A3 EB 78 */	mr r3, r29
/* 8080A5D0  4B FF EA 31 */	bl checkWolfBark__8daE_YM_cFv
/* 8080A5D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A5D8  40 82 06 BC */	bne lbl_8080AC94
/* 8080A5DC  7F A3 EB 78 */	mr r3, r29
/* 8080A5E0  4B FF E8 55 */	bl checkWallCrash__8daE_YM_cFv
/* 8080A5E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A5E8  40 82 06 AC */	bne lbl_8080AC94
/* 8080A5EC  7F A3 EB 78 */	mr r3, r29
/* 8080A5F0  48 00 35 69 */	bl setAttackMotion__8daE_YM_cFv
/* 8080A5F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A5F8  40 82 06 9C */	bne lbl_8080AC94
/* 8080A5FC  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080A600  28 00 00 01 */	cmplwi r0, 1
/* 8080A604  41 82 00 14 */	beq lbl_8080A618
/* 8080A608  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080A60C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8080A610  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8080A614  4B A6 61 2C */	b cLib_chaseF__FPfff
lbl_8080A618:
/* 8080A618  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080A61C  2C 00 00 02 */	cmpwi r0, 2
/* 8080A620  41 82 03 30 */	beq lbl_8080A950
/* 8080A624  40 80 00 14 */	bge lbl_8080A638
/* 8080A628  2C 00 00 00 */	cmpwi r0, 0
/* 8080A62C  41 82 00 18 */	beq lbl_8080A644
/* 8080A630  40 80 02 5C */	bge lbl_8080A88C
/* 8080A634  48 00 06 58 */	b lbl_8080AC8C
lbl_8080A638:
/* 8080A638  2C 00 00 04 */	cmpwi r0, 4
/* 8080A63C  40 80 06 50 */	bge lbl_8080AC8C
/* 8080A640  48 00 03 CC */	b lbl_8080AA0C
lbl_8080A644:
/* 8080A644  7F A3 EB 78 */	mr r3, r29
/* 8080A648  38 80 00 0E */	li r4, 0xe
/* 8080A64C  38 A0 00 02 */	li r5, 2
/* 8080A650  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8080A654  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 8080A658  4B FF DB 89 */	bl bckSet__8daE_YM_cFiUcff
/* 8080A65C  7F A3 EB 78 */	mr r3, r29
/* 8080A660  48 00 A0 F9 */	bl checkWall__8daE_YM_cFv
/* 8080A664  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080A668  28 00 00 01 */	cmplwi r0, 1
/* 8080A66C  40 82 00 30 */	bne lbl_8080A69C
/* 8080A670  A8 1D 06 68 */	lha r0, 0x668(r29)
/* 8080A674  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080A678  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8080A67C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8080A680  7C 23 04 2E */	lfsx f1, r3, r0
/* 8080A684  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8080A688  EC 00 00 72 */	fmuls f0, f0, f1
/* 8080A68C  FC 00 02 10 */	fabs f0, f0
/* 8080A690  FC 20 00 18 */	frsp f1, f0
/* 8080A694  38 7D 07 60 */	addi r3, r29, 0x760
/* 8080A698  4B 86 CA 7C */	b SetGroundUpY__9dBgS_AcchFf
lbl_8080A69C:
/* 8080A69C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8080A6A0  4B A5 D2 EC */	b cM_rndFX__Ff
/* 8080A6A4  FC 00 08 1E */	fctiwz f0, f1
/* 8080A6A8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8080A6AC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8080A6B0  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 8080A6B4  A8 7D 06 E4 */	lha r3, 0x6e4(r29)
/* 8080A6B8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8080A6BC  4B A6 67 68 */	b cLib_distanceAngleS__Fss
/* 8080A6C0  7C 60 07 34 */	extsh r0, r3
/* 8080A6C4  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8080A6C8  40 80 00 10 */	bge lbl_8080A6D8
/* 8080A6CC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8080A6D0  38 03 40 00 */	addi r0, r3, 0x4000
/* 8080A6D4  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
lbl_8080A6D8:
/* 8080A6D8  38 61 00 24 */	addi r3, r1, 0x24
/* 8080A6DC  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080A6E0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8080A6E4  4B A5 C4 50 */	b __mi__4cXyzCFRC3Vec
/* 8080A6E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8080A6EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8080A6F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8080A6F4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8080A6F8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8080A6FC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8080A700  38 00 00 00 */	li r0, 0
/* 8080A704  98 1D 06 A5 */	stb r0, 0x6a5(r29)
/* 8080A708  38 61 00 3C */	addi r3, r1, 0x3c
/* 8080A70C  4B B3 CA 2C */	b PSVECSquareMag
/* 8080A710  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080A714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080A718  40 81 00 58 */	ble lbl_8080A770
/* 8080A71C  FC 00 08 34 */	frsqrte f0, f1
/* 8080A720  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080A724  FC 44 00 32 */	fmul f2, f4, f0
/* 8080A728  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080A72C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080A730  FC 01 00 32 */	fmul f0, f1, f0
/* 8080A734  FC 03 00 28 */	fsub f0, f3, f0
/* 8080A738  FC 02 00 32 */	fmul f0, f2, f0
/* 8080A73C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080A740  FC 00 00 32 */	fmul f0, f0, f0
/* 8080A744  FC 01 00 32 */	fmul f0, f1, f0
/* 8080A748  FC 03 00 28 */	fsub f0, f3, f0
/* 8080A74C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080A750  FC 44 00 32 */	fmul f2, f4, f0
/* 8080A754  FC 00 00 32 */	fmul f0, f0, f0
/* 8080A758  FC 01 00 32 */	fmul f0, f1, f0
/* 8080A75C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080A760  FC 02 00 32 */	fmul f0, f2, f0
/* 8080A764  FC 21 00 32 */	fmul f1, f1, f0
/* 8080A768  FC 20 08 18 */	frsp f1, f1
/* 8080A76C  48 00 00 88 */	b lbl_8080A7F4
lbl_8080A770:
/* 8080A770  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080A774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080A778  40 80 00 10 */	bge lbl_8080A788
/* 8080A77C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080A780  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080A784  48 00 00 70 */	b lbl_8080A7F4
lbl_8080A788:
/* 8080A788  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8080A78C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8080A790  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080A794  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080A798  7C 03 00 00 */	cmpw r3, r0
/* 8080A79C  41 82 00 14 */	beq lbl_8080A7B0
/* 8080A7A0  40 80 00 40 */	bge lbl_8080A7E0
/* 8080A7A4  2C 03 00 00 */	cmpwi r3, 0
/* 8080A7A8  41 82 00 20 */	beq lbl_8080A7C8
/* 8080A7AC  48 00 00 34 */	b lbl_8080A7E0
lbl_8080A7B0:
/* 8080A7B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080A7B4  41 82 00 0C */	beq lbl_8080A7C0
/* 8080A7B8  38 00 00 01 */	li r0, 1
/* 8080A7BC  48 00 00 28 */	b lbl_8080A7E4
lbl_8080A7C0:
/* 8080A7C0  38 00 00 02 */	li r0, 2
/* 8080A7C4  48 00 00 20 */	b lbl_8080A7E4
lbl_8080A7C8:
/* 8080A7C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080A7CC  41 82 00 0C */	beq lbl_8080A7D8
/* 8080A7D0  38 00 00 05 */	li r0, 5
/* 8080A7D4  48 00 00 10 */	b lbl_8080A7E4
lbl_8080A7D8:
/* 8080A7D8  38 00 00 03 */	li r0, 3
/* 8080A7DC  48 00 00 08 */	b lbl_8080A7E4
lbl_8080A7E0:
/* 8080A7E0  38 00 00 04 */	li r0, 4
lbl_8080A7E4:
/* 8080A7E4  2C 00 00 01 */	cmpwi r0, 1
/* 8080A7E8  40 82 00 0C */	bne lbl_8080A7F4
/* 8080A7EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080A7F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080A7F4:
/* 8080A7F4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8080A7F8  40 81 00 88 */	ble lbl_8080A880
/* 8080A7FC  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080A800  28 00 00 01 */	cmplwi r0, 1
/* 8080A804  40 82 00 4C */	bne lbl_8080A850
/* 8080A808  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8080A80C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8080A810  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 8080A814  7C 00 00 D0 */	neg r0, r0
/* 8080A818  7C 04 07 34 */	extsh r4, r0
/* 8080A81C  4B 80 1C 58 */	b mDoMtx_ZrotS__FPA4_fs
/* 8080A820  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8080A824  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8080A828  A8 1D 06 68 */	lha r0, 0x668(r29)
/* 8080A82C  7C 00 00 D0 */	neg r0, r0
/* 8080A830  7C 04 07 34 */	extsh r4, r0
/* 8080A834  4B 80 1B 68 */	b mDoMtx_XrotM__FPA4_fs
/* 8080A838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8080A83C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8080A840  38 81 00 3C */	addi r4, r1, 0x3c
/* 8080A844  38 A1 00 30 */	addi r5, r1, 0x30
/* 8080A848  4B B3 C5 24 */	b PSMTXMultVec
/* 8080A84C  48 00 00 1C */	b lbl_8080A868
lbl_8080A850:
/* 8080A850  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8080A854  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8080A858  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8080A85C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8080A860  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8080A864  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_8080A868:
/* 8080A868  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8080A86C  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8080A870  4B A5 CE 04 */	b cM_atan2s__Fff
/* 8080A874  B0 7D 06 E4 */	sth r3, 0x6e4(r29)
/* 8080A878  38 00 00 01 */	li r0, 1
/* 8080A87C  98 1D 06 A5 */	stb r0, 0x6a5(r29)
lbl_8080A880:
/* 8080A880  38 00 00 01 */	li r0, 1
/* 8080A884  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080A888  48 00 04 04 */	b lbl_8080AC8C
lbl_8080A88C:
/* 8080A88C  7F A3 EB 78 */	mr r3, r29
/* 8080A890  4B FF F6 61 */	bl setTurnSound__8daE_YM_cFv
/* 8080A894  38 A0 02 00 */	li r5, 0x200
/* 8080A898  88 1D 06 A0 */	lbz r0, 0x6a0(r29)
/* 8080A89C  28 00 00 01 */	cmplwi r0, 1
/* 8080A8A0  40 82 00 18 */	bne lbl_8080A8B8
/* 8080A8A4  C0 3D 06 D8 */	lfs f1, 0x6d8(r29)
/* 8080A8A8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8080A8AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080A8B0  40 80 00 08 */	bge lbl_8080A8B8
/* 8080A8B4  38 A0 03 00 */	li r5, 0x300
lbl_8080A8B8:
/* 8080A8B8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080A8BC  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080A8C0  4B A6 62 D0 */	b cLib_chaseAngleS__FPsss
/* 8080A8C4  2C 03 00 00 */	cmpwi r3, 0
/* 8080A8C8  41 82 03 C4 */	beq lbl_8080AC8C
/* 8080A8CC  C0 3D 06 E0 */	lfs f1, 0x6e0(r29)
/* 8080A8D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080A8D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080A8D8  40 82 00 10 */	bne lbl_8080A8E8
/* 8080A8DC  88 1D 06 A5 */	lbz r0, 0x6a5(r29)
/* 8080A8E0  28 00 00 00 */	cmplwi r0, 0
/* 8080A8E4  41 82 00 18 */	beq lbl_8080A8FC
lbl_8080A8E8:
/* 8080A8E8  7F A3 EB 78 */	mr r3, r29
/* 8080A8EC  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080A8F0  48 00 95 B5 */	bl checkBeforeBg__8daE_YM_cFs
/* 8080A8F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080A8F8  41 82 00 14 */	beq lbl_8080A90C
lbl_8080A8FC:
/* 8080A8FC  7F A3 EB 78 */	mr r3, r29
/* 8080A900  38 80 00 00 */	li r4, 0
/* 8080A904  4B FF F6 99 */	bl setActionMode__8daE_YM_cFi
/* 8080A908  48 00 03 84 */	b lbl_8080AC8C
lbl_8080A90C:
/* 8080A90C  7F A3 EB 78 */	mr r3, r29
/* 8080A910  38 80 00 0F */	li r4, 0xf
/* 8080A914  38 A0 00 02 */	li r5, 2
/* 8080A918  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080A91C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080A920  4B FF D8 C1 */	bl bckSet__8daE_YM_cFiUcff
/* 8080A924  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8080A928  4B A5 D0 2C */	b cM_rndF__Ff
/* 8080A92C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8080A930  EC 00 08 2A */	fadds f0, f0, f1
/* 8080A934  FC 00 00 1E */	fctiwz f0, f0
/* 8080A938  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8080A93C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8080A940  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080A944  38 00 00 02 */	li r0, 2
/* 8080A948  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080A94C  48 00 03 40 */	b lbl_8080AC8C
lbl_8080A950:
/* 8080A950  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EA@ha */
/* 8080A954  38 03 00 EA */	addi r0, r3, 0x00EA /* 0x000700EA@l */
/* 8080A958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080A95C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080A960  38 81 00 14 */	addi r4, r1, 0x14
/* 8080A964  38 A0 00 00 */	li r5, 0
/* 8080A968  38 C0 FF FF */	li r6, -1
/* 8080A96C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080A970  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080A974  7D 89 03 A6 */	mtctr r12
/* 8080A978  4E 80 04 21 */	bctrl 
/* 8080A97C  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080A980  2C 00 00 00 */	cmpwi r0, 0
/* 8080A984  40 82 03 08 */	bne lbl_8080AC8C
/* 8080A988  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080A98C  38 63 00 0C */	addi r3, r3, 0xc
/* 8080A990  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8080A994  4B B1 DA 98 */	b checkPass__12J3DFrameCtrlFf
/* 8080A998  2C 03 00 00 */	cmpwi r3, 0
/* 8080A99C  41 82 02 F0 */	beq lbl_8080AC8C
/* 8080A9A0  7F A3 EB 78 */	mr r3, r29
/* 8080A9A4  38 80 00 10 */	li r4, 0x10
/* 8080A9A8  38 A0 00 02 */	li r5, 2
/* 8080A9AC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080A9B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080A9B4  4B FF D8 2D */	bl bckSet__8daE_YM_cFiUcff
/* 8080A9B8  38 00 00 03 */	li r0, 3
/* 8080A9BC  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080A9C0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8080A9C4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080A9C8  88 1D 06 A5 */	lbz r0, 0x6a5(r29)
/* 8080A9CC  28 00 00 00 */	cmplwi r0, 0
/* 8080A9D0  40 82 00 18 */	bne lbl_8080A9E8
/* 8080A9D4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8080A9D8  C0 3D 06 E0 */	lfs f1, 0x6e0(r29)
/* 8080A9DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8080A9E0  40 81 00 08 */	ble lbl_8080A9E8
/* 8080A9E4  D0 3D 05 2C */	stfs f1, 0x52c(r29)
lbl_8080A9E8:
/* 8080A9E8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8080A9EC  4B A5 CF 68 */	b cM_rndF__Ff
/* 8080A9F0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8080A9F4  EC 00 08 2A */	fadds f0, f0, f1
/* 8080A9F8  FC 00 00 1E */	fctiwz f0, f0
/* 8080A9FC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8080AA00  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8080AA04  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080AA08  48 00 02 84 */	b lbl_8080AC8C
lbl_8080AA0C:
/* 8080AA0C  7F A3 EB 78 */	mr r3, r29
/* 8080AA10  38 80 00 00 */	li r4, 0
/* 8080AA14  4B FF F3 95 */	bl setMoveSound__8daE_YM_cFi
/* 8080AA18  3B C0 00 00 */	li r30, 0
/* 8080AA1C  38 61 00 18 */	addi r3, r1, 0x18
/* 8080AA20  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8080AA24  38 BD 06 70 */	addi r5, r29, 0x670
/* 8080AA28  4B A5 C1 0C */	b __mi__4cXyzCFRC3Vec
/* 8080AA2C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8080AA30  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8080AA34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8080AA38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8080AA3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8080AA40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8080AA44  88 1D 06 A5 */	lbz r0, 0x6a5(r29)
/* 8080AA48  28 00 00 00 */	cmplwi r0, 0
/* 8080AA4C  40 82 01 04 */	bne lbl_8080AB50
/* 8080AA50  38 61 00 3C */	addi r3, r1, 0x3c
/* 8080AA54  4B B3 C6 E4 */	b PSVECSquareMag
/* 8080AA58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080AA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080AA60  40 81 00 58 */	ble lbl_8080AAB8
/* 8080AA64  FC 00 08 34 */	frsqrte f0, f1
/* 8080AA68  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080AA6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080AA70  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080AA74  FC 00 00 32 */	fmul f0, f0, f0
/* 8080AA78  FC 01 00 32 */	fmul f0, f1, f0
/* 8080AA7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080AA80  FC 02 00 32 */	fmul f0, f2, f0
/* 8080AA84  FC 44 00 32 */	fmul f2, f4, f0
/* 8080AA88  FC 00 00 32 */	fmul f0, f0, f0
/* 8080AA8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080AA90  FC 03 00 28 */	fsub f0, f3, f0
/* 8080AA94  FC 02 00 32 */	fmul f0, f2, f0
/* 8080AA98  FC 44 00 32 */	fmul f2, f4, f0
/* 8080AA9C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080AAA0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080AAA4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080AAA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080AAAC  FC 21 00 32 */	fmul f1, f1, f0
/* 8080AAB0  FC 20 08 18 */	frsp f1, f1
/* 8080AAB4  48 00 00 88 */	b lbl_8080AB3C
lbl_8080AAB8:
/* 8080AAB8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080AABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080AAC0  40 80 00 10 */	bge lbl_8080AAD0
/* 8080AAC4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080AAC8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080AACC  48 00 00 70 */	b lbl_8080AB3C
lbl_8080AAD0:
/* 8080AAD0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8080AAD4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8080AAD8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080AADC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080AAE0  7C 03 00 00 */	cmpw r3, r0
/* 8080AAE4  41 82 00 14 */	beq lbl_8080AAF8
/* 8080AAE8  40 80 00 40 */	bge lbl_8080AB28
/* 8080AAEC  2C 03 00 00 */	cmpwi r3, 0
/* 8080AAF0  41 82 00 20 */	beq lbl_8080AB10
/* 8080AAF4  48 00 00 34 */	b lbl_8080AB28
lbl_8080AAF8:
/* 8080AAF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080AAFC  41 82 00 0C */	beq lbl_8080AB08
/* 8080AB00  38 00 00 01 */	li r0, 1
/* 8080AB04  48 00 00 28 */	b lbl_8080AB2C
lbl_8080AB08:
/* 8080AB08  38 00 00 02 */	li r0, 2
/* 8080AB0C  48 00 00 20 */	b lbl_8080AB2C
lbl_8080AB10:
/* 8080AB10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080AB14  41 82 00 0C */	beq lbl_8080AB20
/* 8080AB18  38 00 00 05 */	li r0, 5
/* 8080AB1C  48 00 00 10 */	b lbl_8080AB2C
lbl_8080AB20:
/* 8080AB20  38 00 00 03 */	li r0, 3
/* 8080AB24  48 00 00 08 */	b lbl_8080AB2C
lbl_8080AB28:
/* 8080AB28  38 00 00 04 */	li r0, 4
lbl_8080AB2C:
/* 8080AB2C  2C 00 00 01 */	cmpwi r0, 1
/* 8080AB30  40 82 00 0C */	bne lbl_8080AB3C
/* 8080AB34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080AB38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080AB3C:
/* 8080AB3C  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 8080AB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080AB44  40 81 01 08 */	ble lbl_8080AC4C
/* 8080AB48  3B C0 00 01 */	li r30, 1
/* 8080AB4C  48 00 01 00 */	b lbl_8080AC4C
lbl_8080AB50:
/* 8080AB50  38 61 00 3C */	addi r3, r1, 0x3c
/* 8080AB54  4B B3 C5 E4 */	b PSVECSquareMag
/* 8080AB58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080AB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080AB60  40 81 00 58 */	ble lbl_8080ABB8
/* 8080AB64  FC 00 08 34 */	frsqrte f0, f1
/* 8080AB68  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080AB6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080AB70  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080AB74  FC 00 00 32 */	fmul f0, f0, f0
/* 8080AB78  FC 01 00 32 */	fmul f0, f1, f0
/* 8080AB7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080AB80  FC 02 00 32 */	fmul f0, f2, f0
/* 8080AB84  FC 44 00 32 */	fmul f2, f4, f0
/* 8080AB88  FC 00 00 32 */	fmul f0, f0, f0
/* 8080AB8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080AB90  FC 03 00 28 */	fsub f0, f3, f0
/* 8080AB94  FC 02 00 32 */	fmul f0, f2, f0
/* 8080AB98  FC 44 00 32 */	fmul f2, f4, f0
/* 8080AB9C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080ABA0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080ABA4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080ABA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080ABAC  FC 21 00 32 */	fmul f1, f1, f0
/* 8080ABB0  FC 20 08 18 */	frsp f1, f1
/* 8080ABB4  48 00 00 88 */	b lbl_8080AC3C
lbl_8080ABB8:
/* 8080ABB8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080ABBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080ABC0  40 80 00 10 */	bge lbl_8080ABD0
/* 8080ABC4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080ABC8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080ABCC  48 00 00 70 */	b lbl_8080AC3C
lbl_8080ABD0:
/* 8080ABD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080ABD4  80 81 00 08 */	lwz r4, 8(r1)
/* 8080ABD8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080ABDC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080ABE0  7C 03 00 00 */	cmpw r3, r0
/* 8080ABE4  41 82 00 14 */	beq lbl_8080ABF8
/* 8080ABE8  40 80 00 40 */	bge lbl_8080AC28
/* 8080ABEC  2C 03 00 00 */	cmpwi r3, 0
/* 8080ABF0  41 82 00 20 */	beq lbl_8080AC10
/* 8080ABF4  48 00 00 34 */	b lbl_8080AC28
lbl_8080ABF8:
/* 8080ABF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080ABFC  41 82 00 0C */	beq lbl_8080AC08
/* 8080AC00  38 00 00 01 */	li r0, 1
/* 8080AC04  48 00 00 28 */	b lbl_8080AC2C
lbl_8080AC08:
/* 8080AC08  38 00 00 02 */	li r0, 2
/* 8080AC0C  48 00 00 20 */	b lbl_8080AC2C
lbl_8080AC10:
/* 8080AC10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080AC14  41 82 00 0C */	beq lbl_8080AC20
/* 8080AC18  38 00 00 05 */	li r0, 5
/* 8080AC1C  48 00 00 10 */	b lbl_8080AC2C
lbl_8080AC20:
/* 8080AC20  38 00 00 03 */	li r0, 3
/* 8080AC24  48 00 00 08 */	b lbl_8080AC2C
lbl_8080AC28:
/* 8080AC28  38 00 00 04 */	li r0, 4
lbl_8080AC2C:
/* 8080AC2C  2C 00 00 01 */	cmpwi r0, 1
/* 8080AC30  40 82 00 0C */	bne lbl_8080AC3C
/* 8080AC34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080AC38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080AC3C:
/* 8080AC3C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8080AC40  40 80 00 0C */	bge lbl_8080AC4C
/* 8080AC44  38 00 00 00 */	li r0, 0
/* 8080AC48  98 1D 06 A5 */	stb r0, 0x6a5(r29)
lbl_8080AC4C:
/* 8080AC4C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8080AC50  40 82 00 24 */	bne lbl_8080AC74
/* 8080AC54  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080AC58  2C 00 00 00 */	cmpwi r0, 0
/* 8080AC5C  41 82 00 18 */	beq lbl_8080AC74
/* 8080AC60  7F A3 EB 78 */	mr r3, r29
/* 8080AC64  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080AC68  48 00 92 3D */	bl checkBeforeBg__8daE_YM_cFs
/* 8080AC6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080AC70  41 82 00 1C */	beq lbl_8080AC8C
lbl_8080AC74:
/* 8080AC74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080AC78  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080AC7C  7F A3 EB 78 */	mr r3, r29
/* 8080AC80  38 80 00 00 */	li r4, 0
/* 8080AC84  4B FF F3 19 */	bl setActionMode__8daE_YM_cFi
/* 8080AC88  48 00 00 0C */	b lbl_8080AC94
lbl_8080AC8C:
/* 8080AC8C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8080AC90  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8080AC94:
/* 8080AC94  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8080AC98  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8080AC9C  39 61 00 60 */	addi r11, r1, 0x60
/* 8080ACA0  4B B5 75 88 */	b _restgpr_29
/* 8080ACA4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8080ACA8  7C 08 03 A6 */	mtlr r0
/* 8080ACAC  38 21 00 70 */	addi r1, r1, 0x70
/* 8080ACB0  4E 80 00 20 */	blr 
