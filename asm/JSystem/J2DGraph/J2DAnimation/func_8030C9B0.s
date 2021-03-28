lbl_8030C9B0:
/* 8030C9B0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8030C9B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8030C9B8  40 80 00 0C */	bge lbl_8030C9C4
/* 8030C9BC  C0 24 00 04 */	lfs f1, 4(r4)
/* 8030C9C0  4E 80 00 20 */	blr 
lbl_8030C9C4:
/* 8030C9C4  A0 03 00 04 */	lhz r0, 4(r3)
/* 8030C9C8  28 00 00 00 */	cmplwi r0, 0
/* 8030C9CC  40 82 00 B4 */	bne lbl_8030CA80
/* 8030C9D0  A0 63 00 00 */	lhz r3, 0(r3)
/* 8030C9D4  38 03 FF FF */	addi r0, r3, -1
/* 8030C9D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8030C9DC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8030C9E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030C9E4  4C 40 13 82 */	cror 2, 0, 2
/* 8030C9E8  40 82 00 40 */	bne lbl_8030CA28
/* 8030C9EC  7C 64 02 14 */	add r3, r4, r0
/* 8030C9F0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8030C9F4  4E 80 00 20 */	blr 
/* 8030C9F8  48 00 00 30 */	b lbl_8030CA28
lbl_8030C9FC:
/* 8030C9FC  54 65 F8 7E */	srwi r5, r3, 1
/* 8030CA00  1C 05 00 03 */	mulli r0, r5, 3
/* 8030CA04  54 00 10 3A */	slwi r0, r0, 2
/* 8030CA08  7C 04 04 2E */	lfsx f0, r4, r0
/* 8030CA0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8030CA10  4C 41 13 82 */	cror 2, 1, 2
/* 8030CA14  40 82 00 10 */	bne lbl_8030CA24
/* 8030CA18  7C 84 02 14 */	add r4, r4, r0
/* 8030CA1C  7C 65 18 50 */	subf r3, r5, r3
/* 8030CA20  48 00 00 08 */	b lbl_8030CA28
lbl_8030CA24:
/* 8030CA24  7C A3 2B 78 */	mr r3, r5
lbl_8030CA28:
/* 8030CA28  28 03 00 01 */	cmplwi r3, 1
/* 8030CA2C  41 81 FF D0 */	bgt lbl_8030C9FC
/* 8030CA30  C1 24 00 14 */	lfs f9, 0x14(r4)
/* 8030CA34  C1 04 00 10 */	lfs f8, 0x10(r4)
/* 8030CA38  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8030CA3C  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8030CA40  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8030CA44  C0 04 00 00 */	lfs f0, 0(r4)
/* 8030CA48  EC A1 00 28 */	fsubs f5, f1, f0
/* 8030CA4C  EC 82 00 28 */	fsubs f4, f2, f0
/* 8030CA50  EC 65 20 24 */	fdivs f3, f5, f4
/* 8030CA54  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8030CA58  EC 23 18 2A */	fadds f1, f3, f3
/* 8030CA5C  EC 40 18 28 */	fsubs f2, f0, f3
/* 8030CA60  EC 86 40 28 */	fsubs f4, f6, f8
/* 8030CA64  EC 01 00 B8 */	fmsubs f0, f1, f2, f0
/* 8030CA68  EC 27 38 BA */	fmadds f1, f7, f2, f7
/* 8030CA6C  EC 00 31 3A */	fmadds f0, f0, f4, f6
/* 8030CA70  EC 29 08 BA */	fmadds f1, f9, f2, f1
/* 8030CA74  EC 23 09 F8 */	fmsubs f1, f3, f7, f1
/* 8030CA78  EC 25 00 7C */	fnmsubs f1, f5, f1, f0
/* 8030CA7C  4E 80 00 20 */	blr 
lbl_8030CA80:
/* 8030CA80  A0 63 00 00 */	lhz r3, 0(r3)
/* 8030CA84  38 03 FF FF */	addi r0, r3, -1
/* 8030CA88  54 00 20 36 */	slwi r0, r0, 4
/* 8030CA8C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8030CA90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030CA94  4C 40 13 82 */	cror 2, 0, 2
/* 8030CA98  40 82 00 3C */	bne lbl_8030CAD4
/* 8030CA9C  7C 64 02 14 */	add r3, r4, r0
/* 8030CAA0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8030CAA4  4E 80 00 20 */	blr 
/* 8030CAA8  48 00 00 2C */	b lbl_8030CAD4
lbl_8030CAAC:
/* 8030CAAC  54 65 F8 7E */	srwi r5, r3, 1
/* 8030CAB0  54 60 18 36 */	rlwinm r0, r3, 3, 0, 0x1b
/* 8030CAB4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8030CAB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8030CABC  4C 41 13 82 */	cror 2, 1, 2
/* 8030CAC0  40 82 00 10 */	bne lbl_8030CAD0
/* 8030CAC4  7C 84 02 14 */	add r4, r4, r0
/* 8030CAC8  7C 65 18 50 */	subf r3, r5, r3
/* 8030CACC  48 00 00 08 */	b lbl_8030CAD4
lbl_8030CAD0:
/* 8030CAD0  7C A3 2B 78 */	mr r3, r5
lbl_8030CAD4:
/* 8030CAD4  28 03 00 01 */	cmplwi r3, 1
/* 8030CAD8  41 81 FF D4 */	bgt lbl_8030CAAC
/* 8030CADC  C1 24 00 18 */	lfs f9, 0x18(r4)
/* 8030CAE0  C1 04 00 14 */	lfs f8, 0x14(r4)
/* 8030CAE4  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8030CAE8  C0 E4 00 0C */	lfs f7, 0xc(r4)
/* 8030CAEC  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8030CAF0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8030CAF4  EC A1 00 28 */	fsubs f5, f1, f0
/* 8030CAF8  EC 82 00 28 */	fsubs f4, f2, f0
/* 8030CAFC  EC 65 20 24 */	fdivs f3, f5, f4
/* 8030CB00  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8030CB04  EC 23 18 2A */	fadds f1, f3, f3
/* 8030CB08  EC 40 18 28 */	fsubs f2, f0, f3
/* 8030CB0C  EC 86 40 28 */	fsubs f4, f6, f8
/* 8030CB10  EC 01 00 B8 */	fmsubs f0, f1, f2, f0
/* 8030CB14  EC 27 38 BA */	fmadds f1, f7, f2, f7
/* 8030CB18  EC 00 31 3A */	fmadds f0, f0, f4, f6
/* 8030CB1C  EC 29 08 BA */	fmadds f1, f9, f2, f1
/* 8030CB20  EC 23 09 F8 */	fmsubs f1, f3, f7, f1
/* 8030CB24  EC 25 00 7C */	fnmsubs f1, f5, f1, f0
/* 8030CB28  4E 80 00 20 */	blr 
