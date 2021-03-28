lbl_806DF660:
/* 806DF660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806DF664  7C 08 02 A6 */	mflr r0
/* 806DF668  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DF66C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806DF670  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806DF674  7C 7F 1B 78 */	mr r31, r3
/* 806DF678  3C 80 80 6E */	lis r4, lit_3646@ha
/* 806DF67C  3B C4 FD F4 */	addi r30, r4, lit_3646@l
/* 806DF680  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 806DF684  2C 00 00 02 */	cmpwi r0, 2
/* 806DF688  41 82 00 84 */	beq lbl_806DF70C
/* 806DF68C  40 80 00 14 */	bge lbl_806DF6A0
/* 806DF690  2C 00 00 00 */	cmpwi r0, 0
/* 806DF694  41 82 00 18 */	beq lbl_806DF6AC
/* 806DF698  40 80 00 34 */	bge lbl_806DF6CC
/* 806DF69C  48 00 01 18 */	b lbl_806DF7B4
lbl_806DF6A0:
/* 806DF6A0  2C 00 00 04 */	cmpwi r0, 4
/* 806DF6A4  40 80 01 10 */	bge lbl_806DF7B4
/* 806DF6A8  48 00 00 D8 */	b lbl_806DF780
lbl_806DF6AC:
/* 806DF6AC  38 80 00 06 */	li r4, 6
/* 806DF6B0  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DF6B4  38 A0 00 02 */	li r5, 2
/* 806DF6B8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 806DF6BC  4B FF FD F9 */	bl anm_init__FP10e_gs_classifUcf
/* 806DF6C0  38 00 00 01 */	li r0, 1
/* 806DF6C4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 806DF6C8  48 00 00 EC */	b lbl_806DF7B4
lbl_806DF6CC:
/* 806DF6CC  C0 5F 06 84 */	lfs f2, 0x684(r31)
/* 806DF6D0  3C 80 80 6E */	lis r4, l_HIO@ha
/* 806DF6D4  38 84 FE A8 */	addi r4, r4, l_HIO@l
/* 806DF6D8  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 806DF6DC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 806DF6E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DF6E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806DF6E8  40 80 00 CC */	bge lbl_806DF7B4
/* 806DF6EC  38 80 00 04 */	li r4, 4
/* 806DF6F0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 806DF6F4  38 A0 00 00 */	li r5, 0
/* 806DF6F8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 806DF6FC  4B FF FD B9 */	bl anm_init__FP10e_gs_classifUcf
/* 806DF700  38 00 00 02 */	li r0, 2
/* 806DF704  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 806DF708  48 00 00 AC */	b lbl_806DF7B4
lbl_806DF70C:
/* 806DF70C  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DF710  38 80 00 01 */	li r4, 1
/* 806DF714  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806DF718  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806DF71C  40 82 00 18 */	bne lbl_806DF734
/* 806DF720  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 806DF724  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DF728  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806DF72C  41 82 00 08 */	beq lbl_806DF734
/* 806DF730  38 80 00 00 */	li r4, 0
lbl_806DF734:
/* 806DF734  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806DF738  41 82 00 7C */	beq lbl_806DF7B4
/* 806DF73C  7F E3 FB 78 */	mr r3, r31
/* 806DF740  38 80 00 05 */	li r4, 5
/* 806DF744  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 806DF748  38 A0 00 02 */	li r5, 2
/* 806DF74C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 806DF750  4B FF FD 65 */	bl anm_init__FP10e_gs_classifUcf
/* 806DF754  38 00 00 03 */	li r0, 3
/* 806DF758  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 806DF75C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 806DF760  4B B8 81 F4 */	b cM_rndF__Ff
/* 806DF764  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806DF768  EC 00 08 2A */	fadds f0, f0, f1
/* 806DF76C  FC 00 00 1E */	fctiwz f0, f0
/* 806DF770  D8 01 00 08 */	stfd f0, 8(r1)
/* 806DF774  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806DF778  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 806DF77C  48 00 00 38 */	b lbl_806DF7B4
lbl_806DF780:
/* 806DF780  C0 5F 06 84 */	lfs f2, 0x684(r31)
/* 806DF784  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806DF788  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806DF78C  38 63 FE A8 */	addi r3, r3, l_HIO@l
/* 806DF790  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DF794  EC 01 00 2A */	fadds f0, f1, f0
/* 806DF798  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806DF79C  40 81 00 18 */	ble lbl_806DF7B4
/* 806DF7A0  A8 1F 06 8C */	lha r0, 0x68c(r31)
/* 806DF7A4  2C 00 00 00 */	cmpwi r0, 0
/* 806DF7A8  40 82 00 0C */	bne lbl_806DF7B4
/* 806DF7AC  38 00 00 00 */	li r0, 0
/* 806DF7B0  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_806DF7B4:
/* 806DF7B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806DF7B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806DF7BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806DF7C0  7C 08 03 A6 */	mtlr r0
/* 806DF7C4  38 21 00 20 */	addi r1, r1, 0x20
/* 806DF7C8  4E 80 00 20 */	blr 
