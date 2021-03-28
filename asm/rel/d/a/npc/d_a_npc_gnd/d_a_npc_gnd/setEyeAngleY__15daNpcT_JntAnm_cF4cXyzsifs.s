lbl_809BDE64:
/* 809BDE64  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809BDE68  7C 08 02 A6 */	mflr r0
/* 809BDE6C  90 01 00 64 */	stw r0, 0x64(r1)
/* 809BDE70  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809BDE74  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809BDE78  39 61 00 50 */	addi r11, r1, 0x50
/* 809BDE7C  4B 9A 43 5C */	b _savegpr_28
/* 809BDE80  7C 7F 1B 78 */	mr r31, r3
/* 809BDE84  7C 80 23 78 */	mr r0, r4
/* 809BDE88  7C BC 2B 78 */	mr r28, r5
/* 809BDE8C  7C DD 33 78 */	mr r29, r6
/* 809BDE90  FF E0 08 90 */	fmr f31, f1
/* 809BDE94  7C FE 3B 78 */	mr r30, r7
/* 809BDE98  38 A0 00 00 */	li r5, 0
/* 809BDE9C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 809BDEA0  28 04 00 00 */	cmplwi r4, 0
/* 809BDEA4  41 82 00 44 */	beq lbl_809BDEE8
/* 809BDEA8  38 61 00 08 */	addi r3, r1, 8
/* 809BDEAC  7C 05 03 78 */	mr r5, r0
/* 809BDEB0  4B 8A 8C 84 */	b __mi__4cXyzCFRC3Vec
/* 809BDEB4  C0 21 00 08 */	lfs f1, 8(r1)
/* 809BDEB8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809BDEBC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809BDEC0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809BDEC4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 809BDEC8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809BDECC  4B 8A 97 A8 */	b cM_atan2s__Fff
/* 809BDED0  7C BC 18 50 */	subf r5, r28, r3
/* 809BDED4  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 809BDED8  7C 1C 00 50 */	subf r0, r28, r0
/* 809BDEDC  7C 00 07 34 */	extsh r0, r0
/* 809BDEE0  7C A0 28 50 */	subf r5, r0, r5
/* 809BDEE4  7C A5 F2 14 */	add r5, r5, r30
lbl_809BDEE8:
/* 809BDEE8  2C 1D 00 00 */	cmpwi r29, 0
/* 809BDEEC  41 82 00 0C */	beq lbl_809BDEF8
/* 809BDEF0  7C 05 00 D0 */	neg r0, r5
/* 809BDEF4  7C 05 07 34 */	extsh r5, r0
lbl_809BDEF8:
/* 809BDEF8  3C 60 80 9C */	lis r3, lit_4331@ha
/* 809BDEFC  C0 63 E5 4C */	lfs f3, lit_4331@l(r3)
/* 809BDF00  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809BDF04  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 809BDF08  3C 60 80 9C */	lis r3, lit_4727@ha
/* 809BDF0C  C8 43 E5 68 */	lfd f2, lit_4727@l(r3)
/* 809BDF10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809BDF14  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BDF18  3C 60 43 30 */	lis r3, 0x4330
/* 809BDF1C  90 61 00 20 */	stw r3, 0x20(r1)
/* 809BDF20  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809BDF24  EC 20 10 28 */	fsubs f1, f0, f2
/* 809BDF28  EC 03 20 28 */	fsubs f0, f3, f4
/* 809BDF2C  EC 21 00 32 */	fmuls f1, f1, f0
/* 809BDF30  7C A0 07 34 */	extsh r0, r5
/* 809BDF34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809BDF38  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809BDF3C  90 61 00 28 */	stw r3, 0x28(r1)
/* 809BDF40  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809BDF44  EC 00 10 28 */	fsubs f0, f0, f2
/* 809BDF48  EC 00 01 32 */	fmuls f0, f0, f4
/* 809BDF4C  EC 01 00 2A */	fadds f0, f1, f0
/* 809BDF50  FC 00 00 1E */	fctiwz f0, f0
/* 809BDF54  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809BDF58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BDF5C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 809BDF60  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809BDF64  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809BDF68  39 61 00 50 */	addi r11, r1, 0x50
/* 809BDF6C  4B 9A 42 B8 */	b _restgpr_28
/* 809BDF70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809BDF74  7C 08 03 A6 */	mtlr r0
/* 809BDF78  38 21 00 60 */	addi r1, r1, 0x60
/* 809BDF7C  4E 80 00 20 */	blr 
