lbl_80D31BD0:
/* 80D31BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31BD4  7C 08 02 A6 */	mflr r0
/* 80D31BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D31BE0  7C 7F 1B 78 */	mr r31, r3
/* 80D31BE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D31BE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D31BEC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D31BF0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D31BF4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D31BF8  4B 61 4C F1 */	bl PSMTXTrans
/* 80D31BFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D31C00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D31C04  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D31C08  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D31C0C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D31C10  4B 2D A6 91 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80D31C14  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D31C18  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D31C1C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D31C20  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D31C24  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D31C28  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D31C2C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D31C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D31C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D31C38  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D31C3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D31C40  4B 61 48 71 */	bl PSMTXCopy
/* 80D31C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D31C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31C4C  7C 08 03 A6 */	mtlr r0
/* 80D31C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31C54  4E 80 00 20 */	blr 
