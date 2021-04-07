lbl_80CC4B5C:
/* 80CC4B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4B60  7C 08 02 A6 */	mflr r0
/* 80CC4B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4B6C  7C 7F 1B 78 */	mr r31, r3
/* 80CC4B70  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CC512C@ha */
/* 80CC4B74  38 63 51 2C */	addi r3, r3, l_arcName@l /* 0x80CC512C@l */
/* 80CC4B78  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC4B7C  3C 80 80 CC */	lis r4, d_a_obj_sakuita__stringBase0@ha /* 0x80CC5114@ha */
/* 80CC4B80  38 84 51 14 */	addi r4, r4, d_a_obj_sakuita__stringBase0@l /* 0x80CC5114@l */
/* 80CC4B84  38 84 00 0A */	addi r4, r4, 0xa
/* 80CC4B88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC4B8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC4B90  3C A5 00 02 */	addis r5, r5, 2
/* 80CC4B94  38 C0 00 80 */	li r6, 0x80
/* 80CC4B98  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC4B9C  4B 37 77 E1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CC4BA0  3C 80 00 02 */	lis r4, 2
/* 80CC4BA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CC4BA8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CC4BAC  4B 35 00 A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC4BB0  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80CC4BB4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80CC4BB8  30 03 FF FF */	addic r0, r3, -1
/* 80CC4BBC  7C 60 19 10 */	subfe r3, r0, r3
/* 80CC4BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4BC8  7C 08 03 A6 */	mtlr r0
/* 80CC4BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4BD0  4E 80 00 20 */	blr 
