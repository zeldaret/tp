lbl_80533540:
/* 80533540  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80533544  7C 08 02 A6 */	mflr r0
/* 80533548  90 01 01 04 */	stw r0, 0x104(r1)
/* 8053354C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80533550  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80533554  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80533558  4B E2 EC 68 */	b _savegpr_22
/* 8053355C  7C 7F 1B 78 */	mr r31, r3
/* 80533560  3C 60 80 53 */	lis r3, lit_1109@ha
/* 80533564  3B A3 6B 80 */	addi r29, r3, lit_1109@l
/* 80533568  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8053356C  3B C3 61 68 */	addi r30, r3, lit_3679@l
/* 80533570  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80533574  28 00 00 14 */	cmplwi r0, 0x14
/* 80533578  41 82 00 48 */	beq lbl_805335C0
/* 8053357C  28 00 00 16 */	cmplwi r0, 0x16
/* 80533580  41 82 00 40 */	beq lbl_805335C0
/* 80533584  28 00 00 15 */	cmplwi r0, 0x15
/* 80533588  41 82 00 38 */	beq lbl_805335C0
/* 8053358C  28 00 00 18 */	cmplwi r0, 0x18
/* 80533590  41 82 00 30 */	beq lbl_805335C0
/* 80533594  28 00 00 17 */	cmplwi r0, 0x17
/* 80533598  41 82 00 28 */	beq lbl_805335C0
/* 8053359C  28 00 00 19 */	cmplwi r0, 0x19
/* 805335A0  41 82 00 20 */	beq lbl_805335C0
/* 805335A4  28 00 00 1A */	cmplwi r0, 0x1a
/* 805335A8  41 82 00 18 */	beq lbl_805335C0
/* 805335AC  28 00 00 1B */	cmplwi r0, 0x1b
/* 805335B0  41 82 00 10 */	beq lbl_805335C0
/* 805335B4  88 1F 0C 3C */	lbz r0, 0xc3c(r31)
/* 805335B8  28 00 00 00 */	cmplwi r0, 0
/* 805335BC  41 82 00 0C */	beq lbl_805335C8
lbl_805335C0:
/* 805335C0  38 60 00 01 */	li r3, 1
/* 805335C4  48 00 13 80 */	b lbl_80534944
lbl_805335C8:
/* 805335C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805335CC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 805335D0  83 59 5D AC */	lwz r26, 0x5dac(r25)
/* 805335D4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805335D8  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 805335DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805335E0  41 82 00 3C */	beq lbl_8053361C
/* 805335E4  3C 60 80 43 */	lis r3, g_Counter@ha
/* 805335E8  38 63 0C D8 */	addi r3, r3, g_Counter@l
/* 805335EC  80 63 00 08 */	lwz r3, 8(r3)
/* 805335F0  28 1F 00 00 */	cmplwi r31, 0
/* 805335F4  41 82 00 0C */	beq lbl_80533600
/* 805335F8  80 1F 00 04 */	lwz r0, 4(r31)
/* 805335FC  48 00 00 08 */	b lbl_80533604
lbl_80533600:
/* 80533600  38 00 FF FF */	li r0, -1
lbl_80533604:
/* 80533604  7C 03 02 14 */	add r0, r3, r0
/* 80533608  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8053360C  40 82 00 10 */	bne lbl_8053361C
/* 80533610  7F E3 FB 78 */	mr r3, r31
/* 80533614  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80533618  4B FF 83 11 */	bl get_surface_y__FP13mg_fish_classP4cXyz
lbl_8053361C:
/* 8053361C  38 00 00 00 */	li r0, 0
/* 80533620  98 1F 06 58 */	stb r0, 0x658(r31)
/* 80533624  7F E3 FB 78 */	mr r3, r31
/* 80533628  4B FF EE B1 */	bl action__FP13mg_fish_class
/* 8053362C  7F E3 FB 78 */	mr r3, r31
/* 80533630  4B FF A4 B5 */	bl dmcalc__FP13mg_fish_class
/* 80533634  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80533638  83 83 00 04 */	lwz r28, 4(r3)
/* 8053363C  38 A0 00 01 */	li r5, 1
/* 80533640  48 00 00 68 */	b lbl_805336A8
lbl_80533644:
/* 80533644  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80533648  2C 00 00 35 */	cmpwi r0, 0x35
/* 8053364C  40 82 00 14 */	bne lbl_80533660
/* 80533650  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533654  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80533658  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8053365C  41 82 00 14 */	beq lbl_80533670
lbl_80533660:
/* 80533660  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80533664  41 82 00 0C */	beq lbl_80533670
/* 80533668  2C 00 00 48 */	cmpwi r0, 0x48
/* 8053366C  40 82 00 20 */	bne lbl_8053368C
lbl_80533670:
/* 80533670  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80533674  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80533678  7C 83 00 2E */	lwzx r4, r3, r0
/* 8053367C  3C 60 80 53 */	lis r3, nodeCallBack2__FP8J3DJointi@ha
/* 80533680  38 03 AD BC */	addi r0, r3, nodeCallBack2__FP8J3DJointi@l
/* 80533684  90 04 00 04 */	stw r0, 4(r4)
/* 80533688  48 00 00 1C */	b lbl_805336A4
lbl_8053368C:
/* 8053368C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80533690  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80533694  7C 83 00 2E */	lwzx r4, r3, r0
/* 80533698  3C 60 80 53 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8053369C  38 03 A9 F0 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 805336A0  90 04 00 04 */	stw r0, 4(r4)
lbl_805336A4:
/* 805336A4  38 A5 00 01 */	addi r5, r5, 1
lbl_805336A8:
/* 805336A8  80 9C 00 04 */	lwz r4, 4(r28)
/* 805336AC  A0 64 00 2C */	lhz r3, 0x2c(r4)
/* 805336B0  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 805336B4  7C 00 18 40 */	cmplw r0, r3
/* 805336B8  41 80 FF 8C */	blt lbl_80533644
/* 805336BC  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 805336C0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805336C4  40 82 01 98 */	bne lbl_8053385C
/* 805336C8  A8 1F 06 24 */	lha r0, 0x624(r31)
/* 805336CC  2C 00 00 50 */	cmpwi r0, 0x50
/* 805336D0  40 80 00 58 */	bge lbl_80533728
/* 805336D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805336D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805336DC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805336E0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805336E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805336E8  7D 89 03 A6 */	mtctr r12
/* 805336EC  4E 80 04 21 */	bctrl 
/* 805336F0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805336F4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805336F8  80 84 00 00 */	lwz r4, 0(r4)
/* 805336FC  4B E1 2D B4 */	b PSMTXCopy
/* 80533700  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80533704  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80533708  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8053370C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80533710  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 80533714  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80533718  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8053371C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80533720  4B D3 D7 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 80533724  48 00 00 90 */	b lbl_805337B4
lbl_80533728:
/* 80533728  82 F9 5D AC */	lwz r23, 0x5dac(r25)
/* 8053372C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80533730  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80533734  80 63 00 00 */	lwz r3, 0(r3)
/* 80533738  A8 97 04 E6 */	lha r4, 0x4e6(r23)
/* 8053373C  4B AD 8C A0 */	b mDoMtx_YrotS__FPA4_fs
/* 80533740  7E E3 BB 78 */	mr r3, r23
/* 80533744  81 97 06 28 */	lwz r12, 0x628(r23)
/* 80533748  81 8C 02 08 */	lwz r12, 0x208(r12)
/* 8053374C  7D 89 03 A6 */	mtctr r12
/* 80533750  4E 80 04 21 */	bctrl 
/* 80533754  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80533758  41 82 00 0C */	beq lbl_80533764
/* 8053375C  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80533760  48 00 00 08 */	b lbl_80533768
lbl_80533764:
/* 80533764  C0 1E 00 14 */	lfs f0, 0x14(r30)
lbl_80533768:
/* 80533768  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8053376C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80533770  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80533774  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80533778  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8053377C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80533780  4B D3 D7 6C */	b MtxPosition__FP4cXyzP4cXyz
/* 80533784  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533788  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 8053378C  EC 01 00 2A */	fadds f0, f1, f0
/* 80533790  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80533794  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80533798  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 8053379C  EC 01 00 2A */	fadds f0, f1, f0
/* 805337A0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805337A4  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 805337A8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805337AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805337B0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_805337B4:
/* 805337B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805337B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805337BC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805337C0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805337C4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805337C8  4B E1 31 20 */	b PSMTXTrans
/* 805337CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805337D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805337D4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805337D8  4B AD 8C 5C */	b mDoMtx_YrotM__FPA4_fs
/* 805337DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805337E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805337E4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805337E8  4B AD 8B B4 */	b mDoMtx_XrotM__FPA4_fs
/* 805337EC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805337F0  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 805337F4  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805337F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805337FC  40 80 00 0C */	bge lbl_80533808
/* 80533800  EC 00 08 28 */	fsubs f0, f0, f1
/* 80533804  EC 42 00 2A */	fadds f2, f2, f0
lbl_80533808:
/* 80533808  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 8053380C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80533810  40 81 00 08 */	ble lbl_80533818
/* 80533814  FC 40 00 90 */	fmr f2, f0
lbl_80533818:
/* 80533818  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8053381C  FC 40 08 90 */	fmr f2, f1
/* 80533820  FC 60 08 90 */	fmr f3, f1
/* 80533824  4B AD 96 14 */	b scaleM__14mDoMtx_stack_cFfff
/* 80533828  80 1F 07 2C */	lwz r0, 0x72c(r31)
/* 8053382C  2C 00 00 04 */	cmpwi r0, 4
/* 80533830  41 81 00 18 */	bgt lbl_80533848
/* 80533834  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533838  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 8053383C  C0 7E 02 3C */	lfs f3, 0x23c(r30)
/* 80533840  4B AD 95 5C */	b transM__14mDoMtx_stack_cFfff
/* 80533844  48 00 00 E4 */	b lbl_80533928
lbl_80533848:
/* 80533848  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8053384C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80533850  C0 7E 02 40 */	lfs f3, 0x240(r30)
/* 80533854  4B AD 95 48 */	b transM__14mDoMtx_stack_cFfff
/* 80533858  48 00 00 D0 */	b lbl_80533928
lbl_8053385C:
/* 8053385C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533864  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533868  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8053386C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80533870  4B E1 30 78 */	b PSMTXTrans
/* 80533874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8053387C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533880  4B AD 8B B4 */	b mDoMtx_YrotM__FPA4_fs
/* 80533884  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533888  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8053388C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80533890  4B AD 8B 0C */	b mDoMtx_XrotM__FPA4_fs
/* 80533894  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533898  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8053389C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 805338A0  4B AD 8C 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 805338A4  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 805338A8  FC 40 08 90 */	fmr f2, f1
/* 805338AC  FC 60 08 90 */	fmr f3, f1
/* 805338B0  4B AD 95 88 */	b scaleM__14mDoMtx_stack_cFfff
/* 805338B4  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 805338B8  2C 00 00 35 */	cmpwi r0, 0x35
/* 805338BC  40 82 00 1C */	bne lbl_805338D8
/* 805338C0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805338C4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805338C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805338CC  40 82 00 0C */	bne lbl_805338D8
/* 805338D0  C3 FE 00 50 */	lfs f31, 0x50(r30)
/* 805338D4  48 00 00 08 */	b lbl_805338DC
lbl_805338D8:
/* 805338D8  C3 FE 00 18 */	lfs f31, 0x18(r30)
lbl_805338DC:
/* 805338DC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805338E0  FC 40 08 90 */	fmr f2, f1
/* 805338E4  FC 60 F8 50 */	fneg f3, f31
/* 805338E8  4B AD 94 B4 */	b transM__14mDoMtx_stack_cFfff
/* 805338EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805338F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805338F4  A8 9F 07 30 */	lha r4, 0x730(r31)
/* 805338F8  4B AD 8B 3C */	b mDoMtx_YrotM__FPA4_fs
/* 805338FC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533900  FC 40 08 90 */	fmr f2, f1
/* 80533904  FC 60 F8 90 */	fmr f3, f31
/* 80533908  4B AD 94 94 */	b transM__14mDoMtx_stack_cFfff
/* 8053390C  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80533910  2C 00 00 48 */	cmpwi r0, 0x48
/* 80533914  40 82 00 14 */	bne lbl_80533928
/* 80533918  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8053391C  FC 40 08 90 */	fmr f2, f1
/* 80533920  FC 60 08 90 */	fmr f3, f1
/* 80533924  4B AD 95 14 */	b scaleM__14mDoMtx_stack_cFfff
lbl_80533928:
/* 80533928  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8053392C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533930  38 9C 00 24 */	addi r4, r28, 0x24
/* 80533934  4B E1 2B 7C */	b PSMTXCopy
/* 80533938  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 8053393C  28 00 00 00 */	cmplwi r0, 0
/* 80533940  41 82 08 94 */	beq lbl_805341D4
/* 80533944  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 80533948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053394C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80533950  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80533954  38 81 00 14 */	addi r4, r1, 0x14
/* 80533958  4B AE 5E A0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8053395C  7C 7B 1B 78 */	mr r27, r3
/* 80533960  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 80533964  28 00 00 01 */	cmplwi r0, 1
/* 80533968  40 82 00 84 */	bne lbl_805339EC
/* 8053396C  3C 60 80 53 */	lis r3, s_bt_sub__FPvPv@ha
/* 80533970  38 63 B1 48 */	addi r3, r3, s_bt_sub__FPvPv@l
/* 80533974  7F E4 FB 78 */	mr r4, r31
/* 80533978  4B AE D9 C0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8053397C  7C 79 1B 79 */	or. r25, r3, r3
/* 80533980  41 82 08 54 */	beq lbl_805341D4
/* 80533984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8053398C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533990  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533994  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80533998  EC 42 00 28 */	fsubs f2, f2, f0
/* 8053399C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805339A0  4B E1 2F 48 */	b PSMTXTrans
/* 805339A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805339A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805339AC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805339B0  4B AD 8A 84 */	b mDoMtx_YrotM__FPA4_fs
/* 805339B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805339B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805339BC  38 80 C0 00 */	li r4, -16384
/* 805339C0  4B AD 89 DC */	b mDoMtx_XrotM__FPA4_fs
/* 805339C4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805339C8  FC 40 08 90 */	fmr f2, f1
/* 805339CC  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 805339D0  4B AD 93 CC */	b transM__14mDoMtx_stack_cFfff
/* 805339D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805339D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805339DC  80 99 06 14 */	lwz r4, 0x614(r25)
/* 805339E0  38 84 00 24 */	addi r4, r4, 0x24
/* 805339E4  4B E1 2A CC */	b PSMTXCopy
/* 805339E8  48 00 07 EC */	b lbl_805341D4
lbl_805339EC:
/* 805339EC  28 00 00 02 */	cmplwi r0, 2
/* 805339F0  40 82 01 44 */	bne lbl_80533B34
/* 805339F4  3C 60 80 53 */	lis r3, s_sp_sub__FPvPv@ha
/* 805339F8  38 63 B1 A0 */	addi r3, r3, s_sp_sub__FPvPv@l
/* 805339FC  7F E4 FB 78 */	mr r4, r31
/* 80533A00  4B AE D9 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80533A04  7C 79 1B 79 */	or. r25, r3, r3
/* 80533A08  41 82 07 CC */	beq lbl_805341D4
/* 80533A0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533A10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533A14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533A18  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533A1C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80533A20  4B E1 2E C8 */	b PSMTXTrans
/* 80533A24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533A28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533A2C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533A30  4B AD 8A 04 */	b mDoMtx_YrotM__FPA4_fs
/* 80533A34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533A38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533A3C  38 80 40 00 */	li r4, 0x4000
/* 80533A40  4B AD 89 5C */	b mDoMtx_XrotM__FPA4_fs
/* 80533A44  88 1B 10 2D */	lbz r0, 0x102d(r27)
/* 80533A48  2C 00 00 01 */	cmpwi r0, 1
/* 80533A4C  40 82 00 18 */	bne lbl_80533A64
/* 80533A50  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533A54  FC 40 08 90 */	fmr f2, f1
/* 80533A58  C0 7E 01 E0 */	lfs f3, 0x1e0(r30)
/* 80533A5C  4B AD 93 40 */	b transM__14mDoMtx_stack_cFfff
/* 80533A60  48 00 00 14 */	b lbl_80533A74
lbl_80533A64:
/* 80533A64  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533A68  FC 40 08 90 */	fmr f2, f1
/* 80533A6C  C0 7E 02 48 */	lfs f3, 0x248(r30)
/* 80533A70  4B AD 93 2C */	b transM__14mDoMtx_stack_cFfff
lbl_80533A74:
/* 80533A74  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 80533A78  FC 40 08 90 */	fmr f2, f1
/* 80533A7C  FC 60 08 90 */	fmr f3, f1
/* 80533A80  4B AD 93 B8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80533A84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533A88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533A8C  80 99 06 14 */	lwz r4, 0x614(r25)
/* 80533A90  38 84 00 24 */	addi r4, r4, 0x24
/* 80533A94  4B E1 2A 1C */	b PSMTXCopy
/* 80533A98  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533A9C  FC 40 08 90 */	fmr f2, f1
/* 80533AA0  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 80533AA4  4B AD 92 F8 */	b transM__14mDoMtx_stack_cFfff
/* 80533AA8  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 80533AAC  FC 40 08 90 */	fmr f2, f1
/* 80533AB0  FC 60 08 90 */	fmr f3, f1
/* 80533AB4  4B AD 93 84 */	b scaleM__14mDoMtx_stack_cFfff
/* 80533AB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533ABC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533AC0  38 80 40 00 */	li r4, 0x4000
/* 80533AC4  4B AD 88 D8 */	b mDoMtx_XrotM__FPA4_fs
/* 80533AC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533ACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533AD0  80 99 06 18 */	lwz r4, 0x618(r25)
/* 80533AD4  38 84 00 24 */	addi r4, r4, 0x24
/* 80533AD8  4B E1 29 D8 */	b PSMTXCopy
/* 80533ADC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533AE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533AE4  38 80 C0 00 */	li r4, -16384
/* 80533AE8  4B AD 88 B4 */	b mDoMtx_XrotM__FPA4_fs
/* 80533AEC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533AF0  FC 40 08 90 */	fmr f2, f1
/* 80533AF4  C0 7E 02 54 */	lfs f3, 0x254(r30)
/* 80533AF8  4B AD 92 A4 */	b transM__14mDoMtx_stack_cFfff
/* 80533AFC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80533B00  FC 40 08 90 */	fmr f2, f1
/* 80533B04  FC 60 08 90 */	fmr f3, f1
/* 80533B08  4B AD 93 30 */	b scaleM__14mDoMtx_stack_cFfff
/* 80533B0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533B10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533B14  38 80 40 00 */	li r4, 0x4000
/* 80533B18  4B AD 89 B4 */	b mDoMtx_ZrotM__FPA4_fs
/* 80533B1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533B20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533B24  80 99 06 1C */	lwz r4, 0x61c(r25)
/* 80533B28  38 84 00 24 */	addi r4, r4, 0x24
/* 80533B2C  4B E1 29 84 */	b PSMTXCopy
/* 80533B30  48 00 06 A4 */	b lbl_805341D4
lbl_80533B34:
/* 80533B34  28 00 00 03 */	cmplwi r0, 3
/* 80533B38  40 82 00 8C */	bne lbl_80533BC4
/* 80533B3C  3C 60 80 53 */	lis r3, s_lh_sub__FPvPv@ha
/* 80533B40  38 63 B1 F8 */	addi r3, r3, s_lh_sub__FPvPv@l
/* 80533B44  7F E4 FB 78 */	mr r4, r31
/* 80533B48  4B AE D7 F0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80533B4C  7C 79 1B 79 */	or. r25, r3, r3
/* 80533B50  41 82 06 84 */	beq lbl_805341D4
/* 80533B54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533B58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533B5C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533B60  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533B64  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80533B68  4B E1 2D 80 */	b PSMTXTrans
/* 80533B6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533B70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533B74  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533B78  4B AD 88 BC */	b mDoMtx_YrotM__FPA4_fs
/* 80533B7C  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80533B80  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80533B84  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 80533B88  EC 01 00 2A */	fadds f0, f1, f0
/* 80533B8C  EC 22 00 24 */	fdivs f1, f2, f0
/* 80533B90  EC 42 00 32 */	fmuls f2, f2, f0
/* 80533B94  FC 60 08 90 */	fmr f3, f1
/* 80533B98  4B AD 92 A0 */	b scaleM__14mDoMtx_stack_cFfff
/* 80533B9C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533BA0  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 80533BA4  FC 60 08 90 */	fmr f3, f1
/* 80533BA8  4B AD 91 F4 */	b transM__14mDoMtx_stack_cFfff
/* 80533BAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533BB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533BB4  80 99 06 14 */	lwz r4, 0x614(r25)
/* 80533BB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80533BBC  4B E1 28 F4 */	b PSMTXCopy
/* 80533BC0  48 00 06 14 */	b lbl_805341D4
lbl_80533BC4:
/* 80533BC4  28 00 00 04 */	cmplwi r0, 4
/* 80533BC8  40 82 01 8C */	bne lbl_80533D54
/* 80533BCC  80 1F 0C 4C */	lwz r0, 0xc4c(r31)
/* 80533BD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80533BD4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80533BD8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80533BDC  38 81 00 10 */	addi r4, r1, 0x10
/* 80533BE0  4B AE 5C 18 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80533BE4  7C 79 1B 79 */	or. r25, r3, r3
/* 80533BE8  41 82 05 EC */	beq lbl_805341D4
/* 80533BEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533BF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533BF4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533BF8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533BFC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80533C00  4B E1 2C E8 */	b PSMTXTrans
/* 80533C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533C0C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533C10  4B AD 88 24 */	b mDoMtx_YrotM__FPA4_fs
/* 80533C14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533C18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533C1C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80533C20  4B AD 87 7C */	b mDoMtx_XrotM__FPA4_fs
/* 80533C24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533C28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533C2C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80533C30  4B AD 88 9C */	b mDoMtx_ZrotM__FPA4_fs
/* 80533C34  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80533C38  2C 00 00 48 */	cmpwi r0, 0x48
/* 80533C3C  40 82 00 14 */	bne lbl_80533C50
/* 80533C40  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 80533C44  FC 40 08 90 */	fmr f2, f1
/* 80533C48  FC 60 08 90 */	fmr f3, f1
/* 80533C4C  4B AD 91 EC */	b scaleM__14mDoMtx_stack_cFfff
lbl_80533C50:
/* 80533C50  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533C54  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 80533C58  FC 60 08 90 */	fmr f3, f1
/* 80533C5C  4B AD 91 40 */	b transM__14mDoMtx_stack_cFfff
/* 80533C60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533C64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533C68  80 99 05 B8 */	lwz r4, 0x5b8(r25)
/* 80533C6C  38 84 00 24 */	addi r4, r4, 0x24
/* 80533C70  4B E1 28 40 */	b PSMTXCopy
/* 80533C74  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 80533C78  80 1E 02 1C */	lwz r0, 0x21c(r30)
/* 80533C7C  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 80533C80  90 01 00 AC */	stw r0, 0xac(r1)
/* 80533C84  80 1E 02 20 */	lwz r0, 0x220(r30)
/* 80533C88  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80533C8C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80533C90  D0 19 06 A8 */	stfs f0, 0x6a8(r25)
/* 80533C94  38 60 00 00 */	li r3, 0
/* 80533C98  38 80 00 00 */	li r4, 0
/* 80533C9C  38 A0 00 00 */	li r5, 0
/* 80533CA0  38 00 00 03 */	li r0, 3
/* 80533CA4  7C 09 03 A6 */	mtctr r0
lbl_80533CA8:
/* 80533CA8  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80533CAC  2C 00 00 48 */	cmpwi r0, 0x48
/* 80533CB0  40 82 00 4C */	bne lbl_80533CFC
/* 80533CB4  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80533CB8  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80533CBC  7C 00 2A 14 */	add r0, r0, r5
/* 80533CC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80533CC4  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 80533CC8  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l
/* 80533CCC  7C 46 04 2E */	lfsx f2, r6, r0
/* 80533CD0  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 80533CD4  7C 26 24 2E */	lfsx f1, r6, r4
/* 80533CD8  C0 1F 07 40 */	lfs f0, 0x740(r31)
/* 80533CDC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80533CE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80533CE4  FC 00 00 1E */	fctiwz f0, f0
/* 80533CE8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80533CEC  80 C1 00 C4 */	lwz r6, 0xc4(r1)
/* 80533CF0  38 03 06 A2 */	addi r0, r3, 0x6a2
/* 80533CF4  7C D9 03 2E */	sthx r6, r25, r0
/* 80533CF8  48 00 00 48 */	b lbl_80533D40
lbl_80533CFC:
/* 80533CFC  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80533D00  1C 00 1F 40 */	mulli r0, r0, 0x1f40
/* 80533D04  7C 00 2A 14 */	add r0, r0, r5
/* 80533D08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80533D0C  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 80533D10  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l
/* 80533D14  7C 46 04 2E */	lfsx f2, r6, r0
/* 80533D18  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 80533D1C  7C 26 24 2E */	lfsx f1, r6, r4
/* 80533D20  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80533D24  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80533D28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80533D2C  FC 00 00 1E */	fctiwz f0, f0
/* 80533D30  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80533D34  80 C1 00 C4 */	lwz r6, 0xc4(r1)
/* 80533D38  38 03 06 A2 */	addi r0, r3, 0x6a2
/* 80533D3C  7C D9 03 2E */	sthx r6, r25, r0
lbl_80533D40:
/* 80533D40  38 63 00 02 */	addi r3, r3, 2
/* 80533D44  38 84 00 04 */	addi r4, r4, 4
/* 80533D48  38 A5 C5 68 */	addi r5, r5, -15000
/* 80533D4C  42 00 FF 5C */	bdnz lbl_80533CA8
/* 80533D50  48 00 04 84 */	b lbl_805341D4
lbl_80533D54:
/* 80533D54  28 00 00 05 */	cmplwi r0, 5
/* 80533D58  40 82 01 98 */	bne lbl_80533EF0
/* 80533D5C  3C 60 80 53 */	lis r3, s_bb_sub__FPvPv@ha
/* 80533D60  38 63 B3 C4 */	addi r3, r3, s_bb_sub__FPvPv@l
/* 80533D64  7F E4 FB 78 */	mr r4, r31
/* 80533D68  4B AE D5 D0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80533D6C  7C 79 1B 79 */	or. r25, r3, r3
/* 80533D70  41 82 04 64 */	beq lbl_805341D4
/* 80533D74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533D78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533D7C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533D80  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533D84  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80533D88  4B E1 2B 60 */	b PSMTXTrans
/* 80533D8C  80 7E 02 24 */	lwz r3, 0x224(r30)
/* 80533D90  80 1E 02 28 */	lwz r0, 0x228(r30)
/* 80533D94  90 61 00 9C */	stw r3, 0x9c(r1)
/* 80533D98  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80533D9C  80 1E 02 2C */	lwz r0, 0x22c(r30)
/* 80533DA0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80533DA4  38 60 00 00 */	li r3, 0
/* 80533DA8  38 80 00 00 */	li r4, 0
/* 80533DAC  38 A0 00 00 */	li r5, 0
/* 80533DB0  38 00 00 03 */	li r0, 3
/* 80533DB4  7C 09 03 A6 */	mtctr r0
lbl_80533DB8:
/* 80533DB8  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80533DBC  2C 00 00 48 */	cmpwi r0, 0x48
/* 80533DC0  40 82 00 4C */	bne lbl_80533E0C
/* 80533DC4  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80533DC8  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80533DCC  7C 00 2A 14 */	add r0, r0, r5
/* 80533DD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80533DD4  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 80533DD8  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l
/* 80533DDC  7C 46 04 2E */	lfsx f2, r6, r0
/* 80533DE0  38 C1 00 9C */	addi r6, r1, 0x9c
/* 80533DE4  7C 26 24 2E */	lfsx f1, r6, r4
/* 80533DE8  C0 1F 07 40 */	lfs f0, 0x740(r31)
/* 80533DEC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80533DF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80533DF4  FC 00 00 1E */	fctiwz f0, f0
/* 80533DF8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80533DFC  80 C1 00 C4 */	lwz r6, 0xc4(r1)
/* 80533E00  38 03 07 18 */	addi r0, r3, 0x718
/* 80533E04  7C D9 03 2E */	sthx r6, r25, r0
/* 80533E08  48 00 00 48 */	b lbl_80533E50
lbl_80533E0C:
/* 80533E0C  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80533E10  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80533E14  7C 00 2A 14 */	add r0, r0, r5
/* 80533E18  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80533E1C  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 80533E20  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l
/* 80533E24  7C 46 04 2E */	lfsx f2, r6, r0
/* 80533E28  38 C1 00 9C */	addi r6, r1, 0x9c
/* 80533E2C  7C 26 24 2E */	lfsx f1, r6, r4
/* 80533E30  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 80533E34  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80533E38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80533E3C  FC 00 00 1E */	fctiwz f0, f0
/* 80533E40  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80533E44  80 C1 00 C4 */	lwz r6, 0xc4(r1)
/* 80533E48  38 03 07 18 */	addi r0, r3, 0x718
/* 80533E4C  7C D9 03 2E */	sthx r6, r25, r0
lbl_80533E50:
/* 80533E50  38 63 00 02 */	addi r3, r3, 2
/* 80533E54  38 84 00 04 */	addi r4, r4, 4
/* 80533E58  38 A5 C5 68 */	addi r5, r5, -15000
/* 80533E5C  42 00 FF 5C */	bdnz lbl_80533DB8
/* 80533E60  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80533E64  2C 00 00 48 */	cmpwi r0, 0x48
/* 80533E68  40 82 00 18 */	bne lbl_80533E80
/* 80533E6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533E70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533E74  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533E78  4B AD 85 BC */	b mDoMtx_YrotM__FPA4_fs
/* 80533E7C  48 00 00 20 */	b lbl_80533E9C
lbl_80533E80:
/* 80533E80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533E84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533E88  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533E8C  A8 19 07 18 */	lha r0, 0x718(r25)
/* 80533E90  7C 04 02 14 */	add r0, r4, r0
/* 80533E94  7C 04 07 34 */	extsh r4, r0
/* 80533E98  4B AD 85 9C */	b mDoMtx_YrotM__FPA4_fs
lbl_80533E9C:
/* 80533E9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533EA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533EA4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80533EA8  4B AD 84 F4 */	b mDoMtx_XrotM__FPA4_fs
/* 80533EAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533EB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533EB4  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80533EB8  4B AD 86 14 */	b mDoMtx_ZrotM__FPA4_fs
/* 80533EBC  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80533EC0  2C 00 00 48 */	cmpwi r0, 0x48
/* 80533EC4  40 82 00 14 */	bne lbl_80533ED8
/* 80533EC8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80533ECC  FC 40 08 90 */	fmr f2, f1
/* 80533ED0  FC 60 08 90 */	fmr f3, f1
/* 80533ED4  4B AD 8F 64 */	b scaleM__14mDoMtx_stack_cFfff
lbl_80533ED8:
/* 80533ED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533EDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533EE0  80 99 06 14 */	lwz r4, 0x614(r25)
/* 80533EE4  38 84 00 24 */	addi r4, r4, 0x24
/* 80533EE8  4B E1 25 C8 */	b PSMTXCopy
/* 80533EEC  48 00 02 E8 */	b lbl_805341D4
lbl_80533EF0:
/* 80533EF0  28 00 00 06 */	cmplwi r0, 6
/* 80533EF4  40 82 00 74 */	bne lbl_80533F68
/* 80533EF8  3C 60 80 53 */	lis r3, s_bin_sub__FPvPv@ha
/* 80533EFC  38 63 B2 64 */	addi r3, r3, s_bin_sub__FPvPv@l
/* 80533F00  7F E4 FB 78 */	mr r4, r31
/* 80533F04  4B AE D4 34 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80533F08  7C 79 1B 79 */	or. r25, r3, r3
/* 80533F0C  41 82 02 C8 */	beq lbl_805341D4
/* 80533F10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533F14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533F18  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533F1C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533F20  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80533F24  EC 42 00 28 */	fsubs f2, f2, f0
/* 80533F28  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80533F2C  4B E1 29 BC */	b PSMTXTrans
/* 80533F30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533F34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533F38  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533F3C  4B AD 84 F8 */	b mDoMtx_YrotM__FPA4_fs
/* 80533F40  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80533F44  C0 5E 02 58 */	lfs f2, 0x258(r30)
/* 80533F48  FC 60 08 90 */	fmr f3, f1
/* 80533F4C  4B AD 8E 50 */	b transM__14mDoMtx_stack_cFfff
/* 80533F50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533F54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533F58  80 99 06 14 */	lwz r4, 0x614(r25)
/* 80533F5C  38 84 00 24 */	addi r4, r4, 0x24
/* 80533F60  4B E1 25 50 */	b PSMTXCopy
/* 80533F64  48 00 02 70 */	b lbl_805341D4
lbl_80533F68:
/* 80533F68  28 00 00 07 */	cmplwi r0, 7
/* 80533F6C  40 82 00 C4 */	bne lbl_80534030
/* 80533F70  3C 60 80 53 */	lis r3, s_kn_sub__FPvPv@ha
/* 80533F74  38 63 B2 BC */	addi r3, r3, s_kn_sub__FPvPv@l
/* 80533F78  7F E4 FB 78 */	mr r4, r31
/* 80533F7C  4B AE D3 BC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80533F80  7C 79 1B 79 */	or. r25, r3, r3
/* 80533F84  41 82 02 50 */	beq lbl_805341D4
/* 80533F88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533F8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533F90  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80533F94  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80533F98  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80533F9C  4B E1 29 4C */	b PSMTXTrans
/* 80533FA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533FA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533FA8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80533FAC  4B AD 84 88 */	b mDoMtx_YrotM__FPA4_fs
/* 80533FB0  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80533FB4  1C 00 05 14 */	mulli r0, r0, 0x514
/* 80533FB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80533FBC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80533FC0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80533FC4  7C 43 04 2E */	lfsx f2, r3, r0
/* 80533FC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80533FCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80533FD0  C0 3E 02 5C */	lfs f1, 0x25c(r30)
/* 80533FD4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80533FD8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80533FDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80533FE0  FC 00 00 1E */	fctiwz f0, f0
/* 80533FE4  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80533FE8  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 80533FEC  38 04 C0 00 */	addi r0, r4, -16384
/* 80533FF0  7C 04 07 34 */	extsh r4, r0
/* 80533FF4  4B AD 83 A8 */	b mDoMtx_XrotM__FPA4_fs
/* 80533FF8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80533FFC  FC 40 08 90 */	fmr f2, f1
/* 80534000  FC 60 08 90 */	fmr f3, f1
/* 80534004  4B AD 8E 34 */	b scaleM__14mDoMtx_stack_cFfff
/* 80534008  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8053400C  C0 5E 02 60 */	lfs f2, 0x260(r30)
/* 80534010  C0 7E 02 30 */	lfs f3, 0x230(r30)
/* 80534014  4B AD 8D 88 */	b transM__14mDoMtx_stack_cFfff
/* 80534018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8053401C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534020  80 99 06 14 */	lwz r4, 0x614(r25)
/* 80534024  38 84 00 24 */	addi r4, r4, 0x24
/* 80534028  4B E1 24 88 */	b PSMTXCopy
/* 8053402C  48 00 01 A8 */	b lbl_805341D4
lbl_80534030:
/* 80534030  28 00 00 08 */	cmplwi r0, 8
/* 80534034  40 82 00 E4 */	bne lbl_80534118
/* 80534038  3C 60 80 53 */	lis r3, s_ed_sub__FPvPv@ha
/* 8053403C  38 63 B3 14 */	addi r3, r3, s_ed_sub__FPvPv@l
/* 80534040  7F E4 FB 78 */	mr r4, r31
/* 80534044  4B AE D2 F4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80534048  7C 79 1B 79 */	or. r25, r3, r3
/* 8053404C  41 82 01 88 */	beq lbl_805341D4
/* 80534050  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80534054  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534058  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8053405C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80534060  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80534064  4B E1 28 84 */	b PSMTXTrans
/* 80534068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8053406C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534070  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80534074  4B AD 83 C0 */	b mDoMtx_YrotM__FPA4_fs
/* 80534078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8053407C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534080  38 80 C0 00 */	li r4, -16384
/* 80534084  4B AD 83 18 */	b mDoMtx_XrotM__FPA4_fs
/* 80534088  88 1B 10 2D */	lbz r0, 0x102d(r27)
/* 8053408C  2C 00 00 01 */	cmpwi r0, 1
/* 80534090  40 82 00 18 */	bne lbl_805340A8
/* 80534094  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80534098  FC 40 08 90 */	fmr f2, f1
/* 8053409C  C0 7E 02 64 */	lfs f3, 0x264(r30)
/* 805340A0  4B AD 8C FC */	b transM__14mDoMtx_stack_cFfff
/* 805340A4  48 00 00 14 */	b lbl_805340B8
lbl_805340A8:
/* 805340A8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805340AC  FC 40 08 90 */	fmr f2, f1
/* 805340B0  C0 7E 02 60 */	lfs f3, 0x260(r30)
/* 805340B4  4B AD 8C E8 */	b transM__14mDoMtx_stack_cFfff
lbl_805340B8:
/* 805340B8  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 805340BC  1C 00 03 20 */	mulli r0, r0, 0x320
/* 805340C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805340C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805340C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805340CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 805340D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805340D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805340D8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805340DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805340E0  FC 00 00 1E */	fctiwz f0, f0
/* 805340E4  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 805340E8  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 805340EC  4B AD 83 48 */	b mDoMtx_YrotM__FPA4_fs
/* 805340F0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 805340F4  FC 40 08 90 */	fmr f2, f1
/* 805340F8  FC 60 08 90 */	fmr f3, f1
/* 805340FC  4B AD 8D 3C */	b scaleM__14mDoMtx_stack_cFfff
/* 80534100  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80534104  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534108  80 99 06 14 */	lwz r4, 0x614(r25)
/* 8053410C  38 84 00 24 */	addi r4, r4, 0x24
/* 80534110  4B E1 23 A0 */	b PSMTXCopy
/* 80534114  48 00 00 C0 */	b lbl_805341D4
lbl_80534118:
/* 80534118  28 00 00 09 */	cmplwi r0, 9
/* 8053411C  40 82 00 B8 */	bne lbl_805341D4
/* 80534120  3C 60 80 53 */	lis r3, s_sy_sub__FPvPv@ha
/* 80534124  38 63 B3 6C */	addi r3, r3, s_sy_sub__FPvPv@l
/* 80534128  7F E4 FB 78 */	mr r4, r31
/* 8053412C  4B AE D2 0C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80534130  7C 79 1B 79 */	or. r25, r3, r3
/* 80534134  41 82 00 A0 */	beq lbl_805341D4
/* 80534138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8053413C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534140  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80534144  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80534148  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8053414C  4B E1 27 9C */	b PSMTXTrans
/* 80534150  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80534154  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534158  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8053415C  4B AD 82 D8 */	b mDoMtx_YrotM__FPA4_fs
/* 80534160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80534164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80534168  38 80 C0 00 */	li r4, -16384
/* 8053416C  4B AD 82 30 */	b mDoMtx_XrotM__FPA4_fs
/* 80534170  88 1B 10 2D */	lbz r0, 0x102d(r27)
/* 80534174  2C 00 00 01 */	cmpwi r0, 1
/* 80534178  40 82 00 18 */	bne lbl_80534190
/* 8053417C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80534180  FC 40 08 90 */	fmr f2, f1
/* 80534184  C0 7E 02 3C */	lfs f3, 0x23c(r30)
/* 80534188  4B AD 8C 14 */	b transM__14mDoMtx_stack_cFfff
/* 8053418C  48 00 00 14 */	b lbl_805341A0
lbl_80534190:
/* 80534190  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80534194  FC 40 08 90 */	fmr f2, f1
/* 80534198  C0 7E 02 68 */	lfs f3, 0x268(r30)
/* 8053419C  4B AD 8C 00 */	b transM__14mDoMtx_stack_cFfff
lbl_805341A0:
/* 805341A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805341A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805341A8  38 80 0A 00 */	li r4, 0xa00
/* 805341AC  4B AD 82 88 */	b mDoMtx_YrotM__FPA4_fs
/* 805341B0  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 805341B4  FC 40 08 90 */	fmr f2, f1
/* 805341B8  FC 60 08 90 */	fmr f3, f1
/* 805341BC  4B AD 8C 7C */	b scaleM__14mDoMtx_stack_cFfff
/* 805341C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805341C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805341C8  80 99 06 14 */	lwz r4, 0x614(r25)
/* 805341CC  38 84 00 24 */	addi r4, r4, 0x24
/* 805341D0  4B E1 22 E0 */	b PSMTXCopy
lbl_805341D4:
/* 805341D4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 805341D8  38 9F 05 38 */	addi r4, r31, 0x538
/* 805341DC  38 A0 00 00 */	li r5, 0
/* 805341E0  38 C0 00 00 */	li r6, 0
/* 805341E4  4B AD C3 E4 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 805341E8  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 805341EC  28 03 00 00 */	cmplwi r3, 0
/* 805341F0  41 82 00 08 */	beq lbl_805341F8
/* 805341F4  4B AD 92 34 */	b play__14mDoExt_baseAnmFv
lbl_805341F8:
/* 805341F8  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 805341FC  4B AD C4 B0 */	b modelCalc__14mDoExt_McaMorfFv
/* 80534200  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80534204  7C 03 07 74 */	extsb r3, r0
/* 80534208  4B AF 8E 64 */	b dComIfGp_getReverb__Fi
/* 8053420C  7C 65 1B 78 */	mr r5, r3
/* 80534210  38 7F 08 00 */	addi r3, r31, 0x800
/* 80534214  38 80 00 00 */	li r4, 0
/* 80534218  81 9F 08 00 */	lwz r12, 0x800(r31)
/* 8053421C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80534220  7D 89 03 A6 */	mtctr r12
/* 80534224  4E 80 04 21 */	bctrl 
/* 80534228  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 8053422C  28 00 00 03 */	cmplwi r0, 3
/* 80534230  40 82 00 FC */	bne lbl_8053432C
/* 80534234  3A C0 00 00 */	li r22, 0
/* 80534238  3B 20 00 00 */	li r25, 0
/* 8053423C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80534240  3B 63 07 68 */	addi r27, r3, calc_mtx@l
/* 80534244  C3 FE 00 18 */	lfs f31, 0x18(r30)
lbl_80534248:
/* 80534248  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8053424C  80 63 00 04 */	lwz r3, 4(r3)
/* 80534250  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80534254  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80534258  80 9B 00 00 */	lwz r4, 0(r27)
/* 8053425C  4B E1 22 54 */	b PSMTXCopy
/* 80534260  2C 16 00 00 */	cmpwi r22, 0
/* 80534264  40 82 00 20 */	bne lbl_80534284
/* 80534268  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8053426C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80534270  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80534274  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80534278  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 8053427C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80534280  48 00 00 1C */	b lbl_8053429C
lbl_80534284:
/* 80534284  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80534288  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8053428C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80534290  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80534294  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 80534298  D0 01 00 BC */	stfs f0, 0xbc(r1)
lbl_8053429C:
/* 8053429C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805342A0  7F 1F CA 14 */	add r24, r31, r25
/* 805342A4  3A F8 07 54 */	addi r23, r24, 0x754
/* 805342A8  7E E4 BB 78 */	mr r4, r23
/* 805342AC  4B D3 CC 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 805342B0  80 7B 00 00 */	lwz r3, 0(r27)
/* 805342B4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805342B8  4B AD 81 24 */	b mDoMtx_YrotS__FPA4_fs
/* 805342BC  80 7B 00 00 */	lwz r3, 0(r27)
/* 805342C0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805342C4  4B AD 80 D8 */	b mDoMtx_XrotM__FPA4_fs
/* 805342C8  80 7B 00 00 */	lwz r3, 0(r27)
/* 805342CC  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 805342D0  4B AD 81 FC */	b mDoMtx_ZrotM__FPA4_fs
/* 805342D4  80 7B 00 00 */	lwz r3, 0(r27)
/* 805342D8  A8 9F 07 30 */	lha r4, 0x730(r31)
/* 805342DC  4B AD 81 58 */	b mDoMtx_YrotM__FPA4_fs
/* 805342E0  2C 16 00 00 */	cmpwi r22, 0
/* 805342E4  40 82 00 0C */	bne lbl_805342F0
/* 805342E8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805342EC  48 00 00 08 */	b lbl_805342F4
lbl_805342F0:
/* 805342F0  C0 1E 02 6C */	lfs f0, 0x26c(r30)
lbl_805342F4:
/* 805342F4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805342F8  D3 E1 00 B8 */	stfs f31, 0xb8(r1)
/* 805342FC  D3 E1 00 BC */	stfs f31, 0xbc(r1)
/* 80534300  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80534304  38 98 07 90 */	addi r4, r24, 0x790
/* 80534308  4B D3 CB E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8053430C  7F E3 FB 78 */	mr r3, r31
/* 80534310  7E E4 BB 78 */	mr r4, r23
/* 80534314  7E C5 B3 78 */	mr r5, r22
/* 80534318  4B FF F1 6D */	bl ke_move__FP13mg_fish_classP7mf_ke_si
/* 8053431C  3A D6 00 01 */	addi r22, r22, 1
/* 80534320  2C 16 00 02 */	cmpwi r22, 2
/* 80534324  3B 39 00 48 */	addi r25, r25, 0x48
/* 80534328  41 80 FF 20 */	blt lbl_80534248
lbl_8053432C:
/* 8053432C  88 1D 00 78 */	lbz r0, 0x78(r29)
/* 80534330  7C 00 07 75 */	extsb. r0, r0
/* 80534334  40 82 02 94 */	bne lbl_805345C8
/* 80534338  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 8053433C  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80534340  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80534344  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80534348  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 8053434C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80534350  D0 5D 00 F4 */	stfs f2, 0xf4(r29)
/* 80534354  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80534358  D0 23 00 04 */	stfs f1, 4(r3)
/* 8053435C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80534360  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 80534364  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80534368  38 BD 00 6C */	addi r5, r29, 0x6c
/* 8053436C  4B FF 59 4D */	bl __register_global_object
/* 80534370  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 80534374  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80534378  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8053437C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80534380  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80534384  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80534388  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 8053438C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80534390  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80534394  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80534398  38 63 00 0C */	addi r3, r3, 0xc
/* 8053439C  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 805343A0  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 805343A4  38 BD 00 7C */	addi r5, r29, 0x7c
/* 805343A8  4B FF 59 11 */	bl __register_global_object
/* 805343AC  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 805343B0  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 805343B4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805343B8  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 805343BC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805343C0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805343C4  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 805343C8  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805343CC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805343D0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805343D4  38 63 00 18 */	addi r3, r3, 0x18
/* 805343D8  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 805343DC  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 805343E0  38 BD 00 88 */	addi r5, r29, 0x88
/* 805343E4  4B FF 58 D5 */	bl __register_global_object
/* 805343E8  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 805343EC  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 805343F0  C0 3E 02 6C */	lfs f1, 0x26c(r30)
/* 805343F4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 805343F8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805343FC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80534400  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80534404  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80534408  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8053440C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80534410  38 63 00 24 */	addi r3, r3, 0x24
/* 80534414  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 80534418  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 8053441C  38 BD 00 94 */	addi r5, r29, 0x94
/* 80534420  4B FF 58 99 */	bl __register_global_object
/* 80534424  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 80534428  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8053442C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80534430  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80534434  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80534438  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8053443C  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80534440  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80534444  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80534448  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8053444C  38 63 00 30 */	addi r3, r3, 0x30
/* 80534450  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 80534454  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80534458  38 BD 00 A0 */	addi r5, r29, 0xa0
/* 8053445C  4B FF 58 5D */	bl __register_global_object
/* 80534460  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80534464  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80534468  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8053446C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80534470  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80534474  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80534478  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8053447C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80534480  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80534484  38 63 00 3C */	addi r3, r3, 0x3c
/* 80534488  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 8053448C  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80534490  38 BD 00 AC */	addi r5, r29, 0xac
/* 80534494  4B FF 58 25 */	bl __register_global_object
/* 80534498  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 8053449C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805344A0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805344A4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805344A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805344AC  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 805344B0  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 805344B4  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 805344B8  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 805344BC  38 63 00 48 */	addi r3, r3, 0x48
/* 805344C0  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 805344C4  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 805344C8  38 BD 00 B8 */	addi r5, r29, 0xb8
/* 805344CC  4B FF 57 ED */	bl __register_global_object
/* 805344D0  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805344D4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 805344D8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 805344DC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805344E0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805344E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805344E8  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 805344EC  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 805344F0  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 805344F4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 805344F8  38 63 00 54 */	addi r3, r3, 0x54
/* 805344FC  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 80534500  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80534504  38 BD 00 C4 */	addi r5, r29, 0xc4
/* 80534508  4B FF 57 B1 */	bl __register_global_object
/* 8053450C  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 80534510  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80534514  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80534518  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8053451C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80534520  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80534524  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80534528  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 8053452C  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 80534530  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80534534  38 63 00 60 */	addi r3, r3, 0x60
/* 80534538  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 8053453C  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 80534540  38 BD 00 D0 */	addi r5, r29, 0xd0
/* 80534544  4B FF 57 75 */	bl __register_global_object
/* 80534548  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 8053454C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80534550  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80534554  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80534558  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8053455C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80534560  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80534564  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 80534568  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 8053456C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80534570  38 63 00 6C */	addi r3, r3, 0x6c
/* 80534574  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 80534578  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 8053457C  38 BD 00 DC */	addi r5, r29, 0xdc
/* 80534580  4B FF 57 39 */	bl __register_global_object
/* 80534584  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 80534588  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8053458C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80534590  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80534594  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80534598  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8053459C  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 805345A0  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 805345A4  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 805345A8  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 805345AC  38 63 00 78 */	addi r3, r3, 0x78
/* 805345B0  3C 80 80 53 */	lis r4, __dt__4cXyzFv@ha
/* 805345B4  38 84 9E 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 805345B8  38 BD 00 E8 */	addi r5, r29, 0xe8
/* 805345BC  4B FF 56 FD */	bl __register_global_object
/* 805345C0  38 00 00 01 */	li r0, 1
/* 805345C4  98 1D 00 78 */	stb r0, 0x78(r29)
lbl_805345C8:
/* 805345C8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805345CC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 805345D0  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 805345D4  54 00 10 3A */	slwi r0, r0, 2
/* 805345D8  3C 60 80 53 */	lis r3, mouth_idx@ha
/* 805345DC  38 63 69 78 */	addi r3, r3, mouth_idx@l
/* 805345E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805345E4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805345E8  7C 64 02 14 */	add r3, r4, r0
/* 805345EC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805345F0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805345F4  80 84 00 00 */	lwz r4, 0(r4)
/* 805345F8  4B E1 1E B8 */	b PSMTXCopy
/* 805345FC  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80534600  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80534604  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 80534608  7C 63 02 14 */	add r3, r3, r0
/* 8053460C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80534610  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80534614  C0 03 00 04 */	lfs f0, 4(r3)
/* 80534618  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8053461C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80534620  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80534624  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80534628  38 9F 06 38 */	addi r4, r31, 0x638
/* 8053462C  4B D3 C8 C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80534630  88 1F 06 58 */	lbz r0, 0x658(r31)
/* 80534634  7C 00 07 75 */	extsb. r0, r0
/* 80534638  41 82 02 28 */	beq lbl_80534860
/* 8053463C  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 80534640  90 01 00 0C */	stw r0, 0xc(r1)
/* 80534644  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80534648  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8053464C  38 81 00 0C */	addi r4, r1, 0xc
/* 80534650  4B AE 51 A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80534654  7C 7B 1B 78 */	mr r27, r3
/* 80534658  88 63 0F 80 */	lbz r3, 0xf80(r3)
/* 8053465C  2C 03 00 04 */	cmpwi r3, 4
/* 80534660  40 82 01 48 */	bne lbl_805347A8
/* 80534664  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 80534668  2C 00 00 3C */	cmpwi r0, 0x3c
/* 8053466C  40 82 01 3C */	bne lbl_805347A8
/* 80534670  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 80534674  28 00 00 00 */	cmplwi r0, 0
/* 80534678  40 82 00 50 */	bne lbl_805346C8
/* 8053467C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80534680  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80534684  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 80534688  EC 01 00 28 */	fsubs f0, f1, f0
/* 8053468C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80534690  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80534694  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80534698  40 80 00 08 */	bge lbl_805346A0
/* 8053469C  FC 40 00 90 */	fmr f2, f0
lbl_805346A0:
/* 805346A0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 805346A4  C0 1E 02 74 */	lfs f0, 0x274(r30)
/* 805346A8  EC 00 10 2A */	fadds f0, f0, f2
/* 805346AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805346B0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805346B4  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 805346B8  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 805346BC  EC 01 00 2A */	fadds f0, f1, f0
/* 805346C0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805346C4  48 00 00 94 */	b lbl_80534758
lbl_805346C8:
/* 805346C8  28 00 00 02 */	cmplwi r0, 2
/* 805346CC  40 82 00 28 */	bne lbl_805346F4
/* 805346D0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 805346D4  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 805346D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805346DC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805346E0  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 805346E4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805346E8  EC 01 00 2A */	fadds f0, f1, f0
/* 805346EC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805346F0  48 00 00 68 */	b lbl_80534758
lbl_805346F4:
/* 805346F4  28 00 00 03 */	cmplwi r0, 3
/* 805346F8  40 82 00 38 */	bne lbl_80534730
/* 805346FC  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80534700  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 80534704  EC 01 00 2A */	fadds f0, f1, f0
/* 80534708  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8053470C  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80534710  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80534714  EC 01 00 2A */	fadds f0, f1, f0
/* 80534718  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8053471C  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 80534720  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80534724  EC 01 00 2A */	fadds f0, f1, f0
/* 80534728  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8053472C  48 00 00 2C */	b lbl_80534758
lbl_80534730:
/* 80534730  28 00 00 01 */	cmplwi r0, 1
/* 80534734  40 82 00 24 */	bne lbl_80534758
/* 80534738  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8053473C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80534740  EC 01 00 2A */	fadds f0, f1, f0
/* 80534744  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80534748  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8053474C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80534750  EC 01 00 2A */	fadds f0, f1, f0
/* 80534754  D0 01 00 BC */	stfs f0, 0xbc(r1)
lbl_80534758:
/* 80534758  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8053475C  38 9F 06 38 */	addi r4, r31, 0x638
/* 80534760  4B D3 C7 8C */	b MtxPosition__FP4cXyzP4cXyz
/* 80534764  38 80 00 00 */	li r4, 0
/* 80534768  B0 9B 04 DE */	sth r4, 0x4de(r27)
/* 8053476C  38 00 40 00 */	li r0, 0x4000
/* 80534770  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 80534774  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 80534778  38 03 1F 40 */	addi r0, r3, 0x1f40
/* 8053477C  B0 1B 04 E0 */	sth r0, 0x4e0(r27)
/* 80534780  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80534784  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80534788  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8053478C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80534790  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80534794  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 80534798  B0 9B 11 4A */	sth r4, 0x114a(r27)
/* 8053479C  B0 9B 11 4C */	sth r4, 0x114c(r27)
/* 805347A0  B0 9B 10 04 */	sth r4, 0x1004(r27)
/* 805347A4  48 00 00 98 */	b lbl_8053483C
lbl_805347A8:
/* 805347A8  7C 60 07 75 */	extsb. r0, r3
/* 805347AC  40 82 00 3C */	bne lbl_805347E8
/* 805347B0  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 805347B4  28 00 00 01 */	cmplwi r0, 1
/* 805347B8  40 82 00 30 */	bne lbl_805347E8
/* 805347BC  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 805347C0  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 805347C4  EC 01 00 2A */	fadds f0, f1, f0
/* 805347C8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805347CC  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 805347D0  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 805347D4  EC 01 00 2A */	fadds f0, f1, f0
/* 805347D8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805347DC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 805347E0  38 9F 06 38 */	addi r4, r31, 0x638
/* 805347E4  4B D3 C7 08 */	b MtxPosition__FP4cXyzP4cXyz
lbl_805347E8:
/* 805347E8  38 7B 04 DE */	addi r3, r27, 0x4de
/* 805347EC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805347F0  38 04 E8 F0 */	addi r0, r4, -5904
/* 805347F4  7C 04 07 34 */	extsh r4, r0
/* 805347F8  38 A0 00 02 */	li r5, 2
/* 805347FC  38 C0 08 00 */	li r6, 0x800
/* 80534800  4B D3 BE 08 */	b cLib_addCalcAngleS2__FPssss
/* 80534804  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 80534808  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8053480C  A8 1B 10 06 */	lha r0, 0x1006(r27)
/* 80534810  7C 84 02 14 */	add r4, r4, r0
/* 80534814  38 04 CE F4 */	addi r0, r4, -12556
/* 80534818  7C 04 07 34 */	extsh r4, r0
/* 8053481C  38 A0 00 02 */	li r5, 2
/* 80534820  38 C0 08 00 */	li r6, 0x800
/* 80534824  4B D3 BD E4 */	b cLib_addCalcAngleS2__FPssss
/* 80534828  38 7B 04 E0 */	addi r3, r27, 0x4e0
/* 8053482C  38 80 63 28 */	li r4, 0x6328
/* 80534830  38 A0 00 02 */	li r5, 2
/* 80534834  38 C0 08 00 */	li r6, 0x800
/* 80534838  4B D3 BD D0 */	b cLib_addCalcAngleS2__FPssss
lbl_8053483C:
/* 8053483C  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 80534840  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80534844  C0 1F 06 3C */	lfs f0, 0x63c(r31)
/* 80534848  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 8053484C  C0 1F 06 40 */	lfs f0, 0x640(r31)
/* 80534850  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80534854  38 00 00 00 */	li r0, 0
/* 80534858  B0 1B 10 00 */	sth r0, 0x1000(r27)
/* 8053485C  B0 1B 0F FC */	sth r0, 0xffc(r27)
lbl_80534860:
/* 80534860  88 1F 06 59 */	lbz r0, 0x659(r31)
/* 80534864  7C 00 07 75 */	extsb. r0, r0
/* 80534868  41 82 00 D8 */	beq lbl_80534940
/* 8053486C  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 80534870  90 01 00 08 */	stw r0, 8(r1)
/* 80534874  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80534878  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8053487C  38 81 00 08 */	addi r4, r1, 8
/* 80534880  4B AE 4F 78 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80534884  7C 79 1B 79 */	or. r25, r3, r3
/* 80534888  41 82 00 B0 */	beq lbl_80534938
/* 8053488C  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 80534890  28 00 00 00 */	cmplwi r0, 0
/* 80534894  41 82 00 1C */	beq lbl_805348B0
/* 80534898  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8053489C  D0 1F 06 38 */	stfs f0, 0x638(r31)
/* 805348A0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805348A4  D0 1F 06 3C */	stfs f0, 0x63c(r31)
/* 805348A8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805348AC  D0 1F 06 40 */	stfs f0, 0x640(r31)
lbl_805348B0:
/* 805348B0  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 805348B4  2C 00 00 47 */	cmpwi r0, 0x47
/* 805348B8  41 80 00 20 */	blt lbl_805348D8
/* 805348BC  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 805348C0  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 805348C4  C0 1F 06 3C */	lfs f0, 0x63c(r31)
/* 805348C8  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 805348CC  C0 1F 06 40 */	lfs f0, 0x640(r31)
/* 805348D0  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 805348D4  48 00 00 54 */	b lbl_80534928
lbl_805348D8:
/* 805348D8  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 805348DC  C0 3F 06 38 */	lfs f1, 0x638(r31)
/* 805348E0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805348E4  C0 7F 06 50 */	lfs f3, 0x650(r31)
/* 805348E8  4B D3 B1 54 */	b cLib_addCalc2__FPffff
/* 805348EC  38 79 04 D4 */	addi r3, r25, 0x4d4
/* 805348F0  C0 3F 06 3C */	lfs f1, 0x63c(r31)
/* 805348F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805348F8  C0 7F 06 50 */	lfs f3, 0x650(r31)
/* 805348FC  4B D3 B1 40 */	b cLib_addCalc2__FPffff
/* 80534900  38 79 04 D8 */	addi r3, r25, 0x4d8
/* 80534904  C0 3F 06 40 */	lfs f1, 0x640(r31)
/* 80534908  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8053490C  C0 7F 06 50 */	lfs f3, 0x650(r31)
/* 80534910  4B D3 B1 2C */	b cLib_addCalc2__FPffff
/* 80534914  38 7F 06 50 */	addi r3, r31, 0x650
/* 80534918  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8053491C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80534920  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 80534924  4B D3 B1 18 */	b cLib_addCalc2__FPffff
lbl_80534928:
/* 80534928  88 7F 06 59 */	lbz r3, 0x659(r31)
/* 8053492C  38 03 FF FF */	addi r0, r3, -1
/* 80534930  98 1F 06 59 */	stb r0, 0x659(r31)
/* 80534934  48 00 00 0C */	b lbl_80534940
lbl_80534938:
/* 80534938  38 00 00 00 */	li r0, 0
/* 8053493C  98 1F 06 59 */	stb r0, 0x659(r31)
lbl_80534940:
/* 80534940  38 60 00 01 */	li r3, 1
lbl_80534944:
/* 80534944  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80534948  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8053494C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80534950  4B E2 D8 BC */	b _restgpr_22
/* 80534954  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80534958  7C 08 03 A6 */	mtlr r0
/* 8053495C  38 21 01 00 */	addi r1, r1, 0x100
/* 80534960  4E 80 00 20 */	blr 
