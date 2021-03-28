lbl_80BB7818:
/* 80BB7818  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BB781C  7C 08 02 A6 */	mflr r0
/* 80BB7820  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB7824  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BB7828  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BB782C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80BB7830  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80BB7834  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB7838  4B 7A A9 A0 */	b _savegpr_28
/* 80BB783C  7C 7C 1B 78 */	mr r28, r3
/* 80BB7840  3C 60 80 BB */	lis r3, VIBMODE_POWER@ha
/* 80BB7844  3B E3 7E B0 */	addi r31, r3, VIBMODE_POWER@l
/* 80BB7848  88 1C 05 7A */	lbz r0, 0x57a(r28)
/* 80BB784C  28 00 00 00 */	cmplwi r0, 0
/* 80BB7850  41 82 01 10 */	beq lbl_80BB7960
/* 80BB7854  C3 DC 04 D4 */	lfs f30, 0x4d4(r28)
/* 80BB7858  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80BB785C  4B 46 65 28 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80BB7860  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB7864  41 82 00 14 */	beq lbl_80BB7878
/* 80BB7868  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 80BB786C  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)
/* 80BB7870  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80BB7874  EF C1 00 28 */	fsubs f30, f1, f0
lbl_80BB7878:
/* 80BB7878  38 00 00 00 */	li r0, 0
/* 80BB787C  98 1C 05 7A */	stb r0, 0x57a(r28)
/* 80BB7880  3B DC 08 70 */	addi r30, r28, 0x870
/* 80BB7884  3B A0 00 00 */	li r29, 0
/* 80BB7888  C3 FF 01 1C */	lfs f31, 0x11c(r31)
lbl_80BB788C:
/* 80BB788C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80BB7890  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80BB7894  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 80BB7898  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80BB789C  C0 9F 01 18 */	lfs f4, 0x118(r31)
/* 80BB78A0  4B 6B 80 DC */	b cLib_addCalc__FPfffff
/* 80BB78A4  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80BB78A8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80BB78AC  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 80BB78B0  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80BB78B4  C0 9F 01 18 */	lfs f4, 0x118(r31)
/* 80BB78B8  4B 6B 80 C4 */	b cLib_addCalc__FPfffff
/* 80BB78BC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BB78C0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB78C4  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80BB78C8  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80BB78CC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BB78D0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB78D4  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80BB78D8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80BB78DC  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80BB78E0  40 81 00 10 */	ble lbl_80BB78F0
/* 80BB78E4  38 00 00 01 */	li r0, 1
/* 80BB78E8  98 1C 05 7A */	stb r0, 0x57a(r28)
/* 80BB78EC  48 00 00 2C */	b lbl_80BB7918
lbl_80BB78F0:
/* 80BB78F0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80BB78F4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80BB78F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BB78FC  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80BB7900  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80BB7904  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80BB7908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB790C  40 81 00 0C */	ble lbl_80BB7918
/* 80BB7910  38 00 00 01 */	li r0, 1
/* 80BB7914  98 1C 05 7A */	stb r0, 0x57a(r28)
lbl_80BB7918:
/* 80BB7918  38 7E 00 54 */	addi r3, r30, 0x54
/* 80BB791C  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80BB7920  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 80BB7924  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80BB7928  C0 9F 01 18 */	lfs f4, 0x118(r31)
/* 80BB792C  4B 6B 80 50 */	b cLib_addCalc__FPfffff
/* 80BB7930  A8 7E 00 50 */	lha r3, 0x50(r30)
/* 80BB7934  A8 1E 00 54 */	lha r0, 0x54(r30)
/* 80BB7938  7C 03 02 14 */	add r0, r3, r0
/* 80BB793C  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 80BB7940  A8 7E 00 52 */	lha r3, 0x52(r30)
/* 80BB7944  A8 1E 00 54 */	lha r0, 0x54(r30)
/* 80BB7948  7C 03 02 14 */	add r0, r3, r0
/* 80BB794C  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 80BB7950  3B BD 00 01 */	addi r29, r29, 1
/* 80BB7954  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80BB7958  3B DE 00 58 */	addi r30, r30, 0x58
/* 80BB795C  41 80 FF 30 */	blt lbl_80BB788C
lbl_80BB7960:
/* 80BB7960  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BB7964  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BB7968  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80BB796C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80BB7970  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB7974  4B 7A A8 B0 */	b _restgpr_28
/* 80BB7978  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BB797C  7C 08 03 A6 */	mtlr r0
/* 80BB7980  38 21 00 40 */	addi r1, r1, 0x40
/* 80BB7984  4E 80 00 20 */	blr 
