lbl_80A4FEF0:
/* 80A4FEF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A4FEF4  7C 08 02 A6 */	mflr r0
/* 80A4FEF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A4FEFC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80A4FF00  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80A4FF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4FF08  7C 7F 1B 78 */	mr r31, r3
/* 80A4FF0C  FF E0 08 90 */	fmr f31, f1
/* 80A4FF10  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80A4FF14  C0 3F 0B 6C */	lfs f1, 0xb6c(r31)
/* 80A4FF18  FC 40 F8 90 */	fmr f2, f31
/* 80A4FF1C  C0 7F 0B 84 */	lfs f3, 0xb84(r31)
/* 80A4FF20  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A4FF24  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A4FF28  4B 81 FB 14 */	b cLib_addCalc2__FPffff
/* 80A4FF2C  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 80A4FF30  C0 3F 0B 70 */	lfs f1, 0xb70(r31)
/* 80A4FF34  FC 40 F8 90 */	fmr f2, f31
/* 80A4FF38  C0 7F 0B 88 */	lfs f3, 0xb88(r31)
/* 80A4FF3C  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A4FF40  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A4FF44  4B 81 FA F8 */	b cLib_addCalc2__FPffff
/* 80A4FF48  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 80A4FF4C  C0 3F 0B 74 */	lfs f1, 0xb74(r31)
/* 80A4FF50  FC 40 F8 90 */	fmr f2, f31
/* 80A4FF54  C0 7F 0B 8C */	lfs f3, 0xb8c(r31)
/* 80A4FF58  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A4FF5C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A4FF60  4B 81 FA DC */	b cLib_addCalc2__FPffff
/* 80A4FF64  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A4FF68  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80A4FF6C  FC 40 F8 90 */	fmr f2, f31
/* 80A4FF70  C0 7F 0B 78 */	lfs f3, 0xb78(r31)
/* 80A4FF74  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A4FF78  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A4FF7C  4B 81 FA C0 */	b cLib_addCalc2__FPffff
/* 80A4FF80  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 80A4FF84  C0 3F 0B 58 */	lfs f1, 0xb58(r31)
/* 80A4FF88  FC 40 F8 90 */	fmr f2, f31
/* 80A4FF8C  C0 7F 0B 7C */	lfs f3, 0xb7c(r31)
/* 80A4FF90  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A4FF94  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A4FF98  4B 81 FA A4 */	b cLib_addCalc2__FPffff
/* 80A4FF9C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A4FFA0  C0 3F 0B 5C */	lfs f1, 0xb5c(r31)
/* 80A4FFA4  FC 40 F8 90 */	fmr f2, f31
/* 80A4FFA8  C0 7F 0B 80 */	lfs f3, 0xb80(r31)
/* 80A4FFAC  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80A4FFB0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80A4FFB4  4B 81 FA 88 */	b cLib_addCalc2__FPffff
/* 80A4FFB8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80A4FFBC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80A4FFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4FFC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A4FFC8  7C 08 03 A6 */	mtlr r0
/* 80A4FFCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A4FFD0  4E 80 00 20 */	blr 
