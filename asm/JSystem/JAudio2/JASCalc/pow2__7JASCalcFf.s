lbl_8028F578:
/* 8028F578  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028F57C  38 80 00 00 */	li r4, 0
/* 8028F580  C0 02 BB 68 */	lfs f0, lit_969(r2)
/* 8028F584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8028F588  4C 41 13 82 */	cror 2, 1, 2
/* 8028F58C  40 82 00 1C */	bne lbl_8028F5A8
/* 8028F590  C0 02 BB 58 */	lfs f0, lit_847(r2)
/* 8028F594  EC 01 00 28 */	fsubs f0, f1, f0
/* 8028F598  FC 00 00 1E */	fctiwz f0, f0
/* 8028F59C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8028F5A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8028F5A4  48 00 00 18 */	b lbl_8028F5BC
lbl_8028F5A8:
/* 8028F5A8  C0 02 BB 58 */	lfs f0, lit_847(r2)
/* 8028F5AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8028F5B0  FC 00 00 1E */	fctiwz f0, f0
/* 8028F5B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8028F5B8  80 61 00 1C */	lwz r3, 0x1c(r1)
lbl_8028F5BC:
/* 8028F5BC  90 61 00 08 */	stw r3, 8(r1)
/* 8028F5C0  C8 42 BB 60 */	lfd f2, lit_850(r2)
/* 8028F5C4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8028F5C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028F5CC  3C 00 43 30 */	lis r0, 0x4330
/* 8028F5D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8028F5D4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8028F5D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8028F5DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8028F5E0  2C 03 00 80 */	cmpwi r3, 0x80
/* 8028F5E4  40 81 00 10 */	ble lbl_8028F5F4
/* 8028F5E8  3C 60 80 45 */	lis r3, __float_huge@ha /* 0x80450AE4@ha */
/* 8028F5EC  C0 23 0A E4 */	lfs f1, __float_huge@l(r3)  /* 0x80450AE4@l */
/* 8028F5F0  48 00 00 A4 */	b lbl_8028F694
lbl_8028F5F4:
/* 8028F5F4  38 03 00 7F */	addi r0, r3, 0x7f
/* 8028F5F8  90 01 00 08 */	stw r0, 8(r1)
/* 8028F5FC  54 00 B8 10 */	slwi r0, r0, 0x17
/* 8028F600  90 01 00 08 */	stw r0, 8(r1)
/* 8028F604  C0 02 BB 68 */	lfs f0, lit_969(r2)
/* 8028F608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8028F60C  40 80 00 08 */	bge lbl_8028F614
/* 8028F610  38 80 00 01 */	li r4, 1
lbl_8028F614:
/* 8028F614  54 80 10 3A */	slwi r0, r4, 2
/* 8028F618  38 62 BB 6C */	la r3, scale_frac(r2) /* 8045556C-_SDA2_BASE_ */
/* 8028F61C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8028F620  EC C1 00 2A */	fadds f6, f1, f0
/* 8028F624  3C 60 80 3A */	lis r3, __two_to_x@ha /* 0x8039AFB8@ha */
/* 8028F628  C4 A3 AF B8 */	lfsu f5, __two_to_x@l(r3)  /* 0x8039AFB8@l */
/* 8028F62C  C0 83 00 04 */	lfs f4, 4(r3)
/* 8028F630  C0 63 00 08 */	lfs f3, 8(r3)
/* 8028F634  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8028F638  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8028F63C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8028F640  EC 06 00 32 */	fmuls f0, f6, f0
/* 8028F644  EC 01 00 2A */	fadds f0, f1, f0
/* 8028F648  EC 06 00 32 */	fmuls f0, f6, f0
/* 8028F64C  EC 02 00 2A */	fadds f0, f2, f0
/* 8028F650  EC 06 00 32 */	fmuls f0, f6, f0
/* 8028F654  EC 03 00 2A */	fadds f0, f3, f0
/* 8028F658  EC 06 00 32 */	fmuls f0, f6, f0
/* 8028F65C  EC 04 00 2A */	fadds f0, f4, f0
/* 8028F660  EC 06 00 32 */	fmuls f0, f6, f0
/* 8028F664  EC 05 00 2A */	fadds f0, f5, f0
/* 8028F668  EC C6 00 32 */	fmuls f6, f6, f0
/* 8028F66C  C0 41 00 08 */	lfs f2, 8(r1)
/* 8028F670  38 62 BB 74 */	la r3, two_to_frac(r2) /* 80455574-_SDA2_BASE_ */
/* 8028F674  7C 63 04 2E */	lfsx f3, r3, r0
/* 8028F678  C0 02 BB 7C */	lfs f0, lit_994(r2)
/* 8028F67C  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8028F680  C0 02 BB 80 */	lfs f0, lit_995(r2)
/* 8028F684  EC 00 30 2A */	fadds f0, f0, f6
/* 8028F688  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8028F68C  EC 01 00 2A */	fadds f0, f1, f0
/* 8028F690  EC 22 00 32 */	fmuls f1, f2, f0
lbl_8028F694:
/* 8028F694  38 21 00 30 */	addi r1, r1, 0x30
/* 8028F698  4E 80 00 20 */	blr 
