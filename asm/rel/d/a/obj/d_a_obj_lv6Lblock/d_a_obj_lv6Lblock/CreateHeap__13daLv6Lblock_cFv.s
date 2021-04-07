lbl_80C734EC:
/* 80C734EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C734F0  7C 08 02 A6 */	mflr r0
/* 80C734F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C734F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C734FC  7C 7F 1B 78 */	mr r31, r3
/* 80C73500  3C 60 80 C7 */	lis r3, d_a_obj_lv6Lblock__stringBase0@ha /* 0x80C73CD8@ha */
/* 80C73504  38 63 3C D8 */	addi r3, r3, d_a_obj_lv6Lblock__stringBase0@l /* 0x80C73CD8@l */
/* 80C73508  38 80 00 04 */	li r4, 4
/* 80C7350C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C73510  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C73514  3C A5 00 02 */	addis r5, r5, 2
/* 80C73518  38 C0 00 80 */	li r6, 0x80
/* 80C7351C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C73520  4B 3C 8D CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C73524  3C 80 00 08 */	lis r4, 8
/* 80C73528  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C7352C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C73530  4B 3A 17 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C73534  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C73538  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7353C  30 03 FF FF */	addic r0, r3, -1
/* 80C73540  7C 60 19 10 */	subfe r3, r0, r3
/* 80C73544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7354C  7C 08 03 A6 */	mtlr r0
/* 80C73550  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73554  4E 80 00 20 */	blr 
