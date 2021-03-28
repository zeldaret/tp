lbl_804D7210:
/* 804D7210  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804D7214  7C 08 02 A6 */	mflr r0
/* 804D7218  90 01 00 74 */	stw r0, 0x74(r1)
/* 804D721C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804D7220  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804D7224  39 61 00 60 */	addi r11, r1, 0x60
/* 804D7228  4B E8 AF AC */	b _savegpr_27
/* 804D722C  7C 7C 1B 78 */	mr r28, r3
/* 804D7230  3C 60 80 4E */	lis r3, lit_3942@ha
/* 804D7234  3B E3 9E 64 */	addi r31, r3, lit_3942@l
/* 804D7238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D723C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 804D7240  83 DB 5D AC */	lwz r30, 0x5dac(r27)
/* 804D7244  38 61 00 0C */	addi r3, r1, 0xc
/* 804D7248  38 9C 05 C4 */	addi r4, r28, 0x5c4
/* 804D724C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804D7250  4B D8 F8 E4 */	b __mi__4cXyzCFRC3Vec
/* 804D7254  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D7258  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D725C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D7260  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D7264  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804D7268  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804D726C  3B A0 00 00 */	li r29, 0
/* 804D7270  A8 1C 06 58 */	lha r0, 0x658(r28)
/* 804D7274  2C 00 00 00 */	cmpwi r0, 0
/* 804D7278  40 82 02 80 */	bne lbl_804D74F8
/* 804D727C  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 804D7280  28 00 00 01 */	cmplwi r0, 1
/* 804D7284  41 80 00 08 */	blt lbl_804D728C
/* 804D7288  48 00 02 70 */	b lbl_804D74F8
lbl_804D728C:
/* 804D728C  A8 1C 06 18 */	lha r0, 0x618(r28)
/* 804D7290  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804D7294  40 82 00 18 */	bne lbl_804D72AC
/* 804D7298  3C 60 80 4D */	lis r3, s_a_sub__FPvPv@ha
/* 804D729C  38 63 6F 10 */	addi r3, r3, s_a_sub__FPvPv@l
/* 804D72A0  7F 84 E3 78 */	mr r4, r28
/* 804D72A4  4B B4 A0 94 */	b fpcEx_Search__FPFPvPv_PvPv
/* 804D72A8  7C 7D 1B 78 */	mr r29, r3
lbl_804D72AC:
/* 804D72AC  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804D72B0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804D72B4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 804D72B8  7D 89 03 A6 */	mtctr r12
/* 804D72BC  4E 80 04 21 */	bctrl 
/* 804D72C0  28 03 00 00 */	cmplwi r3, 0
/* 804D72C4  41 82 00 18 */	beq lbl_804D72DC
/* 804D72C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D72CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D72D0  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 804D72D4  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 804D72D8  48 00 00 08 */	b lbl_804D72E0
lbl_804D72DC:
/* 804D72DC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
lbl_804D72E0:
/* 804D72E0  FC 00 02 10 */	fabs f0, f0
/* 804D72E4  3C 60 80 4E */	lis r3, l_HIO@ha
/* 804D72E8  38 63 A3 6C */	addi r3, r3, l_HIO@l
/* 804D72EC  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 804D72F0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804D72F4  FC 00 00 18 */	frsp f0, f0
/* 804D72F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804D72FC  EF E2 00 2A */	fadds f31, f2, f0
/* 804D7300  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 804D7304  28 00 00 00 */	cmplwi r0, 0
/* 804D7308  41 82 00 0C */	beq lbl_804D7314
/* 804D730C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804D7310  EF FF 00 2A */	fadds f31, f31, f0
lbl_804D7314:
/* 804D7314  C0 1C 05 DC */	lfs f0, 0x5dc(r28)
/* 804D7318  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804D731C  41 80 01 00 */	blt lbl_804D741C
/* 804D7320  38 61 00 18 */	addi r3, r1, 0x18
/* 804D7324  4B E6 FE 14 */	b PSVECSquareMag
/* 804D7328  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D732C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7330  40 81 00 58 */	ble lbl_804D7388
/* 804D7334  FC 00 08 34 */	frsqrte f0, f1
/* 804D7338  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 804D733C  FC 44 00 32 */	fmul f2, f4, f0
/* 804D7340  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 804D7344  FC 00 00 32 */	fmul f0, f0, f0
/* 804D7348  FC 01 00 32 */	fmul f0, f1, f0
/* 804D734C  FC 03 00 28 */	fsub f0, f3, f0
/* 804D7350  FC 02 00 32 */	fmul f0, f2, f0
/* 804D7354  FC 44 00 32 */	fmul f2, f4, f0
/* 804D7358  FC 00 00 32 */	fmul f0, f0, f0
/* 804D735C  FC 01 00 32 */	fmul f0, f1, f0
/* 804D7360  FC 03 00 28 */	fsub f0, f3, f0
/* 804D7364  FC 02 00 32 */	fmul f0, f2, f0
/* 804D7368  FC 44 00 32 */	fmul f2, f4, f0
/* 804D736C  FC 00 00 32 */	fmul f0, f0, f0
/* 804D7370  FC 01 00 32 */	fmul f0, f1, f0
/* 804D7374  FC 03 00 28 */	fsub f0, f3, f0
/* 804D7378  FC 02 00 32 */	fmul f0, f2, f0
/* 804D737C  FC 21 00 32 */	fmul f1, f1, f0
/* 804D7380  FC 20 08 18 */	frsp f1, f1
/* 804D7384  48 00 00 88 */	b lbl_804D740C
lbl_804D7388:
/* 804D7388  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 804D738C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7390  40 80 00 10 */	bge lbl_804D73A0
/* 804D7394  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D7398  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804D739C  48 00 00 70 */	b lbl_804D740C
lbl_804D73A0:
/* 804D73A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D73A4  80 81 00 08 */	lwz r4, 8(r1)
/* 804D73A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D73AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D73B0  7C 03 00 00 */	cmpw r3, r0
/* 804D73B4  41 82 00 14 */	beq lbl_804D73C8
/* 804D73B8  40 80 00 40 */	bge lbl_804D73F8
/* 804D73BC  2C 03 00 00 */	cmpwi r3, 0
/* 804D73C0  41 82 00 20 */	beq lbl_804D73E0
/* 804D73C4  48 00 00 34 */	b lbl_804D73F8
lbl_804D73C8:
/* 804D73C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D73CC  41 82 00 0C */	beq lbl_804D73D8
/* 804D73D0  38 00 00 01 */	li r0, 1
/* 804D73D4  48 00 00 28 */	b lbl_804D73FC
lbl_804D73D8:
/* 804D73D8  38 00 00 02 */	li r0, 2
/* 804D73DC  48 00 00 20 */	b lbl_804D73FC
lbl_804D73E0:
/* 804D73E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D73E4  41 82 00 0C */	beq lbl_804D73F0
/* 804D73E8  38 00 00 05 */	li r0, 5
/* 804D73EC  48 00 00 10 */	b lbl_804D73FC
lbl_804D73F0:
/* 804D73F0  38 00 00 03 */	li r0, 3
/* 804D73F4  48 00 00 08 */	b lbl_804D73FC
lbl_804D73F8:
/* 804D73F8  38 00 00 04 */	li r0, 4
lbl_804D73FC:
/* 804D73FC  2C 00 00 01 */	cmpwi r0, 1
/* 804D7400  40 82 00 0C */	bne lbl_804D740C
/* 804D7404  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804D7408  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804D740C:
/* 804D740C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804D7410  41 80 00 0C */	blt lbl_804D741C
/* 804D7414  28 1D 00 00 */	cmplwi r29, 0
/* 804D7418  41 82 00 E0 */	beq lbl_804D74F8
lbl_804D741C:
/* 804D741C  A8 1C 06 1A */	lha r0, 0x61a(r28)
/* 804D7420  2C 00 00 01 */	cmpwi r0, 1
/* 804D7424  41 82 00 6C */	beq lbl_804D7490
/* 804D7428  38 60 00 01 */	li r3, 1
/* 804D742C  B0 7C 06 1A */	sth r3, 0x61a(r28)
/* 804D7430  38 00 00 00 */	li r0, 0
/* 804D7434  B0 1C 06 1C */	sth r0, 0x61c(r28)
/* 804D7438  B0 7C 06 1E */	sth r3, 0x61e(r28)
/* 804D743C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D7440  D0 1C 06 24 */	stfs f0, 0x624(r28)
/* 804D7444  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D7448  4B D9 05 0C */	b cM_rndF__Ff
/* 804D744C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804D7450  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7454  FC 00 00 1E */	fctiwz f0, f0
/* 804D7458  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804D745C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804D7460  B0 1C 06 28 */	sth r0, 0x628(r28)
/* 804D7464  7F 83 E3 78 */	mr r3, r28
/* 804D7468  38 80 00 05 */	li r4, 5
/* 804D746C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7470  38 A0 00 02 */	li r5, 2
/* 804D7474  FC 40 08 90 */	fmr f2, f1
/* 804D7478  4B FF F8 2D */	bl anm_init__FP8bd_classifUcf
/* 804D747C  3C 60 80 4E */	lis r3, l_HIO@ha
/* 804D7480  38 63 A3 6C */	addi r3, r3, l_HIO@l
/* 804D7484  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 804D7488  B0 1C 05 F4 */	sth r0, 0x5f4(r28)
/* 804D748C  48 00 00 6C */	b lbl_804D74F8
lbl_804D7490:
/* 804D7490  3C 60 80 4E */	lis r3, l_HIO@ha
/* 804D7494  3B A3 A3 6C */	addi r29, r3, l_HIO@l
/* 804D7498  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 804D749C  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804D74A0  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 804D74A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D74A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804D74AC  3C 00 43 30 */	lis r0, 0x4330
/* 804D74B0  90 01 00 28 */	stw r0, 0x28(r1)
/* 804D74B4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804D74B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D74BC  EC 22 00 32 */	fmuls f1, f2, f0
/* 804D74C0  4B D9 04 94 */	b cM_rndF__Ff
/* 804D74C4  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804D74C8  C8 5F 00 50 */	lfd f2, 0x50(r31)
/* 804D74CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D74D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D74D4  3C 00 43 30 */	lis r0, 0x4330
/* 804D74D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804D74DC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804D74E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804D74E4  EC 00 08 2A */	fadds f0, f0, f1
/* 804D74E8  FC 00 00 1E */	fctiwz f0, f0
/* 804D74EC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804D74F0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804D74F4  B0 1C 06 4C */	sth r0, 0x64c(r28)
lbl_804D74F8:
/* 804D74F8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804D74FC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804D7500  39 61 00 60 */	addi r11, r1, 0x60
/* 804D7504  4B E8 AD 1C */	b _restgpr_27
/* 804D7508  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804D750C  7C 08 03 A6 */	mtlr r0
/* 804D7510  38 21 00 70 */	addi r1, r1, 0x70
/* 804D7514  4E 80 00 20 */	blr 
