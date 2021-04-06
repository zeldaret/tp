lbl_800FC6B4:
/* 800FC6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC6B8  7C 08 02 A6 */	mflr r0
/* 800FC6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FC6C4  7C 7F 1B 78 */	mr r31, r3
/* 800FC6C8  80 63 28 10 */	lwz r3, 0x2810(r3)
/* 800FC6CC  28 03 00 00 */	cmplwi r3, 0
/* 800FC6D0  40 82 00 0C */	bne lbl_800FC6DC
/* 800FC6D4  38 60 00 00 */	li r3, 0
/* 800FC6D8  48 00 00 5C */	b lbl_800FC734
lbl_800FC6DC:
/* 800FC6DC  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 800FC6E0  80 63 00 04 */	lwz r3, 4(r3)
/* 800FC6E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800FC6E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800FC6EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800FC6F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800FC6F4  48 24 9D BD */	bl PSMTXCopy
/* 800FC6F8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FC6FC  C0 42 95 5C */	lfs f2, lit_24400(r2)
/* 800FC700  C0 62 95 60 */	lfs f3, lit_24401(r2)
/* 800FC704  4B F1 06 99 */	bl transM__14mDoMtx_stack_cFfff
/* 800FC708  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800FC70C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800FC710  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800FC714  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800FC718  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800FC71C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800FC720  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800FC724  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800FC728  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 800FC72C  4B F1 04 D5 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800FC730  38 60 00 01 */	li r3, 1
lbl_800FC734:
/* 800FC734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FC738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC73C  7C 08 03 A6 */	mtlr r0
/* 800FC740  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC744  4E 80 00 20 */	blr 
