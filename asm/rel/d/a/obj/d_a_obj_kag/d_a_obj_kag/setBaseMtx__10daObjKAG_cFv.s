lbl_80C30754:
/* 80C30754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C30758  7C 08 02 A6 */	mflr r0
/* 80C3075C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C30760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C30764  93 C1 00 08 */	stw r30, 8(r1)
/* 80C30768  7C 7E 1B 78 */	mr r30, r3
/* 80C3076C  80 63 06 28 */	lwz r3, 0x628(r3)
/* 80C30770  83 E3 00 04 */	lwz r31, 4(r3)
/* 80C30774  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C30778  4B 3D C5 ED */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C3077C  38 7E 08 14 */	addi r3, r30, 0x814
/* 80C30780  4B 3D C7 C5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C30784  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C30788  4B 3D C7 BD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C3078C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C30790  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80C30794  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80C30798  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80C3079C  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80C307A0  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80C307A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C307A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C307AC  38 9F 00 24 */	addi r4, r31, 0x24
/* 80C307B0  4B 71 5D 01 */	bl PSMTXCopy
/* 80C307B4  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80C307B8  4B 3E 0A 35 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80C307BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C307C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C307C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C307C8  7C 08 03 A6 */	mtlr r0
/* 80C307CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C307D0  4E 80 00 20 */	blr 
