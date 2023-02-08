lbl_8032B8A0:
/* 8032B8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032B8A4  A8 04 00 00 */	lha r0, 0(r4)
/* 8032B8A8  C8 42 CA 40 */	lfd f2, lit_975(r2)
/* 8032B8AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032B8B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032B8B4  3C A0 43 30 */	lis r5, 0x4330
/* 8032B8B8  90 A1 00 08 */	stw r5, 8(r1)
/* 8032B8BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032B8C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8032B8C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032B8C8  40 80 00 20 */	bge lbl_8032B8E8
/* 8032B8CC  A8 04 00 02 */	lha r0, 2(r4)
/* 8032B8D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032B8D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032B8D8  90 A1 00 08 */	stw r5, 8(r1)
/* 8032B8DC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032B8E0  EC 20 10 28 */	fsubs f1, f0, f2
/* 8032B8E4  48 00 01 E8 */	b lbl_8032BACC
lbl_8032B8E8:
/* 8032B8E8  A0 03 00 04 */	lhz r0, 4(r3)
/* 8032B8EC  28 00 00 00 */	cmplwi r0, 0
/* 8032B8F0  40 82 00 F4 */	bne lbl_8032B9E4
/* 8032B8F4  A0 C3 00 00 */	lhz r6, 0(r3)
/* 8032B8F8  38 06 FF FF */	addi r0, r6, -1
/* 8032B8FC  1C 60 00 06 */	mulli r3, r0, 6
/* 8032B900  7C 04 1A AE */	lhax r0, r4, r3
/* 8032B904  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032B908  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032B90C  90 A1 00 08 */	stw r5, 8(r1)
/* 8032B910  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032B914  EC 00 10 28 */	fsubs f0, f0, f2
/* 8032B918  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8032B91C  4C 40 13 82 */	cror 2, 0, 2
/* 8032B920  40 82 00 68 */	bne lbl_8032B988
/* 8032B924  7C 64 1A 14 */	add r3, r4, r3
/* 8032B928  A8 03 00 02 */	lha r0, 2(r3)
/* 8032B92C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032B930  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032B934  90 A1 00 08 */	stw r5, 8(r1)
/* 8032B938  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032B93C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8032B940  48 00 01 8C */	b lbl_8032BACC
/* 8032B944  48 00 00 44 */	b lbl_8032B988
lbl_8032B948:
/* 8032B948  54 C7 F8 7E */	srwi r7, r6, 1
/* 8032B94C  1C 07 00 03 */	mulli r0, r7, 3
/* 8032B950  54 03 08 3C */	slwi r3, r0, 1
/* 8032B954  7C 04 1A AE */	lhax r0, r4, r3
/* 8032B958  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032B95C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032B960  90 A1 00 08 */	stw r5, 8(r1)
/* 8032B964  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032B968  EC 00 10 28 */	fsubs f0, f0, f2
/* 8032B96C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032B970  4C 41 13 82 */	cror 2, 1, 2
/* 8032B974  40 82 00 10 */	bne lbl_8032B984
/* 8032B978  7C 84 1A 14 */	add r4, r4, r3
/* 8032B97C  7C C7 30 50 */	subf r6, r7, r6
/* 8032B980  48 00 00 08 */	b lbl_8032B988
lbl_8032B984:
/* 8032B984  7C E6 3B 78 */	mr r6, r7
lbl_8032B988:
/* 8032B988  28 06 00 01 */	cmplwi r6, 1
/* 8032B98C  41 81 FF BC */	bgt lbl_8032B948
/* 8032B990  E0 44 D0 00 */	psq_l f2, 0(r4), 1, 5 /* qr5 */
/* 8032B994  E0 04 D0 06 */	psq_l f0, 6(r4), 1, 5 /* qr5 */
/* 8032B998  E0 E4 D0 02 */	psq_l f7, 2(r4), 1, 5 /* qr5 */
/* 8032B99C  EC A0 10 28 */	fsubs f5, f0, f2
/* 8032B9A0  E0 C4 D0 08 */	psq_l f6, 8(r4), 1, 5 /* qr5 */
/* 8032B9A4  EC 61 10 28 */	fsubs f3, f1, f2
/* 8032B9A8  E0 04 D0 0A */	psq_l f0, 10(r4), 1, 5 /* qr5 */
/* 8032B9AC  EC 86 38 28 */	fsubs f4, f6, f7
/* 8032B9B0  EC 63 28 24 */	fdivs f3, f3, f5
/* 8032B9B4  E0 24 D0 04 */	psq_l f1, 4(r4), 1, 5 /* qr5 */
/* 8032B9B8  EC 00 39 7A */	fmadds f0, f0, f5, f7
/* 8032B9BC  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8032B9C0  EC 85 20 7C */	fnmsubs f4, f5, f1, f4
/* 8032B9C4  EC 00 30 28 */	fsubs f0, f0, f6
/* 8032B9C8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8032B9CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8032B9D0  EC 25 00 7A */	fmadds f1, f5, f1, f0
/* 8032B9D4  EC 21 38 FA */	fmadds f1, f1, f3, f7
/* 8032B9D8  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 8032B9DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8032B9E0  48 00 00 EC */	b lbl_8032BACC
lbl_8032B9E4:
/* 8032B9E4  A0 C3 00 00 */	lhz r6, 0(r3)
/* 8032B9E8  38 06 FF FF */	addi r0, r6, -1
/* 8032B9EC  54 03 18 38 */	slwi r3, r0, 3
/* 8032B9F0  7C 04 1A AE */	lhax r0, r4, r3
/* 8032B9F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032B9F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032B9FC  90 A1 00 08 */	stw r5, 8(r1)
/* 8032BA00  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032BA04  EC 00 10 28 */	fsubs f0, f0, f2
/* 8032BA08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8032BA0C  4C 40 13 82 */	cror 2, 0, 2
/* 8032BA10  40 82 00 64 */	bne lbl_8032BA74
/* 8032BA14  7C 64 1A 14 */	add r3, r4, r3
/* 8032BA18  A8 03 00 02 */	lha r0, 2(r3)
/* 8032BA1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032BA20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032BA24  90 A1 00 08 */	stw r5, 8(r1)
/* 8032BA28  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032BA2C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8032BA30  48 00 00 9C */	b lbl_8032BACC
/* 8032BA34  48 00 00 40 */	b lbl_8032BA74
lbl_8032BA38:
/* 8032BA38  54 C7 F8 7E */	srwi r7, r6, 1
/* 8032BA3C  54 C3 10 38 */	rlwinm r3, r6, 2, 0, 0x1c
/* 8032BA40  7C 04 1A AE */	lhax r0, r4, r3
/* 8032BA44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8032BA48  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032BA4C  90 A1 00 08 */	stw r5, 8(r1)
/* 8032BA50  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032BA54  EC 00 10 28 */	fsubs f0, f0, f2
/* 8032BA58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032BA5C  4C 41 13 82 */	cror 2, 1, 2
/* 8032BA60  40 82 00 10 */	bne lbl_8032BA70
/* 8032BA64  7C 84 1A 14 */	add r4, r4, r3
/* 8032BA68  7C C7 30 50 */	subf r6, r7, r6
/* 8032BA6C  48 00 00 08 */	b lbl_8032BA74
lbl_8032BA70:
/* 8032BA70  7C E6 3B 78 */	mr r6, r7
lbl_8032BA74:
/* 8032BA74  28 06 00 01 */	cmplwi r6, 1
/* 8032BA78  41 81 FF C0 */	bgt lbl_8032BA38
/* 8032BA7C  E0 44 D0 00 */	psq_l f2, 0(r4), 1, 5 /* qr5 */
/* 8032BA80  E0 04 D0 08 */	psq_l f0, 8(r4), 1, 5 /* qr5 */
/* 8032BA84  E0 E4 D0 02 */	psq_l f7, 2(r4), 1, 5 /* qr5 */
/* 8032BA88  EC A0 10 28 */	fsubs f5, f0, f2
/* 8032BA8C  E0 C4 D0 0A */	psq_l f6, 10(r4), 1, 5 /* qr5 */
/* 8032BA90  EC 61 10 28 */	fsubs f3, f1, f2
/* 8032BA94  E0 04 D0 0C */	psq_l f0, 12(r4), 1, 5 /* qr5 */
/* 8032BA98  EC 86 38 28 */	fsubs f4, f6, f7
/* 8032BA9C  EC 63 28 24 */	fdivs f3, f3, f5
/* 8032BAA0  E0 24 D0 06 */	psq_l f1, 6(r4), 1, 5 /* qr5 */
/* 8032BAA4  EC 00 39 7A */	fmadds f0, f0, f5, f7
/* 8032BAA8  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8032BAAC  EC 85 20 7C */	fnmsubs f4, f5, f1, f4
/* 8032BAB0  EC 00 30 28 */	fsubs f0, f0, f6
/* 8032BAB4  EC 00 20 28 */	fsubs f0, f0, f4
/* 8032BAB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8032BABC  EC 25 00 7A */	fmadds f1, f5, f1, f0
/* 8032BAC0  EC 21 38 FA */	fmadds f1, f1, f3, f7
/* 8032BAC4  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 8032BAC8  EC 21 00 28 */	fsubs f1, f1, f0
lbl_8032BACC:
/* 8032BACC  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BAD0  4E 80 00 20 */	blr 
