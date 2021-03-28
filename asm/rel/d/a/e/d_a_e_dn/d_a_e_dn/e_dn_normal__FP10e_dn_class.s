lbl_804E72C8:
/* 804E72C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804E72CC  7C 08 02 A6 */	mflr r0
/* 804E72D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E72D4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804E72D8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804E72DC  39 61 00 50 */	addi r11, r1, 0x50
/* 804E72E0  4B E7 AE F8 */	b _savegpr_28
/* 804E72E4  7C 7E 1B 78 */	mr r30, r3
/* 804E72E8  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E72EC  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E72F0  C3 FF 00 04 */	lfs f31, 4(r31)
/* 804E72F4  3B A0 40 00 */	li r29, 0x4000
/* 804E72F8  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E72FC  2C 00 00 03 */	cmpwi r0, 3
/* 804E7300  41 82 01 50 */	beq lbl_804E7450
/* 804E7304  40 80 02 58 */	bge lbl_804E755C
/* 804E7308  2C 00 00 00 */	cmpwi r0, 0
/* 804E730C  40 80 00 08 */	bge lbl_804E7314
/* 804E7310  48 00 02 4C */	b lbl_804E755C
lbl_804E7314:
/* 804E7314  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E7318  2C 00 00 00 */	cmpwi r0, 0
/* 804E731C  40 82 01 2C */	bne lbl_804E7448
/* 804E7320  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804E7324  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804E7328  4B B3 5B A8 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 804E732C  2C 03 00 00 */	cmpwi r3, 0
/* 804E7330  40 82 00 1C */	bne lbl_804E734C
/* 804E7334  7F C3 F3 78 */	mr r3, r30
/* 804E7338  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804E733C  38 80 00 00 */	li r4, 0
/* 804E7340  4B FF F0 01 */	bl move_gake_check__FP10e_dn_classfSc
/* 804E7344  2C 03 00 00 */	cmpwi r3, 0
/* 804E7348  41 82 00 2C */	beq lbl_804E7374
lbl_804E734C:
/* 804E734C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804E7350  4B D8 06 3C */	b cM_rndFX__Ff
/* 804E7354  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804E7358  EC 00 08 2A */	fadds f0, f0, f1
/* 804E735C  FC 00 00 1E */	fctiwz f0, f0
/* 804E7360  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E7364  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804E7368  38 00 00 28 */	li r0, 0x28
/* 804E736C  B0 1E 06 E2 */	sth r0, 0x6e2(r30)
/* 804E7370  48 00 00 88 */	b lbl_804E73F8
lbl_804E7374:
/* 804E7374  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804E7378  4B D8 06 14 */	b cM_rndFX__Ff
/* 804E737C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804E7380  EC 00 08 2A */	fadds f0, f0, f1
/* 804E7384  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E7388  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804E738C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E7390  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804E7394  4B D8 05 F8 */	b cM_rndFX__Ff
/* 804E7398  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804E739C  EC 00 08 2A */	fadds f0, f0, f1
/* 804E73A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E73A4  38 61 00 08 */	addi r3, r1, 8
/* 804E73A8  38 81 00 14 */	addi r4, r1, 0x14
/* 804E73AC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E73B0  4B D7 F7 84 */	b __mi__4cXyzCFRC3Vec
/* 804E73B4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E73B8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804E73BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E73C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E73C4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804E73C8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804E73CC  4B D8 02 A8 */	b cM_atan2s__Fff
/* 804E73D0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804E73D4  7C 00 18 50 */	subf r0, r0, r3
/* 804E73D8  7C 03 07 34 */	extsh r3, r0
/* 804E73DC  2C 03 30 00 */	cmpwi r3, 0x3000
/* 804E73E0  40 81 00 0C */	ble lbl_804E73EC
/* 804E73E4  38 60 30 00 */	li r3, 0x3000
/* 804E73E8  48 00 00 10 */	b lbl_804E73F8
lbl_804E73EC:
/* 804E73EC  2C 03 D0 00 */	cmpwi r3, -12288
/* 804E73F0  40 80 00 08 */	bge lbl_804E73F8
/* 804E73F4  38 60 D0 00 */	li r3, -12288
lbl_804E73F8:
/* 804E73F8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804E73FC  7C 00 1A 14 */	add r0, r0, r3
/* 804E7400  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 804E7404  7F C3 F3 78 */	mr r3, r30
/* 804E7408  38 80 00 23 */	li r4, 0x23
/* 804E740C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E7410  38 A0 00 02 */	li r5, 2
/* 804E7414  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7418  4B FF DE B9 */	bl anm_init__FP10e_dn_classifUcf
/* 804E741C  38 00 00 03 */	li r0, 3
/* 804E7420  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7424  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804E7428  4B D8 05 2C */	b cM_rndF__Ff
/* 804E742C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804E7430  EC 00 08 2A */	fadds f0, f0, f1
/* 804E7434  FC 00 00 1E */	fctiwz f0, f0
/* 804E7438  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E743C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E7440  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E7444  48 00 01 18 */	b lbl_804E755C
lbl_804E7448:
/* 804E7448  3B A0 70 00 */	li r29, 0x7000
/* 804E744C  48 00 01 10 */	b lbl_804E755C
lbl_804E7450:
/* 804E7450  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804E7454  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804E7458  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 804E745C  AB 9E 04 DE */	lha r28, 0x4de(r30)
/* 804E7460  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804E7464  A8 9E 05 D4 */	lha r4, 0x5d4(r30)
/* 804E7468  38 A0 00 02 */	li r5, 2
/* 804E746C  38 C0 04 00 */	li r6, 0x400
/* 804E7470  4B D8 91 98 */	b cLib_addCalcAngleS2__FPssss
/* 804E7474  A8 1E 05 D4 */	lha r0, 0x5d4(r30)
/* 804E7478  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 804E747C  7C 00 18 50 */	subf r0, r0, r3
/* 804E7480  7C 00 07 34 */	extsh r0, r0
/* 804E7484  2C 00 10 00 */	cmpwi r0, 0x1000
/* 804E7488  41 81 00 0C */	bgt lbl_804E7494
/* 804E748C  2C 00 F0 00 */	cmpwi r0, -4096
/* 804E7490  40 80 00 08 */	bge lbl_804E7498
lbl_804E7494:
/* 804E7494  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_804E7498:
/* 804E7498  7F 83 E0 50 */	subf r28, r3, r28
/* 804E749C  57 80 08 3C */	slwi r0, r28, 1
/* 804E74A0  7C 1C 07 34 */	extsh r28, r0
/* 804E74A4  2C 1C 10 00 */	cmpwi r28, 0x1000
/* 804E74A8  40 81 00 0C */	ble lbl_804E74B4
/* 804E74AC  3B 80 10 00 */	li r28, 0x1000
/* 804E74B0  48 00 00 10 */	b lbl_804E74C0
lbl_804E74B4:
/* 804E74B4  2C 1C F0 00 */	cmpwi r28, -4096
/* 804E74B8  40 80 00 08 */	bge lbl_804E74C0
/* 804E74BC  3B 80 F0 00 */	li r28, -4096
lbl_804E74C0:
/* 804E74C0  38 7E 08 26 */	addi r3, r30, 0x826
/* 804E74C4  7F 84 E3 78 */	mr r4, r28
/* 804E74C8  38 A0 00 02 */	li r5, 2
/* 804E74CC  38 C0 04 00 */	li r6, 0x400
/* 804E74D0  4B D8 91 38 */	b cLib_addCalcAngleS2__FPssss
/* 804E74D4  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E74D8  2C 00 00 00 */	cmpwi r0, 0
/* 804E74DC  41 82 00 40 */	beq lbl_804E751C
/* 804E74E0  A8 1E 06 E2 */	lha r0, 0x6e2(r30)
/* 804E74E4  2C 00 00 00 */	cmpwi r0, 0
/* 804E74E8  40 82 00 74 */	bne lbl_804E755C
/* 804E74EC  7F C3 F3 78 */	mr r3, r30
/* 804E74F0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804E74F4  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804E74F8  4B B3 59 D8 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 804E74FC  2C 03 00 00 */	cmpwi r3, 0
/* 804E7500  40 82 00 1C */	bne lbl_804E751C
/* 804E7504  7F C3 F3 78 */	mr r3, r30
/* 804E7508  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804E750C  38 80 00 00 */	li r4, 0
/* 804E7510  4B FF EE 31 */	bl move_gake_check__FP10e_dn_classfSc
/* 804E7514  2C 03 00 00 */	cmpwi r3, 0
/* 804E7518  41 82 00 44 */	beq lbl_804E755C
lbl_804E751C:
/* 804E751C  38 00 00 02 */	li r0, 2
/* 804E7520  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7524  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804E7528  4B D8 04 2C */	b cM_rndF__Ff
/* 804E752C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804E7530  EC 00 08 2A */	fadds f0, f0, f1
/* 804E7534  FC 00 00 1E */	fctiwz f0, f0
/* 804E7538  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E753C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E7540  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E7544  7F C3 F3 78 */	mr r3, r30
/* 804E7548  38 80 00 21 */	li r4, 0x21
/* 804E754C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804E7550  38 A0 00 02 */	li r5, 2
/* 804E7554  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7558  4B FF DD 79 */	bl anm_init__FP10e_dn_classifUcf
lbl_804E755C:
/* 804E755C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E7560  FC 20 F8 90 */	fmr f1, f31
/* 804E7564  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7568  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 804E756C  4B D8 84 D0 */	b cLib_addCalc2__FPffff
/* 804E7570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E7574  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E7578  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E757C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 804E7580  54 1C 00 00 */	rlwinm r28, r0, 0, 0, 0
/* 804E7584  7F C3 F3 78 */	mr r3, r30
/* 804E7588  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 804E758C  4B B3 56 D0 */	b fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 804E7590  7C 63 E3 78 */	or r3, r3, r28
/* 804E7594  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 804E7598  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804E759C  41 82 00 0C */	beq lbl_804E75A8
/* 804E75A0  2C 03 00 00 */	cmpwi r3, 0
/* 804E75A4  41 82 00 5C */	beq lbl_804E7600
lbl_804E75A8:
/* 804E75A8  2C 03 00 00 */	cmpwi r3, 0
/* 804E75AC  40 82 00 1C */	bne lbl_804E75C8
/* 804E75B0  7F C3 F3 78 */	mr r3, r30
/* 804E75B4  C0 3E 06 D8 */	lfs f1, 0x6d8(r30)
/* 804E75B8  7F A4 EB 78 */	mr r4, r29
/* 804E75BC  4B FF EC A9 */	bl pl_check__FP10e_dn_classfs
/* 804E75C0  2C 03 00 00 */	cmpwi r3, 0
/* 804E75C4  41 82 00 1C */	beq lbl_804E75E0
lbl_804E75C8:
/* 804E75C8  38 00 00 03 */	li r0, 3
/* 804E75CC  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E75D0  38 00 FF F6 */	li r0, -10
/* 804E75D4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E75D8  38 00 00 3C */	li r0, 0x3c
/* 804E75DC  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
lbl_804E75E0:
/* 804E75E0  7F C3 F3 78 */	mr r3, r30
/* 804E75E4  4B FF EB F5 */	bl bomb_view_check__FP10e_dn_class
/* 804E75E8  28 03 00 00 */	cmplwi r3, 0
/* 804E75EC  41 82 00 14 */	beq lbl_804E7600
/* 804E75F0  38 00 00 0B */	li r0, 0xb
/* 804E75F4  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E75F8  38 00 00 00 */	li r0, 0
/* 804E75FC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E7600:
/* 804E7600  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804E7604  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804E7608  39 61 00 50 */	addi r11, r1, 0x50
/* 804E760C  4B E7 AC 18 */	b _restgpr_28
/* 804E7610  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804E7614  7C 08 03 A6 */	mtlr r0
/* 804E7618  38 21 00 60 */	addi r1, r1, 0x60
/* 804E761C  4E 80 00 20 */	blr 
