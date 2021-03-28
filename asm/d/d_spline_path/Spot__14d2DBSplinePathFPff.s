lbl_80097B68:
/* 80097B68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80097B6C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80097B70  2C 05 00 02 */	cmpwi r5, 2
/* 80097B74  40 80 00 0C */	bge lbl_80097B80
/* 80097B78  38 00 00 01 */	li r0, 1
/* 80097B7C  48 00 00 08 */	b lbl_80097B84
lbl_80097B80:
/* 80097B80  38 05 FF FE */	addi r0, r5, -2
lbl_80097B84:
/* 80097B84  C8 42 91 C8 */	lfd f2, lit_3632(r2)
/* 80097B88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80097B8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80097B90  3C A0 43 30 */	lis r5, 0x4330
/* 80097B94  90 A1 00 08 */	stw r5, 8(r1)
/* 80097B98  C8 01 00 08 */	lfd f0, 8(r1)
/* 80097B9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80097BA0  EC A1 00 32 */	fmuls f5, f1, f0
/* 80097BA4  FC 00 28 1E */	fctiwz f0, f5
/* 80097BA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80097BAC  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 80097BB0  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80097BB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80097BB8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80097BBC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80097BC0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80097BC4  EC A5 00 28 */	fsubs f5, f5, f0
/* 80097BC8  80 63 00 04 */	lwz r3, 4(r3)
/* 80097BCC  38 C3 FF FF */	addi r6, r3, -1
/* 80097BD0  7C 07 30 00 */	cmpw r7, r6
/* 80097BD4  7C C5 33 78 */	mr r5, r6
/* 80097BD8  40 80 00 08 */	bge lbl_80097BE0
/* 80097BDC  7C E5 3B 78 */	mr r5, r7
lbl_80097BE0:
/* 80097BE0  38 07 00 01 */	addi r0, r7, 1
/* 80097BE4  7C 00 30 00 */	cmpw r0, r6
/* 80097BE8  7C C3 33 78 */	mr r3, r6
/* 80097BEC  40 80 00 08 */	bge lbl_80097BF4
/* 80097BF0  7C 03 03 78 */	mr r3, r0
lbl_80097BF4:
/* 80097BF4  38 07 00 02 */	addi r0, r7, 2
/* 80097BF8  7C 00 30 00 */	cmpw r0, r6
/* 80097BFC  40 80 00 08 */	bge lbl_80097C04
/* 80097C00  7C 06 03 78 */	mr r6, r0
lbl_80097C04:
/* 80097C04  C0 02 91 D0 */	lfs f0, lit_3684(r2)
/* 80097C08  EC C0 28 28 */	fsubs f6, f0, f5
/* 80097C0C  C0 82 91 D4 */	lfs f4, lit_3685(r2)
/* 80097C10  EC 05 01 72 */	fmuls f0, f5, f5
/* 80097C14  EC 24 00 32 */	fmuls f1, f4, f0
/* 80097C18  54 C0 10 3A */	slwi r0, r6, 2
/* 80097C1C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80097C20  EC 61 00 32 */	fmuls f3, f1, f0
/* 80097C24  EC 06 01 B2 */	fmuls f0, f6, f6
/* 80097C28  EC 24 00 32 */	fmuls f1, f4, f0
/* 80097C2C  54 A0 10 3A */	slwi r0, r5, 2
/* 80097C30  7C 04 04 2E */	lfsx f0, r4, r0
/* 80097C34  EC 41 00 32 */	fmuls f2, f1, f0
/* 80097C38  EC 05 01 B2 */	fmuls f0, f5, f6
/* 80097C3C  EC 24 00 2A */	fadds f1, f4, f0
/* 80097C40  54 60 10 3A */	slwi r0, r3, 2
/* 80097C44  7C 04 04 2E */	lfsx f0, r4, r0
/* 80097C48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80097C4C  EC 02 00 2A */	fadds f0, f2, f0
/* 80097C50  EC 23 00 2A */	fadds f1, f3, f0
/* 80097C54  38 21 00 20 */	addi r1, r1, 0x20
/* 80097C58  4E 80 00 20 */	blr 
