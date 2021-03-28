lbl_80775A20:
/* 80775A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80775A24  7C 08 02 A6 */	mflr r0
/* 80775A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80775A2C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80775A30  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80775A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80775A38  7C 7F 1B 78 */	mr r31, r3
/* 80775A3C  FF E0 08 90 */	fmr f31, f1
/* 80775A40  38 7F 13 84 */	addi r3, r31, 0x1384
/* 80775A44  C0 3F 13 9C */	lfs f1, 0x139c(r31)
/* 80775A48  FC 40 F8 90 */	fmr f2, f31
/* 80775A4C  C0 7F 13 B4 */	lfs f3, 0x13b4(r31)
/* 80775A50  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 80775A54  EC 63 00 32 */	fmuls f3, f3, f0
/* 80775A58  4B AF 9F E4 */	b cLib_addCalc2__FPffff
/* 80775A5C  38 7F 13 88 */	addi r3, r31, 0x1388
/* 80775A60  C0 3F 13 A0 */	lfs f1, 0x13a0(r31)
/* 80775A64  FC 40 F8 90 */	fmr f2, f31
/* 80775A68  C0 7F 13 B8 */	lfs f3, 0x13b8(r31)
/* 80775A6C  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 80775A70  EC 63 00 32 */	fmuls f3, f3, f0
/* 80775A74  4B AF 9F C8 */	b cLib_addCalc2__FPffff
/* 80775A78  38 7F 13 8C */	addi r3, r31, 0x138c
/* 80775A7C  C0 3F 13 A4 */	lfs f1, 0x13a4(r31)
/* 80775A80  FC 40 F8 90 */	fmr f2, f31
/* 80775A84  C0 7F 13 BC */	lfs f3, 0x13bc(r31)
/* 80775A88  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 80775A8C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80775A90  4B AF 9F AC */	b cLib_addCalc2__FPffff
/* 80775A94  38 7F 13 78 */	addi r3, r31, 0x1378
/* 80775A98  C0 3F 13 90 */	lfs f1, 0x1390(r31)
/* 80775A9C  FC 40 F8 90 */	fmr f2, f31
/* 80775AA0  C0 7F 13 A8 */	lfs f3, 0x13a8(r31)
/* 80775AA4  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 80775AA8  EC 63 00 32 */	fmuls f3, f3, f0
/* 80775AAC  4B AF 9F 90 */	b cLib_addCalc2__FPffff
/* 80775AB0  38 7F 13 7C */	addi r3, r31, 0x137c
/* 80775AB4  C0 3F 13 94 */	lfs f1, 0x1394(r31)
/* 80775AB8  FC 40 F8 90 */	fmr f2, f31
/* 80775ABC  C0 7F 13 AC */	lfs f3, 0x13ac(r31)
/* 80775AC0  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 80775AC4  EC 63 00 32 */	fmuls f3, f3, f0
/* 80775AC8  4B AF 9F 74 */	b cLib_addCalc2__FPffff
/* 80775ACC  38 7F 13 80 */	addi r3, r31, 0x1380
/* 80775AD0  C0 3F 13 98 */	lfs f1, 0x1398(r31)
/* 80775AD4  FC 40 F8 90 */	fmr f2, f31
/* 80775AD8  C0 7F 13 B0 */	lfs f3, 0x13b0(r31)
/* 80775ADC  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 80775AE0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80775AE4  4B AF 9F 58 */	b cLib_addCalc2__FPffff
/* 80775AE8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80775AEC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80775AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80775AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80775AF8  7C 08 03 A6 */	mtlr r0
/* 80775AFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80775B00  4E 80 00 20 */	blr 
