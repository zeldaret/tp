lbl_80BD7288:
/* 80BD7288  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BD728C  7C 08 02 A6 */	mflr r0
/* 80BD7290  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BD7294  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80BD7298  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80BD729C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80BD72A0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80BD72A4  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD72A8  4B 78 AF 30 */	b _savegpr_28
/* 80BD72AC  7C 7D 1B 78 */	mr r29, r3
/* 80BD72B0  3C 60 80 BE */	lis r3, l_wallBmd@ha
/* 80BD72B4  3B E3 9F A4 */	addi r31, r3, l_wallBmd@l
/* 80BD72B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD72BC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80BD72C0  83 DC 5D AC */	lwz r30, 0x5dac(r28)
/* 80BD72C4  C3 DD 0F 54 */	lfs f30, 0xf54(r29)
/* 80BD72C8  38 00 00 00 */	li r0, 0
/* 80BD72CC  98 1D 0E 91 */	stb r0, 0xe91(r29)
/* 80BD72D0  88 1D 0E 90 */	lbz r0, 0xe90(r29)
/* 80BD72D4  28 00 00 00 */	cmplwi r0, 0
/* 80BD72D8  40 82 00 0C */	bne lbl_80BD72E4
/* 80BD72DC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD72E0  D0 1D 0F 50 */	stfs f0, 0xf50(r29)
lbl_80BD72E4:
/* 80BD72E4  7F A3 EB 78 */	mr r3, r29
/* 80BD72E8  38 81 00 38 */	addi r4, r1, 0x38
/* 80BD72EC  48 00 04 9D */	bl getChainBasePos__12daObjCwall_cFP4cXyz
/* 80BD72F0  C0 1D 0E DC */	lfs f0, 0xedc(r29)
/* 80BD72F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BD72F8  C0 1D 0E E0 */	lfs f0, 0xee0(r29)
/* 80BD72FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BD7300  C0 1D 0E E4 */	lfs f0, 0xee4(r29)
/* 80BD7304  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BD7308  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BD730C  38 81 00 38 */	addi r4, r1, 0x38
/* 80BD7310  4B 77 00 8C */	b PSVECSquareDistance
/* 80BD7314  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD7318  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD731C  40 81 00 58 */	ble lbl_80BD7374
/* 80BD7320  FC 00 08 34 */	frsqrte f0, f1
/* 80BD7324  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80BD7328  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD732C  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80BD7330  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7334  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7338  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD733C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7340  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD7344  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7348  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD734C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7350  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7354  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD7358  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD735C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7360  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7364  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7368  FF E1 00 32 */	fmul f31, f1, f0
/* 80BD736C  FF E0 F8 18 */	frsp f31, f31
/* 80BD7370  48 00 00 90 */	b lbl_80BD7400
lbl_80BD7374:
/* 80BD7374  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80BD7378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD737C  40 80 00 10 */	bge lbl_80BD738C
/* 80BD7380  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD7384  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BD7388  48 00 00 78 */	b lbl_80BD7400
lbl_80BD738C:
/* 80BD738C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BD7390  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BD7394  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD7398  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD739C  7C 03 00 00 */	cmpw r3, r0
/* 80BD73A0  41 82 00 14 */	beq lbl_80BD73B4
/* 80BD73A4  40 80 00 40 */	bge lbl_80BD73E4
/* 80BD73A8  2C 03 00 00 */	cmpwi r3, 0
/* 80BD73AC  41 82 00 20 */	beq lbl_80BD73CC
/* 80BD73B0  48 00 00 34 */	b lbl_80BD73E4
lbl_80BD73B4:
/* 80BD73B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD73B8  41 82 00 0C */	beq lbl_80BD73C4
/* 80BD73BC  38 00 00 01 */	li r0, 1
/* 80BD73C0  48 00 00 28 */	b lbl_80BD73E8
lbl_80BD73C4:
/* 80BD73C4  38 00 00 02 */	li r0, 2
/* 80BD73C8  48 00 00 20 */	b lbl_80BD73E8
lbl_80BD73CC:
/* 80BD73CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD73D0  41 82 00 0C */	beq lbl_80BD73DC
/* 80BD73D4  38 00 00 05 */	li r0, 5
/* 80BD73D8  48 00 00 10 */	b lbl_80BD73E8
lbl_80BD73DC:
/* 80BD73DC  38 00 00 03 */	li r0, 3
/* 80BD73E0  48 00 00 08 */	b lbl_80BD73E8
lbl_80BD73E4:
/* 80BD73E4  38 00 00 04 */	li r0, 4
lbl_80BD73E8:
/* 80BD73E8  2C 00 00 01 */	cmpwi r0, 1
/* 80BD73EC  40 82 00 10 */	bne lbl_80BD73FC
/* 80BD73F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD73F4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BD73F8  48 00 00 08 */	b lbl_80BD7400
lbl_80BD73FC:
/* 80BD73FC  FF E0 08 90 */	fmr f31, f1
lbl_80BD7400:
/* 80BD7400  88 1D 0F 58 */	lbz r0, 0xf58(r29)
/* 80BD7404  28 00 00 00 */	cmplwi r0, 0
/* 80BD7408  41 82 01 10 */	beq lbl_80BD7518
/* 80BD740C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BD7410  38 81 00 38 */	addi r4, r1, 0x38
/* 80BD7414  4B 76 FF 88 */	b PSVECSquareDistance
/* 80BD7418  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD741C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7420  40 81 00 58 */	ble lbl_80BD7478
/* 80BD7424  FC 00 08 34 */	frsqrte f0, f1
/* 80BD7428  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80BD742C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD7430  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80BD7434  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7438  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD743C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7440  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7444  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD7448  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD744C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7450  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7454  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7458  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD745C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7460  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7464  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7468  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD746C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD7470  FC 20 08 18 */	frsp f1, f1
/* 80BD7474  48 00 00 88 */	b lbl_80BD74FC
lbl_80BD7478:
/* 80BD7478  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80BD747C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7480  40 80 00 10 */	bge lbl_80BD7490
/* 80BD7484  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD7488  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BD748C  48 00 00 70 */	b lbl_80BD74FC
lbl_80BD7490:
/* 80BD7490  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BD7494  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BD7498  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD749C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD74A0  7C 03 00 00 */	cmpw r3, r0
/* 80BD74A4  41 82 00 14 */	beq lbl_80BD74B8
/* 80BD74A8  40 80 00 40 */	bge lbl_80BD74E8
/* 80BD74AC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD74B0  41 82 00 20 */	beq lbl_80BD74D0
/* 80BD74B4  48 00 00 34 */	b lbl_80BD74E8
lbl_80BD74B8:
/* 80BD74B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD74BC  41 82 00 0C */	beq lbl_80BD74C8
/* 80BD74C0  38 00 00 01 */	li r0, 1
/* 80BD74C4  48 00 00 28 */	b lbl_80BD74EC
lbl_80BD74C8:
/* 80BD74C8  38 00 00 02 */	li r0, 2
/* 80BD74CC  48 00 00 20 */	b lbl_80BD74EC
lbl_80BD74D0:
/* 80BD74D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD74D4  41 82 00 0C */	beq lbl_80BD74E0
/* 80BD74D8  38 00 00 05 */	li r0, 5
/* 80BD74DC  48 00 00 10 */	b lbl_80BD74EC
lbl_80BD74E0:
/* 80BD74E0  38 00 00 03 */	li r0, 3
/* 80BD74E4  48 00 00 08 */	b lbl_80BD74EC
lbl_80BD74E8:
/* 80BD74E8  38 00 00 04 */	li r0, 4
lbl_80BD74EC:
/* 80BD74EC  2C 00 00 01 */	cmpwi r0, 1
/* 80BD74F0  40 82 00 0C */	bne lbl_80BD74FC
/* 80BD74F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD74F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BD74FC:
/* 80BD74FC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BD7500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7504  40 81 01 EC */	ble lbl_80BD76F0
/* 80BD7508  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80BD750C  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 80BD7510  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80BD7514  48 00 01 DC */	b lbl_80BD76F0
lbl_80BD7518:
/* 80BD7518  88 1D 0E 90 */	lbz r0, 0xe90(r29)
/* 80BD751C  28 00 00 00 */	cmplwi r0, 0
/* 80BD7520  41 82 01 D0 */	beq lbl_80BD76F0
/* 80BD7524  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80BD7528  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BD752C  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80BD7530  7D 89 03 A6 */	mtctr r12
/* 80BD7534  4E 80 04 21 */	bctrl 
/* 80BD7538  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD753C  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80BD7540  40 82 00 10 */	bne lbl_80BD7550
/* 80BD7544  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BD7548  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BD754C  41 81 00 1C */	bgt lbl_80BD7568
lbl_80BD7550:
/* 80BD7550  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD7554  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80BD7558  41 82 01 68 */	beq lbl_80BD76C0
/* 80BD755C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80BD7560  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BD7564  40 81 01 5C */	ble lbl_80BD76C0
lbl_80BD7568:
/* 80BD7568  38 00 00 01 */	li r0, 1
/* 80BD756C  98 1D 0E 91 */	stb r0, 0xe91(r29)
/* 80BD7570  7F A3 EB 78 */	mr r3, r29
/* 80BD7574  48 00 22 09 */	bl checkPull__12daObjCwall_cFv
/* 80BD7578  2C 03 00 00 */	cmpwi r3, 0
/* 80BD757C  41 82 01 38 */	beq lbl_80BD76B4
/* 80BD7580  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BD7584  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD7588  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BD758C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BD7590  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BD7594  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BD7598  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD759C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BD75A0  7C 63 02 14 */	add r3, r3, r0
/* 80BD75A4  C0 43 00 04 */	lfs f2, 4(r3)
/* 80BD75A8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80BD75AC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BD75B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD75B4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD75B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD75BC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BD75C0  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD75C4  4B 76 FB 74 */	b PSVECSquareMag
/* 80BD75C8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD75CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD75D0  40 81 00 58 */	ble lbl_80BD7628
/* 80BD75D4  FC 00 08 34 */	frsqrte f0, f1
/* 80BD75D8  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80BD75DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD75E0  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80BD75E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD75E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD75EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD75F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD75F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD75F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD75FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7600  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7604  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD7608  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD760C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD7610  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD7614  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD7618  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD761C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD7620  FC 20 08 18 */	frsp f1, f1
/* 80BD7624  48 00 00 88 */	b lbl_80BD76AC
lbl_80BD7628:
/* 80BD7628  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80BD762C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD7630  40 80 00 10 */	bge lbl_80BD7640
/* 80BD7634  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD7638  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BD763C  48 00 00 70 */	b lbl_80BD76AC
lbl_80BD7640:
/* 80BD7640  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD7644  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD7648  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD764C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD7650  7C 03 00 00 */	cmpw r3, r0
/* 80BD7654  41 82 00 14 */	beq lbl_80BD7668
/* 80BD7658  40 80 00 40 */	bge lbl_80BD7698
/* 80BD765C  2C 03 00 00 */	cmpwi r3, 0
/* 80BD7660  41 82 00 20 */	beq lbl_80BD7680
/* 80BD7664  48 00 00 34 */	b lbl_80BD7698
lbl_80BD7668:
/* 80BD7668  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD766C  41 82 00 0C */	beq lbl_80BD7678
/* 80BD7670  38 00 00 01 */	li r0, 1
/* 80BD7674  48 00 00 28 */	b lbl_80BD769C
lbl_80BD7678:
/* 80BD7678  38 00 00 02 */	li r0, 2
/* 80BD767C  48 00 00 20 */	b lbl_80BD769C
lbl_80BD7680:
/* 80BD7680  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD7684  41 82 00 0C */	beq lbl_80BD7690
/* 80BD7688  38 00 00 05 */	li r0, 5
/* 80BD768C  48 00 00 10 */	b lbl_80BD769C
lbl_80BD7690:
/* 80BD7690  38 00 00 03 */	li r0, 3
/* 80BD7694  48 00 00 08 */	b lbl_80BD769C
lbl_80BD7698:
/* 80BD7698  38 00 00 04 */	li r0, 4
lbl_80BD769C:
/* 80BD769C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD76A0  40 82 00 0C */	bne lbl_80BD76AC
/* 80BD76A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD76A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BD76AC:
/* 80BD76AC  D0 3D 0F 50 */	stfs f1, 0xf50(r29)
/* 80BD76B0  48 00 00 20 */	b lbl_80BD76D0
lbl_80BD76B4:
/* 80BD76B4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD76B8  D0 1D 0F 50 */	stfs f0, 0xf50(r29)
/* 80BD76BC  48 00 00 14 */	b lbl_80BD76D0
lbl_80BD76C0:
/* 80BD76C0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD76C4  D0 1D 0F 50 */	stfs f0, 0xf50(r29)
/* 80BD76C8  38 00 00 00 */	li r0, 0
/* 80BD76CC  98 1D 0E 91 */	stb r0, 0xe91(r29)
lbl_80BD76D0:
/* 80BD76D0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80BD76D4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BD76D8  40 81 00 10 */	ble lbl_80BD76E8
/* 80BD76DC  38 00 00 00 */	li r0, 0
/* 80BD76E0  98 1D 0F 12 */	stb r0, 0xf12(r29)
/* 80BD76E4  48 00 00 0C */	b lbl_80BD76F0
lbl_80BD76E8:
/* 80BD76E8  38 00 00 01 */	li r0, 1
/* 80BD76EC  98 1D 0F 12 */	stb r0, 0xf12(r29)
lbl_80BD76F0:
/* 80BD76F0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80BD76F4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80BD76F8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80BD76FC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80BD7700  39 61 00 60 */	addi r11, r1, 0x60
/* 80BD7704  4B 78 AB 20 */	b _restgpr_28
/* 80BD7708  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BD770C  7C 08 03 A6 */	mtlr r0
/* 80BD7710  38 21 00 80 */	addi r1, r1, 0x80
/* 80BD7714  4E 80 00 20 */	blr 
