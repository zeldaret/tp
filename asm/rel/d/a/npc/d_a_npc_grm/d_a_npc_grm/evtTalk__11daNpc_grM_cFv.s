lbl_809D4E2C:
/* 809D4E2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809D4E30  7C 08 02 A6 */	mflr r0
/* 809D4E34  90 01 00 44 */	stw r0, 0x44(r1)
/* 809D4E38  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 809D4E3C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 809D4E40  7C 7E 1B 78 */	mr r30, r3
/* 809D4E44  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha /* 0x809D6E94@ha */
/* 809D4E48  3B E4 6E 94 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809D6E94@l */
/* 809D4E4C  88 03 10 DD */	lbz r0, 0x10dd(r3)
/* 809D4E50  28 00 00 00 */	cmplwi r0, 0
/* 809D4E54  41 82 00 B8 */	beq lbl_809D4F0C
/* 809D4E58  80 9F 02 54 */	lwz r4, 0x254(r31)
/* 809D4E5C  80 1F 02 58 */	lwz r0, 0x258(r31)
/* 809D4E60  90 81 00 2C */	stw r4, 0x2c(r1)
/* 809D4E64  90 01 00 30 */	stw r0, 0x30(r1)
/* 809D4E68  80 1F 02 5C */	lwz r0, 0x25c(r31)
/* 809D4E6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D4E70  38 81 00 2C */	addi r4, r1, 0x2c
/* 809D4E74  48 00 08 35 */	bl chkAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i
/* 809D4E78  2C 03 00 00 */	cmpwi r3, 0
/* 809D4E7C  41 82 00 1C */	beq lbl_809D4E98
/* 809D4E80  7F C3 F3 78 */	mr r3, r30
/* 809D4E84  38 80 00 00 */	li r4, 0
/* 809D4E88  39 9E 10 CC */	addi r12, r30, 0x10cc
/* 809D4E8C  4B 98 D1 F9 */	bl __ptmf_scall
/* 809D4E90  60 00 00 00 */	nop 
/* 809D4E94  48 00 01 20 */	b lbl_809D4FB4
lbl_809D4E98:
/* 809D4E98  38 00 00 00 */	li r0, 0
/* 809D4E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D4EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D4EA4  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809D4EA8  28 03 00 01 */	cmplwi r3, 1
/* 809D4EAC  41 82 00 0C */	beq lbl_809D4EB8
/* 809D4EB0  28 03 00 02 */	cmplwi r3, 2
/* 809D4EB4  40 82 00 08 */	bne lbl_809D4EBC
lbl_809D4EB8:
/* 809D4EB8  38 00 00 01 */	li r0, 1
lbl_809D4EBC:
/* 809D4EBC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809D4EC0  41 82 00 1C */	beq lbl_809D4EDC
/* 809D4EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D4EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D4ECC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809D4ED0  4B 67 39 21 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809D4ED4  2C 03 00 00 */	cmpwi r3, 0
/* 809D4ED8  41 82 00 DC */	beq lbl_809D4FB4
lbl_809D4EDC:
/* 809D4EDC  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 809D4EE0  4B 7C 0D BD */	bl shop_cam_action_init__16ShopCam_action_cFv
/* 809D4EE4  80 7F 02 60 */	lwz r3, 0x260(r31)
/* 809D4EE8  80 1F 02 64 */	lwz r0, 0x264(r31)
/* 809D4EEC  90 61 00 20 */	stw r3, 0x20(r1)
/* 809D4EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D4EF4  80 1F 02 68 */	lwz r0, 0x268(r31)
/* 809D4EF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 809D4EFC  7F C3 F3 78 */	mr r3, r30
/* 809D4F00  38 81 00 20 */	addi r4, r1, 0x20
/* 809D4F04  48 00 07 D1 */	bl setAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i
/* 809D4F08  48 00 00 AC */	b lbl_809D4FB4
lbl_809D4F0C:
/* 809D4F0C  80 9F 02 6C */	lwz r4, 0x26c(r31)
/* 809D4F10  80 1F 02 70 */	lwz r0, 0x270(r31)
/* 809D4F14  90 81 00 14 */	stw r4, 0x14(r1)
/* 809D4F18  90 01 00 18 */	stw r0, 0x18(r1)
/* 809D4F1C  80 1F 02 74 */	lwz r0, 0x274(r31)
/* 809D4F20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809D4F24  38 81 00 14 */	addi r4, r1, 0x14
/* 809D4F28  48 00 07 81 */	bl chkAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i
/* 809D4F2C  2C 03 00 00 */	cmpwi r3, 0
/* 809D4F30  41 82 00 1C */	beq lbl_809D4F4C
/* 809D4F34  7F C3 F3 78 */	mr r3, r30
/* 809D4F38  38 80 00 00 */	li r4, 0
/* 809D4F3C  39 9E 10 CC */	addi r12, r30, 0x10cc
/* 809D4F40  4B 98 D1 45 */	bl __ptmf_scall
/* 809D4F44  60 00 00 00 */	nop 
/* 809D4F48  48 00 00 6C */	b lbl_809D4FB4
lbl_809D4F4C:
/* 809D4F4C  38 00 00 00 */	li r0, 0
/* 809D4F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D4F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D4F58  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809D4F5C  28 03 00 01 */	cmplwi r3, 1
/* 809D4F60  41 82 00 0C */	beq lbl_809D4F6C
/* 809D4F64  28 03 00 02 */	cmplwi r3, 2
/* 809D4F68  40 82 00 08 */	bne lbl_809D4F70
lbl_809D4F6C:
/* 809D4F6C  38 00 00 01 */	li r0, 1
lbl_809D4F70:
/* 809D4F70  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809D4F74  41 82 00 1C */	beq lbl_809D4F90
/* 809D4F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D4F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D4F80  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809D4F84  4B 67 38 6D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809D4F88  2C 03 00 00 */	cmpwi r3, 0
/* 809D4F8C  41 82 00 28 */	beq lbl_809D4FB4
lbl_809D4F90:
/* 809D4F90  80 7F 02 78 */	lwz r3, 0x278(r31)
/* 809D4F94  80 1F 02 7C */	lwz r0, 0x27c(r31)
/* 809D4F98  90 61 00 08 */	stw r3, 8(r1)
/* 809D4F9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D4FA0  80 1F 02 80 */	lwz r0, 0x280(r31)
/* 809D4FA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D4FA8  7F C3 F3 78 */	mr r3, r30
/* 809D4FAC  38 81 00 08 */	addi r4, r1, 8
/* 809D4FB0  48 00 07 25 */	bl setAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i
lbl_809D4FB4:
/* 809D4FB4  38 60 00 01 */	li r3, 1
/* 809D4FB8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 809D4FBC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 809D4FC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809D4FC4  7C 08 03 A6 */	mtlr r0
/* 809D4FC8  38 21 00 40 */	addi r1, r1, 0x40
/* 809D4FCC  4E 80 00 20 */	blr 
