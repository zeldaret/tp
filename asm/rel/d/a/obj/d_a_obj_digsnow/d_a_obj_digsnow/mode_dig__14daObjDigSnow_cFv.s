lbl_80BDD124:
/* 80BDD124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD128  7C 08 02 A6 */	mflr r0
/* 80BDD12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD134  7C 7F 1B 78 */	mr r31, r3
/* 80BDD138  3C 60 80 BE */	lis r3, lit_3744@ha /* 0x80BDD6C8@ha */
/* 80BDD13C  38 83 D6 C8 */	addi r4, r3, lit_3744@l /* 0x80BDD6C8@l */
/* 80BDD140  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BDD144  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80BDD148  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 80BDD14C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BDD150  EC 22 00 2A */	fadds f1, f2, f0
/* 80BDD154  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BDD158  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BDD15C  FC 00 02 10 */	fabs f0, f0
/* 80BDD160  FC 20 00 18 */	frsp f1, f0
/* 80BDD164  FC 40 08 90 */	fmr f2, f1
/* 80BDD168  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80BDD16C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BDD170  40 80 00 08 */	bge lbl_80BDD178
/* 80BDD174  FC 40 00 90 */	fmr f2, f0
lbl_80BDD178:
/* 80BDD178  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80BDD17C  C0 3F 09 40 */	lfs f1, 0x940(r31)
/* 80BDD180  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80BDD184  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BDD188  4B 69 35 B9 */	bl cLib_chaseF__FPfff
/* 80BDD18C  2C 03 00 00 */	cmpwi r3, 0
/* 80BDD190  41 82 00 18 */	beq lbl_80BDD1A8
/* 80BDD194  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 80BDD198  28 00 00 02 */	cmplwi r0, 2
/* 80BDD19C  40 82 00 0C */	bne lbl_80BDD1A8
/* 80BDD1A0  7F E3 FB 78 */	mr r3, r31
/* 80BDD1A4  48 00 00 19 */	bl mode_init_end__14daObjDigSnow_cFv
lbl_80BDD1A8:
/* 80BDD1A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD1B0  7C 08 03 A6 */	mtlr r0
/* 80BDD1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD1B8  4E 80 00 20 */	blr 
