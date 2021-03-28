lbl_8014D67C:
/* 8014D67C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8014D680  7C 08 02 A6 */	mflr r0
/* 8014D684  90 01 00 74 */	stw r0, 0x74(r1)
/* 8014D688  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8014D68C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8014D690  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8014D694  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8014D698  39 61 00 50 */	addi r11, r1, 0x50
/* 8014D69C  48 21 4B 31 */	bl _savegpr_25
/* 8014D6A0  7C 7B 1B 79 */	or. r27, r3, r3
/* 8014D6A4  7C 9C 23 78 */	mr r28, r4
/* 8014D6A8  7C BD 2B 78 */	mr r29, r5
/* 8014D6AC  7C DE 33 78 */	mr r30, r6
/* 8014D6B0  41 82 01 00 */	beq lbl_8014D7B0
/* 8014D6B4  57 9F 10 3A */	slwi r31, r28, 2
/* 8014D6B8  7C 7E FA 14 */	add r3, r30, r31
/* 8014D6BC  80 63 00 04 */	lwz r3, 4(r3)
/* 8014D6C0  7C 1C DA 14 */	add r0, r28, r27
/* 8014D6C4  54 19 10 3A */	slwi r25, r0, 2
/* 8014D6C8  7F 5E CA 14 */	add r26, r30, r25
/* 8014D6CC  80 1A 00 04 */	lwz r0, 4(r26)
/* 8014D6D0  7C 03 00 50 */	subf r0, r3, r0
/* 8014D6D4  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 8014D6D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014D6DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014D6E0  3C 00 43 30 */	lis r0, 0x4330
/* 8014D6E4  90 01 00 08 */	stw r0, 8(r1)
/* 8014D6E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8014D6EC  EF E0 08 28 */	fsubs f31, f0, f1
/* 8014D6F0  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014D6F4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8014D6F8  41 82 00 3C */	beq lbl_8014D734
/* 8014D6FC  38 7B FF FF */	addi r3, r27, -1
/* 8014D700  38 9C 00 01 */	addi r4, r28, 1
/* 8014D704  4B FF FF 79 */	bl daNpcBase_BBasis__FiiiPi
/* 8014D708  80 1A 00 04 */	lwz r0, 4(r26)
/* 8014D70C  7C 1D 00 50 */	subf r0, r29, r0
/* 8014D710  C8 42 99 E0 */	lfd f2, lit_4142(r2)
/* 8014D714  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014D718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D71C  3C 00 43 30 */	lis r0, 0x4330
/* 8014D720  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014D724  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8014D728  EC 00 10 28 */	fsubs f0, f0, f2
/* 8014D72C  EC 00 F8 24 */	fdivs f0, f0, f31
/* 8014D730  EF E0 00 72 */	fmuls f31, f0, f1
lbl_8014D734:
/* 8014D734  7C 7E F8 2E */	lwzx r3, r30, r31
/* 8014D738  7C 1E C8 2E */	lwzx r0, r30, r25
/* 8014D73C  7C 03 00 50 */	subf r0, r3, r0
/* 8014D740  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 8014D744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014D748  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8014D74C  3C 00 43 30 */	lis r0, 0x4330
/* 8014D750  90 01 00 18 */	stw r0, 0x18(r1)
/* 8014D754  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8014D758  EF C0 08 28 */	fsubs f30, f0, f1
/* 8014D75C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014D760  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 8014D764  41 82 00 44 */	beq lbl_8014D7A8
/* 8014D768  38 7B FF FF */	addi r3, r27, -1
/* 8014D76C  7F 84 E3 78 */	mr r4, r28
/* 8014D770  7F A5 EB 78 */	mr r5, r29
/* 8014D774  7F C6 F3 78 */	mr r6, r30
/* 8014D778  4B FF FF 05 */	bl daNpcBase_BBasis__FiiiPi
/* 8014D77C  7C 1E F8 2E */	lwzx r0, r30, r31
/* 8014D780  7C 00 E8 50 */	subf r0, r0, r29
/* 8014D784  C8 42 99 E0 */	lfd f2, lit_4142(r2)
/* 8014D788  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014D78C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014D790  3C 00 43 30 */	lis r0, 0x4330
/* 8014D794  90 01 00 20 */	stw r0, 0x20(r1)
/* 8014D798  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8014D79C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8014D7A0  EC 00 F0 24 */	fdivs f0, f0, f30
/* 8014D7A4  EF C0 00 72 */	fmuls f30, f0, f1
lbl_8014D7A8:
/* 8014D7A8  EC 3F F0 2A */	fadds f1, f31, f30
/* 8014D7AC  48 00 00 30 */	b lbl_8014D7DC
lbl_8014D7B0:
/* 8014D7B0  57 83 10 3A */	slwi r3, r28, 2
/* 8014D7B4  7C 1E 18 2E */	lwzx r0, r30, r3
/* 8014D7B8  7C 00 E8 00 */	cmpw r0, r29
/* 8014D7BC  41 81 00 1C */	bgt lbl_8014D7D8
/* 8014D7C0  7C 7E 1A 14 */	add r3, r30, r3
/* 8014D7C4  80 03 00 04 */	lwz r0, 4(r3)
/* 8014D7C8  7C 1D 00 00 */	cmpw r29, r0
/* 8014D7CC  41 81 00 0C */	bgt lbl_8014D7D8
/* 8014D7D0  C0 22 99 DC */	lfs f1, lit_4140(r2)
/* 8014D7D4  48 00 00 08 */	b lbl_8014D7DC
lbl_8014D7D8:
/* 8014D7D8  C0 22 99 D8 */	lfs f1, lit_4116(r2)
lbl_8014D7DC:
/* 8014D7DC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8014D7E0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8014D7E4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8014D7E8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8014D7EC  39 61 00 50 */	addi r11, r1, 0x50
/* 8014D7F0  48 21 4A 29 */	bl _restgpr_25
/* 8014D7F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8014D7F8  7C 08 03 A6 */	mtlr r0
/* 8014D7FC  38 21 00 70 */	addi r1, r1, 0x70
/* 8014D800  4E 80 00 20 */	blr 
