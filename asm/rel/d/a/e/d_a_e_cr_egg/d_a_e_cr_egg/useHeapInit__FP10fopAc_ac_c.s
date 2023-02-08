lbl_8069A510:
/* 8069A510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069A514  7C 08 02 A6 */	mflr r0
/* 8069A518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069A51C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8069A520  7C 7F 1B 78 */	mr r31, r3
/* 8069A524  3C 60 80 6A */	lis r3, d_a_e_cr_egg__stringBase0@ha /* 0x8069A90C@ha */
/* 8069A528  38 63 A9 0C */	addi r3, r3, d_a_e_cr_egg__stringBase0@l /* 0x8069A90C@l */
/* 8069A52C  38 80 00 0C */	li r4, 0xc
/* 8069A530  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069A534  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069A538  3C A5 00 02 */	addis r5, r5, 2
/* 8069A53C  38 C0 00 80 */	li r6, 0x80
/* 8069A540  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8069A544  4B 9A 1D A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8069A548  3C 80 00 08 */	lis r4, 8
/* 8069A54C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8069A550  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8069A554  4B 97 A7 01 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8069A558  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 8069A55C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8069A560  30 03 FF FF */	addic r0, r3, -1
/* 8069A564  7C 60 19 10 */	subfe r3, r0, r3
/* 8069A568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8069A56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069A570  7C 08 03 A6 */	mtlr r0
/* 8069A574  38 21 00 10 */	addi r1, r1, 0x10
/* 8069A578  4E 80 00 20 */	blr 
