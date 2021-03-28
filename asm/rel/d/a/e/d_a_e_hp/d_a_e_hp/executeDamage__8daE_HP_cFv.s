lbl_806E7574:
/* 806E7574  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E7578  7C 08 02 A6 */	mflr r0
/* 806E757C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E7580  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806E7584  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806E7588  7C 7E 1B 78 */	mr r30, r3
/* 806E758C  3C 80 80 6F */	lis r4, lit_3905@ha
/* 806E7590  3B E4 A1 F4 */	addi r31, r4, lit_3905@l
/* 806E7594  80 03 07 14 */	lwz r0, 0x714(r3)
/* 806E7598  2C 00 00 01 */	cmpwi r0, 1
/* 806E759C  41 82 00 64 */	beq lbl_806E7600
/* 806E75A0  40 80 01 F8 */	bge lbl_806E7798
/* 806E75A4  2C 00 00 00 */	cmpwi r0, 0
/* 806E75A8  40 80 00 08 */	bge lbl_806E75B0
/* 806E75AC  48 00 01 EC */	b lbl_806E7798
lbl_806E75B0:
/* 806E75B0  38 00 00 01 */	li r0, 1
/* 806E75B4  98 1E 07 89 */	stb r0, 0x789(r30)
/* 806E75B8  38 80 00 06 */	li r4, 6
/* 806E75BC  38 A0 00 00 */	li r5, 0
/* 806E75C0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E75C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E75C8  4B FF EF 4D */	bl setBck__8daE_HP_cFiUcff
/* 806E75CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052B@ha */
/* 806E75D0  38 03 05 2B */	addi r0, r3, 0x052B /* 0x0007052B@l */
/* 806E75D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E75D8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E75DC  38 81 00 0C */	addi r4, r1, 0xc
/* 806E75E0  38 A0 FF FF */	li r5, -1
/* 806E75E4  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E75E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E75EC  7D 89 03 A6 */	mtctr r12
/* 806E75F0  4E 80 04 21 */	bctrl 
/* 806E75F4  38 00 00 01 */	li r0, 1
/* 806E75F8  90 1E 07 14 */	stw r0, 0x714(r30)
/* 806E75FC  48 00 01 9C */	b lbl_806E7798
lbl_806E7600:
/* 806E7600  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E7604  38 80 00 01 */	li r4, 1
/* 806E7608  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E760C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E7610  40 82 00 18 */	bne lbl_806E7628
/* 806E7614  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E7618  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E761C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E7620  41 82 00 08 */	beq lbl_806E7628
/* 806E7624  38 80 00 00 */	li r4, 0
lbl_806E7628:
/* 806E7628  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E762C  41 82 01 6C */	beq lbl_806E7798
/* 806E7630  7F C3 F3 78 */	mr r3, r30
/* 806E7634  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806E7638  4B FF EF 95 */	bl mChkDistance__8daE_HP_cFf
/* 806E763C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E7640  41 82 00 18 */	beq lbl_806E7658
/* 806E7644  7F C3 F3 78 */	mr r3, r30
/* 806E7648  38 80 00 03 */	li r4, 3
/* 806E764C  38 A0 00 00 */	li r5, 0
/* 806E7650  4B FF EF 71 */	bl setActionMode__8daE_HP_cFii
/* 806E7654  48 00 00 14 */	b lbl_806E7668
lbl_806E7658:
/* 806E7658  7F C3 F3 78 */	mr r3, r30
/* 806E765C  38 80 00 01 */	li r4, 1
/* 806E7660  38 A0 00 00 */	li r5, 0
/* 806E7664  4B FF EF 5D */	bl setActionMode__8daE_HP_cFii
lbl_806E7668:
/* 806E7668  38 61 00 10 */	addi r3, r1, 0x10
/* 806E766C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E7670  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E7674  4B B7 F4 C0 */	b __mi__4cXyzCFRC3Vec
/* 806E7678  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806E767C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E7680  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E7684  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E7688  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E768C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E7690  38 61 00 1C */	addi r3, r1, 0x1c
/* 806E7694  4B C5 FA A4 */	b PSVECSquareMag
/* 806E7698  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E769C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E76A0  40 81 00 58 */	ble lbl_806E76F8
/* 806E76A4  FC 00 08 34 */	frsqrte f0, f1
/* 806E76A8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E76AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806E76B0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E76B4  FC 00 00 32 */	fmul f0, f0, f0
/* 806E76B8  FC 01 00 32 */	fmul f0, f1, f0
/* 806E76BC  FC 03 00 28 */	fsub f0, f3, f0
/* 806E76C0  FC 02 00 32 */	fmul f0, f2, f0
/* 806E76C4  FC 44 00 32 */	fmul f2, f4, f0
/* 806E76C8  FC 00 00 32 */	fmul f0, f0, f0
/* 806E76CC  FC 01 00 32 */	fmul f0, f1, f0
/* 806E76D0  FC 03 00 28 */	fsub f0, f3, f0
/* 806E76D4  FC 02 00 32 */	fmul f0, f2, f0
/* 806E76D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806E76DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806E76E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806E76E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806E76E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806E76EC  FC 21 00 32 */	fmul f1, f1, f0
/* 806E76F0  FC 20 08 18 */	frsp f1, f1
/* 806E76F4  48 00 00 88 */	b lbl_806E777C
lbl_806E76F8:
/* 806E76F8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E76FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7700  40 80 00 10 */	bge lbl_806E7710
/* 806E7704  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E7708  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806E770C  48 00 00 70 */	b lbl_806E777C
lbl_806E7710:
/* 806E7710  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E7714  80 81 00 08 */	lwz r4, 8(r1)
/* 806E7718  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E771C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E7720  7C 03 00 00 */	cmpw r3, r0
/* 806E7724  41 82 00 14 */	beq lbl_806E7738
/* 806E7728  40 80 00 40 */	bge lbl_806E7768
/* 806E772C  2C 03 00 00 */	cmpwi r3, 0
/* 806E7730  41 82 00 20 */	beq lbl_806E7750
/* 806E7734  48 00 00 34 */	b lbl_806E7768
lbl_806E7738:
/* 806E7738  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E773C  41 82 00 0C */	beq lbl_806E7748
/* 806E7740  38 00 00 01 */	li r0, 1
/* 806E7744  48 00 00 28 */	b lbl_806E776C
lbl_806E7748:
/* 806E7748  38 00 00 02 */	li r0, 2
/* 806E774C  48 00 00 20 */	b lbl_806E776C
lbl_806E7750:
/* 806E7750  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E7754  41 82 00 0C */	beq lbl_806E7760
/* 806E7758  38 00 00 05 */	li r0, 5
/* 806E775C  48 00 00 10 */	b lbl_806E776C
lbl_806E7760:
/* 806E7760  38 00 00 03 */	li r0, 3
/* 806E7764  48 00 00 08 */	b lbl_806E776C
lbl_806E7768:
/* 806E7768  38 00 00 04 */	li r0, 4
lbl_806E776C:
/* 806E776C  2C 00 00 01 */	cmpwi r0, 1
/* 806E7770  40 82 00 0C */	bne lbl_806E777C
/* 806E7774  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E7778  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806E777C:
/* 806E777C  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 806E7780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7784  40 81 00 14 */	ble lbl_806E7798
/* 806E7788  7F C3 F3 78 */	mr r3, r30
/* 806E778C  38 80 00 00 */	li r4, 0
/* 806E7790  38 A0 00 64 */	li r5, 0x64
/* 806E7794  4B FF EE 2D */	bl setActionMode__8daE_HP_cFii
lbl_806E7798:
/* 806E7798  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806E779C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806E77A0  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806E77A4  4B B8 82 DC */	b cLib_addCalc0__FPfff
/* 806E77A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806E77AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806E77B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E77B4  7C 08 03 A6 */	mtlr r0
/* 806E77B8  38 21 00 30 */	addi r1, r1, 0x30
/* 806E77BC  4E 80 00 20 */	blr 
