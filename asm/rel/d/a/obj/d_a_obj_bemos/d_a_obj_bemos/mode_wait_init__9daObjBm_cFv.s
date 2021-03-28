lbl_80BB0824:
/* 80BB0824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB0828  7C 08 02 A6 */	mflr r0
/* 80BB082C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB0830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB0834  7C 7F 1B 78 */	mr r31, r3
/* 80BB0838  3C 80 80 BB */	lis r4, lit_4250@ha
/* 80BB083C  C0 04 38 30 */	lfs f0, lit_4250@l(r4)
/* 80BB0840  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80BB0844  3C 80 80 BB */	lis r4, lit_4936@ha
/* 80BB0848  C0 04 38 8C */	lfs f0, lit_4936@l(r4)
/* 80BB084C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80BB0850  3C 80 80 07 */	lis r4, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BB0854  38 04 5B 44 */	addi r0, r4, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BB0858  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80BB085C  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 80BB0860  48 00 05 89 */	bl clr_moment_cnt__9daObjBm_cFv
/* 80BB0864  38 00 FF FF */	li r0, -1
/* 80BB0868  90 1F 10 BC */	stw r0, 0x10bc(r31)
/* 80BB086C  38 00 00 00 */	li r0, 0
/* 80BB0870  90 1F 10 AC */	stw r0, 0x10ac(r31)
/* 80BB0874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB0878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB087C  7C 08 03 A6 */	mtlr r0
/* 80BB0880  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB0884  4E 80 00 20 */	blr 
