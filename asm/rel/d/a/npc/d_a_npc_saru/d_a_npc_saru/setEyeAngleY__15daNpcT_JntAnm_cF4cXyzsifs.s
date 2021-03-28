lbl_80AC3EB4:
/* 80AC3EB4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AC3EB8  7C 08 02 A6 */	mflr r0
/* 80AC3EBC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AC3EC0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AC3EC4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AC3EC8  39 61 00 50 */	addi r11, r1, 0x50
/* 80AC3ECC  4B 89 E3 0C */	b _savegpr_28
/* 80AC3ED0  7C 7F 1B 78 */	mr r31, r3
/* 80AC3ED4  7C 80 23 78 */	mr r0, r4
/* 80AC3ED8  7C BC 2B 78 */	mr r28, r5
/* 80AC3EDC  7C DD 33 78 */	mr r29, r6
/* 80AC3EE0  FF E0 08 90 */	fmr f31, f1
/* 80AC3EE4  7C FE 3B 78 */	mr r30, r7
/* 80AC3EE8  38 A0 00 00 */	li r5, 0
/* 80AC3EEC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AC3EF0  28 04 00 00 */	cmplwi r4, 0
/* 80AC3EF4  41 82 00 44 */	beq lbl_80AC3F38
/* 80AC3EF8  38 61 00 08 */	addi r3, r1, 8
/* 80AC3EFC  7C 05 03 78 */	mr r5, r0
/* 80AC3F00  4B 7A 2C 34 */	b __mi__4cXyzCFRC3Vec
/* 80AC3F04  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AC3F08  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AC3F0C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AC3F10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AC3F14  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AC3F18  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AC3F1C  4B 7A 37 58 */	b cM_atan2s__Fff
/* 80AC3F20  7C BC 18 50 */	subf r5, r28, r3
/* 80AC3F24  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AC3F28  7C 1C 00 50 */	subf r0, r28, r0
/* 80AC3F2C  7C 00 07 34 */	extsh r0, r0
/* 80AC3F30  7C A0 28 50 */	subf r5, r0, r5
/* 80AC3F34  7C A5 F2 14 */	add r5, r5, r30
lbl_80AC3F38:
/* 80AC3F38  2C 1D 00 00 */	cmpwi r29, 0
/* 80AC3F3C  41 82 00 0C */	beq lbl_80AC3F48
/* 80AC3F40  7C 05 00 D0 */	neg r0, r5
/* 80AC3F44  7C 05 07 34 */	extsh r5, r0
lbl_80AC3F48:
/* 80AC3F48  3C 60 80 AC */	lis r3, lit_4393@ha
/* 80AC3F4C  C0 63 45 C0 */	lfs f3, lit_4393@l(r3)
/* 80AC3F50  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AC3F54  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AC3F58  3C 60 80 AC */	lis r3, lit_4777@ha
/* 80AC3F5C  C8 43 45 E8 */	lfd f2, lit_4777@l(r3)
/* 80AC3F60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AC3F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC3F68  3C 60 43 30 */	lis r3, 0x4330
/* 80AC3F6C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AC3F70  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AC3F74  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AC3F78  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AC3F7C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AC3F80  7C A0 07 34 */	extsh r0, r5
/* 80AC3F84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AC3F88  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AC3F8C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AC3F90  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AC3F94  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AC3F98  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AC3F9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80AC3FA0  FC 00 00 1E */	fctiwz f0, f0
/* 80AC3FA4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AC3FA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC3FAC  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AC3FB0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AC3FB4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AC3FB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80AC3FBC  4B 89 E2 68 */	b _restgpr_28
/* 80AC3FC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AC3FC4  7C 08 03 A6 */	mtlr r0
/* 80AC3FC8  38 21 00 60 */	addi r1, r1, 0x60
/* 80AC3FCC  4E 80 00 20 */	blr 
