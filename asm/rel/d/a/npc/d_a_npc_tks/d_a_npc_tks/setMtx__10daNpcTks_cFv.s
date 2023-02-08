lbl_80B156BC:
/* 80B156BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B156C0  7C 08 02 A6 */	mflr r0
/* 80B156C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B156C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B156CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B156D0  7C 7F 1B 78 */	mr r31, r3
/* 80B156D4  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80B156D8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80B156DC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B156E0  4B 4F 76 85 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B156E4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B156E8  4B 4F 78 5D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B156EC  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80B156F0  4B 4F 77 81 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B156F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B156F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B156FC  38 9E 00 24 */	addi r4, r30, 0x24
/* 80B15700  4B 83 0D B1 */	bl PSMTXCopy
/* 80B15704  93 FE 00 14 */	stw r31, 0x14(r30)
/* 80B15708  88 1F 11 5E */	lbz r0, 0x115e(r31)
/* 80B1570C  28 00 00 00 */	cmplwi r0, 0
/* 80B15710  41 82 00 78 */	beq lbl_80B15788
/* 80B15714  88 1F 13 8A */	lbz r0, 0x138a(r31)
/* 80B15718  28 00 00 00 */	cmplwi r0, 0
/* 80B1571C  41 82 00 20 */	beq lbl_80B1573C
/* 80B15720  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B15724  D0 1F 11 4C */	stfs f0, 0x114c(r31)
/* 80B15728  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B1572C  D0 1F 11 50 */	stfs f0, 0x1150(r31)
/* 80B15730  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B15734  D0 1F 11 54 */	stfs f0, 0x1154(r31)
/* 80B15738  48 00 00 14 */	b lbl_80B1574C
lbl_80B1573C:
/* 80B1573C  38 7F 11 4C */	addi r3, r31, 0x114c
/* 80B15740  4B 4F 76 25 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B15744  38 7F 11 58 */	addi r3, r31, 0x1158
/* 80B15748  4B 4F 77 FD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80B1574C:
/* 80B1574C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B15750  80 83 00 04 */	lwz r4, 4(r3)
/* 80B15754  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B15758  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B1575C  38 84 00 24 */	addi r4, r4, 0x24
/* 80B15760  4B 83 0D 51 */	bl PSMTXCopy
/* 80B15764  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B15768  4B 4F BA 85 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B1576C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B15770  80 63 00 04 */	lwz r3, 4(r3)
/* 80B15774  80 63 00 04 */	lwz r3, 4(r3)
/* 80B15778  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80B1577C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B15780  38 00 00 00 */	li r0, 0
/* 80B15784  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80B15788:
/* 80B15788  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B1578C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B15790  41 82 00 10 */	beq lbl_80B157A0
/* 80B15794  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 80B15798  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80B1579C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80B157A0:
/* 80B157A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B157A4  4B 4F BA 49 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B157A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B157AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B157B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B157B4  7C 08 03 A6 */	mtlr r0
/* 80B157B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B157BC  4E 80 00 20 */	blr 
