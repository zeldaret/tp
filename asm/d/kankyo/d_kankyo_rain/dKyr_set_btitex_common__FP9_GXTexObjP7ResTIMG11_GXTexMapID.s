lbl_8005B92C:
/* 8005B92C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8005B930  7C 08 02 A6 */	mflr r0
/* 8005B934  90 01 00 34 */	stw r0, 0x34(r1)
/* 8005B938  39 61 00 30 */	addi r11, r1, 0x30
/* 8005B93C  48 30 68 A1 */	bl _savegpr_29
/* 8005B940  7C 7D 1B 78 */	mr r29, r3
/* 8005B944  7C 9E 23 78 */	mr r30, r4
/* 8005B948  7C BF 2B 78 */	mr r31, r5
/* 8005B94C  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8005B950  7C 9E 02 14 */	add r4, r30, r0
/* 8005B954  A0 BE 00 02 */	lhz r5, 2(r30)
/* 8005B958  A0 DE 00 04 */	lhz r6, 4(r30)
/* 8005B95C  88 FE 00 00 */	lbz r7, 0(r30)
/* 8005B960  89 1E 00 06 */	lbz r8, 6(r30)
/* 8005B964  89 3E 00 07 */	lbz r9, 7(r30)
/* 8005B968  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 8005B96C  20 00 00 01 */	subfic r0, r0, 1
/* 8005B970  54 0A 0F FE */	srwi r10, r0, 0x1f
/* 8005B974  48 30 24 CD */	bl GXInitTexObj
/* 8005B978  7F A3 EB 78 */	mr r3, r29
/* 8005B97C  88 9E 00 14 */	lbz r4, 0x14(r30)
/* 8005B980  88 BE 00 15 */	lbz r5, 0x15(r30)
/* 8005B984  C0 42 87 C0 */	lfs f2, lit_3992(r2)
/* 8005B988  88 1E 00 16 */	lbz r0, 0x16(r30)
/* 8005B98C  7C 00 07 74 */	extsb r0, r0
/* 8005B990  C8 82 87 C8 */	lfd f4, lit_3995(r2)
/* 8005B994  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8005B998  90 01 00 0C */	stw r0, 0xc(r1)
/* 8005B99C  3C C0 43 30 */	lis r6, 0x4330
/* 8005B9A0  90 C1 00 08 */	stw r6, 8(r1)
/* 8005B9A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8005B9A8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8005B9AC  EC 22 00 32 */	fmuls f1, f2, f0
/* 8005B9B0  88 1E 00 17 */	lbz r0, 0x17(r30)
/* 8005B9B4  7C 00 07 74 */	extsb r0, r0
/* 8005B9B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8005B9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005B9C0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8005B9C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8005B9C8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8005B9CC  EC 42 00 32 */	fmuls f2, f2, f0
/* 8005B9D0  C0 62 87 C4 */	lfs f3, lit_3993(r2)
/* 8005B9D4  A8 1E 00 1A */	lha r0, 0x1a(r30)
/* 8005B9D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8005B9DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8005B9E0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8005B9E4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8005B9E8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8005B9EC  EC 63 00 32 */	fmuls f3, f3, f0
/* 8005B9F0  88 DE 00 12 */	lbz r6, 0x12(r30)
/* 8005B9F4  88 FE 00 11 */	lbz r7, 0x11(r30)
/* 8005B9F8  89 1E 00 13 */	lbz r8, 0x13(r30)
/* 8005B9FC  48 30 26 D9 */	bl GXInitTexObjLOD
/* 8005BA00  7F A3 EB 78 */	mr r3, r29
/* 8005BA04  7F E4 FB 78 */	mr r4, r31
/* 8005BA08  48 30 2A 0D */	bl GXLoadTexObj
/* 8005BA0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8005BA10  48 30 68 19 */	bl _restgpr_29
/* 8005BA14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005BA18  7C 08 03 A6 */	mtlr r0
/* 8005BA1C  38 21 00 30 */	addi r1, r1, 0x30
/* 8005BA20  4E 80 00 20 */	blr 
