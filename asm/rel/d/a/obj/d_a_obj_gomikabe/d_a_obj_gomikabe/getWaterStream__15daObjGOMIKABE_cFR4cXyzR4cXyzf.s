lbl_80BFEA60:
/* 80BFEA60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BFEA64  7C 08 02 A6 */	mflr r0
/* 80BFEA68  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BFEA6C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BFEA70  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BFEA74  39 61 00 50 */	addi r11, r1, 0x50
/* 80BFEA78  4B 76 37 65 */	bl _savegpr_29
/* 80BFEA7C  7C 7D 1B 78 */	mr r29, r3
/* 80BFEA80  7C 9E 23 78 */	mr r30, r4
/* 80BFEA84  7C BF 2B 78 */	mr r31, r5
/* 80BFEA88  FF E0 08 90 */	fmr f31, f1
/* 80BFEA8C  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 80BFEA90  4B 66 92 99 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80BFEA94  38 00 00 00 */	li r0, 0
/* 80BFEA98  90 01 00 08 */	stw r0, 8(r1)
/* 80BFEA9C  7F C3 F3 78 */	mr r3, r30
/* 80BFEAA0  38 9D 06 FC */	addi r4, r29, 0x6fc
/* 80BFEAA4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80BFEAA8  38 C1 00 08 */	addi r6, r1, 8
/* 80BFEAAC  38 E0 00 00 */	li r7, 0
/* 80BFEAB0  4B 41 EE F9 */	bl fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 80BFEAB4  80 01 00 08 */	lwz r0, 8(r1)
/* 80BFEAB8  3C 80 80 C0 */	lis r4, lit_3805@ha /* 0x80BFFC6C@ha */
/* 80BFEABC  C8 64 FC 6C */	lfd f3, lit_3805@l(r4)  /* 0x80BFFC6C@l */
/* 80BFEAC0  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80BFEAC4  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80BFEAC8  3C 00 43 30 */	lis r0, 0x4330
/* 80BFEACC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BFEAD0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BFEAD4  EC 20 18 28 */	fsubs f1, f0, f3
/* 80BFEAD8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BFEADC  EC 41 00 32 */	fmuls f2, f1, f0
/* 80BFEAE0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BFEAE4  90 81 00 34 */	stw r4, 0x34(r1)
/* 80BFEAE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80BFEAEC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80BFEAF0  EC 20 18 28 */	fsubs f1, f0, f3
/* 80BFEAF4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BFEAF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFEAFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFEB00  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80BFEB04  90 01 00 38 */	stw r0, 0x38(r1)
/* 80BFEB08  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BFEB0C  EC 20 18 28 */	fsubs f1, f0, f3
/* 80BFEB10  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BFEB14  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFEB18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFEB1C  2C 03 00 00 */	cmpwi r3, 0
/* 80BFEB20  41 82 00 50 */	beq lbl_80BFEB70
/* 80BFEB24  7F E3 FB 78 */	mr r3, r31
/* 80BFEB28  3C 80 80 C0 */	lis r4, lit_4011@ha /* 0x80BFFC9C@ha */
/* 80BFEB2C  C0 04 FC 9C */	lfs f0, lit_4011@l(r4)  /* 0x80BFFC9C@l */
/* 80BFEB30  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80BFEB34  3C 80 80 C0 */	lis r4, lit_4012@ha /* 0x80BFFCA0@ha */
/* 80BFEB38  C0 44 FC A0 */	lfs f2, lit_4012@l(r4)  /* 0x80BFFCA0@l */
/* 80BFEB3C  FC 60 F8 90 */	fmr f3, f31
/* 80BFEB40  4B 67 0E FD */	bl cLib_addCalc2__FPffff
/* 80BFEB44  38 7F 00 08 */	addi r3, r31, 8
/* 80BFEB48  3C 80 80 C0 */	lis r4, lit_4011@ha /* 0x80BFFC9C@ha */
/* 80BFEB4C  C0 24 FC 9C */	lfs f1, lit_4011@l(r4)  /* 0x80BFFC9C@l */
/* 80BFEB50  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BFEB54  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BFEB58  3C 80 80 C0 */	lis r4, lit_4012@ha /* 0x80BFFCA0@ha */
/* 80BFEB5C  C0 44 FC A0 */	lfs f2, lit_4012@l(r4)  /* 0x80BFFCA0@l */
/* 80BFEB60  FC 60 F8 90 */	fmr f3, f31
/* 80BFEB64  4B 67 0E D9 */	bl cLib_addCalc2__FPffff
/* 80BFEB68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BFEB6C  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_80BFEB70:
/* 80BFEB70  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BFEB74  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BFEB78  39 61 00 50 */	addi r11, r1, 0x50
/* 80BFEB7C  4B 76 36 AD */	bl _restgpr_29
/* 80BFEB80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BFEB84  7C 08 03 A6 */	mtlr r0
/* 80BFEB88  38 21 00 60 */	addi r1, r1, 0x60
/* 80BFEB8C  4E 80 00 20 */	blr 
