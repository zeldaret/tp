lbl_800D452C:
/* 800D452C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D4530  7C 08 02 A6 */	mflr r0
/* 800D4534  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D4538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D453C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D4540  7C 7E 1B 78 */	mr r30, r3
/* 800D4544  7C 9F 23 78 */	mr r31, r4
/* 800D4548  38 80 00 27 */	li r4, 0x27
/* 800D454C  4B FE DA 21 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D4550  7F C3 F3 78 */	mr r3, r30
/* 800D4554  48 00 2A 8D */	bl checkCutLandDamage__9daAlink_cFv
/* 800D4558  7F C3 F3 78 */	mr r3, r30
/* 800D455C  38 80 00 72 */	li r4, 0x72
/* 800D4560  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutJump_c0@ha /* 0x8038DB40@ha */
/* 800D4564  38 A5 DB 40 */	addi r5, r5, m__21daAlinkHIO_cutJump_c0@l /* 0x8038DB40@l */
/* 800D4568  38 A5 00 14 */	addi r5, r5, 0x14
/* 800D456C  4B FD 8B 89 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D4570  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D4574  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800D4578  41 82 00 28 */	beq lbl_800D45A0
/* 800D457C  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800D4580  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800D4584  3C 80 80 39 */	lis r4, m__21daAlinkHIO_cutJump_c0@ha /* 0x8038DB40@ha */
/* 800D4588  38 84 DB 40 */	addi r4, r4, m__21daAlinkHIO_cutJump_c0@l /* 0x8038DB40@l */
/* 800D458C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 800D4590  EC 21 00 32 */	fmuls f1, f1, f0
/* 800D4594  38 80 00 00 */	li r4, 0
/* 800D4598  38 A0 00 23 */	li r5, 0x23
/* 800D459C  4B F3 B2 AD */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800D45A0:
/* 800D45A0  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D45A4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D45A8  40 82 00 58 */	bne lbl_800D4600
/* 800D45AC  7F C3 F3 78 */	mr r3, r30
/* 800D45B0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020003@ha */
/* 800D45B4  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00020003@l */
/* 800D45B8  4B FE AB 35 */	bl seStartSwordCut__9daAlink_cFUl
/* 800D45BC  38 7E 21 F0 */	addi r3, r30, 0x21f0
/* 800D45C0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D45C4  38 80 00 00 */	li r4, 0
/* 800D45C8  38 BE 05 BC */	addi r5, r30, 0x5bc
/* 800D45CC  38 DE 34 98 */	addi r6, r30, 0x3498
/* 800D45D0  38 FE 34 A4 */	addi r7, r30, 0x34a4
/* 800D45D4  48 05 11 19 */	bl initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz
/* 800D45D8  7F C3 F3 78 */	mr r3, r30
/* 800D45DC  38 80 00 01 */	li r4, 1
/* 800D45E0  38 A0 00 03 */	li r5, 3
/* 800D45E4  38 C0 00 01 */	li r6, 1
/* 800D45E8  38 E0 00 03 */	li r7, 3
/* 800D45EC  3D 00 80 39 */	lis r8, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D45F0  39 08 DE 8C */	addi r8, r8, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D45F4  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 800D45F8  C0 48 00 78 */	lfs f2, 0x78(r8)
/* 800D45FC  4B FF D0 8D */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
lbl_800D4600:
/* 800D4600  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800D4604  60 00 00 02 */	ori r0, r0, 2
/* 800D4608  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800D460C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D4610  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D4614  7F C3 F3 78 */	mr r3, r30
/* 800D4618  38 80 00 0A */	li r4, 0xa
/* 800D461C  4B FF CF 11 */	bl setCutType__9daAlink_cFUc
/* 800D4620  38 00 00 04 */	li r0, 4
/* 800D4624  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800D4628  7F C3 F3 78 */	mr r3, r30
/* 800D462C  38 80 00 02 */	li r4, 2
/* 800D4630  48 04 CB 91 */	bl setFootEffectProcType__9daAlink_cFi
/* 800D4634  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 800D4638  60 00 00 30 */	ori r0, r0, 0x30
/* 800D463C  90 1E 05 84 */	stw r0, 0x584(r30)
/* 800D4640  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800D4644  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800D4648  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800D464C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D4650  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800D4654  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D4658  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800D465C  93 FE 31 98 */	stw r31, 0x3198(r30)
/* 800D4660  7F C3 F3 78 */	mr r3, r30
/* 800D4664  4B FE 16 01 */	bl setStepLandVibration__9daAlink_cFv
/* 800D4668  38 60 00 01 */	li r3, 1
/* 800D466C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D4670  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D4674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D4678  7C 08 03 A6 */	mtlr r0
/* 800D467C  38 21 00 10 */	addi r1, r1, 0x10
/* 800D4680  4E 80 00 20 */	blr 
