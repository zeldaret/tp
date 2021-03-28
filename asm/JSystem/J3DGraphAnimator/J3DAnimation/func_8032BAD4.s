lbl_8032BAD4:
/* 8032BAD4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8032BAD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032BADC  40 80 00 0C */	bge lbl_8032BAE8
/* 8032BAE0  C0 24 00 04 */	lfs f1, 4(r4)
/* 8032BAE4  4E 80 00 20 */	blr 
lbl_8032BAE8:
/* 8032BAE8  A0 03 00 04 */	lhz r0, 4(r3)
/* 8032BAEC  28 00 00 00 */	cmplwi r0, 0
/* 8032BAF0  40 82 00 B4 */	bne lbl_8032BBA4
/* 8032BAF4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8032BAF8  38 03 FF FF */	addi r0, r3, -1
/* 8032BAFC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8032BB00  7C 04 04 2E */	lfsx f0, r4, r0
/* 8032BB04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8032BB08  4C 40 13 82 */	cror 2, 0, 2
/* 8032BB0C  40 82 00 40 */	bne lbl_8032BB4C
/* 8032BB10  7C 64 02 14 */	add r3, r4, r0
/* 8032BB14  C0 23 00 04 */	lfs f1, 4(r3)
/* 8032BB18  4E 80 00 20 */	blr 
/* 8032BB1C  48 00 00 30 */	b lbl_8032BB4C
lbl_8032BB20:
/* 8032BB20  54 65 F8 7E */	srwi r5, r3, 1
/* 8032BB24  1C 05 00 03 */	mulli r0, r5, 3
/* 8032BB28  54 00 10 3A */	slwi r0, r0, 2
/* 8032BB2C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8032BB30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032BB34  4C 41 13 82 */	cror 2, 1, 2
/* 8032BB38  40 82 00 10 */	bne lbl_8032BB48
/* 8032BB3C  7C 84 02 14 */	add r4, r4, r0
/* 8032BB40  7C 65 18 50 */	subf r3, r5, r3
/* 8032BB44  48 00 00 08 */	b lbl_8032BB4C
lbl_8032BB48:
/* 8032BB48  7C A3 2B 78 */	mr r3, r5
lbl_8032BB4C:
/* 8032BB4C  28 03 00 01 */	cmplwi r3, 1
/* 8032BB50  41 81 FF D0 */	bgt lbl_8032BB20
/* 8032BB54  C1 24 00 14 */	lfs f9, 0x14(r4)
/* 8032BB58  C1 04 00 10 */	lfs f8, 0x10(r4)
/* 8032BB5C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8032BB60  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8032BB64  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8032BB68  C0 04 00 00 */	lfs f0, 0(r4)
/* 8032BB6C  EC A1 00 28 */	fsubs f5, f1, f0
/* 8032BB70  EC 82 00 28 */	fsubs f4, f2, f0
/* 8032BB74  EC 65 20 24 */	fdivs f3, f5, f4
/* 8032BB78  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8032BB7C  EC 23 18 2A */	fadds f1, f3, f3
/* 8032BB80  EC 40 18 28 */	fsubs f2, f0, f3
/* 8032BB84  EC 86 40 28 */	fsubs f4, f6, f8
/* 8032BB88  EC 01 00 B8 */	fmsubs f0, f1, f2, f0
/* 8032BB8C  EC 27 38 BA */	fmadds f1, f7, f2, f7
/* 8032BB90  EC 00 31 3A */	fmadds f0, f0, f4, f6
/* 8032BB94  EC 29 08 BA */	fmadds f1, f9, f2, f1
/* 8032BB98  EC 23 09 F8 */	fmsubs f1, f3, f7, f1
/* 8032BB9C  EC 25 00 7C */	fnmsubs f1, f5, f1, f0
/* 8032BBA0  4E 80 00 20 */	blr 
lbl_8032BBA4:
/* 8032BBA4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8032BBA8  38 03 FF FF */	addi r0, r3, -1
/* 8032BBAC  54 00 20 36 */	slwi r0, r0, 4
/* 8032BBB0  7C 04 04 2E */	lfsx f0, r4, r0
/* 8032BBB4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8032BBB8  4C 40 13 82 */	cror 2, 0, 2
/* 8032BBBC  40 82 00 3C */	bne lbl_8032BBF8
/* 8032BBC0  7C 64 02 14 */	add r3, r4, r0
/* 8032BBC4  C0 23 00 04 */	lfs f1, 4(r3)
/* 8032BBC8  4E 80 00 20 */	blr 
/* 8032BBCC  48 00 00 2C */	b lbl_8032BBF8
lbl_8032BBD0:
/* 8032BBD0  54 65 F8 7E */	srwi r5, r3, 1
/* 8032BBD4  54 60 18 36 */	rlwinm r0, r3, 3, 0, 0x1b
/* 8032BBD8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8032BBDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032BBE0  4C 41 13 82 */	cror 2, 1, 2
/* 8032BBE4  40 82 00 10 */	bne lbl_8032BBF4
/* 8032BBE8  7C 84 02 14 */	add r4, r4, r0
/* 8032BBEC  7C 65 18 50 */	subf r3, r5, r3
/* 8032BBF0  48 00 00 08 */	b lbl_8032BBF8
lbl_8032BBF4:
/* 8032BBF4  7C A3 2B 78 */	mr r3, r5
lbl_8032BBF8:
/* 8032BBF8  28 03 00 01 */	cmplwi r3, 1
/* 8032BBFC  41 81 FF D4 */	bgt lbl_8032BBD0
/* 8032BC00  C1 24 00 18 */	lfs f9, 0x18(r4)
/* 8032BC04  C1 04 00 14 */	lfs f8, 0x14(r4)
/* 8032BC08  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8032BC0C  C0 E4 00 0C */	lfs f7, 0xc(r4)
/* 8032BC10  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8032BC14  C0 04 00 00 */	lfs f0, 0(r4)
/* 8032BC18  EC A1 00 28 */	fsubs f5, f1, f0
/* 8032BC1C  EC 82 00 28 */	fsubs f4, f2, f0
/* 8032BC20  EC 65 20 24 */	fdivs f3, f5, f4
/* 8032BC24  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8032BC28  EC 23 18 2A */	fadds f1, f3, f3
/* 8032BC2C  EC 40 18 28 */	fsubs f2, f0, f3
/* 8032BC30  EC 86 40 28 */	fsubs f4, f6, f8
/* 8032BC34  EC 01 00 B8 */	fmsubs f0, f1, f2, f0
/* 8032BC38  EC 27 38 BA */	fmadds f1, f7, f2, f7
/* 8032BC3C  EC 00 31 3A */	fmadds f0, f0, f4, f6
/* 8032BC40  EC 29 08 BA */	fmadds f1, f9, f2, f1
/* 8032BC44  EC 23 09 F8 */	fmsubs f1, f3, f7, f1
/* 8032BC48  EC 25 00 7C */	fnmsubs f1, f5, f1, f0
/* 8032BC4C  4E 80 00 20 */	blr 
