lbl_807FE650:
/* 807FE650  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807FE654  7C 08 02 A6 */	mflr r0
/* 807FE658  90 01 00 84 */	stw r0, 0x84(r1)
/* 807FE65C  39 61 00 80 */	addi r11, r1, 0x80
/* 807FE660  4B B6 3B 7C */	b _savegpr_29
/* 807FE664  7C 7E 1B 78 */	mr r30, r3
/* 807FE668  3C 60 80 80 */	lis r3, lit_3902@ha
/* 807FE66C  3B E3 42 7C */	addi r31, r3, lit_3902@l
/* 807FE670  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 807FE674  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807FE678  40 82 00 40 */	bne lbl_807FE6B8
/* 807FE67C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FE680  4B A6 92 D4 */	b cM_rndF__Ff
/* 807FE684  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 807FE688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FE68C  40 80 00 2C */	bge lbl_807FE6B8
/* 807FE690  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070087@ha */
/* 807FE694  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00070087@l */
/* 807FE698  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FE69C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FE6A0  38 81 00 0C */	addi r4, r1, 0xc
/* 807FE6A4  38 A0 FF FF */	li r5, -1
/* 807FE6A8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FE6AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FE6B0  7D 89 03 A6 */	mtctr r12
/* 807FE6B4  4E 80 04 21 */	bctrl 
lbl_807FE6B8:
/* 807FE6B8  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 807FE6BC  2C 00 00 00 */	cmpwi r0, 0
/* 807FE6C0  41 82 00 FC */	beq lbl_807FE7BC
/* 807FE6C4  40 80 00 10 */	bge lbl_807FE6D4
/* 807FE6C8  2C 00 FF FF */	cmpwi r0, -1
/* 807FE6CC  40 80 00 14 */	bge lbl_807FE6E0
/* 807FE6D0  48 00 03 EC */	b lbl_807FEABC
lbl_807FE6D4:
/* 807FE6D4  2C 00 00 02 */	cmpwi r0, 2
/* 807FE6D8  40 80 03 E4 */	bge lbl_807FEABC
/* 807FE6DC  48 00 01 B4 */	b lbl_807FE890
lbl_807FE6E0:
/* 807FE6E0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807FE6E4  38 80 00 01 */	li r4, 1
/* 807FE6E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807FE6EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FE6F0  40 82 00 18 */	bne lbl_807FE708
/* 807FE6F4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FE6F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807FE6FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807FE700  41 82 00 08 */	beq lbl_807FE708
/* 807FE704  38 80 00 00 */	li r4, 0
lbl_807FE708:
/* 807FE708  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807FE70C  41 82 00 10 */	beq lbl_807FE71C
/* 807FE710  38 00 00 00 */	li r0, 0
/* 807FE714  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FE718  48 00 00 A4 */	b lbl_807FE7BC
lbl_807FE71C:
/* 807FE71C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FE720  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807FE724  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807FE728  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807FE72C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807FE730  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807FE734  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807FE738  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807FE73C  80 63 00 00 */	lwz r3, 0(r3)
/* 807FE740  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807FE744  4B 80 DC 98 */	b mDoMtx_YrotS__FPA4_fs
/* 807FE748  38 61 00 40 */	addi r3, r1, 0x40
/* 807FE74C  38 81 00 34 */	addi r4, r1, 0x34
/* 807FE750  4B A7 27 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 807FE754  38 61 00 1C */	addi r3, r1, 0x1c
/* 807FE758  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807FE75C  38 A1 00 34 */	addi r5, r1, 0x34
/* 807FE760  4B A6 83 84 */	b __pl__4cXyzCFRC3Vec
/* 807FE764  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807FE768  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807FE76C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807FE770  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807FE774  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807FE778  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 807FE77C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807FE780  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 807FE784  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 807FE788  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807FE78C  4B A7 12 B0 */	b cLib_addCalc2__FPffff
/* 807FE790  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FE794  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807FE798  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 807FE79C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807FE7A0  4B A7 12 9C */	b cLib_addCalc2__FPffff
/* 807FE7A4  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807FE7A8  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 807FE7AC  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 807FE7B0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807FE7B4  4B A7 12 88 */	b cLib_addCalc2__FPffff
/* 807FE7B8  48 00 03 04 */	b lbl_807FEABC
lbl_807FE7BC:
/* 807FE7BC  7F C3 F3 78 */	mr r3, r30
/* 807FE7C0  38 80 00 13 */	li r4, 0x13
/* 807FE7C4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FE7C8  38 A0 00 02 */	li r5, 2
/* 807FE7CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE7D0  4B FF EE ED */	bl anm_init__FP10e_yh_classifUcf
/* 807FE7D4  7F C3 F3 78 */	mr r3, r30
/* 807FE7D8  38 80 00 15 */	li r4, 0x15
/* 807FE7DC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FE7E0  38 A0 00 02 */	li r5, 2
/* 807FE7E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FE7E8  4B FF EF 81 */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FE7EC  38 00 00 01 */	li r0, 1
/* 807FE7F0  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FE7F4  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 807FE7F8  28 00 00 01 */	cmplwi r0, 1
/* 807FE7FC  40 82 00 28 */	bne lbl_807FE824
/* 807FE800  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807FE804  4B A6 91 50 */	b cM_rndF__Ff
/* 807FE808  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807FE80C  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE810  FC 00 00 1E */	fctiwz f0, f0
/* 807FE814  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807FE818  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 807FE81C  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 807FE820  48 00 00 64 */	b lbl_807FE884
lbl_807FE824:
/* 807FE824  3C 60 80 80 */	lis r3, l_HIO@ha
/* 807FE828  3B A3 47 28 */	addi r29, r3, l_HIO@l
/* 807FE82C  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 807FE830  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 807FE834  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807FE838  90 01 00 5C */	stw r0, 0x5c(r1)
/* 807FE83C  3C 00 43 30 */	lis r0, 0x4330
/* 807FE840  90 01 00 58 */	stw r0, 0x58(r1)
/* 807FE844  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 807FE848  EC 20 08 28 */	fsubs f1, f0, f1
/* 807FE84C  4B A6 91 08 */	b cM_rndF__Ff
/* 807FE850  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 807FE854  C8 5F 00 A8 */	lfd f2, 0xa8(r31)
/* 807FE858  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807FE85C  90 01 00 64 */	stw r0, 0x64(r1)
/* 807FE860  3C 00 43 30 */	lis r0, 0x4330
/* 807FE864  90 01 00 60 */	stw r0, 0x60(r1)
/* 807FE868  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 807FE86C  EC 00 10 28 */	fsubs f0, f0, f2
/* 807FE870  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE874  FC 00 00 1E */	fctiwz f0, f0
/* 807FE878  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807FE87C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807FE880  B0 1E 06 9A */	sth r0, 0x69a(r30)
lbl_807FE884:
/* 807FE884  38 00 00 00 */	li r0, 0
/* 807FE888  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807FE88C  48 00 02 30 */	b lbl_807FEABC
lbl_807FE890:
/* 807FE890  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807FE894  2C 00 00 00 */	cmpwi r0, 0
/* 807FE898  40 82 00 9C */	bne lbl_807FE934
/* 807FE89C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807FE8A0  4B A6 90 B4 */	b cM_rndF__Ff
/* 807FE8A4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807FE8A8  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE8AC  FC 00 00 1E */	fctiwz f0, f0
/* 807FE8B0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807FE8B4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807FE8B8  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807FE8BC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807FE8C0  4B A6 90 CC */	b cM_rndFX__Ff
/* 807FE8C4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807FE8C8  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE8CC  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807FE8D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807FE8D4  4B A6 90 B8 */	b cM_rndFX__Ff
/* 807FE8D8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807FE8DC  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE8E0  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 807FE8E4  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FE8E8  7C 00 07 75 */	extsb. r0, r0
/* 807FE8EC  41 82 00 24 */	beq lbl_807FE910
/* 807FE8F0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 807FE8F4  4B A6 90 98 */	b cM_rndFX__Ff
/* 807FE8F8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807FE8FC  EC 20 08 2A */	fadds f1, f0, f1
/* 807FE900  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807FE904  EC 00 08 28 */	fsubs f0, f0, f1
/* 807FE908  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807FE90C  48 00 00 20 */	b lbl_807FE92C
lbl_807FE910:
/* 807FE910  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 807FE914  4B A6 90 78 */	b cM_rndFX__Ff
/* 807FE918  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 807FE91C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807FE920  EC 02 00 2A */	fadds f0, f2, f0
/* 807FE924  EC 00 08 2A */	fadds f0, f0, f1
/* 807FE928  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_807FE92C:
/* 807FE92C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FE930  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_807FE934:
/* 807FE934  A8 9E 06 6C */	lha r4, 0x66c(r30)
/* 807FE938  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 807FE93C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FE940  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807FE944  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807FE948  7C 03 04 2E */	lfsx f0, r3, r0
/* 807FE94C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807FE950  EC 22 00 32 */	fmuls f1, f2, f0
/* 807FE954  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 807FE958  1C 04 08 98 */	mulli r0, r4, 0x898
/* 807FE95C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FE960  7C 03 04 2E */	lfsx f0, r3, r0
/* 807FE964  EC 02 00 32 */	fmuls f0, f2, f0
/* 807FE968  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807FE96C  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 807FE970  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FE974  7C 63 02 14 */	add r3, r3, r0
/* 807FE978  C0 03 00 04 */	lfs f0, 4(r3)
/* 807FE97C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807FE980  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807FE984  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807FE988  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 807FE98C  EC 20 08 2A */	fadds f1, f0, f1
/* 807FE990  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE994  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FE998  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE99C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE9A0  4B A7 10 9C */	b cLib_addCalc2__FPffff
/* 807FE9A4  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807FE9A8  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 807FE9AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807FE9B0  EC 21 00 2A */	fadds f1, f1, f0
/* 807FE9B4  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE9B8  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FE9BC  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE9C0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE9C4  4B A7 10 78 */	b cLib_addCalc2__FPffff
/* 807FE9C8  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FE9CC  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807FE9D0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807FE9D4  EC 21 00 2A */	fadds f1, f1, f0
/* 807FE9D8  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FE9DC  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FE9E0  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FE9E4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FE9E8  4B A7 10 54 */	b cLib_addCalc2__FPffff
/* 807FE9EC  38 7E 06 90 */	addi r3, r30, 0x690
/* 807FE9F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FE9F4  FC 40 08 90 */	fmr f2, f1
/* 807FE9F8  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 807FE9FC  4B A7 10 40 */	b cLib_addCalc2__FPffff
/* 807FEA00  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 807FEA04  28 00 00 01 */	cmplwi r0, 1
/* 807FEA08  41 82 00 60 */	beq lbl_807FEA68
/* 807FEA0C  7F C3 F3 78 */	mr r3, r30
/* 807FEA10  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807FEA14  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 807FEA18  EC 21 00 2A */	fadds f1, f1, f0
/* 807FEA1C  4B FF EF BD */	bl pl_check__FP10e_yh_classf
/* 807FEA20  2C 03 00 00 */	cmpwi r3, 0
/* 807FEA24  40 82 00 44 */	bne lbl_807FEA68
/* 807FEA28  38 00 00 00 */	li r0, 0
/* 807FEA2C  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FEA30  38 00 00 02 */	li r0, 2
/* 807FEA34  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FEA38  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008D@ha */
/* 807FEA3C  38 03 00 8D */	addi r0, r3, 0x008D /* 0x0007008D@l */
/* 807FEA40  90 01 00 08 */	stw r0, 8(r1)
/* 807FEA44  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FEA48  38 81 00 08 */	addi r4, r1, 8
/* 807FEA4C  38 A0 00 00 */	li r5, 0
/* 807FEA50  38 C0 FF FF */	li r6, -1
/* 807FEA54  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FEA58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FEA5C  7D 89 03 A6 */	mtctr r12
/* 807FEA60  4E 80 04 21 */	bctrl 
/* 807FEA64  48 00 00 58 */	b lbl_807FEABC
lbl_807FEA68:
/* 807FEA68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FEA6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FEA70  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807FEA74  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807FEA78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FEA7C  40 82 00 40 */	bne lbl_807FEABC
/* 807FEA80  80 03 05 70 */	lwz r0, 0x570(r3)
/* 807FEA84  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 807FEA88  40 82 00 34 */	bne lbl_807FEABC
/* 807FEA8C  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 807FEA90  2C 00 00 00 */	cmpwi r0, 0
/* 807FEA94  40 82 00 28 */	bne lbl_807FEABC
/* 807FEA98  7F C3 F3 78 */	mr r3, r30
/* 807FEA9C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807FEAA0  4B FF EF 39 */	bl pl_check__FP10e_yh_classf
/* 807FEAA4  2C 03 00 00 */	cmpwi r3, 0
/* 807FEAA8  41 82 00 14 */	beq lbl_807FEABC
/* 807FEAAC  38 00 00 04 */	li r0, 4
/* 807FEAB0  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FEAB4  38 00 00 00 */	li r0, 0
/* 807FEAB8  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807FEABC:
/* 807FEABC  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FEAC0  7C 00 07 75 */	extsb. r0, r0
/* 807FEAC4  41 82 00 AC */	beq lbl_807FEB70
/* 807FEAC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FEACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FEAD0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 807FEAD4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807FEAD8  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807FEADC  3C 84 00 01 */	addis r4, r4, 1
/* 807FEAE0  38 04 80 00 */	addi r0, r4, -32768
/* 807FEAE4  7C 04 07 34 */	extsh r4, r0
/* 807FEAE8  38 A0 00 08 */	li r5, 8
/* 807FEAEC  38 C0 08 00 */	li r6, 0x800
/* 807FEAF0  4B A7 1B 18 */	b cLib_addCalcAngleS2__FPssss
/* 807FEAF4  38 61 00 10 */	addi r3, r1, 0x10
/* 807FEAF8  38 9D 05 38 */	addi r4, r29, 0x538
/* 807FEAFC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807FEB00  4B A6 80 34 */	b __mi__4cXyzCFRC3Vec
/* 807FEB04  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 807FEB08  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807FEB0C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807FEB10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807FEB14  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807FEB18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807FEB1C  EC 21 00 72 */	fmuls f1, f1, f1
/* 807FEB20  EC 00 00 32 */	fmuls f0, f0, f0
/* 807FEB24  EC 41 00 2A */	fadds f2, f1, f0
/* 807FEB28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FEB2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FEB30  40 81 00 0C */	ble lbl_807FEB3C
/* 807FEB34  FC 00 10 34 */	frsqrte f0, f2
/* 807FEB38  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807FEB3C:
/* 807FEB3C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 807FEB40  4B A6 8B 34 */	b cM_atan2s__Fff
/* 807FEB44  7C 64 07 34 */	extsh r4, r3
/* 807FEB48  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FEB4C  3C 84 00 01 */	addis r4, r4, 1
/* 807FEB50  38 04 80 00 */	addi r0, r4, -32768
/* 807FEB54  7C 04 07 34 */	extsh r4, r0
/* 807FEB58  38 A0 00 08 */	li r5, 8
/* 807FEB5C  38 C0 04 00 */	li r6, 0x400
/* 807FEB60  4B A7 1A A8 */	b cLib_addCalcAngleS2__FPssss
/* 807FEB64  38 00 00 01 */	li r0, 1
/* 807FEB68  98 1E 0B 18 */	stb r0, 0xb18(r30)
/* 807FEB6C  48 00 00 2C */	b lbl_807FEB98
lbl_807FEB70:
/* 807FEB70  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807FEB74  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807FEB78  38 A0 00 08 */	li r5, 8
/* 807FEB7C  38 C0 08 00 */	li r6, 0x800
/* 807FEB80  4B A7 1A 88 */	b cLib_addCalcAngleS2__FPssss
/* 807FEB84  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FEB88  38 80 00 00 */	li r4, 0
/* 807FEB8C  38 A0 00 08 */	li r5, 8
/* 807FEB90  38 C0 04 00 */	li r6, 0x400
/* 807FEB94  4B A7 1A 74 */	b cLib_addCalcAngleS2__FPssss
lbl_807FEB98:
/* 807FEB98  39 61 00 80 */	addi r11, r1, 0x80
/* 807FEB9C  4B B6 36 8C */	b _restgpr_29
/* 807FEBA0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807FEBA4  7C 08 03 A6 */	mtlr r0
/* 807FEBA8  38 21 00 80 */	addi r1, r1, 0x80
/* 807FEBAC  4E 80 00 20 */	blr 
