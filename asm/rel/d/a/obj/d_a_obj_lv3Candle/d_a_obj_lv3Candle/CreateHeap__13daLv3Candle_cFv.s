lbl_80C57BC0:
/* 80C57BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57BC4  7C 08 02 A6 */	mflr r0
/* 80C57BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C57BD0  7C 7F 1B 78 */	mr r31, r3
/* 80C57BD4  88 03 05 74 */	lbz r0, 0x574(r3)
/* 80C57BD8  54 00 10 3A */	slwi r0, r0, 2
/* 80C57BDC  3C 60 80 C6 */	lis r3, l_resNameIdx@ha /* 0x80C58630@ha */
/* 80C57BE0  38 63 86 30 */	addi r3, r3, l_resNameIdx@l /* 0x80C58630@l */
/* 80C57BE4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C57BE8  3C 80 80 C6 */	lis r4, l_bmdIdx@ha /* 0x80C58594@ha */
/* 80C57BEC  38 84 85 94 */	addi r4, r4, l_bmdIdx@l /* 0x80C58594@l */
/* 80C57BF0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C57BF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C57BF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C57BFC  3C A5 00 02 */	addis r5, r5, 2
/* 80C57C00  38 C0 00 80 */	li r6, 0x80
/* 80C57C04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C57C08  4B 3E 46 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C57C0C  3C 80 00 08 */	lis r4, 8
/* 80C57C10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C57C14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C57C18  4B 3B D0 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C57C1C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C57C20  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C57C24  30 03 FF FF */	addic r0, r3, -1
/* 80C57C28  7C 60 19 10 */	subfe r3, r0, r3
/* 80C57C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C57C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57C34  7C 08 03 A6 */	mtlr r0
/* 80C57C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57C3C  4E 80 00 20 */	blr 
