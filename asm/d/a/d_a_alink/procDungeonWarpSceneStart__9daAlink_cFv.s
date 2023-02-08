lbl_8011F460:
/* 8011F460  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011F464  7C 08 02 A6 */	mflr r0
/* 8011F468  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011F46C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011F470  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011F474  7C 7E 1B 78 */	mr r30, r3
/* 8011F478  A8 03 30 10 */	lha r0, 0x3010(r3)
/* 8011F47C  2C 00 00 00 */	cmpwi r0, 0
/* 8011F480  40 82 00 24 */	bne lbl_8011F4A4
/* 8011F484  38 00 00 01 */	li r0, 1
/* 8011F488  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8011F48C  3C 80 00 06 */	lis r4, 0x0006 /* 0x00060015@ha */
/* 8011F490  38 84 00 15 */	addi r4, r4, 0x0015 /* 0x00060015@l */
/* 8011F494  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8011F498  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8011F49C  7D 89 03 A6 */	mtctr r12
/* 8011F4A0  4E 80 04 21 */	bctrl 
lbl_8011F4A4:
/* 8011F4A4  4B EF F0 B5 */	bl fopOvlpM_IsPeek__Fv
/* 8011F4A8  2C 03 00 01 */	cmpwi r3, 1
/* 8011F4AC  40 82 00 0C */	bne lbl_8011F4B8
/* 8011F4B0  38 60 00 01 */	li r3, 1
/* 8011F4B4  48 00 01 08 */	b lbl_8011F5BC
lbl_8011F4B8:
/* 8011F4B8  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 8011F4BC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011F4C0  C0 42 92 A4 */	lfs f2, lit_6021(r2)
/* 8011F4C4  48 15 12 7D */	bl cLib_chaseF__FPfff
/* 8011F4C8  7C 7F 1B 78 */	mr r31, r3
/* 8011F4CC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8011F4D0  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 8011F4D4  38 7E 04 F0 */	addi r3, r30, 0x4f0
/* 8011F4D8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011F4DC  C0 42 94 00 */	lfs f2, lit_13702(r2)
/* 8011F4E0  48 15 12 61 */	bl cLib_chaseF__FPfff
/* 8011F4E4  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 8011F4E8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8011F4EC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8011F4F0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8011F4F4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8011F4F8  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8011F4FC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8011F500  2C 1F 00 00 */	cmpwi r31, 0
/* 8011F504  40 82 00 18 */	bne lbl_8011F51C
/* 8011F508  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8011F50C  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8011F510  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011F514  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8011F518  48 00 00 3C */	b lbl_8011F554
lbl_8011F51C:
/* 8011F51C  A8 7E 30 0C */	lha r3, 0x300c(r30)
/* 8011F520  38 03 FE 00 */	addi r0, r3, -512
/* 8011F524  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011F528  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011F52C  2C 00 00 00 */	cmpwi r0, 0
/* 8011F530  40 80 00 14 */	bge lbl_8011F544
/* 8011F534  7F C3 F3 78 */	mr r3, r30
/* 8011F538  38 80 00 00 */	li r4, 0
/* 8011F53C  4B F9 AB 95 */	bl checkNextAction__9daAlink_cFi
/* 8011F540  48 00 00 7C */	b lbl_8011F5BC
lbl_8011F544:
/* 8011F544  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8011F548  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011F54C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011F550  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_8011F554:
/* 8011F554  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8011F558  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8011F55C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8011F560  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8011F564  7C 23 04 2E */	lfsx f1, r3, r0
/* 8011F568  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8011F56C  C0 02 96 2C */	lfs f0, lit_34190(r2)
/* 8011F570  EC 00 00 72 */	fmuls f0, f0, f1
/* 8011F574  FC 00 00 1E */	fctiwz f0, f0
/* 8011F578  D8 01 00 08 */	stfd f0, 8(r1)
/* 8011F57C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011F580  7C 03 02 14 */	add r0, r3, r0
/* 8011F584  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8011F588  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 8011F58C  EC 60 00 72 */	fmuls f3, f0, f1
/* 8011F590  C0 42 93 20 */	lfs f2, lit_7449(r2)
/* 8011F594  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011F598  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8011F59C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011F5A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8011F5A4  EC 03 00 2A */	fadds f0, f3, f0
/* 8011F5A8  FC 00 00 1E */	fctiwz f0, f0
/* 8011F5AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8011F5B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011F5B4  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8011F5B8  38 60 00 01 */	li r3, 1
lbl_8011F5BC:
/* 8011F5BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011F5C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011F5C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011F5C8  7C 08 03 A6 */	mtlr r0
/* 8011F5CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8011F5D0  4E 80 00 20 */	blr 
