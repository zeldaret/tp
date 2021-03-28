lbl_80BBDC28:
/* 80BBDC28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BBDC2C  7C 08 02 A6 */	mflr r0
/* 80BBDC30  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BBDC34  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BBDC38  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BBDC3C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80BBDC40  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80BBDC44  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 80BBDC48  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 80BBDC4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBDC50  7C 9F 23 78 */	mr r31, r4
/* 80BBDC54  C0 24 00 B0 */	lfs f1, 0xb0(r4)
/* 80BBDC58  C0 04 07 BC */	lfs f0, 0x7bc(r4)
/* 80BBDC5C  EF E1 00 28 */	fsubs f31, f1, f0
/* 80BBDC60  C0 24 00 B4 */	lfs f1, 0xb4(r4)
/* 80BBDC64  C0 04 07 C0 */	lfs f0, 0x7c0(r4)
/* 80BBDC68  EF C1 00 28 */	fsubs f30, f1, f0
/* 80BBDC6C  C0 24 00 B8 */	lfs f1, 0xb8(r4)
/* 80BBDC70  C0 04 07 C4 */	lfs f0, 0x7c4(r4)
/* 80BBDC74  EF A1 00 28 */	fsubs f29, f1, f0
/* 80BBDC78  FC 20 F8 90 */	fmr f1, f31
/* 80BBDC7C  FC 40 E8 90 */	fmr f2, f29
/* 80BBDC80  4B 6A 99 F4 */	b cM_atan2s__Fff
/* 80BBDC84  B0 7F 00 D6 */	sth r3, 0xd6(r31)
/* 80BBDC88  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80BBDC8C  EC 1D 07 72 */	fmuls f0, f29, f29
/* 80BBDC90  EC 41 00 2A */	fadds f2, f1, f0
/* 80BBDC94  3C 60 80 BC */	lis r3, lit_3896@ha
/* 80BBDC98  C0 03 21 48 */	lfs f0, lit_3896@l(r3)
/* 80BBDC9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BBDCA0  40 81 00 0C */	ble lbl_80BBDCAC
/* 80BBDCA4  FC 00 10 34 */	frsqrte f0, f2
/* 80BBDCA8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BBDCAC:
/* 80BBDCAC  FC 20 F0 90 */	fmr f1, f30
/* 80BBDCB0  4B 6A 99 C4 */	b cM_atan2s__Fff
/* 80BBDCB4  7C 03 00 D0 */	neg r0, r3
/* 80BBDCB8  B0 1F 00 D4 */	sth r0, 0xd4(r31)
/* 80BBDCBC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BBDCC0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BBDCC4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80BBDCC8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80BBDCCC  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 80BBDCD0  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 80BBDCD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBDCD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BBDCDC  7C 08 03 A6 */	mtlr r0
/* 80BBDCE0  38 21 00 40 */	addi r1, r1, 0x40
/* 80BBDCE4  4E 80 00 20 */	blr 
