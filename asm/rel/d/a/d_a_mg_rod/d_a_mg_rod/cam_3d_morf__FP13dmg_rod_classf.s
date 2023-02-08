lbl_804B5E60:
/* 804B5E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B5E64  7C 08 02 A6 */	mflr r0
/* 804B5E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B5E6C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804B5E70  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804B5E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B5E78  7C 7F 1B 78 */	mr r31, r3
/* 804B5E7C  FF E0 08 90 */	fmr f31, f1
/* 804B5E80  38 7F 13 C4 */	addi r3, r31, 0x13c4
/* 804B5E84  C0 3F 13 DC */	lfs f1, 0x13dc(r31)
/* 804B5E88  FC 40 F8 90 */	fmr f2, f31
/* 804B5E8C  C0 7F 13 F4 */	lfs f3, 0x13f4(r31)
/* 804B5E90  C0 1F 14 10 */	lfs f0, 0x1410(r31)
/* 804B5E94  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B5E98  4B DB 9B A5 */	bl cLib_addCalc2__FPffff
/* 804B5E9C  38 7F 13 C8 */	addi r3, r31, 0x13c8
/* 804B5EA0  C0 3F 13 E0 */	lfs f1, 0x13e0(r31)
/* 804B5EA4  FC 40 F8 90 */	fmr f2, f31
/* 804B5EA8  C0 7F 13 F8 */	lfs f3, 0x13f8(r31)
/* 804B5EAC  C0 1F 14 10 */	lfs f0, 0x1410(r31)
/* 804B5EB0  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B5EB4  4B DB 9B 89 */	bl cLib_addCalc2__FPffff
/* 804B5EB8  38 7F 13 CC */	addi r3, r31, 0x13cc
/* 804B5EBC  C0 3F 13 E4 */	lfs f1, 0x13e4(r31)
/* 804B5EC0  FC 40 F8 90 */	fmr f2, f31
/* 804B5EC4  C0 7F 13 FC */	lfs f3, 0x13fc(r31)
/* 804B5EC8  C0 1F 14 10 */	lfs f0, 0x1410(r31)
/* 804B5ECC  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B5ED0  4B DB 9B 6D */	bl cLib_addCalc2__FPffff
/* 804B5ED4  38 7F 13 B8 */	addi r3, r31, 0x13b8
/* 804B5ED8  C0 3F 13 D0 */	lfs f1, 0x13d0(r31)
/* 804B5EDC  FC 40 F8 90 */	fmr f2, f31
/* 804B5EE0  C0 7F 13 E8 */	lfs f3, 0x13e8(r31)
/* 804B5EE4  C0 1F 14 10 */	lfs f0, 0x1410(r31)
/* 804B5EE8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B5EEC  4B DB 9B 51 */	bl cLib_addCalc2__FPffff
/* 804B5EF0  38 7F 13 BC */	addi r3, r31, 0x13bc
/* 804B5EF4  C0 3F 13 D4 */	lfs f1, 0x13d4(r31)
/* 804B5EF8  FC 40 F8 90 */	fmr f2, f31
/* 804B5EFC  C0 7F 13 EC */	lfs f3, 0x13ec(r31)
/* 804B5F00  C0 1F 14 10 */	lfs f0, 0x1410(r31)
/* 804B5F04  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B5F08  4B DB 9B 35 */	bl cLib_addCalc2__FPffff
/* 804B5F0C  38 7F 13 C0 */	addi r3, r31, 0x13c0
/* 804B5F10  C0 3F 13 D8 */	lfs f1, 0x13d8(r31)
/* 804B5F14  FC 40 F8 90 */	fmr f2, f31
/* 804B5F18  C0 7F 13 F0 */	lfs f3, 0x13f0(r31)
/* 804B5F1C  C0 1F 14 10 */	lfs f0, 0x1410(r31)
/* 804B5F20  EC 63 00 32 */	fmuls f3, f3, f0
/* 804B5F24  4B DB 9B 19 */	bl cLib_addCalc2__FPffff
/* 804B5F28  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804B5F2C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804B5F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B5F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B5F38  7C 08 03 A6 */	mtlr r0
/* 804B5F3C  38 21 00 20 */	addi r1, r1, 0x20
/* 804B5F40  4E 80 00 20 */	blr 
