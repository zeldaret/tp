lbl_80C70DD4:
/* 80C70DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70DD8  7C 08 02 A6 */	mflr r0
/* 80C70DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70DE4  7C 7F 1B 78 */	mr r31, r3
/* 80C70DE8  3C 60 80 C7 */	lis r3, d_a_obj_lv6ChangeGate__stringBase0@ha /* 0x80C721A4@ha */
/* 80C70DEC  38 63 21 A4 */	addi r3, r3, d_a_obj_lv6ChangeGate__stringBase0@l /* 0x80C721A4@l */
/* 80C70DF0  38 80 00 04 */	li r4, 4
/* 80C70DF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C70DF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C70DFC  3C A5 00 02 */	addis r5, r5, 2
/* 80C70E00  38 C0 00 80 */	li r6, 0x80
/* 80C70E04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C70E08  4B 3C B4 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C70E0C  3C 80 00 08 */	lis r4, 8
/* 80C70E10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C70E14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C70E18  4B 3A 3E 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C70E1C  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80C70E20  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80C70E24  30 03 FF FF */	addic r0, r3, -1
/* 80C70E28  7C 60 19 10 */	subfe r3, r0, r3
/* 80C70E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70E34  7C 08 03 A6 */	mtlr r0
/* 80C70E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70E3C  4E 80 00 20 */	blr 
