lbl_806F6320:
/* 806F6320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F6324  7C 08 02 A6 */	mflr r0
/* 806F6328  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F632C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 806F6330  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 806F6334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F6338  93 C1 00 08 */	stw r30, 8(r1)
/* 806F633C  7C 7E 1B 78 */	mr r30, r3
/* 806F6340  3C 80 80 6F */	lis r4, lit_3648@ha /* 0x806F7B6C@ha */
/* 806F6344  3B E4 7B 6C */	addi r31, r4, lit_3648@l /* 0x806F7B6C@l */
/* 806F6348  C3 FF 00 14 */	lfs f31, 0x14(r31)
/* 806F634C  A8 03 06 94 */	lha r0, 0x694(r3)
/* 806F6350  2C 00 00 01 */	cmpwi r0, 1
/* 806F6354  41 82 00 34 */	beq lbl_806F6388
/* 806F6358  40 80 00 5C */	bge lbl_806F63B4
/* 806F635C  2C 00 00 00 */	cmpwi r0, 0
/* 806F6360  40 80 00 08 */	bge lbl_806F6368
/* 806F6364  48 00 00 50 */	b lbl_806F63B4
lbl_806F6368:
/* 806F6368  38 80 00 10 */	li r4, 0x10
/* 806F636C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806F6370  38 A0 00 02 */	li r5, 2
/* 806F6374  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F6378  4B FF F7 1D */	bl anm_init__FP10e_is_classifUcf
/* 806F637C  38 00 00 01 */	li r0, 1
/* 806F6380  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F6384  48 00 00 30 */	b lbl_806F63B4
lbl_806F6388:
/* 806F6388  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F7DE0@ha */
/* 806F638C  38 63 7D E0 */	addi r3, r3, l_HIO@l /* 0x806F7DE0@l */
/* 806F6390  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 806F6394  C0 3E 06 A8 */	lfs f1, 0x6a8(r30)
/* 806F6398  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806F639C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F63A0  40 80 00 14 */	bge lbl_806F63B4
/* 806F63A4  38 00 00 03 */	li r0, 3
/* 806F63A8  B0 1E 06 92 */	sth r0, 0x692(r30)
/* 806F63AC  38 00 00 00 */	li r0, 0
/* 806F63B0  B0 1E 06 94 */	sth r0, 0x694(r30)
lbl_806F63B4:
/* 806F63B4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F63B8  FC 20 F8 90 */	fmr f1, f31
/* 806F63BC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F63C0  FC 60 10 90 */	fmr f3, f2
/* 806F63C4  4B B7 96 79 */	bl cLib_addCalc2__FPffff
/* 806F63C8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806F63CC  A8 9E 06 A6 */	lha r4, 0x6a6(r30)
/* 806F63D0  38 A0 00 01 */	li r5, 1
/* 806F63D4  38 C0 02 00 */	li r6, 0x200
/* 806F63D8  4B B7 A2 31 */	bl cLib_addCalcAngleS2__FPssss
/* 806F63DC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 806F63E0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 806F63E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F63E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F63EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F63F0  7C 08 03 A6 */	mtlr r0
/* 806F63F4  38 21 00 20 */	addi r1, r1, 0x20
/* 806F63F8  4E 80 00 20 */	blr 
