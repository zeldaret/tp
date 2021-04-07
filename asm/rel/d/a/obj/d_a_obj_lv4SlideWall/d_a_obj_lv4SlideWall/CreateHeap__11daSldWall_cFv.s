lbl_80C61F4C:
/* 80C61F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61F50  7C 08 02 A6 */	mflr r0
/* 80C61F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C61F5C  7C 7F 1B 78 */	mr r31, r3
/* 80C61F60  3C 60 80 C6 */	lis r3, d_a_obj_lv4SlideWall__stringBase0@ha /* 0x80C626C4@ha */
/* 80C61F64  38 63 26 C4 */	addi r3, r3, d_a_obj_lv4SlideWall__stringBase0@l /* 0x80C626C4@l */
/* 80C61F68  38 80 00 04 */	li r4, 4
/* 80C61F6C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C61F70  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C61F74  3C A5 00 02 */	addis r5, r5, 2
/* 80C61F78  38 C0 00 80 */	li r6, 0x80
/* 80C61F7C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C61F80  4B 3D A3 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C61F84  3C 80 00 08 */	lis r4, 8
/* 80C61F88  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C61F8C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C61F90  4B 3B 2C C5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C61F94  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C61F98  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C61F9C  30 03 FF FF */	addic r0, r3, -1
/* 80C61FA0  7C 60 19 10 */	subfe r3, r0, r3
/* 80C61FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61FAC  7C 08 03 A6 */	mtlr r0
/* 80C61FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61FB4  4E 80 00 20 */	blr 
