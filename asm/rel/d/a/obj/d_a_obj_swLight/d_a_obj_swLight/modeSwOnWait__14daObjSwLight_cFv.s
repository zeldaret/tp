lbl_80CF766C:
/* 80CF766C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF7670  7C 08 02 A6 */	mflr r0
/* 80CF7674  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF7678  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF767C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CF7680  7C 7E 1B 78 */	mr r30, r3
/* 80CF7684  3C 80 80 D0 */	lis r4, l_sph_src_at@ha
/* 80CF7688  3B E4 83 A0 */	addi r31, r4, l_sph_src_at@l
/* 80CF768C  48 00 02 ED */	bl checkHit__14daObjSwLight_cFv
/* 80CF7690  88 7E 0A E6 */	lbz r3, 0xae6(r30)
/* 80CF7694  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80CF7698  41 82 00 10 */	beq lbl_80CF76A8
/* 80CF769C  7F C3 F3 78 */	mr r3, r30
/* 80CF76A0  48 00 00 DD */	bl init_modeOnLight__14daObjSwLight_cFv
/* 80CF76A4  48 00 00 C0 */	b lbl_80CF7764
lbl_80CF76A8:
/* 80CF76A8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80CF76AC  41 82 00 B0 */	beq lbl_80CF775C
/* 80CF76B0  88 7E 0A E1 */	lbz r3, 0xae1(r30)
/* 80CF76B4  28 03 00 3C */	cmplwi r3, 0x3c
/* 80CF76B8  41 81 00 0C */	bgt lbl_80CF76C4
/* 80CF76BC  38 03 00 01 */	addi r0, r3, 1
/* 80CF76C0  98 1E 0A E1 */	stb r0, 0xae1(r30)
lbl_80CF76C4:
/* 80CF76C4  88 7E 0A E1 */	lbz r3, 0xae1(r30)
/* 80CF76C8  28 03 00 05 */	cmplwi r3, 5
/* 80CF76CC  40 80 00 10 */	bge lbl_80CF76DC
/* 80CF76D0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80CF76D4  D0 1E 0A DC */	stfs f0, 0xadc(r30)
/* 80CF76D8  48 00 00 8C */	b lbl_80CF7764
lbl_80CF76DC:
/* 80CF76DC  40 82 00 10 */	bne lbl_80CF76EC
/* 80CF76E0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80CF76E4  D0 1E 0A DC */	stfs f0, 0xadc(r30)
/* 80CF76E8  48 00 00 7C */	b lbl_80CF7764
lbl_80CF76EC:
/* 80CF76EC  28 03 00 32 */	cmplwi r3, 0x32
/* 80CF76F0  40 80 00 48 */	bge lbl_80CF7738
/* 80CF76F4  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80CF76F8  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80CF76FC  38 03 FF FB */	addi r0, r3, -5
/* 80CF7700  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 80CF7704  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF7708  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF770C  3C 00 43 30 */	lis r0, 0x4330
/* 80CF7710  90 01 00 08 */	stw r0, 8(r1)
/* 80CF7714  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CF7718  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CF771C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CF7720  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80CF7724  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CF7728  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF772C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CF7730  D0 1E 0A DC */	stfs f0, 0xadc(r30)
/* 80CF7734  48 00 00 30 */	b lbl_80CF7764
lbl_80CF7738:
/* 80CF7738  40 82 00 10 */	bne lbl_80CF7748
/* 80CF773C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80CF7740  D0 1E 0A DC */	stfs f0, 0xadc(r30)
/* 80CF7744  48 00 00 20 */	b lbl_80CF7764
lbl_80CF7748:
/* 80CF7748  28 03 00 3C */	cmplwi r3, 0x3c
/* 80CF774C  40 82 00 18 */	bne lbl_80CF7764
/* 80CF7750  7F C3 F3 78 */	mr r3, r30
/* 80CF7754  48 00 00 85 */	bl init_modeSwOffWait__14daObjSwLight_cFv
/* 80CF7758  48 00 00 0C */	b lbl_80CF7764
lbl_80CF775C:
/* 80CF775C  38 7E 0A E1 */	addi r3, r30, 0xae1
/* 80CF7760  48 00 0C 15 */	bl func_80CF8374
lbl_80CF7764:
/* 80CF7764  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF7768  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CF776C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF7770  7C 08 03 A6 */	mtlr r0
/* 80CF7774  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF7778  4E 80 00 20 */	blr 
