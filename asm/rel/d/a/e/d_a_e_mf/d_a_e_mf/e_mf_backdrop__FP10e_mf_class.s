lbl_8070FBEC:
/* 8070FBEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8070FBF0  7C 08 02 A6 */	mflr r0
/* 8070FBF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070FBF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8070FBFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8070FC00  7C 7E 1B 78 */	mr r30, r3
/* 8070FC04  3C 80 80 71 */	lis r4, lit_3828@ha
/* 8070FC08  3B E4 39 74 */	addi r31, r4, lit_3828@l
/* 8070FC0C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070FC10  2C 00 00 01 */	cmpwi r0, 1
/* 8070FC14  41 82 00 7C */	beq lbl_8070FC90
/* 8070FC18  40 80 00 10 */	bge lbl_8070FC28
/* 8070FC1C  2C 00 00 00 */	cmpwi r0, 0
/* 8070FC20  40 80 00 14 */	bge lbl_8070FC34
/* 8070FC24  48 00 01 04 */	b lbl_8070FD28
lbl_8070FC28:
/* 8070FC28  2C 00 00 03 */	cmpwi r0, 3
/* 8070FC2C  40 80 00 FC */	bge lbl_8070FD28
/* 8070FC30  48 00 00 94 */	b lbl_8070FCC4
lbl_8070FC34:
/* 8070FC34  38 80 00 12 */	li r4, 0x12
/* 8070FC38  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070FC3C  38 A0 00 00 */	li r5, 0
/* 8070FC40  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 8070FC44  4B FF AB E9 */	bl anm_init__FP10e_mf_classifUcf
/* 8070FC48  38 00 00 01 */	li r0, 1
/* 8070FC4C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070FC50  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8070FC54  B0 1E 07 06 */	sth r0, 0x706(r30)
/* 8070FC58  38 00 00 00 */	li r0, 0
/* 8070FC5C  B0 1E 07 04 */	sth r0, 0x704(r30)
/* 8070FC60  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8070FC64  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070FC68  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CA@ha */
/* 8070FC6C  38 03 03 CA */	addi r0, r3, 0x03CA /* 0x000703CA@l */
/* 8070FC70  90 01 00 08 */	stw r0, 8(r1)
/* 8070FC74  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070FC78  38 81 00 08 */	addi r4, r1, 8
/* 8070FC7C  38 A0 FF FF */	li r5, -1
/* 8070FC80  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070FC84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070FC88  7D 89 03 A6 */	mtctr r12
/* 8070FC8C  4E 80 04 21 */	bctrl 
lbl_8070FC90:
/* 8070FC90  A8 1E 07 04 */	lha r0, 0x704(r30)
/* 8070FC94  2C 00 C0 00 */	cmpwi r0, -16384
/* 8070FC98  40 80 00 0C */	bge lbl_8070FCA4
/* 8070FC9C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8070FCA0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8070FCA4:
/* 8070FCA4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8070FCA8  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8070FCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070FCB0  40 80 00 14 */	bge lbl_8070FCC4
/* 8070FCB4  38 00 00 02 */	li r0, 2
/* 8070FCB8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070FCBC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070FCC0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8070FCC4:
/* 8070FCC4  38 7E 07 04 */	addi r3, r30, 0x704
/* 8070FCC8  38 80 90 00 */	li r4, -28672
/* 8070FCCC  38 A0 00 02 */	li r5, 2
/* 8070FCD0  38 C0 08 00 */	li r6, 0x800
/* 8070FCD4  4B B6 09 34 */	b cLib_addCalcAngleS2__FPssss
/* 8070FCD8  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8070FCDC  2C 00 00 02 */	cmpwi r0, 2
/* 8070FCE0  40 82 00 48 */	bne lbl_8070FD28
/* 8070FCE4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8070FCE8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8070FCEC  C0 1E 08 FC */	lfs f0, 0x8fc(r30)
/* 8070FCF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8070FCF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8070FCF8  4C 40 13 82 */	cror 2, 0, 2
/* 8070FCFC  40 82 00 2C */	bne lbl_8070FD28
/* 8070FD00  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8070FD04  38 00 C0 00 */	li r0, -16384
/* 8070FD08  B0 1E 07 04 */	sth r0, 0x704(r30)
/* 8070FD0C  38 00 00 15 */	li r0, 0x15
/* 8070FD10  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070FD14  38 00 00 00 */	li r0, 0
/* 8070FD18  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070FD1C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070FD20  D0 1E 06 E4 */	stfs f0, 0x6e4(r30)
/* 8070FD24  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8070FD28:
/* 8070FD28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8070FD2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8070FD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070FD34  7C 08 03 A6 */	mtlr r0
/* 8070FD38  38 21 00 20 */	addi r1, r1, 0x20
/* 8070FD3C  4E 80 00 20 */	blr 
