lbl_809D98F4:
/* 809D98F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809D98F8  7C 08 02 A6 */	mflr r0
/* 809D98FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 809D9900  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809D9904  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809D9908  39 61 00 50 */	addi r11, r1, 0x50
/* 809D990C  4B 98 88 CD */	bl _savegpr_28
/* 809D9910  7C 7F 1B 78 */	mr r31, r3
/* 809D9914  7C 80 23 78 */	mr r0, r4
/* 809D9918  7C BC 2B 78 */	mr r28, r5
/* 809D991C  7C DD 33 78 */	mr r29, r6
/* 809D9920  FF E0 08 90 */	fmr f31, f1
/* 809D9924  7C FE 3B 78 */	mr r30, r7
/* 809D9928  38 A0 00 00 */	li r5, 0
/* 809D992C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 809D9930  28 04 00 00 */	cmplwi r4, 0
/* 809D9934  41 82 00 44 */	beq lbl_809D9978
/* 809D9938  38 61 00 08 */	addi r3, r1, 8
/* 809D993C  7C 05 03 78 */	mr r5, r0
/* 809D9940  4B 88 D1 F5 */	bl __mi__4cXyzCFRC3Vec
/* 809D9944  C0 21 00 08 */	lfs f1, 8(r1)
/* 809D9948  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809D994C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809D9950  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809D9954  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 809D9958  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809D995C  4B 88 DD 19 */	bl cM_atan2s__Fff
/* 809D9960  7C BC 18 50 */	subf r5, r28, r3
/* 809D9964  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 809D9968  7C 1C 00 50 */	subf r0, r28, r0
/* 809D996C  7C 00 07 34 */	extsh r0, r0
/* 809D9970  7C A0 28 50 */	subf r5, r0, r5
/* 809D9974  7C A5 F2 14 */	add r5, r5, r30
lbl_809D9978:
/* 809D9978  2C 1D 00 00 */	cmpwi r29, 0
/* 809D997C  41 82 00 0C */	beq lbl_809D9988
/* 809D9980  7C 05 00 D0 */	neg r0, r5
/* 809D9984  7C 05 07 34 */	extsh r5, r0
lbl_809D9988:
/* 809D9988  3C 60 80 9E */	lis r3, lit_4384@ha /* 0x809D9E2C@ha */
/* 809D998C  C0 63 9E 2C */	lfs f3, lit_4384@l(r3)  /* 0x809D9E2C@l */
/* 809D9990  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809D9994  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 809D9998  3C 60 80 9E */	lis r3, lit_4738@ha /* 0x809D9E48@ha */
/* 809D999C  C8 43 9E 48 */	lfd f2, lit_4738@l(r3)  /* 0x809D9E48@l */
/* 809D99A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D99A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D99A8  3C 60 43 30 */	lis r3, 0x4330
/* 809D99AC  90 61 00 20 */	stw r3, 0x20(r1)
/* 809D99B0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809D99B4  EC 20 10 28 */	fsubs f1, f0, f2
/* 809D99B8  EC 03 20 28 */	fsubs f0, f3, f4
/* 809D99BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 809D99C0  7C A0 07 34 */	extsh r0, r5
/* 809D99C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D99C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809D99CC  90 61 00 28 */	stw r3, 0x28(r1)
/* 809D99D0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809D99D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 809D99D8  EC 00 01 32 */	fmuls f0, f0, f4
/* 809D99DC  EC 01 00 2A */	fadds f0, f1, f0
/* 809D99E0  FC 00 00 1E */	fctiwz f0, f0
/* 809D99E4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809D99E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D99EC  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 809D99F0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809D99F4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809D99F8  39 61 00 50 */	addi r11, r1, 0x50
/* 809D99FC  4B 98 88 29 */	bl _restgpr_28
/* 809D9A00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809D9A04  7C 08 03 A6 */	mtlr r0
/* 809D9A08  38 21 00 60 */	addi r1, r1, 0x60
/* 809D9A0C  4E 80 00 20 */	blr 
