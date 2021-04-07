lbl_80CF0284:
/* 80CF0284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF0288  7C 08 02 A6 */	mflr r0
/* 80CF028C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF0294  7C 7F 1B 78 */	mr r31, r3
/* 80CF0298  3C 60 80 CF */	lis r3, d_a_obj_suisya__stringBase0@ha /* 0x80CF0544@ha */
/* 80CF029C  38 63 05 44 */	addi r3, r3, d_a_obj_suisya__stringBase0@l /* 0x80CF0544@l */
/* 80CF02A0  38 80 00 03 */	li r4, 3
/* 80CF02A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF02A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF02AC  3C A5 00 02 */	addis r5, r5, 2
/* 80CF02B0  38 C0 00 80 */	li r6, 0x80
/* 80CF02B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CF02B8  4B 34 C0 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF02BC  3C 80 00 08 */	lis r4, 8
/* 80CF02C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CF02C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CF02C8  4B 32 49 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CF02CC  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CF02D0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CF02D4  30 03 FF FF */	addic r0, r3, -1
/* 80CF02D8  7C 60 19 10 */	subfe r3, r0, r3
/* 80CF02DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF02E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF02E4  7C 08 03 A6 */	mtlr r0
/* 80CF02E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF02EC  4E 80 00 20 */	blr 
