lbl_80CA37DC:
/* 80CA37DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA37E0  7C 08 02 A6 */	mflr r0
/* 80CA37E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA37E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA37EC  7C 7F 1B 78 */	mr r31, r3
/* 80CA37F0  3C 60 80 CA */	lis r3, d_a_obj_ndoor__stringBase0@ha /* 0x80CA3A6C@ha */
/* 80CA37F4  38 63 3A 6C */	addi r3, r3, d_a_obj_ndoor__stringBase0@l /* 0x80CA3A6C@l */
/* 80CA37F8  38 80 00 03 */	li r4, 3
/* 80CA37FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA3800  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA3804  3C A5 00 02 */	addis r5, r5, 2
/* 80CA3808  38 C0 00 80 */	li r6, 0x80
/* 80CA380C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CA3810  4B 39 8A DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA3814  3C 80 00 08 */	lis r4, 8
/* 80CA3818  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CA381C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CA3820  4B 37 14 35 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA3824  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CA3828  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CA382C  30 03 FF FF */	addic r0, r3, -1
/* 80CA3830  7C 60 19 10 */	subfe r3, r0, r3
/* 80CA3834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA383C  7C 08 03 A6 */	mtlr r0
/* 80CA3840  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3844  4E 80 00 20 */	blr 
