lbl_8035D64C:
/* 8035D64C  7C 08 02 A6 */	mflr r0
/* 8035D650  90 01 00 04 */	stw r0, 4(r1)
/* 8035D654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035D658  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035D65C  3B E4 00 00 */	addi r31, r4, 0
/* 8035D660  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035D664  3B C3 00 00 */	addi r30, r3, 0
/* 8035D668  C0 02 CB B8 */	lfs f0, lit_134(r2)
/* 8035D66C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8035D670  4C 40 13 82 */	cror 2, 0, 2
/* 8035D674  41 82 00 10 */	beq lbl_8035D684
/* 8035D678  C0 02 CB BC */	lfs f0, lit_135(r2)
/* 8035D67C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8035D680  40 81 00 08 */	ble lbl_8035D688
lbl_8035D684:
/* 8035D684  3B E0 00 00 */	li r31, 0
lbl_8035D688:
/* 8035D688  C0 42 CB C0 */	lfs f2, lit_136(r2)
/* 8035D68C  C0 02 CB C4 */	lfs f0, lit_137(r2)
/* 8035D690  EC 22 00 72 */	fmuls f1, f2, f1
/* 8035D694  EC 21 00 24 */	fdivs f1, f1, f0
/* 8035D698  48 00 F3 75 */	bl cosf
/* 8035D69C  28 1F 00 06 */	cmplwi r31, 6
/* 8035D6A0  41 81 01 0C */	bgt lbl_8035D7AC
/* 8035D6A4  3C 60 80 3D */	lis r3, lit_145@ha /* 0x803D2578@ha */
/* 8035D6A8  38 63 25 78 */	addi r3, r3, lit_145@l /* 0x803D2578@l */
/* 8035D6AC  57 E0 10 3A */	slwi r0, r31, 2
/* 8035D6B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8035D6B4  7C 09 03 A6 */	mtctr r0
/* 8035D6B8  4E 80 04 20 */	bctr 
/* 8035D6BC  C0 02 CB C8 */	lfs f0, lit_138(r2)
/* 8035D6C0  C0 82 CB CC */	lfs f4, lit_139(r2)
/* 8035D6C4  EC 60 00 72 */	fmuls f3, f0, f1
/* 8035D6C8  C0 C2 CB B8 */	lfs f6, lit_134(r2)
/* 8035D6CC  48 00 00 EC */	b lbl_8035D7B8
/* 8035D6D0  C0 42 CB D0 */	lfs f2, lit_140(r2)
/* 8035D6D4  FC 00 08 50 */	fneg f0, f1
/* 8035D6D8  C0 C2 CB B8 */	lfs f6, lit_134(r2)
/* 8035D6DC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8035D6E0  EC 22 08 24 */	fdivs f1, f2, f1
/* 8035D6E4  FC 80 08 90 */	fmr f4, f1
/* 8035D6E8  EC 60 00 72 */	fmuls f3, f0, f1
/* 8035D6EC  48 00 00 CC */	b lbl_8035D7B8
/* 8035D6F0  C0 42 CB D0 */	lfs f2, lit_140(r2)
/* 8035D6F4  FC 00 08 50 */	fneg f0, f1
/* 8035D6F8  C0 62 CB B8 */	lfs f3, lit_134(r2)
/* 8035D6FC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8035D700  EC 22 08 24 */	fdivs f1, f2, f1
/* 8035D704  FC C0 08 90 */	fmr f6, f1
/* 8035D708  EC 80 00 72 */	fmuls f4, f0, f1
/* 8035D70C  48 00 00 AC */	b lbl_8035D7B8
/* 8035D710  C0 82 CB D0 */	lfs f4, lit_140(r2)
/* 8035D714  C0 42 CB D4 */	lfs f2, lit_141(r2)
/* 8035D718  EC 64 08 28 */	fsubs f3, f4, f1
/* 8035D71C  EC 01 10 28 */	fsubs f0, f1, f2
/* 8035D720  EC 63 00 F2 */	fmuls f3, f3, f3
/* 8035D724  EC 01 00 32 */	fmuls f0, f1, f0
/* 8035D728  EC 24 18 24 */	fdivs f1, f4, f3
/* 8035D72C  EC 61 00 32 */	fmuls f3, f1, f0
/* 8035D730  EC 82 00 72 */	fmuls f4, f2, f1
/* 8035D734  FC C0 08 50 */	fneg f6, f1
/* 8035D738  48 00 00 80 */	b lbl_8035D7B8
/* 8035D73C  C0 A2 CB D0 */	lfs f5, lit_140(r2)
/* 8035D740  C0 62 CB D8 */	lfs f3, lit_142(r2)
/* 8035D744  EC 85 08 28 */	fsubs f4, f5, f1
/* 8035D748  C0 42 CB DC */	lfs f2, lit_143(r2)
/* 8035D74C  EC 05 08 2A */	fadds f0, f5, f1
/* 8035D750  EC 84 01 32 */	fmuls f4, f4, f4
/* 8035D754  EC 02 00 32 */	fmuls f0, f2, f0
/* 8035D758  EC 85 20 24 */	fdivs f4, f5, f4
/* 8035D75C  EC 43 01 32 */	fmuls f2, f3, f4
/* 8035D760  EC 80 01 32 */	fmuls f4, f0, f4
/* 8035D764  FC C0 10 90 */	fmr f6, f2
/* 8035D768  EC 62 00 72 */	fmuls f3, f2, f1
/* 8035D76C  48 00 00 4C */	b lbl_8035D7B8
/* 8035D770  C0 A2 CB D0 */	lfs f5, lit_140(r2)
/* 8035D774  C0 02 CB D4 */	lfs f0, lit_141(r2)
/* 8035D778  EC 85 08 28 */	fsubs f4, f5, f1
/* 8035D77C  C0 42 CB DC */	lfs f2, lit_143(r2)
/* 8035D780  EC 60 00 72 */	fmuls f3, f0, f1
/* 8035D784  C0 02 CB E0 */	lfs f0, lit_144(r2)
/* 8035D788  EC 42 00 72 */	fmuls f2, f2, f1
/* 8035D78C  EC 84 01 32 */	fmuls f4, f4, f4
/* 8035D790  EC 23 00 72 */	fmuls f1, f3, f1
/* 8035D794  EC 65 20 24 */	fdivs f3, f5, f4
/* 8035D798  EC 23 00 72 */	fmuls f1, f3, f1
/* 8035D79C  EC 82 00 F2 */	fmuls f4, f2, f3
/* 8035D7A0  EC C0 00 F2 */	fmuls f6, f0, f3
/* 8035D7A4  EC 65 08 28 */	fsubs f3, f5, f1
/* 8035D7A8  48 00 00 10 */	b lbl_8035D7B8
lbl_8035D7AC:
/* 8035D7AC  C0 82 CB B8 */	lfs f4, lit_134(r2)
/* 8035D7B0  C0 62 CB D0 */	lfs f3, lit_140(r2)
/* 8035D7B4  FC C0 20 90 */	fmr f6, f4
lbl_8035D7B8:
/* 8035D7B8  D0 7E 00 10 */	stfs f3, 0x10(r30)
/* 8035D7BC  D0 9E 00 14 */	stfs f4, 0x14(r30)
/* 8035D7C0  D0 DE 00 18 */	stfs f6, 0x18(r30)
/* 8035D7C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035D7C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035D7CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035D7D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8035D7D4  7C 08 03 A6 */	mtlr r0
/* 8035D7D8  4E 80 00 20 */	blr 
