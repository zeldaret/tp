lbl_80C887D8:
/* 80C887D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C887DC  7C 08 02 A6 */	mflr r0
/* 80C887E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C887E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C887E8  7C 7F 1B 78 */	mr r31, r3
/* 80C887EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C887F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C887F4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C887F8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C887FC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C88800  4B 6B E0 E8 */	b PSMTXTrans
/* 80C88804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C88808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8880C  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C88810  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C88814  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80C88818  4B 38 3A 88 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C8881C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C88820  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C88824  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C88828  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C8882C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C88830  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C88834  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C88838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C8883C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C88840  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C88844  38 84 00 24 */	addi r4, r4, 0x24
/* 80C88848  4B 6B DC 68 */	b PSMTXCopy
/* 80C8884C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C88850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88854  7C 08 03 A6 */	mtlr r0
/* 80C88858  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8885C  4E 80 00 20 */	blr 
