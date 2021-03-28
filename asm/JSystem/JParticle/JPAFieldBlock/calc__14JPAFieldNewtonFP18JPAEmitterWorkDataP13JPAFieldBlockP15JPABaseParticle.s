lbl_8027C3E0:
/* 8027C3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027C3E4  7C 08 02 A6 */	mflr r0
/* 8027C3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027C3EC  E0 23 00 10 */	psq_l f1, 16(r3), 0, 0 /* qr0 */
/* 8027C3F0  E0 06 00 0C */	psq_l f0, 12(r6), 0, 0 /* qr0 */
/* 8027C3F4  10 01 00 28 */	ps_sub f0, f1, f0
/* 8027C3F8  F0 03 00 04 */	psq_st f0, 4(r3), 0, 0 /* qr0 */
/* 8027C3FC  E0 23 80 18 */	psq_l f1, 24(r3), 1, 0 /* qr0 */
/* 8027C400  E0 06 80 14 */	psq_l f0, 20(r6), 1, 0 /* qr0 */
/* 8027C404  10 01 00 28 */	ps_sub f0, f1, f0
/* 8027C408  F0 03 80 0C */	psq_st f0, 12(r3), 1, 0 /* qr0 */
/* 8027C40C  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027C410  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C414  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 8027C418  10 44 01 3A */	ps_madd f2, f4, f4, f0
/* 8027C41C  10 42 00 14 */	ps_sum0 f2, f2, f0, f0
/* 8027C420  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 8027C424  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8027C428  40 81 00 9C */	ble lbl_8027C4C4
/* 8027C42C  C0 22 B9 4C */	lfs f1, lit_2656(r2)
/* 8027C430  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 8027C434  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C438  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027C43C  EC 60 10 24 */	fdivs f3, f0, f2
/* 8027C440  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027C444  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C448  10 C4 01 3A */	ps_madd f6, f4, f4, f0
/* 8027C44C  10 C6 00 14 */	ps_sum0 f6, f6, f0, f0
/* 8027C450  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C454  3C 80 80 45 */	lis r4, __float_epsilon@ha
/* 8027C458  C0 04 0A EC */	lfs f0, __float_epsilon@l(r4)
/* 8027C45C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C460  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027C464  4C 40 13 82 */	cror 2, 0, 2
/* 8027C468  41 82 00 E8 */	beq lbl_8027C550
/* 8027C46C  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C470  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027C474  4C 40 13 82 */	cror 2, 0, 2
/* 8027C478  40 82 00 08 */	bne lbl_8027C480
/* 8027C47C  48 00 00 28 */	b lbl_8027C4A4
lbl_8027C480:
/* 8027C480  FC 80 30 34 */	frsqrte f4, f6
/* 8027C484  FC 80 20 18 */	frsp f4, f4
/* 8027C488  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C48C  EC 40 01 32 */	fmuls f2, f0, f4
/* 8027C490  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C494  EC 04 01 32 */	fmuls f0, f4, f4
/* 8027C498  EC 06 00 32 */	fmuls f0, f6, f0
/* 8027C49C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C4A0  EC C2 00 32 */	fmuls f6, f2, f0
lbl_8027C4A4:
/* 8027C4A4  EC A6 00 F2 */	fmuls f5, f6, f3
/* 8027C4A8  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027C4AC  E0 23 80 0C */	psq_l f1, 12(r3), 1, 0 /* qr0 */
/* 8027C4B0  10 00 01 58 */	ps_muls0 f0, f0, f5
/* 8027C4B4  F0 03 00 04 */	psq_st f0, 4(r3), 0, 0 /* qr0 */
/* 8027C4B8  10 01 01 58 */	ps_muls0 f0, f1, f5
/* 8027C4BC  F0 03 80 0C */	psq_st f0, 12(r3), 1, 0 /* qr0 */
/* 8027C4C0  48 00 00 90 */	b lbl_8027C550
lbl_8027C4C4:
/* 8027C4C4  C0 22 B9 4C */	lfs f1, lit_2656(r2)
/* 8027C4C8  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 8027C4CC  EC 61 00 32 */	fmuls f3, f1, f0
/* 8027C4D0  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027C4D4  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C4D8  10 C4 01 3A */	ps_madd f6, f4, f4, f0
/* 8027C4DC  10 C6 00 14 */	ps_sum0 f6, f6, f0, f0
/* 8027C4E0  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C4E4  3C 80 80 45 */	lis r4, __float_epsilon@ha
/* 8027C4E8  C0 04 0A EC */	lfs f0, __float_epsilon@l(r4)
/* 8027C4EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C4F0  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027C4F4  4C 40 13 82 */	cror 2, 0, 2
/* 8027C4F8  41 82 00 58 */	beq lbl_8027C550
/* 8027C4FC  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C500  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027C504  4C 40 13 82 */	cror 2, 0, 2
/* 8027C508  40 82 00 08 */	bne lbl_8027C510
/* 8027C50C  48 00 00 28 */	b lbl_8027C534
lbl_8027C510:
/* 8027C510  FC 80 30 34 */	frsqrte f4, f6
/* 8027C514  FC 80 20 18 */	frsp f4, f4
/* 8027C518  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C51C  EC 40 01 32 */	fmuls f2, f0, f4
/* 8027C520  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C524  EC 04 01 32 */	fmuls f0, f4, f4
/* 8027C528  EC 06 00 32 */	fmuls f0, f6, f0
/* 8027C52C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C530  EC C2 00 32 */	fmuls f6, f2, f0
lbl_8027C534:
/* 8027C534  EC A6 00 F2 */	fmuls f5, f6, f3
/* 8027C538  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027C53C  E0 23 80 0C */	psq_l f1, 12(r3), 1, 0 /* qr0 */
/* 8027C540  10 00 01 58 */	ps_muls0 f0, f0, f5
/* 8027C544  F0 03 00 04 */	psq_st f0, 4(r3), 0, 0 /* qr0 */
/* 8027C548  10 01 01 58 */	ps_muls0 f0, f1, f5
/* 8027C54C  F0 03 80 0C */	psq_st f0, 12(r3), 1, 0 /* qr0 */
lbl_8027C550:
/* 8027C550  7C A4 2B 78 */	mr r4, r5
/* 8027C554  7C C5 33 78 */	mr r5, r6
/* 8027C558  4B FF F8 95 */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
/* 8027C55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027C560  7C 08 03 A6 */	mtlr r0
/* 8027C564  38 21 00 10 */	addi r1, r1, 0x10
/* 8027C568  4E 80 00 20 */	blr 
