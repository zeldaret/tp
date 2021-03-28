lbl_807FEBB0:
/* 807FEBB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807FEBB4  7C 08 02 A6 */	mflr r0
/* 807FEBB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807FEBBC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807FEBC0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807FEBC4  7C 7E 1B 78 */	mr r30, r3
/* 807FEBC8  3C 60 80 80 */	lis r3, lit_3902@ha
/* 807FEBCC  3B E3 42 7C */	addi r31, r3, lit_3902@l
/* 807FEBD0  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 807FEBD4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807FEBD8  40 82 00 40 */	bne lbl_807FEC18
/* 807FEBDC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FEBE0  4B A6 8D 74 */	b cM_rndF__Ff
/* 807FEBE4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 807FEBE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FEBEC  40 80 00 2C */	bge lbl_807FEC18
/* 807FEBF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070087@ha */
/* 807FEBF4  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00070087@l */
/* 807FEBF8  90 01 00 08 */	stw r0, 8(r1)
/* 807FEBFC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FEC00  38 81 00 08 */	addi r4, r1, 8
/* 807FEC04  38 A0 FF FF */	li r5, -1
/* 807FEC08  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FEC0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FEC10  7D 89 03 A6 */	mtctr r12
/* 807FEC14  4E 80 04 21 */	bctrl 
lbl_807FEC18:
/* 807FEC18  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 807FEC1C  2C 00 00 01 */	cmpwi r0, 1
/* 807FEC20  41 82 00 A8 */	beq lbl_807FECC8
/* 807FEC24  40 80 01 C0 */	bge lbl_807FEDE4
/* 807FEC28  2C 00 00 00 */	cmpwi r0, 0
/* 807FEC2C  40 80 00 08 */	bge lbl_807FEC34
/* 807FEC30  48 00 01 B4 */	b lbl_807FEDE4
lbl_807FEC34:
/* 807FEC34  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807FEC38  2C 00 00 00 */	cmpwi r0, 0
/* 807FEC3C  40 82 00 78 */	bne lbl_807FECB4
/* 807FEC40  7F C3 F3 78 */	mr r3, r30
/* 807FEC44  38 80 00 13 */	li r4, 0x13
/* 807FEC48  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FEC4C  38 A0 00 02 */	li r5, 2
/* 807FEC50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FEC54  4B FF EA 69 */	bl anm_init__FP10e_yh_classifUcf
/* 807FEC58  7F C3 F3 78 */	mr r3, r30
/* 807FEC5C  38 80 00 15 */	li r4, 0x15
/* 807FEC60  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FEC64  38 A0 00 02 */	li r5, 2
/* 807FEC68  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FEC6C  4B FF EA FD */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FEC70  38 00 00 01 */	li r0, 1
/* 807FEC74  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FEC78  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 807FEC7C  4B A6 8C D8 */	b cM_rndF__Ff
/* 807FEC80  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 807FEC84  EC 00 08 2A */	fadds f0, f0, f1
/* 807FEC88  FC 00 00 1E */	fctiwz f0, f0
/* 807FEC8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807FEC90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807FEC94  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 807FEC98  38 00 00 00 */	li r0, 0
/* 807FEC9C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807FECA0  3C 60 80 80 */	lis r3, l_HIO@ha
/* 807FECA4  38 63 47 28 */	addi r3, r3, l_HIO@l
/* 807FECA8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807FECAC  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 807FECB0  48 00 01 34 */	b lbl_807FEDE4
lbl_807FECB4:
/* 807FECB4  3C 60 80 80 */	lis r3, l_HIO@ha
/* 807FECB8  38 63 47 28 */	addi r3, r3, l_HIO@l
/* 807FECBC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807FECC0  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 807FECC4  48 00 01 20 */	b lbl_807FEDE4
lbl_807FECC8:
/* 807FECC8  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807FECCC  2C 00 00 00 */	cmpwi r0, 0
/* 807FECD0  40 82 00 64 */	bne lbl_807FED34
/* 807FECD4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807FECD8  4B A6 8C 7C */	b cM_rndF__Ff
/* 807FECDC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807FECE0  EC 00 08 2A */	fadds f0, f0, f1
/* 807FECE4  FC 00 00 1E */	fctiwz f0, f0
/* 807FECE8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807FECEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807FECF0  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807FECF4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807FECF8  4B A6 8C 94 */	b cM_rndFX__Ff
/* 807FECFC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807FED00  EC 00 08 2A */	fadds f0, f0, f1
/* 807FED04  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 807FED08  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807FED0C  4B A6 8C 80 */	b cM_rndFX__Ff
/* 807FED10  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807FED14  EC 00 08 2A */	fadds f0, f0, f1
/* 807FED18  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 807FED1C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 807FED20  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807FED24  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FED28  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807FED2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FED30  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_807FED34:
/* 807FED34  A8 9E 06 6C */	lha r4, 0x66c(r30)
/* 807FED38  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 807FED3C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FED40  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807FED44  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807FED48  7C 23 04 2E */	lfsx f1, r3, r0
/* 807FED4C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807FED50  EC 20 00 72 */	fmuls f1, f0, f1
/* 807FED54  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807FED58  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 807FED5C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FED60  7C 63 02 14 */	add r3, r3, r0
/* 807FED64  C0 43 00 04 */	lfs f2, 4(r3)
/* 807FED68  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807FED6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807FED70  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807FED74  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 807FED78  EC 20 08 2A */	fadds f1, f0, f1
/* 807FED7C  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FED80  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FED84  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FED88  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FED8C  4B A7 0C B0 */	b cLib_addCalc2__FPffff
/* 807FED90  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807FED94  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 807FED98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807FED9C  EC 21 00 2A */	fadds f1, f1, f0
/* 807FEDA0  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FEDA4  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FEDA8  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FEDAC  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FEDB0  4B A7 0C 8C */	b cLib_addCalc2__FPffff
/* 807FEDB4  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FEDB8  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 807FEDBC  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FEDC0  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FEDC4  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FEDC8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FEDCC  4B A7 0C 70 */	b cLib_addCalc2__FPffff
/* 807FEDD0  38 7E 06 90 */	addi r3, r30, 0x690
/* 807FEDD4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FEDD8  FC 40 08 90 */	fmr f2, f1
/* 807FEDDC  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 807FEDE0  4B A7 0C 5C */	b cLib_addCalc2__FPffff
lbl_807FEDE4:
/* 807FEDE4  38 00 40 00 */	li r0, 0x4000
/* 807FEDE8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807FEDEC  38 00 00 00 */	li r0, 0
/* 807FEDF0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807FEDF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807FEDF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807FEDFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807FEE00  7C 08 03 A6 */	mtlr r0
/* 807FEE04  38 21 00 30 */	addi r1, r1, 0x30
/* 807FEE08  4E 80 00 20 */	blr 
