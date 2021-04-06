lbl_809B1F6C:
/* 809B1F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B1F70  7C 08 02 A6 */	mflr r0
/* 809B1F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B1F78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B1F7C  7C 7F 1B 78 */	mr r31, r3
/* 809B1F80  80 64 05 78 */	lwz r3, 0x578(r4)
/* 809B1F84  80 63 00 04 */	lwz r3, 4(r3)
/* 809B1F88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809B1F8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809B1F90  38 63 00 60 */	addi r3, r3, 0x60
/* 809B1F94  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B1F98  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B1F9C  4B 99 45 15 */	bl PSMTXCopy
/* 809B1FA0  80 7F 00 00 */	lwz r3, 0(r31)
/* 809B1FA4  80 83 00 04 */	lwz r4, 4(r3)
/* 809B1FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B1FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B1FB0  38 84 00 24 */	addi r4, r4, 0x24
/* 809B1FB4  4B 99 44 FD */	bl PSMTXCopy
/* 809B1FB8  80 7F 00 00 */	lwz r3, 0(r31)
/* 809B1FBC  4B 65 F2 31 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 809B1FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B1FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1FC8  7C 08 03 A6 */	mtlr r0
/* 809B1FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B1FD0  4E 80 00 20 */	blr 
