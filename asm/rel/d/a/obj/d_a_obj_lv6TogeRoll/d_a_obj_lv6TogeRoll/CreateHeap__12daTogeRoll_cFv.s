lbl_80C77D50:
/* 80C77D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77D54  7C 08 02 A6 */	mflr r0
/* 80C77D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C77D5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C77D60  7C 7F 1B 78 */	mr r31, r3
/* 80C77D64  3C 60 80 C8 */	lis r3, d_a_obj_lv6TogeRoll__stringBase0@ha /* 0x80C79AE4@ha */
/* 80C77D68  38 63 9A E4 */	addi r3, r3, d_a_obj_lv6TogeRoll__stringBase0@l /* 0x80C79AE4@l */
/* 80C77D6C  38 80 00 04 */	li r4, 4
/* 80C77D70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C77D74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C77D78  3C A5 00 02 */	addis r5, r5, 2
/* 80C77D7C  38 C0 00 80 */	li r6, 0x80
/* 80C77D80  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C77D84  4B 3C 45 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C77D88  3C 80 00 08 */	lis r4, 8
/* 80C77D8C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C77D90  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C77D94  4B 39 CE C1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C77D98  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C77D9C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C77DA0  30 03 FF FF */	addic r0, r3, -1
/* 80C77DA4  7C 60 19 10 */	subfe r3, r0, r3
/* 80C77DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C77DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77DB0  7C 08 03 A6 */	mtlr r0
/* 80C77DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C77DB8  4E 80 00 20 */	blr 
