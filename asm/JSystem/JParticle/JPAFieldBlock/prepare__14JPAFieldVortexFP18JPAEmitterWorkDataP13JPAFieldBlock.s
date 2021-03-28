lbl_8027C56C:
/* 8027C56C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027C570  7C 08 02 A6 */	mflr r0
/* 8027C574  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027C578  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8027C57C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8027C580  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8027C584  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8027C588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027C58C  93 C1 00 08 */	stw r30, 8(r1)
/* 8027C590  7C 7E 1B 78 */	mr r30, r3
/* 8027C594  7C BF 2B 78 */	mr r31, r5
/* 8027C598  38 64 00 A8 */	addi r3, r4, 0xa8
/* 8027C59C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8027C5A0  38 BE 00 10 */	addi r5, r30, 0x10
/* 8027C5A4  48 0C A8 A9 */	bl PSMTXMultVecSR
/* 8027C5A8  E0 1E 00 10 */	psq_l f0, 16(r30), 0, 0 /* qr0 */
/* 8027C5AC  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C5B0  C3 DE 00 18 */	lfs f30, 0x18(r30)
/* 8027C5B4  10 9E 07 BA */	ps_madd f4, f30, f30, f0
/* 8027C5B8  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027C5BC  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C5C0  3C 60 80 45 */	lis r3, __float_epsilon@ha
/* 8027C5C4  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)
/* 8027C5C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C5CC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C5D0  4C 40 13 82 */	cror 2, 0, 2
/* 8027C5D4  41 82 00 5C */	beq lbl_8027C630
/* 8027C5D8  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C5DC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027C5E0  4C 40 13 82 */	cror 2, 0, 2
/* 8027C5E4  40 82 00 0C */	bne lbl_8027C5F0
/* 8027C5E8  FF E0 20 90 */	fmr f31, f4
/* 8027C5EC  48 00 00 2C */	b lbl_8027C618
lbl_8027C5F0:
/* 8027C5F0  FC 60 20 34 */	frsqrte f3, f4
/* 8027C5F4  FC 60 18 18 */	frsp f3, f3
/* 8027C5F8  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C5FC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027C600  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C604  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027C608  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027C60C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C610  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027C614  FF E0 00 90 */	fmr f31, f0
lbl_8027C618:
/* 8027C618  E0 1E 00 10 */	psq_l f0, 16(r30), 0, 0 /* qr0 */
/* 8027C61C  E0 3E 80 18 */	psq_l f1, 24(r30), 1, 0 /* qr0 */
/* 8027C620  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027C624  F0 1E 00 10 */	psq_st f0, 16(r30), 0, 0 /* qr0 */
/* 8027C628  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027C62C  F0 1E 80 18 */	psq_st f0, 24(r30), 1, 0 /* qr0 */
lbl_8027C630:
/* 8027C630  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8027C634  EC 00 00 32 */	fmuls f0, f0, f0
/* 8027C638  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8027C63C  C0 22 B9 38 */	lfs f1, lit_2353(r2)
/* 8027C640  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8027C644  EC 01 00 24 */	fdivs f0, f1, f0
/* 8027C648  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8027C64C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8027C650  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8027C654  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8027C658  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8027C65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027C660  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027C664  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027C668  7C 08 03 A6 */	mtlr r0
/* 8027C66C  38 21 00 30 */	addi r1, r1, 0x30
/* 8027C670  4E 80 00 20 */	blr 
