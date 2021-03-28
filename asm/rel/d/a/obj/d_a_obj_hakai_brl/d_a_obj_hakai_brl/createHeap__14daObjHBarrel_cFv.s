lbl_80C16A98:
/* 80C16A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16A9C  7C 08 02 A6 */	mflr r0
/* 80C16AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16AA8  7C 7F 1B 78 */	mr r31, r3
/* 80C16AAC  3C 60 80 C1 */	lis r3, l_arcName@ha
/* 80C16AB0  38 63 73 7C */	addi r3, r3, l_arcName@l
/* 80C16AB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C16AB8  38 80 00 03 */	li r4, 3
/* 80C16ABC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C16AC0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C16AC4  3C A5 00 02 */	addis r5, r5, 2
/* 80C16AC8  38 C0 00 80 */	li r6, 0x80
/* 80C16ACC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C16AD0  4B 42 58 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C16AD4  3C 80 00 08 */	lis r4, 8
/* 80C16AD8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C16ADC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C16AE0  4B 3F E1 74 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C16AE4  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C16AE8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C16AEC  30 03 FF FF */	addic r0, r3, -1
/* 80C16AF0  7C 60 19 10 */	subfe r3, r0, r3
/* 80C16AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16AFC  7C 08 03 A6 */	mtlr r0
/* 80C16B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16B04  4E 80 00 20 */	blr 
