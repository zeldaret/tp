lbl_80825484:
/* 80825484  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80825488  7C 08 02 A6 */	mflr r0
/* 8082548C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80825490  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80825494  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80825498  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8082549C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 808254A0  39 61 00 50 */	addi r11, r1, 0x50
/* 808254A4  4B B3 CD 31 */	bl _savegpr_27
/* 808254A8  7C 7D 1B 78 */	mr r29, r3
/* 808254AC  3C 60 80 83 */	lis r3, lit_3902@ha /* 0x80828850@ha */
/* 808254B0  3B E3 88 50 */	addi r31, r3, lit_3902@l /* 0x80828850@l */
/* 808254B4  3B C0 FF FF */	li r30, -1
/* 808254B8  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 808254BC  FC 00 02 10 */	fabs f0, f0
/* 808254C0  FC 20 00 18 */	frsp f1, f0
/* 808254C4  FF E0 08 90 */	fmr f31, f1
/* 808254C8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 808254CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808254D0  40 80 00 08 */	bge lbl_808254D8
/* 808254D4  FF E0 00 90 */	fmr f31, f0
lbl_808254D8:
/* 808254D8  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 808254DC  FC 00 02 10 */	fabs f0, f0
/* 808254E0  FC 20 00 18 */	frsp f1, f0
/* 808254E4  FF C0 08 90 */	fmr f30, f1
/* 808254E8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 808254EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808254F0  40 80 00 08 */	bge lbl_808254F8
/* 808254F4  FF C0 00 90 */	fmr f30, f0
lbl_808254F8:
/* 808254F8  38 00 00 02 */	li r0, 2
/* 808254FC  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 80825500  88 1D 06 7D */	lbz r0, 0x67d(r29)
/* 80825504  7C 03 07 74 */	extsb r3, r0
/* 80825508  38 03 00 01 */	addi r0, r3, 1
/* 8082550C  28 00 00 15 */	cmplwi r0, 0x15
/* 80825510  41 81 05 90 */	bgt lbl_80825AA0
/* 80825514  3C 60 80 83 */	lis r3, lit_5218@ha /* 0x80828AE8@ha */
/* 80825518  38 63 8A E8 */	addi r3, r3, lit_5218@l /* 0x80828AE8@l */
/* 8082551C  54 00 10 3A */	slwi r0, r0, 2
/* 80825520  7C 03 00 2E */	lwzx r0, r3, r0
/* 80825524  7C 09 03 A6 */	mtctr r0
/* 80825528  4E 80 04 20 */	bctr 
lbl_8082552C:
/* 8082552C  38 80 00 01 */	li r4, 1
/* 80825530  98 9D 09 24 */	stb r4, 0x924(r29)
/* 80825534  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80825538  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8082553C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80825540  40 82 00 18 */	bne lbl_80825558
/* 80825544  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80825548  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8082554C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80825550  41 82 00 08 */	beq lbl_80825558
/* 80825554  38 80 00 00 */	li r4, 0
lbl_80825558:
/* 80825558  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8082555C  41 82 05 44 */	beq lbl_80825AA0
/* 80825560  38 00 00 00 */	li r0, 0
/* 80825564  98 1D 06 7D */	stb r0, 0x67d(r29)
lbl_80825568:
/* 80825568  7F A3 EB 78 */	mr r3, r29
/* 8082556C  38 80 00 12 */	li r4, 0x12
/* 80825570  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80825574  38 A0 00 02 */	li r5, 2
/* 80825578  FC 40 08 90 */	fmr f2, f1
/* 8082557C  4B FF D2 15 */	bl anm_init__FP10e_yr_classifUcf
/* 80825580  38 00 00 01 */	li r0, 1
/* 80825584  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825588  38 00 00 64 */	li r0, 0x64
/* 8082558C  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_80825590:
/* 80825590  38 00 00 01 */	li r0, 1
/* 80825594  98 1D 09 24 */	stb r0, 0x924(r29)
/* 80825598  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8082559C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 808255A0  38 A0 00 05 */	li r5, 5
/* 808255A4  38 C0 03 00 */	li r6, 0x300
/* 808255A8  4B A4 B0 61 */	bl cLib_addCalcAngleS2__FPssss
/* 808255AC  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 808255B0  38 80 00 00 */	li r4, 0
/* 808255B4  38 A0 00 05 */	li r5, 5
/* 808255B8  38 C0 08 00 */	li r6, 0x800
/* 808255BC  4B A4 B0 4D */	bl cLib_addCalcAngleS2__FPssss
/* 808255C0  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 808255C4  38 80 00 00 */	li r4, 0
/* 808255C8  38 A0 00 05 */	li r5, 5
/* 808255CC  38 C0 08 00 */	li r6, 0x800
/* 808255D0  4B A4 B0 39 */	bl cLib_addCalcAngleS2__FPssss
/* 808255D4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 808255D8  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 808255DC  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 808255E0  FC 60 F8 90 */	fmr f3, f31
/* 808255E4  4B A4 A4 59 */	bl cLib_addCalc2__FPffff
/* 808255E8  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 808255EC  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 808255F0  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 808255F4  FC 60 F0 90 */	fmr f3, f30
/* 808255F8  4B A4 A4 45 */	bl cLib_addCalc2__FPffff
/* 808255FC  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80825600  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80825604  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 80825608  2C 00 00 00 */	cmpwi r0, 0
/* 8082560C  40 82 04 94 */	bne lbl_80825AA0
/* 80825610  7F A3 EB 78 */	mr r3, r29
/* 80825614  4B FF D3 41 */	bl e_yr_player_view_check__FP10e_yr_class
/* 80825618  2C 03 00 00 */	cmpwi r3, 0
/* 8082561C  41 82 04 84 */	beq lbl_80825AA0
/* 80825620  38 00 00 02 */	li r0, 2
/* 80825624  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825628  38 00 00 1E */	li r0, 0x1e
/* 8082562C  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80825630  7F A3 EB 78 */	mr r3, r29
/* 80825634  38 80 00 07 */	li r4, 7
/* 80825638  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8082563C  38 A0 00 00 */	li r5, 0
/* 80825640  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80825644  4B FF D1 4D */	bl anm_init__FP10e_yr_classifUcf
/* 80825648  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BC@ha */
/* 8082564C  38 03 01 BC */	addi r0, r3, 0x01BC /* 0x000701BC@l */
/* 80825650  90 01 00 0C */	stw r0, 0xc(r1)
/* 80825654  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80825658  38 81 00 0C */	addi r4, r1, 0xc
/* 8082565C  38 A0 FF FF */	li r5, -1
/* 80825660  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 80825664  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80825668  7D 89 03 A6 */	mtctr r12
/* 8082566C  4E 80 04 21 */	bctrl 
/* 80825670  48 00 04 30 */	b lbl_80825AA0
lbl_80825674:
/* 80825674  38 00 00 01 */	li r0, 1
/* 80825678  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 8082567C  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 80825680  2C 00 00 00 */	cmpwi r0, 0
/* 80825684  40 82 04 1C */	bne lbl_80825AA0
/* 80825688  38 00 00 03 */	li r0, 3
/* 8082568C  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825690  7F A3 EB 78 */	mr r3, r29
/* 80825694  38 80 00 08 */	li r4, 8
/* 80825698  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8082569C  38 A0 00 02 */	li r5, 2
/* 808256A0  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 808256A4  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 808256A8  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 808256AC  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 808256B0  EC 42 00 32 */	fmuls f2, f2, f0
/* 808256B4  4B FF D0 DD */	bl anm_init__FP10e_yr_classifUcf
/* 808256B8  38 00 00 46 */	li r0, 0x46
/* 808256BC  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_808256C0:
/* 808256C0  38 00 00 01 */	li r0, 1
/* 808256C4  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 808256C8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 808256CC  A8 9D 06 C8 */	lha r4, 0x6c8(r29)
/* 808256D0  38 A0 00 0A */	li r5, 0xa
/* 808256D4  38 C0 02 00 */	li r6, 0x200
/* 808256D8  4B A4 AF 31 */	bl cLib_addCalcAngleS2__FPssss
/* 808256DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808256E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 808256E4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 808256E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808256EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808256F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808256F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808256F8  80 63 00 00 */	lwz r3, 0(r3)
/* 808256FC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80825700  4B 7E 6C DD */	bl mDoMtx_YrotS__FPA4_fs
/* 80825704  38 61 00 1C */	addi r3, r1, 0x1c
/* 80825708  38 81 00 10 */	addi r4, r1, 0x10
/* 8082570C  4B A4 B7 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80825710  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80825714  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80825718  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082571C  EC 21 00 2A */	fadds f1, f1, f0
/* 80825720  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80825724  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80825728  4B A4 A3 15 */	bl cLib_addCalc2__FPffff
/* 8082572C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80825730  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80825734  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80825738  EC 21 00 2A */	fadds f1, f1, f0
/* 8082573C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80825740  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80825744  4B A4 A2 F9 */	bl cLib_addCalc2__FPffff
/* 80825748  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8082574C  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80825750  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80825754  EC 21 00 2A */	fadds f1, f1, f0
/* 80825758  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8082575C  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80825760  4B A4 A2 DD */	bl cLib_addCalc2__FPffff
/* 80825764  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 80825768  2C 00 00 00 */	cmpwi r0, 0
/* 8082576C  40 82 03 34 */	bne lbl_80825AA0
/* 80825770  38 00 00 03 */	li r0, 3
/* 80825774  98 1D 06 69 */	stb r0, 0x669(r29)
/* 80825778  38 00 00 00 */	li r0, 0
/* 8082577C  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825780  48 00 03 20 */	b lbl_80825AA0
lbl_80825784:
/* 80825784  3B C0 00 00 */	li r30, 0
/* 80825788  38 00 00 00 */	li r0, 0
/* 8082578C  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 80825790  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825794  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80825798  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082579C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808257A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808257A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808257A8  80 63 00 00 */	lwz r3, 0(r3)
/* 808257AC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 808257B0  4B 7E 6C 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 808257B4  38 61 00 1C */	addi r3, r1, 0x1c
/* 808257B8  38 81 00 10 */	addi r4, r1, 0x10
/* 808257BC  4B A4 B7 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 808257C0  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 808257C4  88 1D 06 7D */	lbz r0, 0x67d(r29)
/* 808257C8  2C 00 00 0A */	cmpwi r0, 0xa
/* 808257CC  40 82 00 08 */	bne lbl_808257D4
/* 808257D0  C0 5F 00 8C */	lfs f2, 0x8c(r31)
lbl_808257D4:
/* 808257D4  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 808257D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 808257DC  EC 01 00 2A */	fadds f0, f1, f0
/* 808257E0  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 808257E4  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 808257E8  EC 00 10 2A */	fadds f0, f0, f2
/* 808257EC  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 808257F0  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 808257F4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 808257F8  EC 01 00 2A */	fadds f0, f1, f0
/* 808257FC  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 80825800  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80825804  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80825808  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8082580C  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80825810  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80825814  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 80825818  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 8082581C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80825820  EC 61 00 28 */	fsubs f3, f1, f0
/* 80825824  C0 3D 06 84 */	lfs f1, 0x684(r29)
/* 80825828  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8082582C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80825830  C0 3D 06 88 */	lfs f1, 0x688(r29)
/* 80825834  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80825838  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082583C  EC 40 00 32 */	fmuls f2, f0, f0
/* 80825840  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80825844  EC 04 01 32 */	fmuls f0, f4, f4
/* 80825848  EC 01 00 2A */	fadds f0, f1, f0
/* 8082584C  EC 42 00 2A */	fadds f2, f2, f0
/* 80825850  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825854  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80825858  40 81 00 0C */	ble lbl_80825864
/* 8082585C  FC 00 10 34 */	frsqrte f0, f2
/* 80825860  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80825864:
/* 80825864  88 1D 06 7D */	lbz r0, 0x67d(r29)
/* 80825868  7C 00 07 74 */	extsb r0, r0
/* 8082586C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80825870  40 82 00 68 */	bne lbl_808258D8
/* 80825874  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80825878  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8082587C  40 80 00 10 */	bge lbl_8082588C
/* 80825880  38 00 00 0B */	li r0, 0xb
/* 80825884  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825888  48 00 02 18 */	b lbl_80825AA0
lbl_8082588C:
/* 8082588C  7F A3 EB 78 */	mr r3, r29
/* 80825890  4B FF D0 C5 */	bl e_yr_player_view_check__FP10e_yr_class
/* 80825894  2C 03 00 00 */	cmpwi r3, 0
/* 80825898  41 82 02 08 */	beq lbl_80825AA0
/* 8082589C  38 00 00 03 */	li r0, 3
/* 808258A0  98 1D 06 69 */	stb r0, 0x669(r29)
/* 808258A4  38 00 00 00 */	li r0, 0
/* 808258A8  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 808258AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BC@ha */
/* 808258B0  38 03 01 BC */	addi r0, r3, 0x01BC /* 0x000701BC@l */
/* 808258B4  90 01 00 08 */	stw r0, 8(r1)
/* 808258B8  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 808258BC  38 81 00 08 */	addi r4, r1, 8
/* 808258C0  38 A0 FF FF */	li r5, -1
/* 808258C4  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 808258C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808258CC  7D 89 03 A6 */	mtctr r12
/* 808258D0  4E 80 04 21 */	bctrl 
/* 808258D4  48 00 01 CC */	b lbl_80825AA0
lbl_808258D8:
/* 808258D8  2C 00 00 0B */	cmpwi r0, 0xb
/* 808258DC  40 82 00 58 */	bne lbl_80825934
/* 808258E0  3C 60 80 83 */	lis r3, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 808258E4  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l /* 0x80828DBC@l */
/* 808258E8  A8 03 00 50 */	lha r0, 0x50(r3)
/* 808258EC  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 808258F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 808258F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 808258F8  3C 00 43 30 */	lis r0, 0x4330
/* 808258FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80825900  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80825904  EC 00 08 28 */	fsubs f0, f0, f1
/* 80825908  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8082590C  40 80 01 94 */	bge lbl_80825AA0
/* 80825910  38 00 00 0C */	li r0, 0xc
/* 80825914  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825918  7F A3 EB 78 */	mr r3, r29
/* 8082591C  38 80 00 0B */	li r4, 0xb
/* 80825920  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80825924  38 A0 00 00 */	li r5, 0
/* 80825928  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8082592C  4B FF CE 65 */	bl anm_init__FP10e_yr_classifUcf
/* 80825930  48 00 01 70 */	b lbl_80825AA0
lbl_80825934:
/* 80825934  2C 00 00 0C */	cmpwi r0, 0xc
/* 80825938  40 82 01 68 */	bne lbl_80825AA0
/* 8082593C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80825940  D0 1D 0E B0 */	stfs f0, 0xeb0(r29)
/* 80825944  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80825948  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8082594C  40 80 01 54 */	bge lbl_80825AA0
/* 80825950  38 00 00 14 */	li r0, 0x14
/* 80825954  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825958  7F A3 EB 78 */	mr r3, r29
/* 8082595C  38 80 00 0D */	li r4, 0xd
/* 80825960  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80825964  38 A0 00 02 */	li r5, 2
/* 80825968  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 8082596C  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80825970  C0 46 00 44 */	lfs f2, 0x44(r6)
/* 80825974  4B FF CE 1D */	bl anm_init__FP10e_yr_classifUcf
/* 80825978  38 00 00 0A */	li r0, 0xa
/* 8082597C  98 1D 06 7C */	stb r0, 0x67c(r29)
/* 80825980  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825984  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80825988  38 00 00 00 */	li r0, 0
/* 8082598C  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 80825990  3B C0 FF FF */	li r30, -1
/* 80825994  48 00 01 0C */	b lbl_80825AA0
lbl_80825998:
/* 80825998  38 00 00 01 */	li r0, 1
/* 8082599C  98 1D 09 24 */	stb r0, 0x924(r29)
/* 808259A0  38 00 00 00 */	li r0, 0
/* 808259A4  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 808259A8  AB 7D 06 E0 */	lha r27, 0x6e0(r29)
/* 808259AC  38 1B 00 01 */	addi r0, r27, 1
/* 808259B0  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 808259B4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 808259B8  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 808259BC  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 808259C0  FC 60 F8 90 */	fmr f3, f31
/* 808259C4  4B A4 A0 79 */	bl cLib_addCalc2__FPffff
/* 808259C8  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 808259CC  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 808259D0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 808259D4  FC 60 F0 90 */	fmr f3, f30
/* 808259D8  4B A4 A0 65 */	bl cLib_addCalc2__FPffff
/* 808259DC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 808259E0  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 808259E4  EC 01 00 2A */	fadds f0, f1, f0
/* 808259E8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 808259EC  3C 60 80 83 */	lis r3, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 808259F0  3B 83 8D BC */	addi r28, r3, l_e_yrHIO@l /* 0x80828DBC@l */
/* 808259F4  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 808259F8  7C 1B 00 00 */	cmpw r27, r0
/* 808259FC  40 81 00 14 */	ble lbl_80825A10
/* 80825A00  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80825A04  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80825A08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80825A0C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80825A10:
/* 80825A10  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80825A14  38 80 00 00 */	li r4, 0
/* 80825A18  38 A0 00 05 */	li r5, 5
/* 80825A1C  38 C0 08 00 */	li r6, 0x800
/* 80825A20  4B A4 AB E9 */	bl cLib_addCalcAngleS2__FPssss
/* 80825A24  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80825A28  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80825A2C  38 A0 00 05 */	li r5, 5
/* 80825A30  38 C0 03 00 */	li r6, 0x300
/* 80825A34  4B A4 AB D5 */	bl cLib_addCalcAngleS2__FPssss
/* 80825A38  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80825A3C  38 80 00 00 */	li r4, 0
/* 80825A40  38 A0 00 05 */	li r5, 5
/* 80825A44  38 C0 08 00 */	li r6, 0x800
/* 80825A48  4B A4 AB C1 */	bl cLib_addCalcAngleS2__FPssss
/* 80825A4C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80825A50  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80825A54  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80825A58  4C 40 13 82 */	cror 2, 0, 2
/* 80825A5C  40 82 00 44 */	bne lbl_80825AA0
/* 80825A60  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 80825A64  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80825A68  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80825A6C  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 80825A70  7C 1B 00 00 */	cmpw r27, r0
/* 80825A74  40 81 00 2C */	ble lbl_80825AA0
/* 80825A78  7F A3 EB 78 */	mr r3, r29
/* 80825A7C  38 80 00 10 */	li r4, 0x10
/* 80825A80  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80825A84  38 A0 00 00 */	li r5, 0
/* 80825A88  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80825A8C  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80825A90  C0 46 00 48 */	lfs f2, 0x48(r6)
/* 80825A94  4B FF CC FD */	bl anm_init__FP10e_yr_classifUcf
/* 80825A98  38 00 FF FF */	li r0, -1
/* 80825A9C  98 1D 06 7D */	stb r0, 0x67d(r29)
lbl_80825AA0:
/* 80825AA0  7F C0 07 75 */	extsb. r0, r30
/* 80825AA4  41 82 00 08 */	beq lbl_80825AAC
/* 80825AA8  48 00 00 0C */	b lbl_80825AB4
lbl_80825AAC:
/* 80825AAC  7F A3 EB 78 */	mr r3, r29
/* 80825AB0  4B FF D4 5D */	bl e_yr_pos_move__FP10e_yr_class
lbl_80825AB4:
/* 80825AB4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80825AB8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80825ABC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80825AC0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80825AC4  39 61 00 50 */	addi r11, r1, 0x50
/* 80825AC8  4B B3 C7 59 */	bl _restgpr_27
/* 80825ACC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80825AD0  7C 08 03 A6 */	mtlr r0
/* 80825AD4  38 21 00 70 */	addi r1, r1, 0x70
/* 80825AD8  4E 80 00 20 */	blr 
