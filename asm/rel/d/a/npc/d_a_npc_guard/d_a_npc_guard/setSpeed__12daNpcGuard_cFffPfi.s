lbl_809F0DE0:
/* 809F0DE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F0DE4  7C 08 02 A6 */	mflr r0
/* 809F0DE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F0DEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 809F0DF0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 809F0DF4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 809F0DF8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 809F0DFC  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 809F0E00  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 809F0E04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F0E08  93 C1 00 08 */	stw r30, 8(r1)
/* 809F0E0C  FF A0 10 90 */	fmr f29, f2
/* 809F0E10  7C 9E 23 78 */	mr r30, r4
/* 809F0E14  C0 43 0D 8C */	lfs f2, 0xd8c(r3)
/* 809F0E18  EC 1D 00 B2 */	fmuls f0, f29, f2
/* 809F0E1C  EF E2 00 32 */	fmuls f31, f2, f0
/* 809F0E20  EC 01 00 B2 */	fmuls f0, f1, f2
/* 809F0E24  EF C2 00 32 */	fmuls f30, f2, f0
/* 809F0E28  2C 05 00 00 */	cmpwi r5, 0
/* 809F0E2C  41 82 00 5C */	beq lbl_809F0E88
/* 809F0E30  80 03 06 64 */	lwz r0, 0x664(r3)
/* 809F0E34  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809F0E38  41 82 00 50 */	beq lbl_809F0E88
/* 809F0E3C  A8 83 08 4C */	lha r4, 0x84c(r3)
/* 809F0E40  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 809F0E44  3C 63 00 01 */	addis r3, r3, 1
/* 809F0E48  38 03 80 00 */	addi r0, r3, -32768
/* 809F0E4C  7C 04 00 50 */	subf r0, r4, r0
/* 809F0E50  7C 1F 07 34 */	extsh r31, r0
/* 809F0E54  7F E3 FB 78 */	mr r3, r31
/* 809F0E58  4B 97 42 78 */	b abs
/* 809F0E5C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809F0E60  40 80 00 28 */	bge lbl_809F0E88
/* 809F0E64  3C 60 80 9F */	lis r3, lit_3900@ha
/* 809F0E68  C0 23 2C 50 */	lfs f1, lit_3900@l(r3)
/* 809F0E6C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809F0E70  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 809F0E74  57 E0 04 38 */	rlwinm r0, r31, 0, 0x10, 0x1c
/* 809F0E78  7C 63 02 14 */	add r3, r3, r0
/* 809F0E7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 809F0E80  EC 01 00 28 */	fsubs f0, f1, f0
/* 809F0E84  EF FF 00 32 */	fmuls f31, f31, f0
lbl_809F0E88:
/* 809F0E88  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 809F0E8C  40 80 00 08 */	bge lbl_809F0E94
/* 809F0E90  FF E0 E8 90 */	fmr f31, f29
lbl_809F0E94:
/* 809F0E94  7F C3 F3 78 */	mr r3, r30
/* 809F0E98  FC 20 F8 90 */	fmr f1, f31
/* 809F0E9C  FC 40 F0 90 */	fmr f2, f30
/* 809F0EA0  4B 87 F8 A0 */	b cLib_chaseF__FPfff
/* 809F0EA4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 809F0EA8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 809F0EAC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 809F0EB0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 809F0EB4  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 809F0EB8  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 809F0EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F0EC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F0EC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F0EC8  7C 08 03 A6 */	mtlr r0
/* 809F0ECC  38 21 00 40 */	addi r1, r1, 0x40
/* 809F0ED0  4E 80 00 20 */	blr 
