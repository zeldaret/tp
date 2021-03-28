lbl_80B7797C:
/* 80B7797C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B77980  7C 08 02 A6 */	mflr r0
/* 80B77984  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B77988  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B7798C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B77990  39 61 00 50 */	addi r11, r1, 0x50
/* 80B77994  4B 7E A8 44 */	b _savegpr_28
/* 80B77998  7C 7F 1B 78 */	mr r31, r3
/* 80B7799C  7C 80 23 78 */	mr r0, r4
/* 80B779A0  7C BC 2B 78 */	mr r28, r5
/* 80B779A4  7C DD 33 78 */	mr r29, r6
/* 80B779A8  FF E0 08 90 */	fmr f31, f1
/* 80B779AC  7C FE 3B 78 */	mr r30, r7
/* 80B779B0  38 A0 00 00 */	li r5, 0
/* 80B779B4  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B779B8  28 04 00 00 */	cmplwi r4, 0
/* 80B779BC  41 82 00 44 */	beq lbl_80B77A00
/* 80B779C0  38 61 00 08 */	addi r3, r1, 8
/* 80B779C4  7C 05 03 78 */	mr r5, r0
/* 80B779C8  4B 6E F1 6C */	b __mi__4cXyzCFRC3Vec
/* 80B779CC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B779D0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B779D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B779D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B779DC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B779E0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B779E4  4B 6E FC 90 */	b cM_atan2s__Fff
/* 80B779E8  7C BC 18 50 */	subf r5, r28, r3
/* 80B779EC  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B779F0  7C 1C 00 50 */	subf r0, r28, r0
/* 80B779F4  7C 00 07 34 */	extsh r0, r0
/* 80B779F8  7C A0 28 50 */	subf r5, r0, r5
/* 80B779FC  7C A5 F2 14 */	add r5, r5, r30
lbl_80B77A00:
/* 80B77A00  2C 1D 00 00 */	cmpwi r29, 0
/* 80B77A04  41 82 00 0C */	beq lbl_80B77A10
/* 80B77A08  7C 05 00 D0 */	neg r0, r5
/* 80B77A0C  7C 05 07 34 */	extsh r5, r0
lbl_80B77A10:
/* 80B77A10  3C 60 80 B8 */	lis r3, lit_4342@ha
/* 80B77A14  C0 63 80 7C */	lfs f3, lit_4342@l(r3)
/* 80B77A18  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B77A1C  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B77A20  3C 60 80 B8 */	lis r3, lit_4749@ha
/* 80B77A24  C8 43 80 98 */	lfd f2, lit_4749@l(r3)
/* 80B77A28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B77A2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B77A30  3C 60 43 30 */	lis r3, 0x4330
/* 80B77A34  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B77A38  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B77A3C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B77A40  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B77A44  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B77A48  7C A0 07 34 */	extsh r0, r5
/* 80B77A4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B77A50  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B77A54  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B77A58  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B77A5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B77A60  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B77A64  EC 01 00 2A */	fadds f0, f1, f0
/* 80B77A68  FC 00 00 1E */	fctiwz f0, f0
/* 80B77A6C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B77A70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B77A74  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B77A78  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B77A7C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B77A80  39 61 00 50 */	addi r11, r1, 0x50
/* 80B77A84  4B 7E A7 A0 */	b _restgpr_28
/* 80B77A88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B77A8C  7C 08 03 A6 */	mtlr r0
/* 80B77A90  38 21 00 60 */	addi r1, r1, 0x60
/* 80B77A94  4E 80 00 20 */	blr 
