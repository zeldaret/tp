lbl_80AA43B0:
/* 80AA43B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AA43B4  7C 08 02 A6 */	mflr r0
/* 80AA43B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AA43BC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80AA43C0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80AA43C4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80AA43C8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80AA43CC  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 80AA43D0  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 80AA43D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA43D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA43DC  FF A0 10 90 */	fmr f29, f2
/* 80AA43E0  7C 9E 23 78 */	mr r30, r4
/* 80AA43E4  C0 43 0B 10 */	lfs f2, 0xb10(r3)
/* 80AA43E8  EC 1D 00 B2 */	fmuls f0, f29, f2
/* 80AA43EC  EF E2 00 32 */	fmuls f31, f2, f0
/* 80AA43F0  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80AA43F4  EF C2 00 32 */	fmuls f30, f2, f0
/* 80AA43F8  2C 05 00 00 */	cmpwi r5, 0
/* 80AA43FC  41 82 00 5C */	beq lbl_80AA4458
/* 80AA4400  80 03 06 64 */	lwz r0, 0x664(r3)
/* 80AA4404  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80AA4408  41 82 00 50 */	beq lbl_80AA4458
/* 80AA440C  A8 83 08 4C */	lha r4, 0x84c(r3)
/* 80AA4410  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80AA4414  3C 63 00 01 */	addis r3, r3, 1
/* 80AA4418  38 03 80 00 */	addi r0, r3, -32768
/* 80AA441C  7C 04 00 50 */	subf r0, r4, r0
/* 80AA4420  7C 1F 07 34 */	extsh r31, r0
/* 80AA4424  7F E3 FB 78 */	mr r3, r31
/* 80AA4428  4B 8C 0C A8 */	b abs
/* 80AA442C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80AA4430  40 80 00 28 */	bge lbl_80AA4458
/* 80AA4434  3C 60 80 AA */	lis r3, lit_4189@ha
/* 80AA4438  C0 23 69 98 */	lfs f1, lit_4189@l(r3)
/* 80AA443C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80AA4440  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80AA4444  57 E0 04 38 */	rlwinm r0, r31, 0, 0x10, 0x1c
/* 80AA4448  7C 63 02 14 */	add r3, r3, r0
/* 80AA444C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AA4450  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AA4454  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80AA4458:
/* 80AA4458  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 80AA445C  40 80 00 08 */	bge lbl_80AA4464
/* 80AA4460  FF E0 E8 90 */	fmr f31, f29
lbl_80AA4464:
/* 80AA4464  7F C3 F3 78 */	mr r3, r30
/* 80AA4468  FC 20 F8 90 */	fmr f1, f31
/* 80AA446C  FC 40 F0 90 */	fmr f2, f30
/* 80AA4470  4B 7C C2 D0 */	b cLib_chaseF__FPfff
/* 80AA4474  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80AA4478  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80AA447C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80AA4480  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80AA4484  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 80AA4488  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 80AA448C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA4490  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA4494  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AA4498  7C 08 03 A6 */	mtlr r0
/* 80AA449C  38 21 00 40 */	addi r1, r1, 0x40
/* 80AA44A0  4E 80 00 20 */	blr 
