lbl_800FD4A8:
/* 800FD4A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FD4AC  7C 08 02 A6 */	mflr r0
/* 800FD4B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FD4B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FD4B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FD4BC  7C 7E 1B 78 */	mr r30, r3
/* 800FD4C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FD4C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FD4C8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800FD4CC  7F E3 FB 78 */	mr r3, r31
/* 800FD4D0  38 9E 1E 1C */	addi r4, r30, 0x1e1c
/* 800FD4D4  4B F7 71 8D */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800FD4D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FD4DC  41 82 00 50 */	beq lbl_800FD52C
/* 800FD4E0  7F E3 FB 78 */	mr r3, r31
/* 800FD4E4  38 9E 1E 1C */	addi r4, r30, 0x1e1c
/* 800FD4E8  4B F7 75 D5 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 800FD4EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FD4F0  41 82 00 3C */	beq lbl_800FD52C
/* 800FD4F4  7F E3 FB 78 */	mr r3, r31
/* 800FD4F8  38 9E 1E 1C */	addi r4, r30, 0x1e1c
/* 800FD4FC  38 A0 00 01 */	li r5, 1
/* 800FD500  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 800FD504  38 FE 04 DC */	addi r7, r30, 0x4dc
/* 800FD508  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 800FD50C  4B F7 83 75 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 800FD510  7F E3 FB 78 */	mr r3, r31
/* 800FD514  38 9E 1E 1C */	addi r4, r30, 0x1e1c
/* 800FD518  38 A0 00 01 */	li r5, 1
/* 800FD51C  38 DE 37 C8 */	addi r6, r30, 0x37c8
/* 800FD520  38 E0 00 00 */	li r7, 0
/* 800FD524  39 00 00 00 */	li r8, 0
/* 800FD528  4B F7 83 59 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_800FD52C:
/* 800FD52C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FD530  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FD534  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800FD538  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FD53C  7C 64 02 14 */	add r3, r4, r0
/* 800FD540  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FD544  C0 3E 37 D0 */	lfs f1, 0x37d0(r30)
/* 800FD548  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 800FD54C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD550  EC 81 00 2A */	fadds f4, f1, f0
/* 800FD554  C0 7E 37 CC */	lfs f3, 0x37cc(r30)
/* 800FD558  7C 04 04 2E */	lfsx f0, r4, r0
/* 800FD55C  C0 3E 37 C8 */	lfs f1, 0x37c8(r30)
/* 800FD560  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD564  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD568  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FD56C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 800FD570  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 800FD574  7F C3 F3 78 */	mr r3, r30
/* 800FD578  38 9E 37 C8 */	addi r4, r30, 0x37c8
/* 800FD57C  38 A1 00 08 */	addi r5, r1, 8
/* 800FD580  4B FA 4C 19 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FD584  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FD588  41 82 00 18 */	beq lbl_800FD5A0
/* 800FD58C  7F E3 FB 78 */	mr r3, r31
/* 800FD590  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FD594  4B F7 78 6D */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800FD598  2C 03 00 04 */	cmpwi r3, 4
/* 800FD59C  41 82 00 20 */	beq lbl_800FD5BC
lbl_800FD5A0:
/* 800FD5A0  7F C3 F3 78 */	mr r3, r30
/* 800FD5A4  38 80 00 01 */	li r4, 1
/* 800FD5A8  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800FD5AC  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800FD5B0  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800FD5B4  4B FC 94 95 */	bl procFallInit__9daAlink_cFif
/* 800FD5B8  48 00 00 14 */	b lbl_800FD5CC
lbl_800FD5BC:
/* 800FD5BC  38 7E 1E 1C */	addi r3, r30, 0x1e1c
/* 800FD5C0  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FD5C4  48 16 AB 85 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800FD5C8  38 60 00 00 */	li r3, 0
lbl_800FD5CC:
/* 800FD5CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FD5D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FD5D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FD5D8  7C 08 03 A6 */	mtlr r0
/* 800FD5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 800FD5E0  4E 80 00 20 */	blr 
