lbl_8027C674:
/* 8027C674  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027C678  7C 08 02 A6 */	mflr r0
/* 8027C67C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027C680  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8027C684  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8027C688  39 61 00 30 */	addi r11, r1, 0x30
/* 8027C68C  48 0E 5B 51 */	bl _savegpr_29
/* 8027C690  7C 7D 1B 78 */	mr r29, r3
/* 8027C694  7C BE 2B 78 */	mr r30, r5
/* 8027C698  7C DF 33 78 */	mr r31, r6
/* 8027C69C  E0 BD 00 14 */	psq_l f5, 20(r29), 0, 0 /* qr0 */
/* 8027C6A0  E0 1F 00 10 */	psq_l f0, 16(r31), 0, 0 /* qr0 */
/* 8027C6A4  10 A5 00 32 */	ps_mul f5, f5, f0
/* 8027C6A8  E0 3D 00 10 */	psq_l f1, 16(r29), 0, 0 /* qr0 */
/* 8027C6AC  E0 5F 00 0C */	psq_l f2, 12(r31), 0, 0 /* qr0 */
/* 8027C6B0  10 01 28 BA */	ps_madd f0, f1, f2, f5
/* 8027C6B4  10 A0 29 54 */	ps_sum0 f5, f0, f5, f5
/* 8027C6B8  E0 1D 80 18 */	psq_l f0, 24(r29), 1, 0 /* qr0 */
/* 8027C6BC  10 21 01 58 */	ps_muls0 f1, f1, f5
/* 8027C6C0  F0 21 00 08 */	psq_st f1, 8(r1), 0, 0 /* qr0 */
/* 8027C6C4  10 00 01 58 */	ps_muls0 f0, f0, f5
/* 8027C6C8  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
/* 8027C6CC  10 42 08 28 */	ps_sub f2, f2, f1
/* 8027C6D0  F0 41 00 08 */	psq_st f2, 8(r1), 0, 0 /* qr0 */
/* 8027C6D4  E0 3F 80 14 */	psq_l f1, 20(r31), 1, 0 /* qr0 */
/* 8027C6D8  10 01 00 28 */	ps_sub f0, f1, f0
/* 8027C6DC  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
/* 8027C6E0  10 02 00 B2 */	ps_mul f0, f2, f2
/* 8027C6E4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8027C6E8  10 23 00 FA */	ps_madd f1, f3, f3, f0
/* 8027C6EC  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 8027C6F0  FF E0 08 90 */	fmr f31, f1
/* 8027C6F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8027C6F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027C6FC  40 81 00 10 */	ble lbl_8027C70C
/* 8027C700  80 7E 00 00 */	lwz r3, 0(r30)
/* 8027C704  C3 E3 00 28 */	lfs f31, 0x28(r3)
/* 8027C708  48 00 00 2C */	b lbl_8027C734
lbl_8027C70C:
/* 8027C70C  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8027C710  EF FF 00 32 */	fmuls f31, f31, f0
/* 8027C714  C0 02 B9 38 */	lfs f0, lit_2353(r2)
/* 8027C718  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8027C71C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8027C720  EC 21 00 32 */	fmuls f1, f1, f0
/* 8027C724  80 7E 00 00 */	lwz r3, 0(r30)
/* 8027C728  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8027C72C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8027C730  EF E1 00 2A */	fadds f31, f1, f0
lbl_8027C734:
/* 8027C734  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027C738  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027C73C  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 8027C740  10 A6 01 BA */	ps_madd f5, f6, f6, f0
/* 8027C744  10 A5 00 14 */	ps_sum0 f5, f5, f0, f0
/* 8027C748  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027C74C  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027C750  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027C754  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027C758  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027C75C  4C 40 13 82 */	cror 2, 0, 2
/* 8027C760  41 82 00 5C */	beq lbl_8027C7BC
/* 8027C764  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027C768  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8027C76C  4C 40 13 82 */	cror 2, 0, 2
/* 8027C770  40 82 00 0C */	bne lbl_8027C77C
/* 8027C774  FC 80 28 90 */	fmr f4, f5
/* 8027C778  48 00 00 2C */	b lbl_8027C7A4
lbl_8027C77C:
/* 8027C77C  FC 60 28 34 */	frsqrte f3, f5
/* 8027C780  FC 60 18 18 */	frsp f3, f3
/* 8027C784  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027C788  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027C78C  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027C790  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027C794  EC 05 00 32 */	fmuls f0, f5, f0
/* 8027C798  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027C79C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027C7A0  FC 80 00 90 */	fmr f4, f0
lbl_8027C7A4:
/* 8027C7A4  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027C7A8  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 8027C7AC  10 00 01 18 */	ps_muls0 f0, f0, f4
/* 8027C7B0  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 8027C7B4  10 01 01 18 */	ps_muls0 f0, f1, f4
/* 8027C7B8  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_8027C7BC:
/* 8027C7BC  38 61 00 08 */	addi r3, r1, 8
/* 8027C7C0  38 9D 00 10 */	addi r4, r29, 0x10
/* 8027C7C4  38 BD 00 04 */	addi r5, r29, 4
/* 8027C7C8  48 0C A9 ED */	bl PSVECCrossProduct
/* 8027C7CC  E0 1D 00 04 */	psq_l f0, 4(r29), 0, 0 /* qr0 */
/* 8027C7D0  E0 3D 80 0C */	psq_l f1, 12(r29), 1, 0 /* qr0 */
/* 8027C7D4  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027C7D8  F0 1D 00 04 */	psq_st f0, 4(r29), 0, 0 /* qr0 */
/* 8027C7DC  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027C7E0  F0 1D 80 0C */	psq_st f0, 12(r29), 1, 0 /* qr0 */
/* 8027C7E4  7F A3 EB 78 */	mr r3, r29
/* 8027C7E8  7F C4 F3 78 */	mr r4, r30
/* 8027C7EC  7F E5 FB 78 */	mr r5, r31
/* 8027C7F0  4B FF F5 FD */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
/* 8027C7F4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8027C7F8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8027C7FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8027C800  48 0E 5A 29 */	bl _restgpr_29
/* 8027C804  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027C808  7C 08 03 A6 */	mtlr r0
/* 8027C80C  38 21 00 40 */	addi r1, r1, 0x40
/* 8027C810  4E 80 00 20 */	blr 
