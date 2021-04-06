lbl_8027C29C:
/* 8027C29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027C2A0  7C 08 02 A6 */	mflr r0
/* 8027C2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027C2A8  E0 23 00 10 */	psq_l f1, 16(r3), 0, 0 /* qr0 */
/* 8027C2AC  E0 06 00 0C */	psq_l f0, 12(r6), 0, 0 /* qr0 */
/* 8027C2B0  10 01 00 28 */	ps_sub f0, f1, f0
/* 8027C2B4  F0 03 00 04 */	psq_st f0, 4(r3), 0, 0 /* qr0 */
/* 8027C2B8  E0 23 80 18 */	psq_l f1, 24(r3), 1, 0 /* qr0 */
/* 8027C2BC  E0 06 80 14 */	psq_l f0, 20(r6), 1, 0 /* qr0 */
/* 8027C2C0  10 01 00 28 */	ps_sub f0, f1, f0
/* 8027C2C4  F0 03 80 0C */	psq_st f0, 12(r3), 1, 0 /* qr0 */
/* 8027C2C8  C0 A5 00 28 */	lfs f5, 0x28(r5)
/* 8027C2CC  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027C2D0  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C2D4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8027C2D8  10 C2 00 BA */	ps_madd f6, f2, f2, f0
/* 8027C2DC  10 C6 00 14 */	ps_sum0 f6, f6, f0, f0
/* 8027C2E0  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C2E4  3C 80 80 45 */	lis r4, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027C2E8  C0 04 0A EC */	lfs f0, __float_epsilon@l(r4)  /* 0x80450AEC@l */
/* 8027C2EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C2F0  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027C2F4  4C 40 13 82 */	cror 2, 0, 2
/* 8027C2F8  41 82 00 58 */	beq lbl_8027C350
/* 8027C2FC  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C300  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027C304  4C 40 13 82 */	cror 2, 0, 2
/* 8027C308  40 82 00 08 */	bne lbl_8027C310
/* 8027C30C  48 00 00 28 */	b lbl_8027C334
lbl_8027C310:
/* 8027C310  FC 60 30 34 */	frsqrte f3, f6
/* 8027C314  FC 60 18 18 */	frsp f3, f3
/* 8027C318  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C31C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027C320  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C324  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027C328  EC 06 00 32 */	fmuls f0, f6, f0
/* 8027C32C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C330  EC C2 00 32 */	fmuls f6, f2, f0
lbl_8027C334:
/* 8027C334  EC 86 01 72 */	fmuls f4, f6, f5
/* 8027C338  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027C33C  E0 23 80 0C */	psq_l f1, 12(r3), 1, 0 /* qr0 */
/* 8027C340  10 00 01 18 */	ps_muls0 f0, f0, f4
/* 8027C344  F0 03 00 04 */	psq_st f0, 4(r3), 0, 0 /* qr0 */
/* 8027C348  10 01 01 18 */	ps_muls0 f0, f1, f4
/* 8027C34C  F0 03 80 0C */	psq_st f0, 12(r3), 1, 0 /* qr0 */
lbl_8027C350:
/* 8027C350  7C A4 2B 78 */	mr r4, r5
/* 8027C354  7C C5 33 78 */	mr r5, r6
/* 8027C358  4B FF FA 95 */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
/* 8027C35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027C360  7C 08 03 A6 */	mtlr r0
/* 8027C364  38 21 00 10 */	addi r1, r1, 0x10
/* 8027C368  4E 80 00 20 */	blr 
