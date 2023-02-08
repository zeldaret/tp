lbl_80C55E08:
/* 80C55E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C55E0C  7C 08 02 A6 */	mflr r0
/* 80C55E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C55E18  7C 7F 1B 78 */	mr r31, r3
/* 80C55E1C  3C 60 80 C5 */	lis r3, d_a_obj_lv1Candle00__stringBase0@ha /* 0x80C56AB4@ha */
/* 80C55E20  38 63 6A B4 */	addi r3, r3, d_a_obj_lv1Candle00__stringBase0@l /* 0x80C56AB4@l */
/* 80C55E24  38 80 00 04 */	li r4, 4
/* 80C55E28  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C55E2C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C55E30  3C A5 00 02 */	addis r5, r5, 2
/* 80C55E34  38 C0 00 80 */	li r6, 0x80
/* 80C55E38  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C55E3C  4B 3E 64 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C55E40  3C 80 00 08 */	lis r4, 8
/* 80C55E44  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C55E48  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C55E4C  4B 3B EE 09 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C55E50  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C55E54  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C55E58  30 03 FF FF */	addic r0, r3, -1
/* 80C55E5C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C55E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C55E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55E68  7C 08 03 A6 */	mtlr r0
/* 80C55E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55E70  4E 80 00 20 */	blr 
