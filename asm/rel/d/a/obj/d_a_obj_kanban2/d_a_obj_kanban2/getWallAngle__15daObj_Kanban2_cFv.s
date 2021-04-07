lbl_805825A4:
/* 805825A4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805825A8  7C 08 02 A6 */	mflr r0
/* 805825AC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805825B0  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 805825B4  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 805825B8  7C 7E 1B 78 */	mr r30, r3
/* 805825BC  3C 60 80 58 */	lis r3, lit_4015@ha /* 0x8058562C@ha */
/* 805825C0  C0 03 56 2C */	lfs f0, lit_4015@l(r3)  /* 0x8058562C@l */
/* 805825C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805825C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805825CC  3C 60 80 58 */	lis r3, lit_4450@ha /* 0x80585678@ha */
/* 805825D0  C0 03 56 78 */	lfs f0, lit_4450@l(r3)  /* 0x80585678@l */
/* 805825D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805825D8  38 61 00 40 */	addi r3, r1, 0x40
/* 805825DC  4B AF 56 8D */	bl __ct__11dBgS_LinChkFv
/* 805825E0  38 61 00 14 */	addi r3, r1, 0x14
/* 805825E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805825E8  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 805825EC  38 C1 00 08 */	addi r6, r1, 8
/* 805825F0  4B CE E7 D1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805825F4  38 61 00 20 */	addi r3, r1, 0x20
/* 805825F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805825FC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80582600  7C 00 00 D0 */	neg r0, r0
/* 80582604  7C 05 07 34 */	extsh r5, r0
/* 80582608  38 C1 00 08 */	addi r6, r1, 8
/* 8058260C  4B CE E7 B5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80582610  38 61 00 40 */	addi r3, r1, 0x40
/* 80582614  38 81 00 20 */	addi r4, r1, 0x20
/* 80582618  38 A1 00 14 */	addi r5, r1, 0x14
/* 8058261C  38 C0 00 00 */	li r6, 0
/* 80582620  4B AF 57 45 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80582624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80582628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058262C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80582630  7F E3 FB 78 */	mr r3, r31
/* 80582634  38 81 00 40 */	addi r4, r1, 0x40
/* 80582638  4B AF 1D 7D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8058263C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80582640  41 82 00 5C */	beq lbl_8058269C
/* 80582644  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha /* 0x80585C58@ha */
/* 80582648  38 03 5C 58 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80585C58@l */
/* 8058264C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80582650  7F E3 FB 78 */	mr r3, r31
/* 80582654  38 81 00 54 */	addi r4, r1, 0x54
/* 80582658  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8058265C  4B AF 20 E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80582660  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80582664  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80582668  4B CE 50 0D */	bl cM_atan2s__Fff
/* 8058266C  7C 63 07 34 */	extsh r3, r3
/* 80582670  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80582674  7C 03 00 50 */	subf r0, r3, r0
/* 80582678  7C 00 07 34 */	extsh r0, r0
/* 8058267C  7C 60 18 50 */	subf r3, r0, r3
/* 80582680  3C 63 00 01 */	addis r3, r3, 1
/* 80582684  38 03 80 00 */	addi r0, r3, -32768
/* 80582688  7C 1F 07 34 */	extsh r31, r0
/* 8058268C  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha /* 0x80585C58@ha */
/* 80582690  38 03 5C 58 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80585C58@l */
/* 80582694  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80582698  48 00 00 14 */	b lbl_805826AC
lbl_8058269C:
/* 8058269C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 805826A0  3C 63 00 01 */	addis r3, r3, 1
/* 805826A4  38 03 80 00 */	addi r0, r3, -32768
/* 805826A8  7C 1F 07 34 */	extsh r31, r0
lbl_805826AC:
/* 805826AC  38 61 00 40 */	addi r3, r1, 0x40
/* 805826B0  38 80 FF FF */	li r4, -1
/* 805826B4  4B AF 56 29 */	bl __dt__11dBgS_LinChkFv
/* 805826B8  7F E3 FB 78 */	mr r3, r31
/* 805826BC  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 805826C0  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 805826C4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 805826C8  7C 08 03 A6 */	mtlr r0
/* 805826CC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 805826D0  4E 80 00 20 */	blr 
