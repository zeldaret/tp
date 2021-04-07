lbl_80CB8F8C:
/* 80CB8F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8F90  7C 08 02 A6 */	mflr r0
/* 80CB8F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8F9C  7C 7F 1B 78 */	mr r31, r3
/* 80CB8FA0  3C 60 80 CC */	lis r3, d_a_obj_rfHole__stringBase0@ha /* 0x80CB9AC0@ha */
/* 80CB8FA4  38 63 9A C0 */	addi r3, r3, d_a_obj_rfHole__stringBase0@l /* 0x80CB9AC0@l */
/* 80CB8FA8  38 80 00 04 */	li r4, 4
/* 80CB8FAC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8FB0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB8FB4  3C A5 00 02 */	addis r5, r5, 2
/* 80CB8FB8  38 C0 00 80 */	li r6, 0x80
/* 80CB8FBC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CB8FC0  4B 38 33 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CB8FC4  3C 80 00 08 */	lis r4, 8
/* 80CB8FC8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CB8FCC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CB8FD0  4B 35 BC 85 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CB8FD4  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80CB8FD8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CB8FDC  30 03 FF FF */	addic r0, r3, -1
/* 80CB8FE0  7C 60 19 10 */	subfe r3, r0, r3
/* 80CB8FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8FEC  7C 08 03 A6 */	mtlr r0
/* 80CB8FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8FF4  4E 80 00 20 */	blr 
