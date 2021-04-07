lbl_80C3778C:
/* 80C3778C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C37790  7C 08 02 A6 */	mflr r0
/* 80C37794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C37798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3779C  7C 7F 1B 78 */	mr r31, r3
/* 80C377A0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C377A4  4B 3D 55 C1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C377A8  38 7F 09 9A */	addi r3, r31, 0x99a
/* 80C377AC  4B 3D 57 99 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C377B0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C377B4  4B 3D 57 91 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C377B8  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80C377BC  4B 3D 56 B5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C377C0  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C377C4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C377C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C377CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C377D0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C377D4  4B 70 EC DD */	bl PSMTXCopy
/* 80C377D8  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C377DC  4B 3D 9A 11 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80C377E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C377E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C377E8  7C 08 03 A6 */	mtlr r0
/* 80C377EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C377F0  4E 80 00 20 */	blr 
