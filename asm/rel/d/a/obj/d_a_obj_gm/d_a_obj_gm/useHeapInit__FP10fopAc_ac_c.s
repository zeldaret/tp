lbl_80BFCB74:
/* 80BFCB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFCB78  7C 08 02 A6 */	mflr r0
/* 80BFCB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFCB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFCB84  7C 7F 1B 78 */	mr r31, r3
/* 80BFCB88  3C 60 80 C0 */	lis r3, stringBase0@ha
/* 80BFCB8C  38 63 D3 C0 */	addi r3, r3, stringBase0@l
/* 80BFCB90  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFCB94  54 00 10 3A */	slwi r0, r0, 2
/* 80BFCB98  3C 80 80 C0 */	lis r4, gm_obj_bmd@ha
/* 80BFCB9C  38 84 D4 78 */	addi r4, r4, gm_obj_bmd@l
/* 80BFCBA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BFCBA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BFCBA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BFCBAC  3C A5 00 02 */	addis r5, r5, 2
/* 80BFCBB0  38 C0 00 80 */	li r6, 0x80
/* 80BFCBB4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BFCBB8  4B 43 F7 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BFCBBC  3C 80 00 08 */	lis r4, 8
/* 80BFCBC0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BFCBC4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BFCBC8  4B 41 80 8C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BFCBCC  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80BFCBD0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BFCBD4  30 03 FF FF */	addic r0, r3, -1
/* 80BFCBD8  7C 60 19 10 */	subfe r3, r0, r3
/* 80BFCBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFCBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFCBE4  7C 08 03 A6 */	mtlr r0
/* 80BFCBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFCBEC  4E 80 00 20 */	blr 
