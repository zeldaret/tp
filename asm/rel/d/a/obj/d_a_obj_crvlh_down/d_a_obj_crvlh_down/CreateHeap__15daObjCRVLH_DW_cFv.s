lbl_80BD46EC:
/* 80BD46EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD46F0  7C 08 02 A6 */	mflr r0
/* 80BD46F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD46F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD46FC  7C 7F 1B 78 */	mr r31, r3
/* 80BD4700  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD4DC4@ha */
/* 80BD4704  38 63 4D C4 */	addi r3, r3, l_arcName@l /* 0x80BD4DC4@l */
/* 80BD4708  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD470C  3C 80 80 BD */	lis r4, d_a_obj_crvlh_down__stringBase0@ha /* 0x80BD4D88@ha */
/* 80BD4710  38 84 4D 88 */	addi r4, r4, d_a_obj_crvlh_down__stringBase0@l /* 0x80BD4D88@l */
/* 80BD4714  38 84 00 18 */	addi r4, r4, 0x18
/* 80BD4718  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD471C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD4720  3C A5 00 02 */	addis r5, r5, 2
/* 80BD4724  38 C0 00 80 */	li r6, 0x80
/* 80BD4728  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BD472C  4B 46 7C 51 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BD4730  3C 80 00 08 */	lis r4, 8
/* 80BD4734  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BD4738  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BD473C  4B 44 05 19 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD4740  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 80BD4744  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80BD4748  30 03 FF FF */	addic r0, r3, -1
/* 80BD474C  7C 60 19 10 */	subfe r3, r0, r3
/* 80BD4750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD4754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4758  7C 08 03 A6 */	mtlr r0
/* 80BD475C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4760  4E 80 00 20 */	blr 
