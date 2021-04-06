lbl_805D3900:
/* 805D3900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D3904  7C 08 02 A6 */	mflr r0
/* 805D3908  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D390C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D3910  93 C1 00 08 */	stw r30, 8(r1)
/* 805D3914  7C 7E 1B 78 */	mr r30, r3
/* 805D3918  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D391C  3B E3 CA 54 */	addi r31, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D3920  38 7E 07 F4 */	addi r3, r30, 0x7f4
/* 805D3924  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D3928  C0 7F 02 BC */	lfs f3, 0x2bc(r31)
/* 805D392C  4B C9 C1 11 */	bl cLib_addCalc2__FPffff
/* 805D3930  C0 3E 07 34 */	lfs f1, 0x734(r30)
/* 805D3934  C0 1E 07 F4 */	lfs f0, 0x7f4(r30)
/* 805D3938  EC 01 00 2A */	fadds f0, f1, f0
/* 805D393C  D0 1E 07 34 */	stfs f0, 0x734(r30)
/* 805D3940  C0 3E 07 34 */	lfs f1, 0x734(r30)
/* 805D3944  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D3948  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D394C  FC 00 02 10 */	fabs f0, f0
/* 805D3950  FC 20 00 18 */	frsp f1, f0
/* 805D3954  FC 60 08 90 */	fmr f3, f1
/* 805D3958  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805D395C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D3960  40 80 00 0C */	bge lbl_805D396C
/* 805D3964  FC 60 00 90 */	fmr f3, f0
/* 805D3968  48 00 00 14 */	b lbl_805D397C
lbl_805D396C:
/* 805D396C  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 805D3970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D3974  40 81 00 08 */	ble lbl_805D397C
/* 805D3978  FC 60 00 90 */	fmr f3, f0
lbl_805D397C:
/* 805D397C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 805D3980  C0 3E 07 34 */	lfs f1, 0x734(r30)
/* 805D3984  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D3988  4B C9 C0 B5 */	bl cLib_addCalc2__FPffff
/* 805D398C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D3990  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D3994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D3998  7C 08 03 A6 */	mtlr r0
/* 805D399C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D39A0  4E 80 00 20 */	blr 
