lbl_802C551C:
/* 802C551C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C5520  7C 08 02 A6 */	mflr r0
/* 802C5524  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C5528  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802C552C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802C5530  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C5534  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C5538  7C 7F 1B 78 */	mr r31, r3
/* 802C553C  FF E0 08 90 */	fmr f31, f1
/* 802C5540  3B C0 00 00 */	li r30, 0
/* 802C5544  C0 02 C3 20 */	lfs f0, lit_4621(r2)
/* 802C5548  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C554C  41 80 01 4C */	blt lbl_802C5698
/* 802C5550  C0 02 C3 24 */	lfs f0, lit_4622(r2)
/* 802C5554  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C5558  40 80 00 A4 */	bge lbl_802C55FC
/* 802C555C  3C 80 00 06 */	lis r4, 0x0006 /* 0x0006004E@ha */
/* 802C5560  38 04 00 4E */	addi r0, r4, 0x004E /* 0x0006004E@l */
/* 802C5564  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C5568  38 81 00 0C */	addi r4, r1, 0xc
/* 802C556C  38 A0 00 00 */	li r5, 0
/* 802C5570  38 C0 FF FF */	li r6, -1
/* 802C5574  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C5578  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C557C  7D 89 03 A6 */	mtctr r12
/* 802C5580  4E 80 04 21 */	bctrl 
/* 802C5584  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C5588  41 82 01 10 */	beq lbl_802C5698
/* 802C558C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C5590  28 00 00 00 */	cmplwi r0, 0
/* 802C5594  41 82 01 04 */	beq lbl_802C5698
/* 802C5598  FC 20 F8 90 */	fmr f1, f31
/* 802C559C  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C55A0  C0 62 C3 24 */	lfs f3, lit_4622(r2)
/* 802C55A4  C0 82 C3 08 */	lfs f4, lit_3949(r2)
/* 802C55A8  C0 A2 C3 28 */	lfs f5, lit_4623(r2)
/* 802C55AC  C0 C2 C3 2C */	lfs f6, lit_4624(r2)
/* 802C55B0  38 60 00 01 */	li r3, 1
/* 802C55B4  4B FE 41 41 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C55B8  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C55BC  38 63 00 48 */	addi r3, r3, 0x48
/* 802C55C0  38 80 00 00 */	li r4, 0
/* 802C55C4  4B FD D8 49 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C55C8  FC 20 F8 90 */	fmr f1, f31
/* 802C55CC  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C55D0  C0 62 C3 24 */	lfs f3, lit_4622(r2)
/* 802C55D4  C0 82 C2 EC */	lfs f4, lit_3942(r2)
/* 802C55D8  C0 A2 C2 D0 */	lfs f5, lit_3837(r2)
/* 802C55DC  C0 C2 C2 98 */	lfs f6, lit_3721(r2)
/* 802C55E0  38 60 00 01 */	li r3, 1
/* 802C55E4  4B FE 41 11 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C55E8  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C55EC  38 63 00 48 */	addi r3, r3, 0x48
/* 802C55F0  38 80 00 00 */	li r4, 0
/* 802C55F4  4B FD D7 C1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C55F8  48 00 00 A0 */	b lbl_802C5698
lbl_802C55FC:
/* 802C55FC  3C 80 00 06 */	lis r4, 0x0006 /* 0x0006004F@ha */
/* 802C5600  38 04 00 4F */	addi r0, r4, 0x004F /* 0x0006004F@l */
/* 802C5604  90 01 00 08 */	stw r0, 8(r1)
/* 802C5608  38 81 00 08 */	addi r4, r1, 8
/* 802C560C  38 A0 00 00 */	li r5, 0
/* 802C5610  38 C0 FF FF */	li r6, -1
/* 802C5614  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C5618  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C561C  7D 89 03 A6 */	mtctr r12
/* 802C5620  4E 80 04 21 */	bctrl 
/* 802C5624  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C5628  41 82 00 70 */	beq lbl_802C5698
/* 802C562C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C5630  28 00 00 00 */	cmplwi r0, 0
/* 802C5634  41 82 00 64 */	beq lbl_802C5698
/* 802C5638  FC 20 F8 90 */	fmr f1, f31
/* 802C563C  C0 42 C3 24 */	lfs f2, lit_4622(r2)
/* 802C5640  C0 62 C3 30 */	lfs f3, lit_4625(r2)
/* 802C5644  C0 82 C3 08 */	lfs f4, lit_3949(r2)
/* 802C5648  C0 A2 C3 28 */	lfs f5, lit_4623(r2)
/* 802C564C  C0 C2 C3 2C */	lfs f6, lit_4624(r2)
/* 802C5650  38 60 00 01 */	li r3, 1
/* 802C5654  4B FE 40 A1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5658  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C565C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5660  38 80 00 00 */	li r4, 0
/* 802C5664  4B FD D7 A9 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C5668  FC 20 F8 90 */	fmr f1, f31
/* 802C566C  C0 42 C3 24 */	lfs f2, lit_4622(r2)
/* 802C5670  C0 62 C3 30 */	lfs f3, lit_4625(r2)
/* 802C5674  C0 82 C2 EC */	lfs f4, lit_3942(r2)
/* 802C5678  C0 A2 C2 F0 */	lfs f5, lit_3943(r2)
/* 802C567C  C0 C2 C2 98 */	lfs f6, lit_3721(r2)
/* 802C5680  38 60 00 01 */	li r3, 1
/* 802C5684  4B FE 40 71 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C5688  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C568C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C5690  38 80 00 00 */	li r4, 0
/* 802C5694  4B FD D7 21 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C5698:
/* 802C5698  D3 FF 00 20 */	stfs f31, 0x20(r31)
/* 802C569C  7F C3 F3 78 */	mr r3, r30
/* 802C56A0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802C56A4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802C56A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C56AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C56B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C56B4  7C 08 03 A6 */	mtlr r0
/* 802C56B8  38 21 00 30 */	addi r1, r1, 0x30
/* 802C56BC  4E 80 00 20 */	blr 
