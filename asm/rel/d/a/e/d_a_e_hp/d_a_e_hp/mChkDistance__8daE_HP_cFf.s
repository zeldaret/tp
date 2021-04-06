lbl_806E65CC:
/* 806E65CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E65D0  7C 08 02 A6 */	mflr r0
/* 806E65D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E65D8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806E65DC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806E65E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806E65E4  7C 65 1B 78 */	mr r5, r3
/* 806E65E8  FF E0 08 90 */	fmr f31, f1
/* 806E65EC  3C 60 80 6F */	lis r3, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E65F0  3B E3 A1 F4 */	addi r31, r3, lit_3905@l /* 0x806EA1F4@l */
/* 806E65F4  38 61 00 0C */	addi r3, r1, 0xc
/* 806E65F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E65FC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E6600  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806E6604  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806E6608  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 806E660C  4B B8 05 29 */	bl __mi__4cXyzCFRC3Vec
/* 806E6610  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806E6614  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E6618  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806E661C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E6620  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E6624  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E6628  38 61 00 18 */	addi r3, r1, 0x18
/* 806E662C  4B C6 0B 0D */	bl PSVECSquareMag
/* 806E6630  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E6634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6638  40 81 00 58 */	ble lbl_806E6690
/* 806E663C  FC 00 08 34 */	frsqrte f0, f1
/* 806E6640  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E6644  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6648  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E664C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6650  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6654  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6658  FC 02 00 32 */	fmul f0, f2, f0
/* 806E665C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6660  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6664  FC 01 00 32 */	fmul f0, f1, f0
/* 806E6668  FC 03 00 28 */	fsub f0, f3, f0
/* 806E666C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6670  FC 44 00 32 */	fmul f2, f4, f0
/* 806E6674  FC 00 00 32 */	fmul f0, f0, f0
/* 806E6678  FC 01 00 32 */	fmul f0, f1, f0
/* 806E667C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E6680  FC 02 00 32 */	fmul f0, f2, f0
/* 806E6684  FC 21 00 32 */	fmul f1, f1, f0
/* 806E6688  FC 20 08 18 */	frsp f1, f1
/* 806E668C  48 00 00 88 */	b lbl_806E6714
lbl_806E6690:
/* 806E6690  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E6694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E6698  40 80 00 10 */	bge lbl_806E66A8
/* 806E669C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E66A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E66A4  48 00 00 70 */	b lbl_806E6714
lbl_806E66A8:
/* 806E66A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E66AC  80 81 00 08 */	lwz r4, 8(r1)
/* 806E66B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E66B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E66B8  7C 03 00 00 */	cmpw r3, r0
/* 806E66BC  41 82 00 14 */	beq lbl_806E66D0
/* 806E66C0  40 80 00 40 */	bge lbl_806E6700
/* 806E66C4  2C 03 00 00 */	cmpwi r3, 0
/* 806E66C8  41 82 00 20 */	beq lbl_806E66E8
/* 806E66CC  48 00 00 34 */	b lbl_806E6700
lbl_806E66D0:
/* 806E66D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E66D4  41 82 00 0C */	beq lbl_806E66E0
/* 806E66D8  38 00 00 01 */	li r0, 1
/* 806E66DC  48 00 00 28 */	b lbl_806E6704
lbl_806E66E0:
/* 806E66E0  38 00 00 02 */	li r0, 2
/* 806E66E4  48 00 00 20 */	b lbl_806E6704
lbl_806E66E8:
/* 806E66E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E66EC  41 82 00 0C */	beq lbl_806E66F8
/* 806E66F0  38 00 00 05 */	li r0, 5
/* 806E66F4  48 00 00 10 */	b lbl_806E6704
lbl_806E66F8:
/* 806E66F8  38 00 00 03 */	li r0, 3
/* 806E66FC  48 00 00 08 */	b lbl_806E6704
lbl_806E6700:
/* 806E6700  38 00 00 04 */	li r0, 4
lbl_806E6704:
/* 806E6704  2C 00 00 01 */	cmpwi r0, 1
/* 806E6708  40 82 00 0C */	bne lbl_806E6714
/* 806E670C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E6710  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806E6714:
/* 806E6714  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 806E6718  7C 00 00 26 */	mfcr r0
/* 806E671C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 806E6720  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806E6724  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806E6728  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806E672C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E6730  7C 08 03 A6 */	mtlr r0
/* 806E6734  38 21 00 40 */	addi r1, r1, 0x40
/* 806E6738  4E 80 00 20 */	blr 
