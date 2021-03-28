lbl_809A9D40:
/* 809A9D40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809A9D44  7C 08 02 A6 */	mflr r0
/* 809A9D48  90 01 00 64 */	stw r0, 0x64(r1)
/* 809A9D4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809A9D50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809A9D54  39 61 00 50 */	addi r11, r1, 0x50
/* 809A9D58  4B 9B 84 80 */	b _savegpr_28
/* 809A9D5C  7C 7F 1B 78 */	mr r31, r3
/* 809A9D60  7C 80 23 78 */	mr r0, r4
/* 809A9D64  7C BC 2B 78 */	mr r28, r5
/* 809A9D68  7C DD 33 78 */	mr r29, r6
/* 809A9D6C  FF E0 08 90 */	fmr f31, f1
/* 809A9D70  7C FE 3B 78 */	mr r30, r7
/* 809A9D74  38 A0 00 00 */	li r5, 0
/* 809A9D78  80 83 00 20 */	lwz r4, 0x20(r3)
/* 809A9D7C  28 04 00 00 */	cmplwi r4, 0
/* 809A9D80  41 82 00 44 */	beq lbl_809A9DC4
/* 809A9D84  38 61 00 08 */	addi r3, r1, 8
/* 809A9D88  7C 05 03 78 */	mr r5, r0
/* 809A9D8C  4B 8B CD A8 */	b __mi__4cXyzCFRC3Vec
/* 809A9D90  C0 21 00 08 */	lfs f1, 8(r1)
/* 809A9D94  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809A9D98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809A9D9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A9DA0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 809A9DA4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809A9DA8  4B 8B D8 CC */	b cM_atan2s__Fff
/* 809A9DAC  7C BC 18 50 */	subf r5, r28, r3
/* 809A9DB0  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 809A9DB4  7C 1C 00 50 */	subf r0, r28, r0
/* 809A9DB8  7C 00 07 34 */	extsh r0, r0
/* 809A9DBC  7C A0 28 50 */	subf r5, r0, r5
/* 809A9DC0  7C A5 F2 14 */	add r5, r5, r30
lbl_809A9DC4:
/* 809A9DC4  2C 1D 00 00 */	cmpwi r29, 0
/* 809A9DC8  41 82 00 0C */	beq lbl_809A9DD4
/* 809A9DCC  7C 05 00 D0 */	neg r0, r5
/* 809A9DD0  7C 05 07 34 */	extsh r5, r0
lbl_809A9DD4:
/* 809A9DD4  3C 60 80 9B */	lis r3, lit_4348@ha
/* 809A9DD8  C0 63 A3 D4 */	lfs f3, lit_4348@l(r3)
/* 809A9DDC  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809A9DE0  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 809A9DE4  3C 60 80 9B */	lis r3, lit_4775@ha
/* 809A9DE8  C8 43 A3 FC */	lfd f2, lit_4775@l(r3)
/* 809A9DEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A9DF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A9DF4  3C 60 43 30 */	lis r3, 0x4330
/* 809A9DF8  90 61 00 20 */	stw r3, 0x20(r1)
/* 809A9DFC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809A9E00  EC 20 10 28 */	fsubs f1, f0, f2
/* 809A9E04  EC 03 20 28 */	fsubs f0, f3, f4
/* 809A9E08  EC 21 00 32 */	fmuls f1, f1, f0
/* 809A9E0C  7C A0 07 34 */	extsh r0, r5
/* 809A9E10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A9E14  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809A9E18  90 61 00 28 */	stw r3, 0x28(r1)
/* 809A9E1C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809A9E20  EC 00 10 28 */	fsubs f0, f0, f2
/* 809A9E24  EC 00 01 32 */	fmuls f0, f0, f4
/* 809A9E28  EC 01 00 2A */	fadds f0, f1, f0
/* 809A9E2C  FC 00 00 1E */	fctiwz f0, f0
/* 809A9E30  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809A9E34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A9E38  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 809A9E3C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809A9E40  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809A9E44  39 61 00 50 */	addi r11, r1, 0x50
/* 809A9E48  4B 9B 83 DC */	b _restgpr_28
/* 809A9E4C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809A9E50  7C 08 03 A6 */	mtlr r0
/* 809A9E54  38 21 00 60 */	addi r1, r1, 0x60
/* 809A9E58  4E 80 00 20 */	blr 
