lbl_80CA47A4:
/* 80CA47A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA47A8  7C 08 02 A6 */	mflr r0
/* 80CA47AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA47B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA47B4  7C 7F 1B 78 */	mr r31, r3
/* 80CA47B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA47BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA47C0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CA47C4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CA47C8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CA47CC  4B 6A 21 1D */	bl PSMTXTrans
/* 80CA47D0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CA47D4  4B 36 87 71 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA47D8  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80CA47DC  4B 36 86 95 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CA47E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CA47E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CA47E8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CA47EC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CA47F0  4B 6A 1C C1 */	bl PSMTXCopy
/* 80CA47F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA47F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA47FC  7C 08 03 A6 */	mtlr r0
/* 80CA4800  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4804  4E 80 00 20 */	blr 
