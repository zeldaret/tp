lbl_802CDE9C:
/* 802CDE9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CDEA0  7C 08 02 A6 */	mflr r0
/* 802CDEA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CDEA8  39 61 00 30 */	addi r11, r1, 0x30
/* 802CDEAC  48 09 43 2D */	bl _savegpr_28
/* 802CDEB0  7C 7C 1B 78 */	mr r28, r3
/* 802CDEB4  7C 9F 23 78 */	mr r31, r4
/* 802CDEB8  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 802CDEBC  41 82 00 0C */	beq lbl_802CDEC8
/* 802CDEC0  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802CDEC4  40 82 00 14 */	bne lbl_802CDED8
lbl_802CDEC8:
/* 802CDEC8  C0 A2 C5 68 */	lfs f5, lit_293(r2)
/* 802CDECC  C0 62 C5 6C */	lfs f3, lit_294(r2)
/* 802CDED0  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 802CDED4  48 00 00 24 */	b lbl_802CDEF8
lbl_802CDED8:
/* 802CDED8  EC A4 00 F2 */	fmuls f5, f4, f3
/* 802CDEDC  EC 64 18 28 */	fsubs f3, f4, f3
/* 802CDEE0  EC 42 08 28 */	fsubs f2, f2, f1
/* 802CDEE4  EC 03 00 B2 */	fmuls f0, f3, f2
/* 802CDEE8  EC A5 00 24 */	fdivs f5, f5, f0
/* 802CDEEC  EC 64 18 24 */	fdivs f3, f4, f3
/* 802CDEF0  EC 01 10 24 */	fdivs f0, f1, f2
/* 802CDEF4  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_802CDEF8:
/* 802CDEF8  3B C0 00 01 */	li r30, 1
/* 802CDEFC  C0 22 C5 6C */	lfs f1, lit_294(r2)
/* 802CDF00  C8 02 C5 70 */	lfd f0, lit_295(r2)
/* 802CDF04  48 00 00 0C */	b lbl_802CDF10
lbl_802CDF08:
/* 802CDF08  EC 63 00 72 */	fmuls f3, f3, f1
/* 802CDF0C  3B DE 00 01 */	addi r30, r30, 1
lbl_802CDF10:
/* 802CDF10  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802CDF14  41 81 FF F4 */	bgt lbl_802CDF08
/* 802CDF18  C8 02 C5 80 */	lfd f0, lit_297(r2)
/* 802CDF1C  C0 42 C5 78 */	lfs f2, lit_296(r2)
/* 802CDF20  C0 22 C5 68 */	lfs f1, lit_293(r2)
/* 802CDF24  48 00 00 0C */	b lbl_802CDF30
lbl_802CDF28:
/* 802CDF28  EC 63 00 B2 */	fmuls f3, f3, f2
/* 802CDF2C  3B DE FF FF */	addi r30, r30, -1
lbl_802CDF30:
/* 802CDF30  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802CDF34  40 81 00 0C */	ble lbl_802CDF40
/* 802CDF38  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802CDF3C  41 80 FF EC */	blt lbl_802CDF28
lbl_802CDF40:
/* 802CDF40  38 00 00 01 */	li r0, 1
/* 802CDF44  7C 00 F0 30 */	slw r0, r0, r30
/* 802CDF48  C8 22 C5 90 */	lfd f1, lit_301(r2)
/* 802CDF4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802CDF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CDF54  3C 00 43 30 */	lis r0, 0x4330
/* 802CDF58  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CDF5C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802CDF60  EC 00 08 28 */	fsubs f0, f0, f1
/* 802CDF64  EC 05 00 24 */	fdivs f0, f5, f0
/* 802CDF68  D0 01 00 08 */	stfs f0, 8(r1)
/* 802CDF6C  80 01 00 08 */	lwz r0, 8(r1)
/* 802CDF70  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 802CDF74  38 80 00 61 */	li r4, 0x61
/* 802CDF78  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802CDF7C  98 83 80 00 */	stb r4, 0x8000(r3)  /* 0xCC008000@l */
/* 802CDF80  54 00 A3 3E */	srwi r0, r0, 0xc
/* 802CDF84  64 00 EE 00 */	oris r0, r0, 0xee00
/* 802CDF88  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802CDF8C  98 83 80 00 */	stb r4, -0x8000(r3)
/* 802CDF90  C0 02 C5 88 */	lfs f0, lit_298(r2)
/* 802CDF94  EC 20 00 F2 */	fmuls f1, f0, f3
/* 802CDF98  48 09 41 15 */	bl __cvt_fp2unsigned
/* 802CDF9C  64 60 EF 00 */	oris r0, r3, 0xef00
/* 802CDFA0  3C C0 CC 01 */	lis r6, 0xCC01 /* 0xCC008000@ha */
/* 802CDFA4  90 06 80 00 */	stw r0, 0x8000(r6)  /* 0xCC008000@l */
/* 802CDFA8  38 A0 00 61 */	li r5, 0x61
/* 802CDFAC  98 A6 80 00 */	stb r5, -0x8000(r6)
/* 802CDFB0  67 C0 F0 00 */	oris r0, r30, 0xf000
/* 802CDFB4  90 06 80 00 */	stw r0, -0x8000(r6)
/* 802CDFB8  98 A6 80 00 */	stb r5, -0x8000(r6)
/* 802CDFBC  57 80 A8 14 */	slwi r0, r28, 0x15
/* 802CDFC0  53 A0 A3 3E */	rlwimi r0, r29, 0x14, 0xc, 0x1f
/* 802CDFC4  64 00 F1 00 */	oris r0, r0, 0xf100
/* 802CDFC8  90 06 80 00 */	stw r0, -0x8000(r6)
/* 802CDFCC  88 9F 00 00 */	lbz r4, 0(r31)
/* 802CDFD0  88 7F 00 02 */	lbz r3, 2(r31)
/* 802CDFD4  88 1F 00 01 */	lbz r0, 1(r31)
/* 802CDFD8  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 802CDFDC  50 83 82 1E */	rlwimi r3, r4, 0x10, 8, 0xf
/* 802CDFE0  64 60 F2 00 */	oris r0, r3, 0xf200
/* 802CDFE4  98 A6 80 00 */	stb r5, -0x8000(r6)
/* 802CDFE8  90 06 80 00 */	stw r0, -0x8000(r6)
/* 802CDFEC  39 61 00 30 */	addi r11, r1, 0x30
/* 802CDFF0  48 09 42 35 */	bl _restgpr_28
/* 802CDFF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CDFF8  7C 08 03 A6 */	mtlr r0
/* 802CDFFC  38 21 00 30 */	addi r1, r1, 0x30
/* 802CE000  4E 80 00 20 */	blr 
