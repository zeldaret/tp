lbl_80BEBDAC:
/* 80BEBDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEBDB0  7C 08 02 A6 */	mflr r0
/* 80BEBDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEBDB8  3C 60 80 BF */	lis r3, M_attr__11daObjFlag_c@ha /* 0x80BEC4EC@ha */
/* 80BEBDBC  38 A3 C4 EC */	addi r5, r3, M_attr__11daObjFlag_c@l /* 0x80BEC4EC@l */
/* 80BEBDC0  C0 45 00 5C */	lfs f2, 0x5c(r5)
/* 80BEBDC4  38 65 00 00 */	addi r3, r5, 0
/* 80BEBDC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BEBDCC  EC 02 00 24 */	fdivs f0, f2, f0
/* 80BEBDD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BEBDD4  EC 40 10 28 */	fsubs f2, f0, f2
/* 80BEBDD8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80BEBDDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BEBDE0  40 81 00 08 */	ble lbl_80BEBDE8
/* 80BEBDE4  FC 40 00 90 */	fmr f2, f0
lbl_80BEBDE8:
/* 80BEBDE8  A8 04 00 00 */	lha r0, 0(r4)
/* 80BEBDEC  C8 25 00 50 */	lfd f1, 0x50(r5)
/* 80BEBDF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BEBDF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BEBDF8  3C 00 43 30 */	lis r0, 0x4330
/* 80BEBDFC  90 01 00 08 */	stw r0, 8(r1)
/* 80BEBE00  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BEBE04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BEBE08  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80BEBE0C  40 81 00 2C */	ble lbl_80BEBE38
/* 80BEBE10  7C 83 23 78 */	mr r3, r4
/* 80BEBE14  FC 00 10 50 */	fneg f0, f2
/* 80BEBE18  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBE1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BEBE20  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BEBE24  38 A0 00 1E */	li r5, 0x1e
/* 80BEBE28  38 C0 7F FF */	li r6, 0x7fff
/* 80BEBE2C  38 E0 80 01 */	li r7, -32767
/* 80BEBE30  4B 68 47 11 */	bl cLib_addCalcAngleS__FPsssss
/* 80BEBE34  48 00 00 20 */	b lbl_80BEBE54
lbl_80BEBE38:
/* 80BEBE38  7C 83 23 78 */	mr r3, r4
/* 80BEBE3C  FC 00 10 50 */	fneg f0, f2
/* 80BEBE40  FC 00 00 1E */	fctiwz f0, f0
/* 80BEBE44  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BEBE48  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BEBE4C  38 A0 01 F4 */	li r5, 0x1f4
/* 80BEBE50  4B 68 48 81 */	bl cLib_chaseS__FPsss
lbl_80BEBE54:
/* 80BEBE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEBE58  7C 08 03 A6 */	mtlr r0
/* 80BEBE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEBE60  4E 80 00 20 */	blr 
