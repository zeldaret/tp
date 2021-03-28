lbl_80B9EDC8:
/* 80B9EDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9EDCC  7C 08 02 A6 */	mflr r0
/* 80B9EDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9EDD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9EDD8  7C 7F 1B 78 */	mr r31, r3
/* 80B9EDDC  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80B9EDE0  38 63 F8 F4 */	addi r3, r3, stringBase0@l
/* 80B9EDE4  38 80 00 03 */	li r4, 3
/* 80B9EDE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B9EDEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B9EDF0  3C A5 00 02 */	addis r5, r5, 2
/* 80B9EDF4  38 C0 00 80 */	li r6, 0x80
/* 80B9EDF8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B9EDFC  4B 49 D4 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B9EE00  3C 80 00 08 */	lis r4, 8
/* 80B9EE04  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B9EE08  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B9EE0C  4B 47 5E 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B9EE10  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80B9EE14  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B9EE18  30 03 FF FF */	addic r0, r3, -1
/* 80B9EE1C  7C 60 19 10 */	subfe r3, r0, r3
/* 80B9EE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9EE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9EE28  7C 08 03 A6 */	mtlr r0
/* 80B9EE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9EE30  4E 80 00 20 */	blr 
