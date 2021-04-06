lbl_80CDC548:
/* 80CDC548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDC54C  7C 08 02 A6 */	mflr r0
/* 80CDC550  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDC554  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDC558  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CDC55C  7C 7E 1B 78 */	mr r30, r3
/* 80CDC560  3C 60 80 CE */	lis r3, lit_3705@ha /* 0x80CDCBF4@ha */
/* 80CDC564  38 83 CB F4 */	addi r4, r3, lit_3705@l /* 0x80CDCBF4@l */
/* 80CDC568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDC56C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDC570  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80CDC574  C0 24 00 04 */	lfs f1, 4(r4)
/* 80CDC578  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CDC57C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CDC580  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80CDC584  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDC588  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80CDC58C  28 00 00 01 */	cmplwi r0, 1
/* 80CDC590  40 82 00 14 */	bne lbl_80CDC5A4
/* 80CDC594  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CDC598  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CDC59C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80CDC5A0  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80CDC5A4:
/* 80CDC5A4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CDC5A8  4B 33 07 BD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CDC5AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDC5B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDC5B4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80CDC5B8  4B 32 FE 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDC5BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDC5C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDC5C4  38 81 00 08 */	addi r4, r1, 8
/* 80CDC5C8  7C 85 23 78 */	mr r5, r4
/* 80CDC5CC  4B 66 A7 A1 */	bl PSMTXMultVec
/* 80CDC5D0  7F E3 FB 78 */	mr r3, r31
/* 80CDC5D4  38 81 00 08 */	addi r4, r1, 8
/* 80CDC5D8  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80CDC5DC  38 05 7F FF */	addi r0, r5, 0x7fff
/* 80CDC5E0  7C 05 07 34 */	extsh r5, r0
/* 80CDC5E4  38 C0 00 00 */	li r6, 0
/* 80CDC5E8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80CDC5EC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CDC5F0  7D 89 03 A6 */	mtctr r12
/* 80CDC5F4  4E 80 04 21 */	bctrl 
/* 80CDC5F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDC5FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CDC600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDC604  7C 08 03 A6 */	mtlr r0
/* 80CDC608  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDC60C  4E 80 00 20 */	blr 
