lbl_8078FBC8:
/* 8078FBC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8078FBCC  7C 08 02 A6 */	mflr r0
/* 8078FBD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078FBD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8078FBD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8078FBDC  7C 7E 1B 78 */	mr r30, r3
/* 8078FBE0  3C 80 80 79 */	lis r4, lit_3902@ha /* 0x80791D70@ha */
/* 8078FBE4  3B E4 1D 70 */	addi r31, r4, lit_3902@l /* 0x80791D70@l */
/* 8078FBE8  38 00 00 06 */	li r0, 6
/* 8078FBEC  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 8078FBF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078FBF4  D0 23 05 2C */	stfs f1, 0x52c(r3)
/* 8078FBF8  A8 03 06 78 */	lha r0, 0x678(r3)
/* 8078FBFC  2C 00 00 01 */	cmpwi r0, 1
/* 8078FC00  41 82 00 34 */	beq lbl_8078FC34
/* 8078FC04  40 80 00 A4 */	bge lbl_8078FCA8
/* 8078FC08  2C 00 00 00 */	cmpwi r0, 0
/* 8078FC0C  40 80 00 08 */	bge lbl_8078FC14
/* 8078FC10  48 00 00 98 */	b lbl_8078FCA8
lbl_8078FC14:
/* 8078FC14  38 80 00 09 */	li r4, 9
/* 8078FC18  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8078FC1C  38 A0 00 00 */	li r5, 0
/* 8078FC20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8078FC24  4B FF E7 91 */	bl anm_init__FP10e_sh_classifUcf
/* 8078FC28  38 00 00 01 */	li r0, 1
/* 8078FC2C  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8078FC30  48 00 00 78 */	b lbl_8078FCA8
lbl_8078FC34:
/* 8078FC34  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8078FC38  38 80 00 01 */	li r4, 1
/* 8078FC3C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8078FC40  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8078FC44  40 82 00 14 */	bne lbl_8078FC58
/* 8078FC48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8078FC4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078FC50  41 82 00 08 */	beq lbl_8078FC58
/* 8078FC54  38 80 00 00 */	li r4, 0
lbl_8078FC58:
/* 8078FC58  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8078FC5C  41 82 00 4C */	beq lbl_8078FCA8
/* 8078FC60  38 00 00 02 */	li r0, 2
/* 8078FC64  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 8078FC68  88 1E 0C EA */	lbz r0, 0xcea(r30)
/* 8078FC6C  7C 00 07 75 */	extsb. r0, r0
/* 8078FC70  40 82 00 10 */	bne lbl_8078FC80
/* 8078FC74  38 00 00 00 */	li r0, 0
/* 8078FC78  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8078FC7C  48 00 00 2C */	b lbl_8078FCA8
lbl_8078FC80:
/* 8078FC80  38 00 00 05 */	li r0, 5
/* 8078FC84  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8078FC88  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078FC8C  4B AD 7C C9 */	bl cM_rndF__Ff
/* 8078FC90  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8078FC94  EC 00 08 2A */	fadds f0, f0, f1
/* 8078FC98  FC 00 00 1E */	fctiwz f0, f0
/* 8078FC9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8078FCA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8078FCA4  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_8078FCA8:
/* 8078FCA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8078FCAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8078FCB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8078FCB4  7C 08 03 A6 */	mtlr r0
/* 8078FCB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8078FCBC  4E 80 00 20 */	blr 
