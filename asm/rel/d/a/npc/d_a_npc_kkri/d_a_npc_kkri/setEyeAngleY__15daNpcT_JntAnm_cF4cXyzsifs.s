lbl_80552DD0:
/* 80552DD0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80552DD4  7C 08 02 A6 */	mflr r0
/* 80552DD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80552DDC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80552DE0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80552DE4  39 61 00 50 */	addi r11, r1, 0x50
/* 80552DE8  4B E0 F3 F0 */	b _savegpr_28
/* 80552DEC  7C 7F 1B 78 */	mr r31, r3
/* 80552DF0  7C 80 23 78 */	mr r0, r4
/* 80552DF4  7C BC 2B 78 */	mr r28, r5
/* 80552DF8  7C DD 33 78 */	mr r29, r6
/* 80552DFC  FF E0 08 90 */	fmr f31, f1
/* 80552E00  7C FE 3B 78 */	mr r30, r7
/* 80552E04  38 A0 00 00 */	li r5, 0
/* 80552E08  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80552E0C  28 04 00 00 */	cmplwi r4, 0
/* 80552E10  41 82 00 44 */	beq lbl_80552E54
/* 80552E14  38 61 00 08 */	addi r3, r1, 8
/* 80552E18  7C 05 03 78 */	mr r5, r0
/* 80552E1C  4B D1 3D 18 */	b __mi__4cXyzCFRC3Vec
/* 80552E20  C0 21 00 08 */	lfs f1, 8(r1)
/* 80552E24  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80552E28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80552E2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80552E30  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80552E34  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80552E38  4B D1 48 3C */	b cM_atan2s__Fff
/* 80552E3C  7C BC 18 50 */	subf r5, r28, r3
/* 80552E40  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80552E44  7C 1C 00 50 */	subf r0, r28, r0
/* 80552E48  7C 00 07 34 */	extsh r0, r0
/* 80552E4C  7C A0 28 50 */	subf r5, r0, r5
/* 80552E50  7C A5 F2 14 */	add r5, r5, r30
lbl_80552E54:
/* 80552E54  2C 1D 00 00 */	cmpwi r29, 0
/* 80552E58  41 82 00 0C */	beq lbl_80552E64
/* 80552E5C  7C 05 00 D0 */	neg r0, r5
/* 80552E60  7C 05 07 34 */	extsh r5, r0
lbl_80552E64:
/* 80552E64  3C 60 80 55 */	lis r3, lit_4391@ha
/* 80552E68  C0 63 35 48 */	lfs f3, lit_4391@l(r3)
/* 80552E6C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80552E70  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80552E74  3C 60 80 55 */	lis r3, lit_4799@ha
/* 80552E78  C8 43 35 70 */	lfd f2, lit_4799@l(r3)
/* 80552E7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80552E80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80552E84  3C 60 43 30 */	lis r3, 0x4330
/* 80552E88  90 61 00 20 */	stw r3, 0x20(r1)
/* 80552E8C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80552E90  EC 20 10 28 */	fsubs f1, f0, f2
/* 80552E94  EC 03 20 28 */	fsubs f0, f3, f4
/* 80552E98  EC 21 00 32 */	fmuls f1, f1, f0
/* 80552E9C  7C A0 07 34 */	extsh r0, r5
/* 80552EA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80552EA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80552EA8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80552EAC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80552EB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80552EB4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80552EB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80552EBC  FC 00 00 1E */	fctiwz f0, f0
/* 80552EC0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80552EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80552EC8  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80552ECC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80552ED0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80552ED4  39 61 00 50 */	addi r11, r1, 0x50
/* 80552ED8  4B E0 F3 4C */	b _restgpr_28
/* 80552EDC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80552EE0  7C 08 03 A6 */	mtlr r0
/* 80552EE4  38 21 00 60 */	addi r1, r1, 0x60
/* 80552EE8  4E 80 00 20 */	blr 
