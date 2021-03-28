lbl_80CD559C:
/* 80CD559C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CD55A0  7C 08 02 A6 */	mflr r0
/* 80CD55A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CD55A8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80CD55AC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80CD55B0  39 61 00 60 */	addi r11, r1, 0x60
/* 80CD55B4  4B 68 CC 28 */	b _savegpr_29
/* 80CD55B8  7C 7F 1B 78 */	mr r31, r3
/* 80CD55BC  7C 80 23 78 */	mr r0, r4
/* 80CD55C0  FF E0 08 90 */	fmr f31, f1
/* 80CD55C4  7C BD 2B 78 */	mr r29, r5
/* 80CD55C8  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CD55CC  3B C3 5C FC */	addi r30, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CD55D0  38 A0 00 00 */	li r5, 0
/* 80CD55D4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80CD55D8  28 04 00 00 */	cmplwi r4, 0
/* 80CD55DC  41 82 01 40 */	beq lbl_80CD571C
/* 80CD55E0  38 61 00 18 */	addi r3, r1, 0x18
/* 80CD55E4  7C 05 03 78 */	mr r5, r0
/* 80CD55E8  4B 59 15 4C */	b __mi__4cXyzCFRC3Vec
/* 80CD55EC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80CD55F0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80CD55F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CD55F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CD55FC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80CD5600  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CD5604  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80CD5608  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD560C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD5610  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CD5614  38 61 00 0C */	addi r3, r1, 0xc
/* 80CD5618  4B 67 1B 20 */	b PSVECSquareMag
/* 80CD561C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD5620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD5624  40 81 00 58 */	ble lbl_80CD567C
/* 80CD5628  FC 00 08 34 */	frsqrte f0, f1
/* 80CD562C  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CD5630  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD5634  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CD5638  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD563C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD5640  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD5644  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD5648  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD564C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD5650  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD5654  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD5658  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD565C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD5660  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD5664  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD5668  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD566C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD5670  FC 41 00 32 */	fmul f2, f1, f0
/* 80CD5674  FC 40 10 18 */	frsp f2, f2
/* 80CD5678  48 00 00 90 */	b lbl_80CD5708
lbl_80CD567C:
/* 80CD567C  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CD5680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD5684  40 80 00 10 */	bge lbl_80CD5694
/* 80CD5688  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD568C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80CD5690  48 00 00 78 */	b lbl_80CD5708
lbl_80CD5694:
/* 80CD5694  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD5698  80 81 00 08 */	lwz r4, 8(r1)
/* 80CD569C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD56A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD56A4  7C 03 00 00 */	cmpw r3, r0
/* 80CD56A8  41 82 00 14 */	beq lbl_80CD56BC
/* 80CD56AC  40 80 00 40 */	bge lbl_80CD56EC
/* 80CD56B0  2C 03 00 00 */	cmpwi r3, 0
/* 80CD56B4  41 82 00 20 */	beq lbl_80CD56D4
/* 80CD56B8  48 00 00 34 */	b lbl_80CD56EC
lbl_80CD56BC:
/* 80CD56BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD56C0  41 82 00 0C */	beq lbl_80CD56CC
/* 80CD56C4  38 00 00 01 */	li r0, 1
/* 80CD56C8  48 00 00 28 */	b lbl_80CD56F0
lbl_80CD56CC:
/* 80CD56CC  38 00 00 02 */	li r0, 2
/* 80CD56D0  48 00 00 20 */	b lbl_80CD56F0
lbl_80CD56D4:
/* 80CD56D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD56D8  41 82 00 0C */	beq lbl_80CD56E4
/* 80CD56DC  38 00 00 05 */	li r0, 5
/* 80CD56E0  48 00 00 10 */	b lbl_80CD56F0
lbl_80CD56E4:
/* 80CD56E4  38 00 00 03 */	li r0, 3
/* 80CD56E8  48 00 00 08 */	b lbl_80CD56F0
lbl_80CD56EC:
/* 80CD56EC  38 00 00 04 */	li r0, 4
lbl_80CD56F0:
/* 80CD56F0  2C 00 00 01 */	cmpwi r0, 1
/* 80CD56F4  40 82 00 10 */	bne lbl_80CD5704
/* 80CD56F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD56FC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80CD5700  48 00 00 08 */	b lbl_80CD5708
lbl_80CD5704:
/* 80CD5704  FC 40 08 90 */	fmr f2, f1
lbl_80CD5708:
/* 80CD5708  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80CD570C  4B 59 1F 68 */	b cM_atan2s__Fff
/* 80CD5710  7C 03 00 D0 */	neg r0, r3
/* 80CD5714  7C 05 07 34 */	extsh r5, r0
/* 80CD5718  7C A5 EA 14 */	add r5, r5, r29
lbl_80CD571C:
/* 80CD571C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80CD5720  7C A5 02 14 */	add r5, r5, r0
/* 80CD5724  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 80CD5728  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80CD572C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80CD5730  C8 5E 00 E0 */	lfd f2, 0xe0(r30)
/* 80CD5734  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD5738  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD573C  3C 60 43 30 */	lis r3, 0x4330
/* 80CD5740  90 61 00 30 */	stw r3, 0x30(r1)
/* 80CD5744  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CD5748  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CD574C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80CD5750  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CD5754  7C A0 07 34 */	extsh r0, r5
/* 80CD5758  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD575C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CD5760  90 61 00 38 */	stw r3, 0x38(r1)
/* 80CD5764  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80CD5768  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD576C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80CD5770  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD5774  FC 00 00 1E */	fctiwz f0, f0
/* 80CD5778  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CD577C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CD5780  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80CD5784  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80CD5788  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80CD578C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CD5790  4B 68 CA 98 */	b _restgpr_29
/* 80CD5794  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CD5798  7C 08 03 A6 */	mtlr r0
/* 80CD579C  38 21 00 70 */	addi r1, r1, 0x70
/* 80CD57A0  4E 80 00 20 */	blr 
