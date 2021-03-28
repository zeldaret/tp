lbl_801C452C:
/* 801C452C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C4530  A8 A3 0C 72 */	lha r5, 0xc72(r3)
/* 801C4534  38 05 00 01 */	addi r0, r5, 1
/* 801C4538  B0 03 0C 72 */	sth r0, 0xc72(r3)
/* 801C453C  A8 A3 0C 72 */	lha r5, 0xc72(r3)
/* 801C4540  7C 80 07 34 */	extsh r0, r4
/* 801C4544  7C 05 00 00 */	cmpw r5, r0
/* 801C4548  41 80 00 14 */	blt lbl_801C455C
/* 801C454C  38 04 00 0F */	addi r0, r4, 0xf
/* 801C4550  7C 00 07 34 */	extsh r0, r0
/* 801C4554  7C 00 28 50 */	subf r0, r0, r5
/* 801C4558  B0 03 0C 72 */	sth r0, 0xc72(r3)
lbl_801C455C:
/* 801C455C  A8 A3 0C 72 */	lha r5, 0xc72(r3)
/* 801C4560  7C A0 07 35 */	extsh. r0, r5
/* 801C4564  40 80 00 10 */	bge lbl_801C4574
/* 801C4568  C0 02 A6 DC */	lfs f0, lit_3882(r2)
/* 801C456C  D0 03 0C 78 */	stfs f0, 0xc78(r3)
/* 801C4570  48 00 00 88 */	b lbl_801C45F8
lbl_801C4574:
/* 801C4574  C8 62 A6 F8 */	lfd f3, lit_4119(r2)
/* 801C4578  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 801C457C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801C4580  3C A0 43 30 */	lis r5, 0x4330
/* 801C4584  90 A1 00 08 */	stw r5, 8(r1)
/* 801C4588  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C458C  EC 40 18 28 */	fsubs f2, f0, f3
/* 801C4590  7C 80 07 34 */	extsh r0, r4
/* 801C4594  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C4598  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C459C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801C45A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C45A4  EC 20 18 28 */	fsubs f1, f0, f3
/* 801C45A8  C0 02 A6 E8 */	lfs f0, lit_4012(r2)
/* 801C45AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C45B0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801C45B4  4C 40 13 82 */	cror 2, 0, 2
/* 801C45B8  40 82 00 24 */	bne lbl_801C45DC
/* 801C45BC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801C45C0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801C45C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C45C8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801C45CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C45D0  EC 00 08 24 */	fdivs f0, f0, f1
/* 801C45D4  D0 03 0C 78 */	stfs f0, 0xc78(r3)
/* 801C45D8  48 00 00 20 */	b lbl_801C45F8
lbl_801C45DC:
/* 801C45DC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801C45E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801C45E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C45E8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801C45EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C45F0  EC 00 08 24 */	fdivs f0, f0, f1
/* 801C45F4  D0 03 0C 78 */	stfs f0, 0xc78(r3)
lbl_801C45F8:
/* 801C45F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801C45FC  4E 80 00 20 */	blr 
