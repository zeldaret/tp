lbl_80570E58:
/* 80570E58  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80570E5C  7C 08 02 A6 */	mflr r0
/* 80570E60  90 01 00 64 */	stw r0, 0x64(r1)
/* 80570E64  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80570E68  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80570E6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80570E70  4B DF 13 68 */	b _savegpr_28
/* 80570E74  7C 7F 1B 78 */	mr r31, r3
/* 80570E78  7C 80 23 78 */	mr r0, r4
/* 80570E7C  7C BC 2B 78 */	mr r28, r5
/* 80570E80  7C DD 33 78 */	mr r29, r6
/* 80570E84  FF E0 08 90 */	fmr f31, f1
/* 80570E88  7C FE 3B 78 */	mr r30, r7
/* 80570E8C  38 A0 00 00 */	li r5, 0
/* 80570E90  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80570E94  28 04 00 00 */	cmplwi r4, 0
/* 80570E98  41 82 00 44 */	beq lbl_80570EDC
/* 80570E9C  38 61 00 08 */	addi r3, r1, 8
/* 80570EA0  7C 05 03 78 */	mr r5, r0
/* 80570EA4  4B CF 5C 90 */	b __mi__4cXyzCFRC3Vec
/* 80570EA8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80570EAC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80570EB0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80570EB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80570EB8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80570EBC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80570EC0  4B CF 67 B4 */	b cM_atan2s__Fff
/* 80570EC4  7C BC 18 50 */	subf r5, r28, r3
/* 80570EC8  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80570ECC  7C 1C 00 50 */	subf r0, r28, r0
/* 80570ED0  7C 00 07 34 */	extsh r0, r0
/* 80570ED4  7C A0 28 50 */	subf r5, r0, r5
/* 80570ED8  7C A5 F2 14 */	add r5, r5, r30
lbl_80570EDC:
/* 80570EDC  2C 1D 00 00 */	cmpwi r29, 0
/* 80570EE0  41 82 00 0C */	beq lbl_80570EEC
/* 80570EE4  7C 05 00 D0 */	neg r0, r5
/* 80570EE8  7C 05 07 34 */	extsh r5, r0
lbl_80570EEC:
/* 80570EEC  3C 60 80 57 */	lis r3, lit_4835@ha
/* 80570EF0  C0 63 17 BC */	lfs f3, lit_4835@l(r3)
/* 80570EF4  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80570EF8  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80570EFC  3C 60 80 57 */	lis r3, lit_5505@ha
/* 80570F00  C8 43 17 E0 */	lfd f2, lit_5505@l(r3)
/* 80570F04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80570F08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80570F0C  3C 60 43 30 */	lis r3, 0x4330
/* 80570F10  90 61 00 20 */	stw r3, 0x20(r1)
/* 80570F14  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80570F18  EC 20 10 28 */	fsubs f1, f0, f2
/* 80570F1C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80570F20  EC 21 00 32 */	fmuls f1, f1, f0
/* 80570F24  7C A0 07 34 */	extsh r0, r5
/* 80570F28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80570F2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80570F30  90 61 00 28 */	stw r3, 0x28(r1)
/* 80570F34  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80570F38  EC 00 10 28 */	fsubs f0, f0, f2
/* 80570F3C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80570F40  EC 01 00 2A */	fadds f0, f1, f0
/* 80570F44  FC 00 00 1E */	fctiwz f0, f0
/* 80570F48  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80570F4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80570F50  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80570F54  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80570F58  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80570F5C  39 61 00 50 */	addi r11, r1, 0x50
/* 80570F60  4B DF 12 C4 */	b _restgpr_28
/* 80570F64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80570F68  7C 08 03 A6 */	mtlr r0
/* 80570F6C  38 21 00 60 */	addi r1, r1, 0x60
/* 80570F70  4E 80 00 20 */	blr 
