lbl_80529E88:
/* 80529E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80529E8C  7C 08 02 A6 */	mflr r0
/* 80529E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80529E94  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80529E98  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80529E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80529EA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80529EA4  7C 7E 1B 78 */	mr r30, r3
/* 80529EA8  7C 9F 23 78 */	mr r31, r4
/* 80529EAC  3C 60 80 53 */	lis r3, lit_3723@ha
/* 80529EB0  C0 03 61 84 */	lfs f0, lit_3723@l(r3)
/* 80529EB4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80529EB8  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80529EBC  EF E1 00 32 */	fmuls f31, f1, f0
/* 80529EC0  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80529EC4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80529EC8  7F E3 FB 78 */	mr r3, r31
/* 80529ECC  FC 20 F8 90 */	fmr f1, f31
/* 80529ED0  38 80 00 00 */	li r4, 0
/* 80529ED4  4B AF 59 A8 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80529ED8  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80529EDC  7F E4 FB 78 */	mr r4, r31
/* 80529EE0  FC 20 F8 90 */	fmr f1, f31
/* 80529EE4  3C A0 80 53 */	lis r5, lit_3724@ha
/* 80529EE8  C0 45 61 88 */	lfs f2, lit_3724@l(r5)
/* 80529EEC  4B AF 32 20 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80529EF0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80529EF4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80529EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80529EFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80529F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80529F04  7C 08 03 A6 */	mtlr r0
/* 80529F08  38 21 00 20 */	addi r1, r1, 0x20
/* 80529F0C  4E 80 00 20 */	blr 
