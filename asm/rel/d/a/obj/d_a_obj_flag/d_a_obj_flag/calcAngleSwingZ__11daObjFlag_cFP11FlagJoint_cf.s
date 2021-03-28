lbl_80BEBC58:
/* 80BEBC58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEBC5C  3C A0 80 BF */	lis r5, M_attr__11daObjFlag_c@ha
/* 80BEBC60  38 E5 C4 EC */	addi r7, r5, M_attr__11daObjFlag_c@l
/* 80BEBC64  A8 07 00 0E */	lha r0, 0xe(r7)
/* 80BEBC68  3C A0 80 BF */	lis r5, lit_3764@ha
/* 80BEBC6C  C8 65 C5 3C */	lfd f3, lit_3764@l(r5)
/* 80BEBC70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBC74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BEBC78  3C C0 43 30 */	lis r6, 0x4330
/* 80BEBC7C  90 C1 00 08 */	stw r6, 8(r1)
/* 80BEBC80  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BEBC84  EC 40 18 28 */	fsubs f2, f0, f3
/* 80BEBC88  3C A0 80 BF */	lis r5, lit_3791@ha
/* 80BEBC8C  C0 05 C5 44 */	lfs f0, lit_3791@l(r5)
/* 80BEBC90  EC 42 00 24 */	fdivs f2, f2, f0
/* 80BEBC94  FC 00 10 50 */	fneg f0, f2
/* 80BEBC98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BEBC9C  EC 80 10 2A */	fadds f4, f0, f2
/* 80BEBCA0  A9 03 05 E8 */	lha r8, 0x5e8(r3)
/* 80BEBCA4  55 00 04 38 */	rlwinm r0, r8, 0, 0x10, 0x1c
/* 80BEBCA8  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80BEBCAC  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 80BEBCB0  7C 45 04 2E */	lfsx f2, r5, r0
/* 80BEBCB4  A8 07 00 1A */	lha r0, 0x1a(r7)
/* 80BEBCB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEBCC0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80BEBCC4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BEBCC8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BEBCCC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BEBCD0  A8 07 00 22 */	lha r0, 0x22(r7)
/* 80BEBCD4  7C 08 02 14 */	add r0, r8, r0
/* 80BEBCD8  B0 03 05 E8 */	sth r0, 0x5e8(r3)
/* 80BEBCDC  EC 84 00 2A */	fadds f4, f4, f0
/* 80BEBCE0  C0 07 00 2C */	lfs f0, 0x2c(r7)
/* 80BEBCE4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BEBCE8  40 81 00 08 */	ble lbl_80BEBCF0
/* 80BEBCEC  FC 80 00 90 */	fmr f4, f0
lbl_80BEBCF0:
/* 80BEBCF0  3C 60 80 BF */	lis r3, M_attr__11daObjFlag_c@ha
/* 80BEBCF4  38 63 C4 EC */	addi r3, r3, M_attr__11daObjFlag_c@l
/* 80BEBCF8  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80BEBCFC  28 00 00 00 */	cmplwi r0, 0
/* 80BEBD00  41 82 00 30 */	beq lbl_80BEBD30
/* 80BEBD04  A8 04 00 12 */	lha r0, 0x12(r4)
/* 80BEBD08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BEBD0C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BEBD10  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BEBD14  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BEBD18  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BEBD1C  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBD20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BEBD24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEBD28  B0 04 00 04 */	sth r0, 4(r4)
/* 80BEBD2C  48 00 00 50 */	b lbl_80BEBD7C
lbl_80BEBD30:
/* 80BEBD30  A8 04 00 12 */	lha r0, 0x12(r4)
/* 80BEBD34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BEBD38  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BEBD3C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BEBD40  7C 63 04 2E */	lfsx f3, r3, r0
/* 80BEBD44  A8 07 00 0E */	lha r0, 0xe(r7)
/* 80BEBD48  3C 60 80 BF */	lis r3, lit_3764@ha
/* 80BEBD4C  C8 43 C5 3C */	lfd f2, lit_3764@l(r3)
/* 80BEBD50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEBD58  3C 00 43 30 */	lis r0, 0x4330
/* 80BEBD5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BEBD60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BEBD64  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BEBD68  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BEBD6C  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBD70  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BEBD74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BEBD78  B0 04 00 04 */	sth r0, 4(r4)
lbl_80BEBD7C:
/* 80BEBD7C  A8 A4 00 12 */	lha r5, 0x12(r4)
/* 80BEBD80  3C 60 80 BF */	lis r3, M_attr__11daObjFlag_c@ha
/* 80BEBD84  38 63 C4 EC */	addi r3, r3, M_attr__11daObjFlag_c@l
/* 80BEBD88  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80BEBD8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BEBD90  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBD94  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BEBD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEBD9C  7C 05 02 14 */	add r0, r5, r0
/* 80BEBDA0  B0 04 00 12 */	sth r0, 0x12(r4)
/* 80BEBDA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEBDA8  4E 80 00 20 */	blr 
