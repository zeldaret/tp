lbl_80559DE4:
/* 80559DE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80559DE8  7C 08 02 A6 */	mflr r0
/* 80559DEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80559DF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80559DF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80559DF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80559DFC  4B E0 83 DD */	bl _savegpr_28
/* 80559E00  7C 7F 1B 78 */	mr r31, r3
/* 80559E04  7C 80 23 78 */	mr r0, r4
/* 80559E08  7C BC 2B 78 */	mr r28, r5
/* 80559E0C  7C DD 33 78 */	mr r29, r6
/* 80559E10  FF E0 08 90 */	fmr f31, f1
/* 80559E14  7C FE 3B 78 */	mr r30, r7
/* 80559E18  38 A0 00 00 */	li r5, 0
/* 80559E1C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80559E20  28 04 00 00 */	cmplwi r4, 0
/* 80559E24  41 82 00 44 */	beq lbl_80559E68
/* 80559E28  38 61 00 08 */	addi r3, r1, 8
/* 80559E2C  7C 05 03 78 */	mr r5, r0
/* 80559E30  4B D0 CD 05 */	bl __mi__4cXyzCFRC3Vec
/* 80559E34  C0 21 00 08 */	lfs f1, 8(r1)
/* 80559E38  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80559E3C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80559E40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80559E44  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80559E48  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80559E4C  4B D0 D8 29 */	bl cM_atan2s__Fff
/* 80559E50  7C BC 18 50 */	subf r5, r28, r3
/* 80559E54  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80559E58  7C 1C 00 50 */	subf r0, r28, r0
/* 80559E5C  7C 00 07 34 */	extsh r0, r0
/* 80559E60  7C A0 28 50 */	subf r5, r0, r5
/* 80559E64  7C A5 F2 14 */	add r5, r5, r30
lbl_80559E68:
/* 80559E68  2C 1D 00 00 */	cmpwi r29, 0
/* 80559E6C  41 82 00 0C */	beq lbl_80559E78
/* 80559E70  7C 05 00 D0 */	neg r0, r5
/* 80559E74  7C 05 07 34 */	extsh r5, r0
lbl_80559E78:
/* 80559E78  3C 60 80 56 */	lis r3, lit_4442@ha /* 0x8055A6B0@ha */
/* 80559E7C  C0 63 A6 B0 */	lfs f3, lit_4442@l(r3)  /* 0x8055A6B0@l */
/* 80559E80  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80559E84  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80559E88  3C 60 80 56 */	lis r3, lit_4937@ha /* 0x8055A6DC@ha */
/* 80559E8C  C8 43 A6 DC */	lfd f2, lit_4937@l(r3)  /* 0x8055A6DC@l */
/* 80559E90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80559E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80559E98  3C 60 43 30 */	lis r3, 0x4330
/* 80559E9C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80559EA0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80559EA4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80559EA8  EC 03 20 28 */	fsubs f0, f3, f4
/* 80559EAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80559EB0  7C A0 07 34 */	extsh r0, r5
/* 80559EB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80559EB8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80559EBC  90 61 00 28 */	stw r3, 0x28(r1)
/* 80559EC0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80559EC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80559EC8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80559ECC  EC 01 00 2A */	fadds f0, f1, f0
/* 80559ED0  FC 00 00 1E */	fctiwz f0, f0
/* 80559ED4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80559ED8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80559EDC  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80559EE0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80559EE4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80559EE8  39 61 00 50 */	addi r11, r1, 0x50
/* 80559EEC  4B E0 83 39 */	bl _restgpr_28
/* 80559EF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80559EF4  7C 08 03 A6 */	mtlr r0
/* 80559EF8  38 21 00 60 */	addi r1, r1, 0x60
/* 80559EFC  4E 80 00 20 */	blr 
