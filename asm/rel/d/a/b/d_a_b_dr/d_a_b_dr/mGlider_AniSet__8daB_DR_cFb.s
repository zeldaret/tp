lbl_805BC57C:
/* 805BC57C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BC580  7C 08 02 A6 */	mflr r0
/* 805BC584  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BC588  39 61 00 30 */	addi r11, r1, 0x30
/* 805BC58C  4B DA 5C 50 */	b _savegpr_29
/* 805BC590  7C 7E 1B 78 */	mr r30, r3
/* 805BC594  7C 9D 23 78 */	mr r29, r4
/* 805BC598  3C 60 80 5C */	lis r3, lit_3800@ha
/* 805BC59C  3B E3 6C 74 */	addi r31, r3, lit_3800@l
/* 805BC5A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC5A4  41 82 00 24 */	beq lbl_805BC5C8
/* 805BC5A8  80 1E 07 C0 */	lwz r0, 0x7c0(r30)
/* 805BC5AC  2C 00 00 00 */	cmpwi r0, 0
/* 805BC5B0  41 82 00 18 */	beq lbl_805BC5C8
/* 805BC5B4  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 805BC5B8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 805BC5BC  40 82 00 0C */	bne lbl_805BC5C8
/* 805BC5C0  38 00 00 00 */	li r0, 0
/* 805BC5C4  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_805BC5C8:
/* 805BC5C8  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805BC5CC  48 00 A6 11 */	bl func_805C6BDC
/* 805BC5D0  2C 03 00 00 */	cmpwi r3, 0
/* 805BC5D4  40 82 02 C8 */	bne lbl_805BC89C
/* 805BC5D8  80 9E 07 10 */	lwz r4, 0x710(r30)
/* 805BC5DC  38 04 FF D2 */	addi r0, r4, -46
/* 805BC5E0  28 00 00 18 */	cmplwi r0, 0x18
/* 805BC5E4  41 81 02 B8 */	bgt lbl_805BC89C
/* 805BC5E8  3C 60 80 5C */	lis r3, lit_4618@ha
/* 805BC5EC  38 63 75 E4 */	addi r3, r3, lit_4618@l
/* 805BC5F0  54 00 10 3A */	slwi r0, r0, 2
/* 805BC5F4  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BC5F8  7C 09 03 A6 */	mtctr r0
/* 805BC5FC  4E 80 04 20 */	bctr 
lbl_805BC600:
/* 805BC600  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805BC604  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805BC608  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805BC60C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC610  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BC614  3C 00 43 30 */	lis r0, 0x4330
/* 805BC618  90 01 00 08 */	stw r0, 8(r1)
/* 805BC61C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805BC620  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC624  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BC628  FC 00 00 1E */	fctiwz f0, f0
/* 805BC62C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC630  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BC634  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC638  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC63C  FC 00 00 1E */	fctiwz f0, f0
/* 805BC640  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BC644  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BC648  7C 03 00 00 */	cmpw r3, r0
/* 805BC64C  41 80 02 50 */	blt lbl_805BC89C
/* 805BC650  7F C3 F3 78 */	mr r3, r30
/* 805BC654  38 80 00 46 */	li r4, 0x46
/* 805BC658  38 A0 00 02 */	li r5, 2
/* 805BC65C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC660  4B FF ED A9 */	bl setBck__8daB_DR_cFiUcff
/* 805BC664  48 00 02 38 */	b lbl_805BC89C
lbl_805BC668:
/* 805BC668  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805BC66C  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805BC670  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805BC674  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC678  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BC67C  3C 00 43 30 */	lis r0, 0x4330
/* 805BC680  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BC684  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805BC688  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC68C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BC690  FC 00 00 1E */	fctiwz f0, f0
/* 805BC694  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC698  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BC69C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC6A0  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC6A4  FC 00 00 1E */	fctiwz f0, f0
/* 805BC6A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BC6AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BC6B0  7C 03 00 00 */	cmpw r3, r0
/* 805BC6B4  41 80 01 E8 */	blt lbl_805BC89C
/* 805BC6B8  2C 04 00 46 */	cmpwi r4, 0x46
/* 805BC6BC  40 82 00 1C */	bne lbl_805BC6D8
/* 805BC6C0  7F C3 F3 78 */	mr r3, r30
/* 805BC6C4  38 80 00 2F */	li r4, 0x2f
/* 805BC6C8  38 A0 00 02 */	li r5, 2
/* 805BC6CC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805BC6D0  4B FF ED 39 */	bl setBck__8daB_DR_cFiUcff
/* 805BC6D4  48 00 01 C8 */	b lbl_805BC89C
lbl_805BC6D8:
/* 805BC6D8  7F C3 F3 78 */	mr r3, r30
/* 805BC6DC  38 80 00 2F */	li r4, 0x2f
/* 805BC6E0  38 A0 00 02 */	li r5, 2
/* 805BC6E4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805BC6E8  4B FF ED 21 */	bl setBck__8daB_DR_cFiUcff
/* 805BC6EC  48 00 01 B0 */	b lbl_805BC89C
lbl_805BC6F0:
/* 805BC6F0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805BC6F4  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805BC6F8  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805BC6FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC700  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BC704  3C 00 43 30 */	lis r0, 0x4330
/* 805BC708  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BC70C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805BC710  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC714  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BC718  FC 00 00 1E */	fctiwz f0, f0
/* 805BC71C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC720  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BC724  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC728  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC72C  FC 00 00 1E */	fctiwz f0, f0
/* 805BC730  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BC734  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BC738  7C 03 00 00 */	cmpw r3, r0
/* 805BC73C  41 80 01 60 */	blt lbl_805BC89C
/* 805BC740  7F C3 F3 78 */	mr r3, r30
/* 805BC744  38 80 00 30 */	li r4, 0x30
/* 805BC748  38 A0 00 00 */	li r5, 0
/* 805BC74C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC750  4B FF EC B9 */	bl setBck__8daB_DR_cFiUcff
/* 805BC754  48 00 01 48 */	b lbl_805BC89C
lbl_805BC758:
/* 805BC758  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805BC75C  38 80 00 01 */	li r4, 1
/* 805BC760  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BC764  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC768  40 82 00 18 */	bne lbl_805BC780
/* 805BC76C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BC770  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BC774  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC778  41 82 00 08 */	beq lbl_805BC780
/* 805BC77C  38 80 00 00 */	li r4, 0
lbl_805BC780:
/* 805BC780  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC784  41 82 01 18 */	beq lbl_805BC89C
/* 805BC788  7F C3 F3 78 */	mr r3, r30
/* 805BC78C  38 80 00 31 */	li r4, 0x31
/* 805BC790  38 A0 00 02 */	li r5, 2
/* 805BC794  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC798  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC79C  4B FF EC 6D */	bl setBck__8daB_DR_cFiUcff
/* 805BC7A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805BC7A4  4B CA B1 B0 */	b cM_rndF__Ff
/* 805BC7A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805BC7AC  EC 00 08 2A */	fadds f0, f0, f1
/* 805BC7B0  FC 00 00 1E */	fctiwz f0, f0
/* 805BC7B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BC7B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BC7BC  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 805BC7C0  48 00 00 DC */	b lbl_805BC89C
lbl_805BC7C4:
/* 805BC7C4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 805BC7C8  40 82 00 D4 */	bne lbl_805BC89C
/* 805BC7CC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805BC7D0  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805BC7D4  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805BC7D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC7DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BC7E0  3C 00 43 30 */	lis r0, 0x4330
/* 805BC7E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BC7E8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805BC7EC  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC7F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BC7F4  FC 00 00 1E */	fctiwz f0, f0
/* 805BC7F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC7FC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BC800  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC804  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC808  FC 00 00 1E */	fctiwz f0, f0
/* 805BC80C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BC810  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BC814  7C 03 00 00 */	cmpw r3, r0
/* 805BC818  41 80 00 84 */	blt lbl_805BC89C
/* 805BC81C  7F C3 F3 78 */	mr r3, r30
/* 805BC820  38 80 00 33 */	li r4, 0x33
/* 805BC824  38 A0 00 00 */	li r5, 0
/* 805BC828  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC82C  4B FF EB DD */	bl setBck__8daB_DR_cFiUcff
/* 805BC830  48 00 00 6C */	b lbl_805BC89C
lbl_805BC834:
/* 805BC834  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805BC838  38 80 00 01 */	li r4, 1
/* 805BC83C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BC840  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC844  40 82 00 18 */	bne lbl_805BC85C
/* 805BC848  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BC84C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BC850  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC854  41 82 00 08 */	beq lbl_805BC85C
/* 805BC858  38 80 00 00 */	li r4, 0
lbl_805BC85C:
/* 805BC85C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC860  41 82 00 3C */	beq lbl_805BC89C
/* 805BC864  7F C3 F3 78 */	mr r3, r30
/* 805BC868  38 80 00 2F */	li r4, 0x2f
/* 805BC86C  38 A0 00 02 */	li r5, 2
/* 805BC870  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC874  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC878  4B FF EB 91 */	bl setBck__8daB_DR_cFiUcff
/* 805BC87C  C0 3F 03 60 */	lfs f1, 0x360(r31)
/* 805BC880  4B CA B0 D4 */	b cM_rndF__Ff
/* 805BC884  C0 1F 03 60 */	lfs f0, 0x360(r31)
/* 805BC888  EC 00 08 2A */	fadds f0, f0, f1
/* 805BC88C  FC 00 00 1E */	fctiwz f0, f0
/* 805BC890  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BC894  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BC898  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_805BC89C:
/* 805BC89C  39 61 00 30 */	addi r11, r1, 0x30
/* 805BC8A0  4B DA 59 88 */	b _restgpr_29
/* 805BC8A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BC8A8  7C 08 03 A6 */	mtlr r0
/* 805BC8AC  38 21 00 30 */	addi r1, r1, 0x30
/* 805BC8B0  4E 80 00 20 */	blr 
