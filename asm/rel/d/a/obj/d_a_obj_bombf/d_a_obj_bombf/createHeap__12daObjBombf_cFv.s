lbl_80BBA9F8:
/* 80BBA9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA9FC  7C 08 02 A6 */	mflr r0
/* 80BBAA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBAA08  7C 7F 1B 78 */	mr r31, r3
/* 80BBAA0C  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BBAE84@ha */
/* 80BBAA10  38 63 AE 84 */	addi r3, r3, l_arcName@l /* 0x80BBAE84@l */
/* 80BBAA14  38 80 00 04 */	li r4, 4
/* 80BBAA18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBAA1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBAA20  3C A5 00 02 */	addis r5, r5, 2
/* 80BBAA24  38 C0 00 80 */	li r6, 0x80
/* 80BBAA28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BBAA2C  4B 48 18 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BBAA30  3C 80 00 08 */	lis r4, 8
/* 80BBAA34  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BBAA38  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BBAA3C  4B 45 A2 19 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BBAA40  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BBAA44  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BBAA48  30 03 FF FF */	addic r0, r3, -1
/* 80BBAA4C  7C 60 19 10 */	subfe r3, r0, r3
/* 80BBAA50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBAA54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAA58  7C 08 03 A6 */	mtlr r0
/* 80BBAA5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAA60  4E 80 00 20 */	blr 
