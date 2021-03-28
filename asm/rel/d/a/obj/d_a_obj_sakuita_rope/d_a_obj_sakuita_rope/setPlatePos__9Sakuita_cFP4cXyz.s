lbl_80CC5444:
/* 80CC5444  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CC5448  7C 08 02 A6 */	mflr r0
/* 80CC544C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CC5450  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CC5454  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CC5458  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80CC545C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80CC5460  7C 7E 1B 78 */	mr r30, r3
/* 80CC5464  3C 60 80 CC */	lis r3, M_attr__14daObjItaRope_c@ha
/* 80CC5468  3B E3 68 F0 */	addi r31, r3, M_attr__14daObjItaRope_c@l
/* 80CC546C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80CC5470  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CC5474  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CC5478  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CC547C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CC5480  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CC5484  7C 83 23 78 */	mr r3, r4
/* 80CC5488  4B 68 1C B0 */	b PSVECSquareMag
/* 80CC548C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC5490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5494  40 81 00 58 */	ble lbl_80CC54EC
/* 80CC5498  FC 00 08 34 */	frsqrte f0, f1
/* 80CC549C  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80CC54A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC54A4  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80CC54A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC54AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC54B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC54B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC54B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC54BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC54C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC54C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC54C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC54CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC54D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CC54D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CC54D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CC54DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CC54E0  FF E1 00 32 */	fmul f31, f1, f0
/* 80CC54E4  FF E0 F8 18 */	frsp f31, f31
/* 80CC54E8  48 00 00 90 */	b lbl_80CC5578
lbl_80CC54EC:
/* 80CC54EC  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80CC54F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC54F4  40 80 00 10 */	bge lbl_80CC5504
/* 80CC54F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC54FC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CC5500  48 00 00 78 */	b lbl_80CC5578
lbl_80CC5504:
/* 80CC5504  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CC5508  80 81 00 08 */	lwz r4, 8(r1)
/* 80CC550C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CC5510  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CC5514  7C 03 00 00 */	cmpw r3, r0
/* 80CC5518  41 82 00 14 */	beq lbl_80CC552C
/* 80CC551C  40 80 00 40 */	bge lbl_80CC555C
/* 80CC5520  2C 03 00 00 */	cmpwi r3, 0
/* 80CC5524  41 82 00 20 */	beq lbl_80CC5544
/* 80CC5528  48 00 00 34 */	b lbl_80CC555C
lbl_80CC552C:
/* 80CC552C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC5530  41 82 00 0C */	beq lbl_80CC553C
/* 80CC5534  38 00 00 01 */	li r0, 1
/* 80CC5538  48 00 00 28 */	b lbl_80CC5560
lbl_80CC553C:
/* 80CC553C  38 00 00 02 */	li r0, 2
/* 80CC5540  48 00 00 20 */	b lbl_80CC5560
lbl_80CC5544:
/* 80CC5544  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CC5548  41 82 00 0C */	beq lbl_80CC5554
/* 80CC554C  38 00 00 05 */	li r0, 5
/* 80CC5550  48 00 00 10 */	b lbl_80CC5560
lbl_80CC5554:
/* 80CC5554  38 00 00 03 */	li r0, 3
/* 80CC5558  48 00 00 08 */	b lbl_80CC5560
lbl_80CC555C:
/* 80CC555C  38 00 00 04 */	li r0, 4
lbl_80CC5560:
/* 80CC5560  2C 00 00 01 */	cmpwi r0, 1
/* 80CC5564  40 82 00 10 */	bne lbl_80CC5574
/* 80CC5568  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CC556C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CC5570  48 00 00 08 */	b lbl_80CC5578
lbl_80CC5574:
/* 80CC5574  FF E0 08 90 */	fmr f31, f1
lbl_80CC5578:
/* 80CC5578  4B 5A 22 F4 */	b cM_rnd__Fv
/* 80CC557C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CC5580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5584  40 80 00 18 */	bge lbl_80CC559C
/* 80CC5588  38 61 00 6C */	addi r3, r1, 0x6c
/* 80CC558C  7C 64 1B 78 */	mr r4, r3
/* 80CC5590  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CC5594  4B 68 1B 44 */	b PSVECScale
/* 80CC5598  48 00 00 14 */	b lbl_80CC55AC
lbl_80CC559C:
/* 80CC559C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC55A0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CC55A4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CC55A8  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_80CC55AC:
/* 80CC55AC  38 61 00 54 */	addi r3, r1, 0x54
/* 80CC55B0  80 9E 00 04 */	lwz r4, 4(r30)
/* 80CC55B4  38 BE 00 08 */	addi r5, r30, 8
/* 80CC55B8  4B 5A 15 7C */	b __mi__4cXyzCFRC3Vec
/* 80CC55BC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CC55C0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CC55C4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80CC55C8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80CC55CC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80CC55D0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CC55D4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CC55D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC55DC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CC55E0  A8 7E 00 38 */	lha r3, 0x38(r30)
/* 80CC55E4  38 03 14 00 */	addi r0, r3, 0x1400
/* 80CC55E8  B0 1E 00 38 */	sth r0, 0x38(r30)
/* 80CC55EC  38 7E 00 2C */	addi r3, r30, 0x2c
/* 80CC55F0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80CC55F4  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80CC55F8  4B 5A B1 48 */	b cLib_chaseF__FPfff
/* 80CC55FC  2C 03 00 00 */	cmpwi r3, 0
/* 80CC5600  41 82 00 0C */	beq lbl_80CC560C
/* 80CC5604  38 00 00 00 */	li r0, 0
/* 80CC5608  B0 1E 00 38 */	sth r0, 0x38(r30)
lbl_80CC560C:
/* 80CC560C  38 61 00 60 */	addi r3, r1, 0x60
/* 80CC5610  38 9E 00 20 */	addi r4, r30, 0x20
/* 80CC5614  7C 65 1B 78 */	mr r5, r3
/* 80CC5618  4B 68 1A 78 */	b PSVECAdd
/* 80CC561C  4B 5A 22 50 */	b cM_rnd__Fv
/* 80CC5620  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CC5624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5628  40 80 00 34 */	bge lbl_80CC565C
/* 80CC562C  38 61 00 60 */	addi r3, r1, 0x60
/* 80CC5630  38 81 00 6C */	addi r4, r1, 0x6c
/* 80CC5634  7C 65 1B 78 */	mr r5, r3
/* 80CC5638  4B 68 1A 58 */	b PSVECAdd
/* 80CC563C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80CC5640  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80CC5644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5648  40 80 00 14 */	bge lbl_80CC565C
/* 80CC564C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CC5650  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80CC5654  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC5658  D0 1E 00 2C */	stfs f0, 0x2c(r30)
lbl_80CC565C:
/* 80CC565C  38 61 00 48 */	addi r3, r1, 0x48
/* 80CC5660  38 81 00 60 */	addi r4, r1, 0x60
/* 80CC5664  4B 5A 18 E4 */	b normalizeZP__4cXyzFv
/* 80CC5668  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CC566C  38 81 00 60 */	addi r4, r1, 0x60
/* 80CC5670  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80CC5674  4B 5A 15 10 */	b __ml__4cXyzCFf
/* 80CC5678  38 61 00 30 */	addi r3, r1, 0x30
/* 80CC567C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80CC5680  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80CC5684  4B 5A 14 60 */	b __pl__4cXyzCFRC3Vec
/* 80CC5688  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CC568C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80CC5690  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CC5694  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80CC5698  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CC569C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80CC56A0  38 61 00 24 */	addi r3, r1, 0x24
/* 80CC56A4  38 9E 00 14 */	addi r4, r30, 0x14
/* 80CC56A8  38 BE 00 08 */	addi r5, r30, 8
/* 80CC56AC  4B 5A 14 88 */	b __mi__4cXyzCFRC3Vec
/* 80CC56B0  38 61 00 18 */	addi r3, r1, 0x18
/* 80CC56B4  38 9E 00 20 */	addi r4, r30, 0x20
/* 80CC56B8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80CC56BC  4B 5A 14 28 */	b __pl__4cXyzCFRC3Vec
/* 80CC56C0  38 61 00 0C */	addi r3, r1, 0xc
/* 80CC56C4  38 81 00 18 */	addi r4, r1, 0x18
/* 80CC56C8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80CC56CC  4B 5A 14 B8 */	b __ml__4cXyzCFf
/* 80CC56D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CC56D4  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80CC56D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CC56DC  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80CC56E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CC56E4  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80CC56E8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80CC56EC  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80CC56F0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80CC56F4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80CC56F8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80CC56FC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80CC5700  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CC5704  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CC5708  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80CC570C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80CC5710  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CC5714  7C 08 03 A6 */	mtlr r0
/* 80CC5718  38 21 00 90 */	addi r1, r1, 0x90
/* 80CC571C  4E 80 00 20 */	blr 
