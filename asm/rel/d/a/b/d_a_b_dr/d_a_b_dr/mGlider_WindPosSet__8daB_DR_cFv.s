lbl_805BB4CC:
/* 805BB4CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BB4D0  7C 08 02 A6 */	mflr r0
/* 805BB4D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BB4D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BB4DC  7C 7F 1B 78 */	mr r31, r3
/* 805BB4E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805BB4E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805BB4E8  80 63 00 00 */	lwz r3, 0(r3)
/* 805BB4EC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805BB4F0  4B A5 0E ED */	bl mDoMtx_YrotS__FPA4_fs
/* 805BB4F4  3C 60 80 5C */	lis r3, lit_4011@ha /* 0x805C6CA4@ha */
/* 805BB4F8  C0 03 6C A4 */	lfs f0, lit_4011@l(r3)  /* 0x805C6CA4@l */
/* 805BB4FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BB500  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BB504  3C 60 80 5C */	lis r3, lit_4040@ha /* 0x805C6CB0@ha */
/* 805BB508  C0 03 6C B0 */	lfs f0, lit_4040@l(r3)  /* 0x805C6CB0@l */
/* 805BB50C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BB510  38 61 00 08 */	addi r3, r1, 8
/* 805BB514  38 9F 07 9C */	addi r4, r31, 0x79c
/* 805BB518  4B CB 59 D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805BB51C  38 7F 07 9C */	addi r3, r31, 0x79c
/* 805BB520  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805BB524  7C 65 1B 78 */	mr r5, r3
/* 805BB528  4B D8 BB 69 */	bl PSVECAdd
/* 805BB52C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BB530  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB534  7C 08 03 A6 */	mtlr r0
/* 805BB538  38 21 00 20 */	addi r1, r1, 0x20
/* 805BB53C  4E 80 00 20 */	blr 
