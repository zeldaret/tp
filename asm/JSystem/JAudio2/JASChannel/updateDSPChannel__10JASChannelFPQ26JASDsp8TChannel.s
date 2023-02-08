lbl_8029B324:
/* 8029B324  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8029B328  7C 08 02 A6 */	mflr r0
/* 8029B32C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8029B330  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8029B334  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8029B338  39 61 00 60 */	addi r11, r1, 0x60
/* 8029B33C  48 0C 6E 99 */	bl _savegpr_27
/* 8029B340  7C 7E 1B 78 */	mr r30, r3
/* 8029B344  7C 9F 23 78 */	mr r31, r4
/* 8029B348  81 83 00 0C */	lwz r12, 0xc(r3)
/* 8029B34C  28 0C 00 00 */	cmplwi r12, 0
/* 8029B350  41 82 00 1C */	beq lbl_8029B36C
/* 8029B354  38 60 00 00 */	li r3, 0
/* 8029B358  7F C4 F3 78 */	mr r4, r30
/* 8029B35C  7F E5 FB 78 */	mr r5, r31
/* 8029B360  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 8029B364  7D 89 03 A6 */	mtctr r12
/* 8029B368  4E 80 04 21 */	bctrl 
lbl_8029B36C:
/* 8029B36C  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8029B370  80 03 00 00 */	lwz r0, 0(r3)
/* 8029B374  28 00 00 00 */	cmplwi r0, 0
/* 8029B378  40 82 00 28 */	bne lbl_8029B3A0
/* 8029B37C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8029B380  48 00 1F A1 */	bl free__13JASDSPChannelFv
/* 8029B384  38 00 00 00 */	li r0, 0
/* 8029B388  90 1E 00 08 */	stw r0, 8(r30)
/* 8029B38C  7F C3 F3 78 */	mr r3, r30
/* 8029B390  38 80 00 01 */	li r4, 1
/* 8029B394  4B FF F5 85 */	bl __dt__10JASChannelFv
/* 8029B398  38 60 FF FF */	li r3, -1
/* 8029B39C  48 00 02 E4 */	b lbl_8029B680
lbl_8029B3A0:
/* 8029B3A0  7F C3 F3 78 */	mr r3, r30
/* 8029B3A4  48 00 09 1D */	bl checkBankDispose__10JASChannelCFv
/* 8029B3A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029B3AC  41 82 00 28 */	beq lbl_8029B3D4
/* 8029B3B0  80 7E 00 08 */	lwz r3, 8(r30)
/* 8029B3B4  48 00 1F 6D */	bl free__13JASDSPChannelFv
/* 8029B3B8  38 00 00 00 */	li r0, 0
/* 8029B3BC  90 1E 00 08 */	stw r0, 8(r30)
/* 8029B3C0  7F C3 F3 78 */	mr r3, r30
/* 8029B3C4  38 80 00 01 */	li r4, 1
/* 8029B3C8  4B FF F5 51 */	bl __dt__10JASChannelFv
/* 8029B3CC  38 60 FF FF */	li r3, -1
/* 8029B3D0  48 00 02 B0 */	b lbl_8029B680
lbl_8029B3D4:
/* 8029B3D4  7F E3 FB 78 */	mr r3, r31
/* 8029B3D8  88 9E 00 04 */	lbz r4, 4(r30)
/* 8029B3DC  48 00 2B A5 */	bl setPauseFlag__Q26JASDsp8TChannelFUc
/* 8029B3E0  C0 22 BC 80 */	lfs f1, lit_544(r2)
/* 8029B3E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8029B3E8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8029B3EC  C0 02 BC 88 */	lfs f0, lit_546(r2)
/* 8029B3F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8029B3F4  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029B3F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8029B3FC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8029B400  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8029B404  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8029B408  88 1E 00 04 */	lbz r0, 4(r30)
/* 8029B40C  28 00 00 00 */	cmplwi r0, 0
/* 8029B410  41 82 00 4C */	beq lbl_8029B45C
/* 8029B414  38 00 00 00 */	li r0, 0
/* 8029B418  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8029B41C  2C 03 00 03 */	cmpwi r3, 3
/* 8029B420  41 82 00 0C */	beq lbl_8029B42C
/* 8029B424  2C 03 00 04 */	cmpwi r3, 4
/* 8029B428  40 82 00 08 */	bne lbl_8029B430
lbl_8029B42C:
/* 8029B42C  38 00 00 01 */	li r0, 1
lbl_8029B430:
/* 8029B430  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8029B434  41 82 01 18 */	beq lbl_8029B54C
/* 8029B438  80 7E 00 08 */	lwz r3, 8(r30)
/* 8029B43C  48 00 1E E5 */	bl free__13JASDSPChannelFv
/* 8029B440  38 00 00 00 */	li r0, 0
/* 8029B444  90 1E 00 08 */	stw r0, 8(r30)
/* 8029B448  7F C3 F3 78 */	mr r3, r30
/* 8029B44C  38 80 00 01 */	li r4, 1
/* 8029B450  4B FF F4 C9 */	bl __dt__10JASChannelFv
/* 8029B454  38 60 FF FF */	li r3, -1
/* 8029B458  48 00 02 28 */	b lbl_8029B680
lbl_8029B45C:
/* 8029B45C  48 00 15 8D */	bl getDacRate__9JASDriverFv
/* 8029B460  C0 02 BC B8 */	lfs f0, lit_832(r2)
/* 8029B464  EF E0 08 24 */	fdivs f31, f0, f1
/* 8029B468  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8029B46C  FC 20 F8 90 */	fmr f1, f31
/* 8029B470  48 00 09 69 */	bl incCounter__6JASLfoFf
/* 8029B474  38 7E 00 74 */	addi r3, r30, 0x74
/* 8029B478  FC 20 F8 90 */	fmr f1, f31
/* 8029B47C  48 00 09 5D */	bl incCounter__6JASLfoFf
/* 8029B480  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8029B484  28 03 00 00 */	cmplwi r3, 0
/* 8029B488  41 82 00 3C */	beq lbl_8029B4C4
/* 8029B48C  38 03 FF FF */	addi r0, r3, -1
/* 8029B490  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8029B494  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8029B498  28 00 00 00 */	cmplwi r0, 0
/* 8029B49C  40 82 00 28 */	bne lbl_8029B4C4
/* 8029B4A0  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 8029B4A4  28 0C 00 00 */	cmplwi r12, 0
/* 8029B4A8  41 82 00 1C */	beq lbl_8029B4C4
/* 8029B4AC  38 60 00 03 */	li r3, 3
/* 8029B4B0  7F C4 F3 78 */	mr r4, r30
/* 8029B4B4  7F E5 FB 78 */	mr r5, r31
/* 8029B4B8  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 8029B4BC  7D 89 03 A6 */	mtctr r12
/* 8029B4C0  4E 80 04 21 */	bctrl 
lbl_8029B4C4:
/* 8029B4C4  48 00 15 25 */	bl getDacRate__9JASDriverFv
/* 8029B4C8  C0 02 BC BC */	lfs f0, lit_833(r2)
/* 8029B4CC  EF E0 08 24 */	fdivs f31, f0, f1
/* 8029B4D0  3B 60 00 00 */	li r27, 0
/* 8029B4D4  3B A0 00 00 */	li r29, 0
lbl_8029B4D8:
/* 8029B4D8  7F 9E EA 14 */	add r28, r30, r29
/* 8029B4DC  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8029B4E0  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 8029B4E4  28 00 00 00 */	cmplwi r0, 0
/* 8029B4E8  41 82 00 54 */	beq lbl_8029B53C
/* 8029B4EC  FC 20 F8 90 */	fmr f1, f31
/* 8029B4F0  48 00 0A 79 */	bl incCounter__13JASOscillatorFf
/* 8029B4F4  7F C3 F3 78 */	mr r3, r30
/* 8029B4F8  7F 64 DB 78 */	mr r4, r27
/* 8029B4FC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8029B500  4B FF F6 ED */	bl effectOsc__10JASChannelFUlPQ213JASOscillator12EffectParams
/* 8029B504  28 1B 00 00 */	cmplwi r27, 0
/* 8029B508  40 82 00 34 */	bne lbl_8029B53C
/* 8029B50C  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 8029B510  2C 00 00 00 */	cmpwi r0, 0
/* 8029B514  40 82 00 28 */	bne lbl_8029B53C
/* 8029B518  80 7E 00 08 */	lwz r3, 8(r30)
/* 8029B51C  48 00 1E 05 */	bl free__13JASDSPChannelFv
/* 8029B520  38 00 00 00 */	li r0, 0
/* 8029B524  90 1E 00 08 */	stw r0, 8(r30)
/* 8029B528  7F C3 F3 78 */	mr r3, r30
/* 8029B52C  38 80 00 01 */	li r4, 1
/* 8029B530  4B FF F3 E9 */	bl __dt__10JASChannelFv
/* 8029B534  38 60 FF FF */	li r3, -1
/* 8029B538  48 00 01 48 */	b lbl_8029B680
lbl_8029B53C:
/* 8029B53C  3B 7B 00 01 */	addi r27, r27, 1
/* 8029B540  28 1B 00 02 */	cmplwi r27, 2
/* 8029B544  3B BD 00 20 */	addi r29, r29, 0x20
/* 8029B548  41 80 FF 90 */	blt lbl_8029B4D8
lbl_8029B54C:
/* 8029B54C  7F C3 F3 78 */	mr r3, r30
/* 8029B550  7F E4 FB 78 */	mr r4, r31
/* 8029B554  38 A1 00 08 */	addi r5, r1, 8
/* 8029B558  38 C1 00 14 */	addi r6, r1, 0x14
/* 8029B55C  4B FF F7 DD */	bl updateEffectorParam__10JASChannelFPQ26JASDsp8TChannelPUsRCQ213JASOscillator12EffectParams
/* 8029B560  3B 60 00 00 */	li r27, 0
/* 8029B564  3B A1 00 08 */	addi r29, r1, 8
/* 8029B568  48 00 00 20 */	b lbl_8029B588
lbl_8029B56C:
/* 8029B56C  7F E3 FB 78 */	mr r3, r31
/* 8029B570  7F 64 DB 78 */	mr r4, r27
/* 8029B574  57 60 0D FC */	rlwinm r0, r27, 1, 0x17, 0x1e
/* 8029B578  7C 1D 02 2E */	lhzx r0, r29, r0
/* 8029B57C  7C 05 07 34 */	extsh r5, r0
/* 8029B580  48 00 29 D5 */	bl setMixerVolume__Q26JASDsp8TChannelFUcs
/* 8029B584  3B 7B 00 01 */	addi r27, r27, 1
lbl_8029B588:
/* 8029B588  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8029B58C  28 00 00 06 */	cmplwi r0, 6
/* 8029B590  41 80 FF DC */	blt lbl_8029B56C
/* 8029B594  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8029B598  48 00 07 AD */	bl getValue__6JASLfoCFv
/* 8029B59C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8029B5A0  EC 60 00 72 */	fmuls f3, f0, f1
/* 8029B5A4  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 8029B5A8  A8 1E 00 C8 */	lha r0, 0xc8(r30)
/* 8029B5AC  C8 22 BC 98 */	lfd f1, lit_685(r2)
/* 8029B5B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029B5B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029B5B8  3C 00 43 30 */	lis r0, 0x4330
/* 8029B5BC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8029B5C0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8029B5C4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8029B5C8  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8029B5CC  EC 21 00 2A */	fadds f1, f1, f0
/* 8029B5D0  C0 02 BC B0 */	lfs f0, lit_775(r2)
/* 8029B5D4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8029B5D8  EC 02 00 2A */	fadds f0, f2, f0
/* 8029B5DC  EC 20 18 2A */	fadds f1, f0, f3
/* 8029B5E0  4B FF 3F 99 */	bl pow2__7JASCalcFf
/* 8029B5E4  C0 82 BC B4 */	lfs f4, lit_776(r2)
/* 8029B5E8  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 8029B5EC  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 8029B5F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8029B5F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8029B5F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029B5FC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8029B600  EC 24 00 32 */	fmuls f1, f4, f0
/* 8029B604  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029B608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029B60C  40 80 00 08 */	bge lbl_8029B614
/* 8029B610  FC 20 00 90 */	fmr f1, f0
lbl_8029B614:
/* 8029B614  7F E3 FB 78 */	mr r3, r31
/* 8029B618  FC 00 08 1E */	fctiwz f0, f1
/* 8029B61C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8029B620  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8029B624  48 00 28 F9 */	bl setPitch__Q26JASDsp8TChannelFUs
/* 8029B628  88 1E 00 04 */	lbz r0, 4(r30)
/* 8029B62C  28 00 00 00 */	cmplwi r0, 0
/* 8029B630  40 82 00 4C */	bne lbl_8029B67C
/* 8029B634  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 8029B638  28 00 00 00 */	cmplwi r0, 0
/* 8029B63C  41 82 00 40 */	beq lbl_8029B67C
/* 8029B640  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 8029B644  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8029B648  EC 40 18 28 */	fsubs f2, f0, f3
/* 8029B64C  C8 22 BC A8 */	lfd f1, lit_714(r2)
/* 8029B650  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8029B654  3C 00 43 30 */	lis r0, 0x4330
/* 8029B658  90 01 00 38 */	stw r0, 0x38(r1)
/* 8029B65C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8029B660  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029B664  EC 02 00 24 */	fdivs f0, f2, f0
/* 8029B668  EC 03 00 2A */	fadds f0, f3, f0
/* 8029B66C  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 8029B670  80 7E 00 D4 */	lwz r3, 0xd4(r30)
/* 8029B674  38 03 FF FF */	addi r0, r3, -1
/* 8029B678  90 1E 00 D4 */	stw r0, 0xd4(r30)
lbl_8029B67C:
/* 8029B67C  38 60 00 00 */	li r3, 0
lbl_8029B680:
/* 8029B680  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8029B684  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8029B688  39 61 00 60 */	addi r11, r1, 0x60
/* 8029B68C  48 0C 6B 95 */	bl _restgpr_27
/* 8029B690  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8029B694  7C 08 03 A6 */	mtlr r0
/* 8029B698  38 21 00 70 */	addi r1, r1, 0x70
/* 8029B69C  4E 80 00 20 */	blr 
