lbl_80C3179C:
/* 80C3179C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C317A0  7C 08 02 A6 */	mflr r0
/* 80C317A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C317A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C317AC  7C 7F 1B 78 */	mr r31, r3
/* 80C317B0  3C 60 80 C3 */	lis r3, d_a_obj_kage__stringBase0@ha /* 0x80C31990@ha */
/* 80C317B4  38 63 19 90 */	addi r3, r3, d_a_obj_kage__stringBase0@l /* 0x80C31990@l */
/* 80C317B8  38 80 00 03 */	li r4, 3
/* 80C317BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C317C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C317C4  3C A5 00 02 */	addis r5, r5, 2
/* 80C317C8  38 C0 00 80 */	li r6, 0x80
/* 80C317CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C317D0  4B 40 AB 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C317D4  3C 80 00 08 */	lis r4, 8
/* 80C317D8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C317DC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C317E0  4B 3E 34 75 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C317E4  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C317E8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C317EC  30 03 FF FF */	addic r0, r3, -1
/* 80C317F0  7C 60 19 10 */	subfe r3, r0, r3
/* 80C317F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C317F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C317FC  7C 08 03 A6 */	mtlr r0
/* 80C31800  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31804  4E 80 00 20 */	blr 
