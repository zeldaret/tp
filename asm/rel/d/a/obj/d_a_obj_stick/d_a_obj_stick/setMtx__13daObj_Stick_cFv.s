lbl_80599C28:
/* 80599C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599C2C  7C 08 02 A6 */	mflr r0
/* 80599C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599C38  7C 7F 1B 78 */	mr r31, r3
/* 80599C3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80599C40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80599C44  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80599C48  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80599C4C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80599C50  4B DA CC 99 */	bl PSMTXTrans
/* 80599C54  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80599C58  4B A7 32 ED */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80599C5C  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80599C60  4B A7 32 11 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80599C64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80599C68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80599C6C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80599C70  38 84 00 24 */	addi r4, r4, 0x24
/* 80599C74  4B DA C8 3D */	bl PSMTXCopy
/* 80599C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599C80  7C 08 03 A6 */	mtlr r0
/* 80599C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80599C88  4E 80 00 20 */	blr 
