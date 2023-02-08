lbl_8027CA94:
/* 8027CA94  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8027CA98  7C 08 02 A6 */	mflr r0
/* 8027CA9C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8027CAA0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8027CAA4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8027CAA8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8027CAAC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8027CAB0  39 61 00 40 */	addi r11, r1, 0x40
/* 8027CAB4  48 0E 57 29 */	bl _savegpr_29
/* 8027CAB8  7C 7D 1B 78 */	mr r29, r3
/* 8027CABC  7C BE 2B 78 */	mr r30, r5
/* 8027CAC0  7C DF 33 78 */	mr r31, r6
/* 8027CAC4  E0 7D 00 14 */	psq_l f3, 20(r29), 0, 0 /* qr0 */
/* 8027CAC8  E0 1F 00 10 */	psq_l f0, 16(r31), 0, 0 /* qr0 */
/* 8027CACC  10 63 00 32 */	ps_mul f3, f3, f0
/* 8027CAD0  E0 3D 00 10 */	psq_l f1, 16(r29), 0, 0 /* qr0 */
/* 8027CAD4  E0 5F 00 0C */	psq_l f2, 12(r31), 0, 0 /* qr0 */
/* 8027CAD8  10 01 18 BA */	ps_madd f0, f1, f2, f3
/* 8027CADC  10 60 18 D4 */	ps_sum0 f3, f0, f3, f3
/* 8027CAE0  E0 1D 80 18 */	psq_l f0, 24(r29), 1, 0 /* qr0 */
/* 8027CAE4  10 21 00 D8 */	ps_muls0 f1, f1, f3
/* 8027CAE8  F0 21 00 20 */	psq_st f1, 32(r1), 0, 0 /* qr0 */
/* 8027CAEC  10 00 00 D8 */	ps_muls0 f0, f0, f3
/* 8027CAF0  F0 01 80 28 */	psq_st f0, 40(r1), 1, 0 /* qr0 */
/* 8027CAF4  E0 DD 00 2C */	psq_l f6, 44(r29), 0, 0 /* qr0 */
/* 8027CAF8  E0 BF 00 10 */	psq_l f5, 16(r31), 0, 0 /* qr0 */
/* 8027CAFC  10 C6 01 72 */	ps_mul f6, f6, f5
/* 8027CB00  E0 7D 00 28 */	psq_l f3, 40(r29), 0, 0 /* qr0 */
/* 8027CB04  10 A3 30 BA */	ps_madd f5, f3, f2, f6
/* 8027CB08  10 A5 31 94 */	ps_sum0 f5, f5, f6, f6
/* 8027CB0C  E0 5D 80 30 */	psq_l f2, 48(r29), 1, 0 /* qr0 */
/* 8027CB10  10 63 01 58 */	ps_muls0 f3, f3, f5
/* 8027CB14  F0 61 00 08 */	psq_st f3, 8(r1), 0, 0 /* qr0 */
/* 8027CB18  10 42 01 58 */	ps_muls0 f2, f2, f5
/* 8027CB1C  F0 41 80 10 */	psq_st f2, 16(r1), 1, 0 /* qr0 */
/* 8027CB20  10 21 18 2A */	ps_add f1, f1, f3
/* 8027CB24  F0 21 00 20 */	psq_st f1, 32(r1), 0, 0 /* qr0 */
/* 8027CB28  10 00 10 2A */	ps_add f0, f0, f2
/* 8027CB2C  F0 01 80 28 */	psq_st f0, 40(r1), 1, 0 /* qr0 */
/* 8027CB30  80 65 00 00 */	lwz r3, 0(r5)
/* 8027CB34  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 8027CB38  10 01 00 72 */	ps_mul f0, f1, f1
/* 8027CB3C  C0 E1 00 28 */	lfs f7, 0x28(r1)
/* 8027CB40  10 C7 01 FA */	ps_madd f6, f7, f7, f0
/* 8027CB44  10 C6 00 14 */	ps_sum0 f6, f6, f0, f0
/* 8027CB48  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027CB4C  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027CB50  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027CB54  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027CB58  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027CB5C  4C 40 13 82 */	cror 2, 0, 2
/* 8027CB60  40 82 00 18 */	bne lbl_8027CB78
/* 8027CB64  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027CB68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8027CB6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8027CB70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8027CB74  48 00 00 58 */	b lbl_8027CBCC
lbl_8027CB78:
/* 8027CB78  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027CB7C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8027CB80  4C 40 13 82 */	cror 2, 0, 2
/* 8027CB84  40 82 00 08 */	bne lbl_8027CB8C
/* 8027CB88  48 00 00 28 */	b lbl_8027CBB0
lbl_8027CB8C:
/* 8027CB8C  FC 60 30 34 */	frsqrte f3, f6
/* 8027CB90  FC 60 18 18 */	frsp f3, f3
/* 8027CB94  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027CB98  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027CB9C  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027CBA0  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027CBA4  EC 06 00 32 */	fmuls f0, f6, f0
/* 8027CBA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027CBAC  EC C2 00 32 */	fmuls f6, f2, f0
lbl_8027CBB0:
/* 8027CBB0  EC 86 01 72 */	fmuls f4, f6, f5
/* 8027CBB4  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 8027CBB8  E0 21 80 28 */	psq_l f1, 40(r1), 1, 0 /* qr0 */
/* 8027CBBC  10 00 01 18 */	ps_muls0 f0, f0, f4
/* 8027CBC0  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 8027CBC4  10 01 01 18 */	ps_muls0 f0, f1, f4
/* 8027CBC8  F0 01 80 28 */	psq_st f0, 40(r1), 1, 0 /* qr0 */
lbl_8027CBCC:
/* 8027CBCC  38 81 00 20 */	addi r4, r1, 0x20
/* 8027CBD0  E0 3F 00 0C */	psq_l f1, 12(r31), 0, 0 /* qr0 */
/* 8027CBD4  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 8027CBD8  10 01 00 28 */	ps_sub f0, f1, f0
/* 8027CBDC  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 8027CBE0  E0 3F 80 14 */	psq_l f1, 20(r31), 1, 0 /* qr0 */
/* 8027CBE4  E0 04 80 08 */	psq_l f0, 8(r4), 1, 0 /* qr0 */
/* 8027CBE8  10 01 00 28 */	ps_sub f0, f1, f0
/* 8027CBEC  F0 01 80 1C */	psq_st f0, 28(r1), 1, 0 /* qr0 */
/* 8027CBF0  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8027CBF4  38 A1 00 08 */	addi r5, r1, 8
/* 8027CBF8  48 0C A5 BD */	bl PSVECCrossProduct
/* 8027CBFC  38 61 00 08 */	addi r3, r1, 8
/* 8027CC00  38 81 00 14 */	addi r4, r1, 0x14
/* 8027CC04  38 BD 00 04 */	addi r5, r29, 4
/* 8027CC08  48 0C A5 AD */	bl PSVECCrossProduct
/* 8027CC0C  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 8027CC10  E0 1D 00 04 */	psq_l f0, 4(r29), 0, 0 /* qr0 */
/* 8027CC14  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027CC18  C3 DD 00 0C */	lfs f30, 0xc(r29)
/* 8027CC1C  10 BE 07 BA */	ps_madd f5, f30, f30, f0
/* 8027CC20  10 A5 00 14 */	ps_sum0 f5, f5, f0, f0
/* 8027CC24  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027CC28  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027CC2C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027CC30  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027CC34  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027CC38  4C 40 13 82 */	cror 2, 0, 2
/* 8027CC3C  41 82 00 58 */	beq lbl_8027CC94
/* 8027CC40  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027CC44  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027CC48  4C 40 13 82 */	cror 2, 0, 2
/* 8027CC4C  40 82 00 08 */	bne lbl_8027CC54
/* 8027CC50  48 00 00 28 */	b lbl_8027CC78
lbl_8027CC54:
/* 8027CC54  FC 60 28 34 */	frsqrte f3, f5
/* 8027CC58  FC 60 18 18 */	frsp f3, f3
/* 8027CC5C  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027CC60  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027CC64  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027CC68  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027CC6C  EC 05 00 32 */	fmuls f0, f5, f0
/* 8027CC70  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027CC74  EC A2 00 32 */	fmuls f5, f2, f0
lbl_8027CC78:
/* 8027CC78  EF E5 01 32 */	fmuls f31, f5, f4
/* 8027CC7C  E0 1D 00 04 */	psq_l f0, 4(r29), 0, 0 /* qr0 */
/* 8027CC80  E0 3D 80 0C */	psq_l f1, 12(r29), 1, 0 /* qr0 */
/* 8027CC84  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027CC88  F0 1D 00 04 */	psq_st f0, 4(r29), 0, 0 /* qr0 */
/* 8027CC8C  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027CC90  F0 1D 80 0C */	psq_st f0, 12(r29), 1, 0 /* qr0 */
lbl_8027CC94:
/* 8027CC94  7F A3 EB 78 */	mr r3, r29
/* 8027CC98  7F C4 F3 78 */	mr r4, r30
/* 8027CC9C  7F E5 FB 78 */	mr r5, r31
/* 8027CCA0  4B FF F1 4D */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
/* 8027CCA4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8027CCA8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8027CCAC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8027CCB0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8027CCB4  39 61 00 40 */	addi r11, r1, 0x40
/* 8027CCB8  48 0E 55 71 */	bl _restgpr_29
/* 8027CCBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8027CCC0  7C 08 03 A6 */	mtlr r0
/* 8027CCC4  38 21 00 60 */	addi r1, r1, 0x60
/* 8027CCC8  4E 80 00 20 */	blr 
