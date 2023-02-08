lbl_8069C1AC:
/* 8069C1AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069C1B0  7C 08 02 A6 */	mflr r0
/* 8069C1B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069C1B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8069C1BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8069C1C0  7C 7E 1B 78 */	mr r30, r3
/* 8069C1C4  3C 60 80 6A */	lis r3, lit_3902@ha /* 0x806A190C@ha */
/* 8069C1C8  3B E3 19 0C */	addi r31, r3, lit_3902@l /* 0x806A190C@l */
/* 8069C1CC  A8 1E 06 68 */	lha r0, 0x668(r30)
/* 8069C1D0  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8069C1D4  40 82 00 40 */	bne lbl_8069C214
/* 8069C1D8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069C1DC  4B BC B7 79 */	bl cM_rndF__Ff
/* 8069C1E0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8069C1E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069C1E8  40 80 00 2C */	bge lbl_8069C214
/* 8069C1EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070087@ha */
/* 8069C1F0  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00070087@l */
/* 8069C1F4  90 01 00 08 */	stw r0, 8(r1)
/* 8069C1F8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069C1FC  38 81 00 08 */	addi r4, r1, 8
/* 8069C200  38 A0 FF FF */	li r5, -1
/* 8069C204  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069C208  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069C20C  7D 89 03 A6 */	mtctr r12
/* 8069C210  4E 80 04 21 */	bctrl 
lbl_8069C214:
/* 8069C214  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 8069C218  2C 00 00 01 */	cmpwi r0, 1
/* 8069C21C  41 82 00 A8 */	beq lbl_8069C2C4
/* 8069C220  40 80 01 C0 */	bge lbl_8069C3E0
/* 8069C224  2C 00 00 00 */	cmpwi r0, 0
/* 8069C228  40 80 00 08 */	bge lbl_8069C230
/* 8069C22C  48 00 01 B4 */	b lbl_8069C3E0
lbl_8069C230:
/* 8069C230  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8069C234  2C 00 00 00 */	cmpwi r0, 0
/* 8069C238  40 82 00 78 */	bne lbl_8069C2B0
/* 8069C23C  7F C3 F3 78 */	mr r3, r30
/* 8069C240  38 80 00 12 */	li r4, 0x12
/* 8069C244  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069C248  38 A0 00 02 */	li r5, 2
/* 8069C24C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069C250  4B FF E8 E5 */	bl anm_init__FP10e_db_classifUcf
/* 8069C254  7F C3 F3 78 */	mr r3, r30
/* 8069C258  38 80 00 14 */	li r4, 0x14
/* 8069C25C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069C260  38 A0 00 02 */	li r5, 2
/* 8069C264  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069C268  4B FF E9 79 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069C26C  38 00 00 01 */	li r0, 1
/* 8069C270  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069C274  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069C278  4B BC B6 DD */	bl cM_rndF__Ff
/* 8069C27C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8069C280  EC 00 08 2A */	fadds f0, f0, f1
/* 8069C284  FC 00 00 1E */	fctiwz f0, f0
/* 8069C288  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8069C28C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8069C290  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8069C294  38 00 00 00 */	li r0, 0
/* 8069C298  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8069C29C  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A1DA8@ha */
/* 8069C2A0  38 63 1D A8 */	addi r3, r3, l_HIO@l /* 0x806A1DA8@l */
/* 8069C2A4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8069C2A8  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 8069C2AC  48 00 01 34 */	b lbl_8069C3E0
lbl_8069C2B0:
/* 8069C2B0  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A1DA8@ha */
/* 8069C2B4  38 63 1D A8 */	addi r3, r3, l_HIO@l /* 0x806A1DA8@l */
/* 8069C2B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8069C2BC  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 8069C2C0  48 00 01 20 */	b lbl_8069C3E0
lbl_8069C2C4:
/* 8069C2C4  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8069C2C8  2C 00 00 00 */	cmpwi r0, 0
/* 8069C2CC  40 82 00 64 */	bne lbl_8069C330
/* 8069C2D0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8069C2D4  4B BC B6 81 */	bl cM_rndF__Ff
/* 8069C2D8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8069C2DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8069C2E0  FC 00 00 1E */	fctiwz f0, f0
/* 8069C2E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8069C2E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8069C2EC  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8069C2F0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8069C2F4  4B BC B6 99 */	bl cM_rndFX__Ff
/* 8069C2F8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8069C2FC  EC 00 08 2A */	fadds f0, f0, f1
/* 8069C300  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8069C304  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8069C308  4B BC B6 85 */	bl cM_rndFX__Ff
/* 8069C30C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8069C310  EC 00 08 2A */	fadds f0, f0, f1
/* 8069C314  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8069C318  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 8069C31C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8069C320  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069C324  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8069C328  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069C32C  D0 1E 06 8C */	stfs f0, 0x68c(r30)
lbl_8069C330:
/* 8069C330  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 8069C334  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 8069C338  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069C33C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069C340  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069C344  7C 23 04 2E */	lfsx f1, r3, r0
/* 8069C348  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8069C34C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8069C350  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8069C354  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 8069C358  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069C35C  7C 63 02 14 */	add r3, r3, r0
/* 8069C360  C0 43 00 04 */	lfs f2, 4(r3)
/* 8069C364  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8069C368  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8069C36C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069C370  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 8069C374  EC 20 08 2A */	fadds f1, f0, f1
/* 8069C378  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069C37C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069C380  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069C384  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C388  4B BD 36 B5 */	bl cLib_addCalc2__FPffff
/* 8069C38C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069C390  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 8069C394  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8069C398  EC 21 00 2A */	fadds f1, f1, f0
/* 8069C39C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069C3A0  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069C3A4  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069C3A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C3AC  4B BD 36 91 */	bl cLib_addCalc2__FPffff
/* 8069C3B0  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069C3B4  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 8069C3B8  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069C3BC  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069C3C0  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069C3C4  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069C3C8  4B BD 36 75 */	bl cLib_addCalc2__FPffff
/* 8069C3CC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8069C3D0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069C3D4  FC 40 08 90 */	fmr f2, f1
/* 8069C3D8  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8069C3DC  4B BD 36 61 */	bl cLib_addCalc2__FPffff
lbl_8069C3E0:
/* 8069C3E0  38 00 40 00 */	li r0, 0x4000
/* 8069C3E4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8069C3E8  38 00 00 00 */	li r0, 0
/* 8069C3EC  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8069C3F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8069C3F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8069C3F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069C3FC  7C 08 03 A6 */	mtlr r0
/* 8069C400  38 21 00 30 */	addi r1, r1, 0x30
/* 8069C404  4E 80 00 20 */	blr 
