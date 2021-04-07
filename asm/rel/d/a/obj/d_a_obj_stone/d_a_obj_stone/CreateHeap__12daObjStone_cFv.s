lbl_80CE97C0:
/* 80CE97C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE97C4  7C 08 02 A6 */	mflr r0
/* 80CE97C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE97CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE97D0  7C 7F 1B 78 */	mr r31, r3
/* 80CE97D4  88 03 09 06 */	lbz r0, 0x906(r3)
/* 80CE97D8  54 00 10 3A */	slwi r0, r0, 2
/* 80CE97DC  3C 60 80 CF */	lis r3, l_arcName@ha /* 0x80CECC74@ha */
/* 80CE97E0  38 63 CC 74 */	addi r3, r3, l_arcName@l /* 0x80CECC74@l */
/* 80CE97E4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CE97E8  3C 80 80 CF */	lis r4, l_bmdIdx@ha /* 0x80CECAB4@ha */
/* 80CE97EC  38 84 CA B4 */	addi r4, r4, l_bmdIdx@l /* 0x80CECAB4@l */
/* 80CE97F0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CE97F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE97F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE97FC  3C A5 00 02 */	addis r5, r5, 2
/* 80CE9800  38 C0 00 80 */	li r6, 0x80
/* 80CE9804  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CE9808  4B 35 2A E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE980C  3C 80 00 08 */	lis r4, 8
/* 80CE9810  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CE9814  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CE9818  4B 32 B4 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE981C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CE9820  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CE9824  30 03 FF FF */	addic r0, r3, -1
/* 80CE9828  7C 60 19 10 */	subfe r3, r0, r3
/* 80CE982C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9834  7C 08 03 A6 */	mtlr r0
/* 80CE9838  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE983C  4E 80 00 20 */	blr 
