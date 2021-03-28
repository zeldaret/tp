lbl_80AB8870:
/* 80AB8870  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AB8874  7C 08 02 A6 */	mflr r0
/* 80AB8878  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AB887C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AB8880  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AB8884  39 61 00 50 */	addi r11, r1, 0x50
/* 80AB8888  4B 8A 99 50 */	b _savegpr_28
/* 80AB888C  7C 7F 1B 78 */	mr r31, r3
/* 80AB8890  7C 80 23 78 */	mr r0, r4
/* 80AB8894  7C BC 2B 78 */	mr r28, r5
/* 80AB8898  7C DD 33 78 */	mr r29, r6
/* 80AB889C  FF E0 08 90 */	fmr f31, f1
/* 80AB88A0  7C FE 3B 78 */	mr r30, r7
/* 80AB88A4  38 A0 00 00 */	li r5, 0
/* 80AB88A8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AB88AC  28 04 00 00 */	cmplwi r4, 0
/* 80AB88B0  41 82 00 44 */	beq lbl_80AB88F4
/* 80AB88B4  38 61 00 08 */	addi r3, r1, 8
/* 80AB88B8  7C 05 03 78 */	mr r5, r0
/* 80AB88BC  4B 7A E2 78 */	b __mi__4cXyzCFRC3Vec
/* 80AB88C0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AB88C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AB88C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AB88CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AB88D0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AB88D4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AB88D8  4B 7A ED 9C */	b cM_atan2s__Fff
/* 80AB88DC  7C BC 18 50 */	subf r5, r28, r3
/* 80AB88E0  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AB88E4  7C 1C 00 50 */	subf r0, r28, r0
/* 80AB88E8  7C 00 07 34 */	extsh r0, r0
/* 80AB88EC  7C A0 28 50 */	subf r5, r0, r5
/* 80AB88F0  7C A5 F2 14 */	add r5, r5, r30
lbl_80AB88F4:
/* 80AB88F4  2C 1D 00 00 */	cmpwi r29, 0
/* 80AB88F8  41 82 00 0C */	beq lbl_80AB8904
/* 80AB88FC  7C 05 00 D0 */	neg r0, r5
/* 80AB8900  7C 05 07 34 */	extsh r5, r0
lbl_80AB8904:
/* 80AB8904  3C 60 80 AC */	lis r3, lit_4353@ha
/* 80AB8908  C0 63 8F 74 */	lfs f3, lit_4353@l(r3)
/* 80AB890C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AB8910  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AB8914  3C 60 80 AC */	lis r3, lit_4708@ha
/* 80AB8918  C8 43 8F 88 */	lfd f2, lit_4708@l(r3)
/* 80AB891C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB8920  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB8924  3C 60 43 30 */	lis r3, 0x4330
/* 80AB8928  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AB892C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AB8930  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AB8934  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AB8938  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AB893C  7C A0 07 34 */	extsh r0, r5
/* 80AB8940  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB8944  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AB8948  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AB894C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AB8950  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AB8954  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AB8958  EC 01 00 2A */	fadds f0, f1, f0
/* 80AB895C  FC 00 00 1E */	fctiwz f0, f0
/* 80AB8960  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AB8964  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB8968  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AB896C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AB8970  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AB8974  39 61 00 50 */	addi r11, r1, 0x50
/* 80AB8978  4B 8A 98 AC */	b _restgpr_28
/* 80AB897C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AB8980  7C 08 03 A6 */	mtlr r0
/* 80AB8984  38 21 00 60 */	addi r1, r1, 0x60
/* 80AB8988  4E 80 00 20 */	blr 
