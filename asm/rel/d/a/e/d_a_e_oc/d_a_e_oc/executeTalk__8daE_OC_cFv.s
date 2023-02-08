lbl_8072F5E0:
/* 8072F5E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8072F5E4  7C 08 02 A6 */	mflr r0
/* 8072F5E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072F5EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8072F5F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8072F5F4  7C 7E 1B 78 */	mr r30, r3
/* 8072F5F8  3C 80 80 73 */	lis r4, lit_3911@ha /* 0x80735B28@ha */
/* 8072F5FC  3B E4 5B 28 */	addi r31, r4, lit_3911@l /* 0x80735B28@l */
/* 8072F600  38 00 00 00 */	li r0, 0
/* 8072F604  98 03 06 DE */	stb r0, 0x6de(r3)
/* 8072F608  4B FF D7 A1 */	bl setWatchMode__8daE_OC_cFv
/* 8072F60C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072F610  40 82 02 EC */	bne lbl_8072F8FC
/* 8072F614  7F C3 F3 78 */	mr r3, r30
/* 8072F618  4B FF DB C5 */	bl searchSound__8daE_OC_cFv
/* 8072F61C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072F620  40 82 02 DC */	bne lbl_8072F8FC
/* 8072F624  7F C3 F3 78 */	mr r3, r30
/* 8072F628  4B FF D9 69 */	bl searchPlayer2__8daE_OC_cFv
/* 8072F62C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072F630  41 82 00 18 */	beq lbl_8072F648
/* 8072F634  7F C3 F3 78 */	mr r3, r30
/* 8072F638  38 80 00 03 */	li r4, 3
/* 8072F63C  38 A0 00 01 */	li r5, 1
/* 8072F640  4B FF E6 7D */	bl setActionMode__8daE_OC_cFii
/* 8072F644  48 00 02 B8 */	b lbl_8072F8FC
lbl_8072F648:
/* 8072F648  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 8072F64C  2C 00 00 02 */	cmpwi r0, 2
/* 8072F650  41 82 01 CC */	beq lbl_8072F81C
/* 8072F654  40 80 00 14 */	bge lbl_8072F668
/* 8072F658  2C 00 00 00 */	cmpwi r0, 0
/* 8072F65C  41 82 00 1C */	beq lbl_8072F678
/* 8072F660  40 80 00 60 */	bge lbl_8072F6C0
/* 8072F664  48 00 02 3C */	b lbl_8072F8A0
lbl_8072F668:
/* 8072F668  2C 00 00 04 */	cmpwi r0, 4
/* 8072F66C  41 82 02 04 */	beq lbl_8072F870
/* 8072F670  40 80 02 30 */	bge lbl_8072F8A0
/* 8072F674  48 00 01 C0 */	b lbl_8072F834
lbl_8072F678:
/* 8072F678  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072F67C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8072F680  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8072F684  4B B3 83 09 */	bl cM_rndFX__Ff
/* 8072F688  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8072F68C  EC 00 08 2A */	fadds f0, f0, f1
/* 8072F690  FC 00 00 1E */	fctiwz f0, f0
/* 8072F694  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8072F698  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8072F69C  B0 1E 06 C6 */	sth r0, 0x6c6(r30)
/* 8072F6A0  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8072F6A4  4B B3 82 B1 */	bl cM_rndF__Ff
/* 8072F6A8  FC 00 08 1E */	fctiwz f0, f1
/* 8072F6AC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8072F6B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072F6B4  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F6B8  38 00 00 01 */	li r0, 1
/* 8072F6BC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
lbl_8072F6C0:
/* 8072F6C0  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8072F6C4  2C 00 00 00 */	cmpwi r0, 0
/* 8072F6C8  41 82 00 10 */	beq lbl_8072F6D8
/* 8072F6CC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8072F6D0  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 8072F6D4  48 00 02 28 */	b lbl_8072F8FC
lbl_8072F6D8:
/* 8072F6D8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8072F6DC  4B B3 82 79 */	bl cM_rndF__Ff
/* 8072F6E0  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8072F6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F6E8  40 80 00 50 */	bge lbl_8072F738
/* 8072F6EC  7F C3 F3 78 */	mr r3, r30
/* 8072F6F0  38 80 00 1A */	li r4, 0x1a
/* 8072F6F4  38 A0 00 00 */	li r5, 0
/* 8072F6F8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072F6FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072F700  4B FF EB 75 */	bl setBck__8daE_OC_cFiUcff
/* 8072F704  38 00 00 03 */	li r0, 3
/* 8072F708  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F70C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018F@ha */
/* 8072F710  38 03 01 8F */	addi r0, r3, 0x018F /* 0x0007018F@l */
/* 8072F714  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072F718  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072F71C  38 81 00 10 */	addi r4, r1, 0x10
/* 8072F720  38 A0 FF FF */	li r5, -1
/* 8072F724  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072F728  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072F72C  7D 89 03 A6 */	mtctr r12
/* 8072F730  4E 80 04 21 */	bctrl 
/* 8072F734  48 00 01 6C */	b lbl_8072F8A0
lbl_8072F738:
/* 8072F738  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8072F73C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F740  40 80 00 70 */	bge lbl_8072F7B0
/* 8072F744  7F C3 F3 78 */	mr r3, r30
/* 8072F748  38 80 00 19 */	li r4, 0x19
/* 8072F74C  38 A0 00 02 */	li r5, 2
/* 8072F750  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072F754  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072F758  4B FF EB 1D */	bl setBck__8daE_OC_cFiUcff
/* 8072F75C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018A@ha */
/* 8072F760  38 03 01 8A */	addi r0, r3, 0x018A /* 0x0007018A@l */
/* 8072F764  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072F768  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072F76C  38 81 00 0C */	addi r4, r1, 0xc
/* 8072F770  38 A0 FF FF */	li r5, -1
/* 8072F774  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072F778  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072F77C  7D 89 03 A6 */	mtctr r12
/* 8072F780  4E 80 04 21 */	bctrl 
/* 8072F784  38 00 00 02 */	li r0, 2
/* 8072F788  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F78C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8072F790  4B B3 81 C5 */	bl cM_rndF__Ff
/* 8072F794  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8072F798  EC 00 08 2A */	fadds f0, f0, f1
/* 8072F79C  FC 00 00 1E */	fctiwz f0, f0
/* 8072F7A0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8072F7A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072F7A8  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F7AC  48 00 00 F4 */	b lbl_8072F8A0
lbl_8072F7B0:
/* 8072F7B0  7F C3 F3 78 */	mr r3, r30
/* 8072F7B4  38 80 00 18 */	li r4, 0x18
/* 8072F7B8  38 A0 00 02 */	li r5, 2
/* 8072F7BC  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072F7C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072F7C4  4B FF EA B1 */	bl setBck__8daE_OC_cFiUcff
/* 8072F7C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018B@ha */
/* 8072F7CC  38 03 01 8B */	addi r0, r3, 0x018B /* 0x0007018B@l */
/* 8072F7D0  90 01 00 08 */	stw r0, 8(r1)
/* 8072F7D4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072F7D8  38 81 00 08 */	addi r4, r1, 8
/* 8072F7DC  38 A0 FF FF */	li r5, -1
/* 8072F7E0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072F7E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072F7E8  7D 89 03 A6 */	mtctr r12
/* 8072F7EC  4E 80 04 21 */	bctrl 
/* 8072F7F0  38 00 00 02 */	li r0, 2
/* 8072F7F4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F7F8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8072F7FC  4B B3 81 59 */	bl cM_rndF__Ff
/* 8072F800  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8072F804  EC 00 08 2A */	fadds f0, f0, f1
/* 8072F808  FC 00 00 1E */	fctiwz f0, f0
/* 8072F80C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8072F810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072F814  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F818  48 00 00 88 */	b lbl_8072F8A0
lbl_8072F81C:
/* 8072F81C  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8072F820  2C 00 00 00 */	cmpwi r0, 0
/* 8072F824  40 82 00 7C */	bne lbl_8072F8A0
/* 8072F828  38 00 00 01 */	li r0, 1
/* 8072F82C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F830  48 00 00 70 */	b lbl_8072F8A0
lbl_8072F834:
/* 8072F834  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072F838  38 80 00 01 */	li r4, 1
/* 8072F83C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8072F840  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8072F844  40 82 00 18 */	bne lbl_8072F85C
/* 8072F848  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8072F84C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8072F850  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8072F854  41 82 00 08 */	beq lbl_8072F85C
/* 8072F858  38 80 00 00 */	li r4, 0
lbl_8072F85C:
/* 8072F85C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8072F860  41 82 00 40 */	beq lbl_8072F8A0
/* 8072F864  38 00 00 01 */	li r0, 1
/* 8072F868  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F86C  48 00 00 34 */	b lbl_8072F8A0
lbl_8072F870:
/* 8072F870  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 8072F874  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 8072F878  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8072F87C  2C 00 00 00 */	cmpwi r0, 0
/* 8072F880  40 82 00 7C */	bne lbl_8072F8FC
/* 8072F884  7F C3 F3 78 */	mr r3, r30
/* 8072F888  38 80 00 00 */	li r4, 0
/* 8072F88C  38 A0 00 00 */	li r5, 0
/* 8072F890  4B FF E4 2D */	bl setActionMode__8daE_OC_cFii
/* 8072F894  38 00 01 2C */	li r0, 0x12c
/* 8072F898  B0 1E 06 C6 */	sth r0, 0x6c6(r30)
/* 8072F89C  48 00 00 60 */	b lbl_8072F8FC
lbl_8072F8A0:
/* 8072F8A0  80 9E 06 70 */	lwz r4, 0x670(r30)
/* 8072F8A4  28 04 00 00 */	cmplwi r4, 0
/* 8072F8A8  41 82 00 10 */	beq lbl_8072F8B8
/* 8072F8AC  A8 1E 06 C6 */	lha r0, 0x6c6(r30)
/* 8072F8B0  2C 00 00 00 */	cmpwi r0, 0
/* 8072F8B4  40 82 00 30 */	bne lbl_8072F8E4
lbl_8072F8B8:
/* 8072F8B8  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 8072F8BC  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 8072F8C0  38 00 00 04 */	li r0, 4
/* 8072F8C4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F8C8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8072F8CC  4B B3 80 89 */	bl cM_rndF__Ff
/* 8072F8D0  FC 00 08 1E */	fctiwz f0, f1
/* 8072F8D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8072F8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072F8DC  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F8E0  48 00 00 1C */	b lbl_8072F8FC
lbl_8072F8E4:
/* 8072F8E4  7F C3 F3 78 */	mr r3, r30
/* 8072F8E8  4B 8E AE 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072F8EC  B0 7E 06 D4 */	sth r3, 0x6d4(r30)
/* 8072F8F0  B0 7E 06 BC */	sth r3, 0x6bc(r30)
/* 8072F8F4  38 00 00 01 */	li r0, 1
/* 8072F8F8  98 1E 06 DF */	stb r0, 0x6df(r30)
lbl_8072F8FC:
/* 8072F8FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8072F900  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8072F904  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8072F908  7C 08 03 A6 */	mtlr r0
/* 8072F90C  38 21 00 30 */	addi r1, r1, 0x30
/* 8072F910  4E 80 00 20 */	blr 
