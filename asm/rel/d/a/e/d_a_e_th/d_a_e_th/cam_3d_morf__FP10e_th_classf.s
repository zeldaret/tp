lbl_807B1EB4:
/* 807B1EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B1EB8  7C 08 02 A6 */	mflr r0
/* 807B1EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B1EC0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 807B1EC4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 807B1EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B1ECC  7C 7F 1B 78 */	mr r31, r3
/* 807B1ED0  FF E0 08 90 */	fmr f31, f1
/* 807B1ED4  38 7F 0D 3C */	addi r3, r31, 0xd3c
/* 807B1ED8  C0 3F 0D 54 */	lfs f1, 0xd54(r31)
/* 807B1EDC  FC 40 F8 90 */	fmr f2, f31
/* 807B1EE0  C0 7F 0D 6C */	lfs f3, 0xd6c(r31)
/* 807B1EE4  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 807B1EE8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B1EEC  4B AB DB 51 */	bl cLib_addCalc2__FPffff
/* 807B1EF0  38 7F 0D 40 */	addi r3, r31, 0xd40
/* 807B1EF4  C0 3F 0D 58 */	lfs f1, 0xd58(r31)
/* 807B1EF8  FC 40 F8 90 */	fmr f2, f31
/* 807B1EFC  C0 7F 0D 70 */	lfs f3, 0xd70(r31)
/* 807B1F00  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 807B1F04  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B1F08  4B AB DB 35 */	bl cLib_addCalc2__FPffff
/* 807B1F0C  38 7F 0D 44 */	addi r3, r31, 0xd44
/* 807B1F10  C0 3F 0D 5C */	lfs f1, 0xd5c(r31)
/* 807B1F14  FC 40 F8 90 */	fmr f2, f31
/* 807B1F18  C0 7F 0D 74 */	lfs f3, 0xd74(r31)
/* 807B1F1C  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 807B1F20  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B1F24  4B AB DB 19 */	bl cLib_addCalc2__FPffff
/* 807B1F28  38 7F 0D 30 */	addi r3, r31, 0xd30
/* 807B1F2C  C0 3F 0D 48 */	lfs f1, 0xd48(r31)
/* 807B1F30  FC 40 F8 90 */	fmr f2, f31
/* 807B1F34  C0 7F 0D 60 */	lfs f3, 0xd60(r31)
/* 807B1F38  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 807B1F3C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B1F40  4B AB DA FD */	bl cLib_addCalc2__FPffff
/* 807B1F44  38 7F 0D 34 */	addi r3, r31, 0xd34
/* 807B1F48  C0 3F 0D 4C */	lfs f1, 0xd4c(r31)
/* 807B1F4C  FC 40 F8 90 */	fmr f2, f31
/* 807B1F50  C0 7F 0D 64 */	lfs f3, 0xd64(r31)
/* 807B1F54  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 807B1F58  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B1F5C  4B AB DA E1 */	bl cLib_addCalc2__FPffff
/* 807B1F60  38 7F 0D 38 */	addi r3, r31, 0xd38
/* 807B1F64  C0 3F 0D 50 */	lfs f1, 0xd50(r31)
/* 807B1F68  FC 40 F8 90 */	fmr f2, f31
/* 807B1F6C  C0 7F 0D 68 */	lfs f3, 0xd68(r31)
/* 807B1F70  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 807B1F74  EC 63 00 32 */	fmuls f3, f3, f0
/* 807B1F78  4B AB DA C5 */	bl cLib_addCalc2__FPffff
/* 807B1F7C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 807B1F80  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 807B1F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B1F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B1F8C  7C 08 03 A6 */	mtlr r0
/* 807B1F90  38 21 00 20 */	addi r1, r1, 0x20
/* 807B1F94  4E 80 00 20 */	blr 
