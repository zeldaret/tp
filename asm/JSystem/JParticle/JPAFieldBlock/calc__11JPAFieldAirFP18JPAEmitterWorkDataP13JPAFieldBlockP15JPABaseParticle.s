lbl_8027C1B8:
/* 8027C1B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027C1BC  7C 08 02 A6 */	mflr r0
/* 8027C1C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027C1C4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8027C1C8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8027C1CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027C1D0  93 C1 00 08 */	stw r30, 8(r1)
/* 8027C1D4  7C BE 2B 78 */	mr r30, r5
/* 8027C1D8  7C DF 33 78 */	mr r31, r6
/* 8027C1DC  7F C4 F3 78 */	mr r4, r30
/* 8027C1E0  7F E5 FB 78 */	mr r5, r31
/* 8027C1E4  4B FF FC 09 */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
/* 8027C1E8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8027C1EC  80 03 00 08 */	lwz r0, 8(r3)
/* 8027C1F0  54 00 87 7B */	rlwinm. r0, r0, 0x10, 0x1d, 0x1d
/* 8027C1F4  41 82 00 38 */	beq lbl_8027C22C
/* 8027C1F8  38 7F 00 30 */	addi r3, r31, 0x30
/* 8027C1FC  48 0C AF 55 */	bl PSVECMag
/* 8027C200  80 7E 00 00 */	lwz r3, 0(r30)
/* 8027C204  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8027C208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027C20C  40 81 00 20 */	ble lbl_8027C22C
/* 8027C210  EF E0 08 24 */	fdivs f31, f0, f1
/* 8027C214  E0 1F 00 30 */	psq_l f0, 48(r31), 0, 0 /* qr0 */
/* 8027C218  E0 3F 80 38 */	psq_l f1, 56(r31), 1, 0 /* qr0 */
/* 8027C21C  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027C220  F0 1F 00 30 */	psq_st f0, 48(r31), 0, 0 /* qr0 */
/* 8027C224  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027C228  F0 1F 80 38 */	psq_st f0, 56(r31), 1, 0 /* qr0 */
lbl_8027C22C:
/* 8027C22C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8027C230  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8027C234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027C238  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027C23C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027C240  7C 08 03 A6 */	mtlr r0
/* 8027C244  38 21 00 20 */	addi r1, r1, 0x20
/* 8027C248  4E 80 00 20 */	blr 
