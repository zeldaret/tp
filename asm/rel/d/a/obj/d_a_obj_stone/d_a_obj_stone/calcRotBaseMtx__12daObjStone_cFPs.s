lbl_80CEC33C:
/* 80CEC33C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CEC340  7C 08 02 A6 */	mflr r0
/* 80CEC344  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CEC348  39 61 00 70 */	addi r11, r1, 0x70
/* 80CEC34C  4B 67 5E 88 */	b _savegpr_27
/* 80CEC350  7C 7D 1B 78 */	mr r29, r3
/* 80CEC354  7C 9E 23 78 */	mr r30, r4
/* 80CEC358  3C 60 80 CF */	lis r3, l_bmdIdx@ha
/* 80CEC35C  3B E3 CA B4 */	addi r31, r3, l_bmdIdx@l
/* 80CEC360  38 61 00 08 */	addi r3, r1, 8
/* 80CEC364  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CEC368  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80CEC36C  4B 57 A7 C8 */	b __mi__4cXyzCFRC3Vec
/* 80CEC370  C0 41 00 08 */	lfs f2, 8(r1)
/* 80CEC374  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CEC378  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CEC37C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CEC380  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80CEC384  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CEC388  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CEC38C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80CEC390  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CEC394  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CEC398  38 61 00 20 */	addi r3, r1, 0x20
/* 80CEC39C  4B 57 AC 40 */	b normalizeRS__4cXyzFv
/* 80CEC3A0  7C 7C 1B 78 */	mr r28, r3
/* 80CEC3A4  38 61 00 14 */	addi r3, r1, 0x14
/* 80CEC3A8  4B 57 AC 34 */	b normalizeRS__4cXyzFv
/* 80CEC3AC  3B 60 00 01 */	li r27, 1
/* 80CEC3B0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80CEC3B4  40 82 00 10 */	bne lbl_80CEC3C4
/* 80CEC3B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEC3BC  40 82 00 08 */	bne lbl_80CEC3C4
/* 80CEC3C0  3B 60 00 00 */	li r27, 0
lbl_80CEC3C4:
/* 80CEC3C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEC3C8  41 82 00 44 */	beq lbl_80CEC40C
/* 80CEC3CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CEC3D0  D0 1D 09 10 */	stfs f0, 0x910(r29)
/* 80CEC3D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CEC3D8  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80CEC3DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CEC3E0  D0 1D 09 18 */	stfs f0, 0x918(r29)
/* 80CEC3E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CEC3E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CEC3EC  38 80 40 00 */	li r4, 0x4000
/* 80CEC3F0  4B 31 FF EC */	b mDoMtx_YrotS__FPA4_fs
/* 80CEC3F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CEC3F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CEC3FC  38 9D 09 10 */	addi r4, r29, 0x910
/* 80CEC400  7C 85 23 78 */	mr r5, r4
/* 80CEC404  4B 65 A9 68 */	b PSMTXMultVec
/* 80CEC408  48 00 00 28 */	b lbl_80CEC430
lbl_80CEC40C:
/* 80CEC40C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80CEC410  41 82 00 20 */	beq lbl_80CEC430
/* 80CEC414  3C 60 80 43 */	lis r3, BaseX__4cXyz@ha
/* 80CEC418  C4 03 0D 0C */	lfsu f0, BaseX__4cXyz@l(r3)
/* 80CEC41C  D0 1D 09 10 */	stfs f0, 0x910(r29)
/* 80CEC420  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CEC424  D0 1D 09 14 */	stfs f0, 0x914(r29)
/* 80CEC428  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CEC42C  D0 1D 09 18 */	stfs f0, 0x918(r29)
lbl_80CEC430:
/* 80CEC430  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80CEC434  41 82 01 4C */	beq lbl_80CEC580
/* 80CEC438  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80CEC43C  FC 00 02 10 */	fabs f0, f0
/* 80CEC440  FC 40 00 18 */	frsp f2, f0
/* 80CEC444  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80CEC448  FC 00 02 10 */	fabs f0, f0
/* 80CEC44C  FC 00 00 18 */	frsp f0, f0
/* 80CEC450  FC 60 00 90 */	fmr f3, f0
/* 80CEC454  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CEC458  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80CEC45C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CEC460  40 82 00 08 */	bne lbl_80CEC468
/* 80CEC464  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
lbl_80CEC468:
/* 80CEC468  88 1D 09 06 */	lbz r0, 0x906(r29)
/* 80CEC46C  54 04 08 3C */	slwi r4, r0, 1
/* 80CEC470  38 7F 00 DC */	addi r3, r31, 0xdc
/* 80CEC474  7C 63 22 AE */	lhax r3, r3, r4
/* 80CEC478  88 1D 09 07 */	lbz r0, 0x907(r29)
/* 80CEC47C  28 00 00 01 */	cmplwi r0, 1
/* 80CEC480  41 82 00 0C */	beq lbl_80CEC48C
/* 80CEC484  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80CEC488  7C 63 22 AE */	lhax r3, r3, r4
lbl_80CEC48C:
/* 80CEC48C  28 1E 00 00 */	cmplwi r30, 0
/* 80CEC490  41 82 00 08 */	beq lbl_80CEC498
/* 80CEC494  A8 7E 00 00 */	lha r3, 0(r30)
lbl_80CEC498:
/* 80CEC498  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80CEC49C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80CEC4A0  41 82 00 38 */	beq lbl_80CEC4D8
/* 80CEC4A4  7C 60 07 34 */	extsh r0, r3
/* 80CEC4A8  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 80CEC4AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEC4B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CEC4B4  3C 00 43 30 */	lis r0, 0x4330
/* 80CEC4B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80CEC4BC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CEC4C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CEC4C4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80CEC4C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEC4CC  FC 00 00 1E */	fctiwz f0, f0
/* 80CEC4D0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CEC4D4  80 61 00 3C */	lwz r3, 0x3c(r1)
lbl_80CEC4D8:
/* 80CEC4D8  7C 60 07 34 */	extsh r0, r3
/* 80CEC4DC  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 80CEC4E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEC4E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CEC4E8  3C 00 43 30 */	lis r0, 0x4330
/* 80CEC4EC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CEC4F0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CEC4F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CEC4F8  EC 02 18 2A */	fadds f0, f2, f3
/* 80CEC4FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEC500  FC 00 00 1E */	fctiwz f0, f0
/* 80CEC504  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80CEC508  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80CEC50C  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80CEC510  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80CEC514  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80CEC518  7C 00 1E 70 */	srawi r0, r0, 3
/* 80CEC51C  54 00 18 38 */	slwi r0, r0, 3
/* 80CEC520  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CEC524  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CEC528  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CEC52C  C0 1D 09 10 */	lfs f0, 0x910(r29)
/* 80CEC530  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEC534  D0 1D 09 20 */	stfs f0, 0x920(r29)
/* 80CEC538  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80CEC53C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEC540  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CEC544  C0 1D 09 14 */	lfs f0, 0x914(r29)
/* 80CEC548  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEC54C  D0 1D 09 24 */	stfs f0, 0x924(r29)
/* 80CEC550  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80CEC554  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEC558  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CEC55C  C0 1D 09 18 */	lfs f0, 0x918(r29)
/* 80CEC560  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CEC564  D0 1D 09 28 */	stfs f0, 0x928(r29)
/* 80CEC568  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80CEC56C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEC570  7C 63 02 14 */	add r3, r3, r0
/* 80CEC574  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CEC578  D0 1D 09 2C */	stfs f0, 0x92c(r29)
/* 80CEC57C  48 00 00 28 */	b lbl_80CEC5A4
lbl_80CEC580:
/* 80CEC580  3C 60 80 3A */	lis r3, ZeroQuat@ha
/* 80CEC584  C4 03 72 40 */	lfsu f0, ZeroQuat@l(r3)
/* 80CEC588  D0 1D 09 20 */	stfs f0, 0x920(r29)
/* 80CEC58C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CEC590  D0 1D 09 24 */	stfs f0, 0x924(r29)
/* 80CEC594  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CEC598  D0 1D 09 28 */	stfs f0, 0x928(r29)
/* 80CEC59C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CEC5A0  D0 1D 09 2C */	stfs f0, 0x92c(r29)
lbl_80CEC5A4:
/* 80CEC5A4  39 61 00 70 */	addi r11, r1, 0x70
/* 80CEC5A8  4B 67 5C 78 */	b _restgpr_27
/* 80CEC5AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CEC5B0  7C 08 03 A6 */	mtlr r0
/* 80CEC5B4  38 21 00 70 */	addi r1, r1, 0x70
/* 80CEC5B8  4E 80 00 20 */	blr 
