lbl_8060778C:
/* 8060778C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80607790  7C 08 02 A6 */	mflr r0
/* 80607794  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80607798  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8060779C  93 C1 00 98 */	stw r30, 0x98(r1)
/* 806077A0  7C 7F 1B 78 */	mr r31, r3
/* 806077A4  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 806077A8  D0 61 00 08 */	stfs f3, 8(r1)
/* 806077AC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806077B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806077B4  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 806077B8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806077BC  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 806077C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806077C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806077C8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806077CC  7C 04 04 2E */	lfsx f0, r4, r0
/* 806077D0  3C 60 80 61 */	lis r3, lit_4977@ha /* 0x8060FE88@ha */
/* 806077D4  C0 23 FE 88 */	lfs f1, lit_4977@l(r3)  /* 0x8060FE88@l */
/* 806077D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 806077DC  EC 03 00 2A */	fadds f0, f3, f0
/* 806077E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806077E4  7C 64 02 14 */	add r3, r4, r0
/* 806077E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 806077EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 806077F0  EC 02 00 2A */	fadds f0, f2, f0
/* 806077F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806077F8  38 61 00 28 */	addi r3, r1, 0x28
/* 806077FC  4B A7 04 6D */	bl __ct__11dBgS_LinChkFv
/* 80607800  38 61 00 28 */	addi r3, r1, 0x28
/* 80607804  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80607808  38 A1 00 08 */	addi r5, r1, 8
/* 8060780C  7F E6 FB 78 */	mr r6, r31
/* 80607810  4B A7 05 55 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80607814  38 00 00 00 */	li r0, 0
/* 80607818  B0 1F 0A 92 */	sth r0, 0xa92(r31)
/* 8060781C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80607820  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80607824  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80607828  7F C3 F3 78 */	mr r3, r30
/* 8060782C  38 81 00 28 */	addi r4, r1, 0x28
/* 80607830  4B A6 CB 85 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80607834  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80607838  41 82 00 80 */	beq lbl_806078B8
/* 8060783C  3C 60 80 61 */	lis r3, __vt__8cM3dGPla@ha /* 0x80610420@ha */
/* 80607840  38 03 04 20 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80610420@l */
/* 80607844  90 01 00 24 */	stw r0, 0x24(r1)
/* 80607848  7F C3 F3 78 */	mr r3, r30
/* 8060784C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80607850  38 A1 00 14 */	addi r5, r1, 0x14
/* 80607854  4B A6 CE F1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80607858  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8060785C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80607860  4B C5 FE 15 */	bl cM_atan2s__Fff
/* 80607864  7C 7E 07 34 */	extsh r30, r3
/* 80607868  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060786C  7C 00 F0 50 */	subf r0, r0, r30
/* 80607870  7C 03 07 34 */	extsh r3, r0
/* 80607874  4B D5 D8 5D */	bl abs
/* 80607878  2C 03 50 00 */	cmpwi r3, 0x5000
/* 8060787C  40 81 00 30 */	ble lbl_806078AC
/* 80607880  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80607884  7C 00 F0 50 */	subf r0, r0, r30
/* 80607888  7C 00 07 35 */	extsh. r0, r0
/* 8060788C  41 82 00 14 */	beq lbl_806078A0
/* 80607890  A8 7F 0A 92 */	lha r3, 0xa92(r31)
/* 80607894  38 03 FD 00 */	addi r0, r3, -768
/* 80607898  B0 1F 0A 92 */	sth r0, 0xa92(r31)
/* 8060789C  48 00 00 10 */	b lbl_806078AC
lbl_806078A0:
/* 806078A0  A8 7F 0A 92 */	lha r3, 0xa92(r31)
/* 806078A4  38 03 03 00 */	addi r0, r3, 0x300
/* 806078A8  B0 1F 0A 92 */	sth r0, 0xa92(r31)
lbl_806078AC:
/* 806078AC  3C 60 80 61 */	lis r3, __vt__8cM3dGPla@ha /* 0x80610420@ha */
/* 806078B0  38 03 04 20 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80610420@l */
/* 806078B4  90 01 00 24 */	stw r0, 0x24(r1)
lbl_806078B8:
/* 806078B8  38 61 00 28 */	addi r3, r1, 0x28
/* 806078BC  38 80 FF FF */	li r4, -1
/* 806078C0  4B A7 04 1D */	bl __dt__11dBgS_LinChkFv
/* 806078C4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806078C8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 806078CC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806078D0  7C 08 03 A6 */	mtlr r0
/* 806078D4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806078D8  4E 80 00 20 */	blr 
