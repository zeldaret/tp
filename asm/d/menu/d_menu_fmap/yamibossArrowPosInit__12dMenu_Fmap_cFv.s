lbl_801CD770:
/* 801CD770  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CD774  7C 08 02 A6 */	mflr r0
/* 801CD778  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CD77C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801CD780  7C 7F 1B 78 */	mr r31, r3
/* 801CD784  38 80 00 04 */	li r4, 4
/* 801CD788  38 A0 00 75 */	li r5, 0x75
/* 801CD78C  38 C1 00 0C */	addi r6, r1, 0xc
/* 801CD790  38 E1 00 08 */	addi r7, r1, 8
/* 801CD794  4B FF F8 6D */	bl searchIcon__12dMenu_Fmap_cFUciPfPf
/* 801CD798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CD79C  40 82 00 14 */	bne lbl_801CD7B0
/* 801CD7A0  C0 02 A7 70 */	lfs f0, lit_7356(r2)
/* 801CD7A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801CD7A8  C0 02 A7 74 */	lfs f0, lit_7357(r2)
/* 801CD7AC  D0 01 00 08 */	stfs f0, 8(r1)
lbl_801CD7B0:
/* 801CD7B0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CD7B4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CD7B8  FC 40 08 90 */	fmr f2, f1
/* 801CD7BC  38 81 00 18 */	addi r4, r1, 0x18
/* 801CD7C0  38 A1 00 10 */	addi r5, r1, 0x10
/* 801CD7C4  48 00 37 B9 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801CD7C8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CD7CC  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CD7D0  C0 42 A7 6C */	lfs f2, lit_7348(r2)
/* 801CD7D4  38 81 00 1C */	addi r4, r1, 0x1c
/* 801CD7D8  38 A1 00 14 */	addi r5, r1, 0x14
/* 801CD7DC  48 00 37 A1 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801CD7E0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CD7E4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801CD7E8  C0 61 00 08 */	lfs f3, 8(r1)
/* 801CD7EC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801CD7F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801CD7F4  EC 02 00 28 */	fsubs f0, f2, f0
/* 801CD7F8  EC 43 00 2A */	fadds f2, f3, f0
/* 801CD7FC  48 00 83 BD */	bl setArrowPosAxis__18dMenu_Fmap2DBack_cFff
/* 801CD800  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801CD804  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CD808  7C 08 03 A6 */	mtlr r0
/* 801CD80C  38 21 00 30 */	addi r1, r1, 0x30
/* 801CD810  4E 80 00 20 */	blr 
