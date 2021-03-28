lbl_80C87DC8:
/* 80C87DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87DCC  7C 08 02 A6 */	mflr r0
/* 80C87DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87DD8  7C 7F 1B 78 */	mr r31, r3
/* 80C87DDC  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 80C87DE0  54 00 10 3A */	slwi r0, r0, 2
/* 80C87DE4  3C 60 80 C9 */	lis r3, l_type@ha
/* 80C87DE8  38 63 85 24 */	addi r3, r3, l_type@l
/* 80C87DEC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C87DF0  3C 80 80 C9 */	lis r4, l_bmdIdx@ha
/* 80C87DF4  38 84 85 28 */	addi r4, r4, l_bmdIdx@l
/* 80C87DF8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C87DFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C87E00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C87E04  3C A5 00 02 */	addis r5, r5, 2
/* 80C87E08  38 C0 00 80 */	li r6, 0x80
/* 80C87E0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C87E10  4B 3B 44 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C87E14  3C 80 00 08 */	lis r4, 8
/* 80C87E18  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C87E1C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C87E20  4B 38 CE 34 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C87E24  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C87E28  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C87E2C  30 03 FF FF */	addic r0, r3, -1
/* 80C87E30  7C 60 19 10 */	subfe r3, r0, r3
/* 80C87E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87E3C  7C 08 03 A6 */	mtlr r0
/* 80C87E40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87E44  4E 80 00 20 */	blr 
