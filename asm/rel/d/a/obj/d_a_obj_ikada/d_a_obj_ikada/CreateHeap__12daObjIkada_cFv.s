lbl_80C27028:
/* 80C27028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2702C  7C 08 02 A6 */	mflr r0
/* 80C27030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C27034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C27038  7C 7F 1B 78 */	mr r31, r3
/* 80C2703C  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C27584@ha */
/* 80C27040  38 63 75 84 */	addi r3, r3, l_arcName@l /* 0x80C27584@l */
/* 80C27044  80 63 00 00 */	lwz r3, 0(r3)
/* 80C27048  3C 80 80 C2 */	lis r4, d_a_obj_ikada__stringBase0@ha /* 0x80C27564@ha */
/* 80C2704C  38 84 75 64 */	addi r4, r4, d_a_obj_ikada__stringBase0@l /* 0x80C27564@l */
/* 80C27050  38 84 00 14 */	addi r4, r4, 0x14
/* 80C27054  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C27058  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2705C  3C A5 00 02 */	addis r5, r5, 2
/* 80C27060  38 C0 00 80 */	li r6, 0x80
/* 80C27064  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C27068  4B 41 53 15 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C2706C  3C 80 00 08 */	lis r4, 8
/* 80C27070  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C27074  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C27078  4B 3E DB DD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C2707C  90 7F 06 20 */	stw r3, 0x620(r31)
/* 80C27080  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80C27084  30 03 FF FF */	addic r0, r3, -1
/* 80C27088  7C 60 19 10 */	subfe r3, r0, r3
/* 80C2708C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C27090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27094  7C 08 03 A6 */	mtlr r0
/* 80C27098  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2709C  4E 80 00 20 */	blr 
