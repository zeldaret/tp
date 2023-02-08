lbl_806E7228:
/* 806E7228  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E722C  7C 08 02 A6 */	mflr r0
/* 806E7230  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E7234  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806E7238  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806E723C  7C 7E 1B 78 */	mr r30, r3
/* 806E7240  3C 80 80 6F */	lis r4, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E7244  3B E4 A1 F4 */	addi r31, r4, lit_3905@l /* 0x806EA1F4@l */
/* 806E7248  80 03 07 14 */	lwz r0, 0x714(r3)
/* 806E724C  2C 00 00 01 */	cmpwi r0, 1
/* 806E7250  41 82 00 94 */	beq lbl_806E72E4
/* 806E7254  40 80 00 10 */	bge lbl_806E7264
/* 806E7258  2C 00 00 00 */	cmpwi r0, 0
/* 806E725C  40 80 00 14 */	bge lbl_806E7270
/* 806E7260  48 00 02 D8 */	b lbl_806E7538
lbl_806E7264:
/* 806E7264  2C 00 00 03 */	cmpwi r0, 3
/* 806E7268  40 80 02 D0 */	bge lbl_806E7538
/* 806E726C  48 00 01 64 */	b lbl_806E73D0
lbl_806E7270:
/* 806E7270  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7274  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E7278  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806E727C  4B 93 34 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806E7280  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 806E7284  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806E7288  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E728C  7F C3 F3 78 */	mr r3, r30
/* 806E7290  38 80 00 05 */	li r4, 5
/* 806E7294  38 A0 00 00 */	li r5, 0
/* 806E7298  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E729C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E72A0  4B FF F2 75 */	bl setBck__8daE_HP_cFiUcff
/* 806E72A4  80 7E 07 14 */	lwz r3, 0x714(r30)
/* 806E72A8  38 03 00 01 */	addi r0, r3, 1
/* 806E72AC  90 1E 07 14 */	stw r0, 0x714(r30)
/* 806E72B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070529@ha */
/* 806E72B4  38 03 05 29 */	addi r0, r3, 0x0529 /* 0x00070529@l */
/* 806E72B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E72BC  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E72C0  38 81 00 14 */	addi r4, r1, 0x14
/* 806E72C4  38 A0 FF FF */	li r5, -1
/* 806E72C8  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E72CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E72D0  7D 89 03 A6 */	mtctr r12
/* 806E72D4  4E 80 04 21 */	bctrl 
/* 806E72D8  38 00 00 01 */	li r0, 1
/* 806E72DC  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 806E72E0  48 00 02 58 */	b lbl_806E7538
lbl_806E72E4:
/* 806E72E4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E72E8  38 63 00 0C */	addi r3, r3, 0xc
/* 806E72EC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806E72F0  4B C4 11 3D */	bl checkPass__12J3DFrameCtrlFf
/* 806E72F4  2C 03 00 00 */	cmpwi r3, 0
/* 806E72F8  40 82 00 1C */	bne lbl_806E7314
/* 806E72FC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E7300  38 63 00 0C */	addi r3, r3, 0xc
/* 806E7304  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806E7308  4B C4 11 25 */	bl checkPass__12J3DFrameCtrlFf
/* 806E730C  2C 03 00 00 */	cmpwi r3, 0
/* 806E7310  41 82 00 30 */	beq lbl_806E7340
lbl_806E7314:
/* 806E7314  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052A@ha */
/* 806E7318  38 03 05 2A */	addi r0, r3, 0x052A /* 0x0007052A@l */
/* 806E731C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E7320  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E7324  38 81 00 10 */	addi r4, r1, 0x10
/* 806E7328  38 A0 00 00 */	li r5, 0
/* 806E732C  38 C0 FF FF */	li r6, -1
/* 806E7330  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E7334  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806E7338  7D 89 03 A6 */	mtctr r12
/* 806E733C  4E 80 04 21 */	bctrl 
lbl_806E7340:
/* 806E7340  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E7344  38 80 00 01 */	li r4, 1
/* 806E7348  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E734C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E7350  40 82 00 18 */	bne lbl_806E7368
/* 806E7354  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E7358  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E735C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E7360  41 82 00 08 */	beq lbl_806E7368
/* 806E7364  38 80 00 00 */	li r4, 0
lbl_806E7368:
/* 806E7368  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E736C  41 82 01 CC */	beq lbl_806E7538
/* 806E7370  7F C3 F3 78 */	mr r3, r30
/* 806E7374  38 80 00 0E */	li r4, 0xe
/* 806E7378  38 A0 00 02 */	li r5, 2
/* 806E737C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E7380  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E7384  4B FF F1 91 */	bl setBck__8daE_HP_cFiUcff
/* 806E7388  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052E@ha */
/* 806E738C  38 03 05 2E */	addi r0, r3, 0x052E /* 0x0007052E@l */
/* 806E7390  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E7394  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E7398  38 81 00 0C */	addi r4, r1, 0xc
/* 806E739C  38 A0 FF FF */	li r5, -1
/* 806E73A0  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E73A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E73A8  7D 89 03 A6 */	mtctr r12
/* 806E73AC  4E 80 04 21 */	bctrl 
/* 806E73B0  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806EA4F8@ha */
/* 806E73B4  38 63 A4 F8 */	addi r3, r3, l_HIO@l /* 0x806EA4F8@l */
/* 806E73B8  A8 03 00 0C */	lha r0, 0xc(r3)
/* 806E73BC  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 806E73C0  80 7E 07 14 */	lwz r3, 0x714(r30)
/* 806E73C4  38 03 00 01 */	addi r0, r3, 1
/* 806E73C8  90 1E 07 14 */	stw r0, 0x714(r30)
/* 806E73CC  48 00 01 6C */	b lbl_806E7538
lbl_806E73D0:
/* 806E73D0  88 1E 07 1C */	lbz r0, 0x71c(r30)
/* 806E73D4  28 00 00 00 */	cmplwi r0, 0
/* 806E73D8  40 82 01 60 */	bne lbl_806E7538
/* 806E73DC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806E73E0  4B FF F1 ED */	bl mChkDistance__8daE_HP_cFf
/* 806E73E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E73E8  40 82 00 18 */	bne lbl_806E7400
/* 806E73EC  7F C3 F3 78 */	mr r3, r30
/* 806E73F0  38 80 00 01 */	li r4, 1
/* 806E73F4  38 A0 00 00 */	li r5, 0
/* 806E73F8  4B FF F1 C9 */	bl setActionMode__8daE_HP_cFii
/* 806E73FC  48 00 00 0C */	b lbl_806E7408
lbl_806E7400:
/* 806E7400  38 00 00 00 */	li r0, 0
/* 806E7404  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_806E7408:
/* 806E7408  38 61 00 18 */	addi r3, r1, 0x18
/* 806E740C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E7410  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E7414  4B B7 F7 21 */	bl __mi__4cXyzCFRC3Vec
/* 806E7418  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E741C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E7420  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806E7424  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E7428  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806E742C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E7430  38 61 00 24 */	addi r3, r1, 0x24
/* 806E7434  4B C5 FD 05 */	bl PSVECSquareMag
/* 806E7438  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E743C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7440  40 81 00 58 */	ble lbl_806E7498
/* 806E7444  FC 00 08 34 */	frsqrte f0, f1
/* 806E7448  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E744C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E7450  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E7454  FC 00 00 32 */	fmul f0, f0, f0
/* 806E7458  FC 01 00 32 */	fmul f0, f1, f0
/* 806E745C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E7460  FC 02 00 32 */	fmul f0, f2, f0
/* 806E7464  FC 44 00 32 */	fmul f2, f4, f0
/* 806E7468  FC 00 00 32 */	fmul f0, f0, f0
/* 806E746C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E7470  FC 03 00 28 */	fsub f0, f3, f0
/* 806E7474  FC 02 00 32 */	fmul f0, f2, f0
/* 806E7478  FC 44 00 32 */	fmul f2, f4, f0
/* 806E747C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E7480  FC 01 00 32 */	fmul f0, f1, f0
/* 806E7484  FC 03 00 28 */	fsub f0, f3, f0
/* 806E7488  FC 02 00 32 */	fmul f0, f2, f0
/* 806E748C  FC 21 00 32 */	fmul f1, f1, f0
/* 806E7490  FC 20 08 18 */	frsp f1, f1
/* 806E7494  48 00 00 88 */	b lbl_806E751C
lbl_806E7498:
/* 806E7498  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E749C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E74A0  40 80 00 10 */	bge lbl_806E74B0
/* 806E74A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E74A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E74AC  48 00 00 70 */	b lbl_806E751C
lbl_806E74B0:
/* 806E74B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E74B4  80 81 00 08 */	lwz r4, 8(r1)
/* 806E74B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E74BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E74C0  7C 03 00 00 */	cmpw r3, r0
/* 806E74C4  41 82 00 14 */	beq lbl_806E74D8
/* 806E74C8  40 80 00 40 */	bge lbl_806E7508
/* 806E74CC  2C 03 00 00 */	cmpwi r3, 0
/* 806E74D0  41 82 00 20 */	beq lbl_806E74F0
/* 806E74D4  48 00 00 34 */	b lbl_806E7508
lbl_806E74D8:
/* 806E74D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E74DC  41 82 00 0C */	beq lbl_806E74E8
/* 806E74E0  38 00 00 01 */	li r0, 1
/* 806E74E4  48 00 00 28 */	b lbl_806E750C
lbl_806E74E8:
/* 806E74E8  38 00 00 02 */	li r0, 2
/* 806E74EC  48 00 00 20 */	b lbl_806E750C
lbl_806E74F0:
/* 806E74F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E74F4  41 82 00 0C */	beq lbl_806E7500
/* 806E74F8  38 00 00 05 */	li r0, 5
/* 806E74FC  48 00 00 10 */	b lbl_806E750C
lbl_806E7500:
/* 806E7500  38 00 00 03 */	li r0, 3
/* 806E7504  48 00 00 08 */	b lbl_806E750C
lbl_806E7508:
/* 806E7508  38 00 00 04 */	li r0, 4
lbl_806E750C:
/* 806E750C  2C 00 00 01 */	cmpwi r0, 1
/* 806E7510  40 82 00 0C */	bne lbl_806E751C
/* 806E7514  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E7518  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806E751C:
/* 806E751C  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 806E7520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7524  40 81 00 14 */	ble lbl_806E7538
/* 806E7528  7F C3 F3 78 */	mr r3, r30
/* 806E752C  38 80 00 00 */	li r4, 0
/* 806E7530  38 A0 00 64 */	li r5, 0x64
/* 806E7534  4B FF F0 8D */	bl setActionMode__8daE_HP_cFii
lbl_806E7538:
/* 806E7538  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806E753C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806E7540  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E7544  4B B8 85 3D */	bl cLib_addCalc0__FPfff
/* 806E7548  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806E754C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806E7550  38 A0 00 01 */	li r5, 1
/* 806E7554  38 C0 10 00 */	li r6, 0x1000
/* 806E7558  4B B8 90 B1 */	bl cLib_addCalcAngleS2__FPssss
/* 806E755C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806E7560  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806E7564  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E7568  7C 08 03 A6 */	mtlr r0
/* 806E756C  38 21 00 40 */	addi r1, r1, 0x40
/* 806E7570  4E 80 00 20 */	blr 
