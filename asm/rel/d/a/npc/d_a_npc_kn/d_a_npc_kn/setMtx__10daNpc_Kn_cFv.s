lbl_80A39558:
/* 80A39558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3955C  7C 08 02 A6 */	mflr r0
/* 80A39560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A39564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A39568  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3956C  7C 7E 1B 78 */	mr r30, r3
/* 80A39570  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 80A39574  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A39578  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A3957C  4B 5D 37 E9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A39580  38 7E 0D AC */	addi r3, r30, 0xdac
/* 80A39584  4B 5D 39 C1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80A39588  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80A3958C  4B 5D 38 E5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80A39590  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A39594  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A39598  38 9F 00 24 */	addi r4, r31, 0x24
/* 80A3959C  4B 90 CF 15 */	bl PSMTXCopy
/* 80A395A0  93 DF 00 14 */	stw r30, 0x14(r31)
/* 80A395A4  80 1E 0D CC */	lwz r0, 0xdcc(r30)
/* 80A395A8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80A395AC  41 82 00 10 */	beq lbl_80A395BC
/* 80A395B0  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 80A395B4  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 80A395B8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80A395BC:
/* 80A395BC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A395C0  4B 5D 7C 2D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80A395C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A395C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A395CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A395D0  7C 08 03 A6 */	mtlr r0
/* 80A395D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A395D8  4E 80 00 20 */	blr 
