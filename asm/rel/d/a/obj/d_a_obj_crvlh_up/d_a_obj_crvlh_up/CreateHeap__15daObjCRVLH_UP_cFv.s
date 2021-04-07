lbl_80BD5378:
/* 80BD5378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD537C  7C 08 02 A6 */	mflr r0
/* 80BD5380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD5388  7C 7F 1B 78 */	mr r31, r3
/* 80BD538C  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD5A9C@ha */
/* 80BD5390  38 63 5A 9C */	addi r3, r3, l_arcName@l /* 0x80BD5A9C@l */
/* 80BD5394  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD5398  3C 80 80 BD */	lis r4, d_a_obj_crvlh_up__stringBase0@ha /* 0x80BD5A64@ha */
/* 80BD539C  38 84 5A 64 */	addi r4, r4, d_a_obj_crvlh_up__stringBase0@l /* 0x80BD5A64@l */
/* 80BD53A0  38 84 00 18 */	addi r4, r4, 0x18
/* 80BD53A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD53A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD53AC  3C A5 00 02 */	addis r5, r5, 2
/* 80BD53B0  38 C0 00 80 */	li r6, 0x80
/* 80BD53B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BD53B8  4B 46 6F C5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BD53BC  3C 80 00 08 */	lis r4, 8
/* 80BD53C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BD53C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BD53C8  4B 43 F8 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD53CC  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80BD53D0  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BD53D4  30 03 FF FF */	addic r0, r3, -1
/* 80BD53D8  7C 60 19 10 */	subfe r3, r0, r3
/* 80BD53DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD53E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD53E4  7C 08 03 A6 */	mtlr r0
/* 80BD53E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD53EC  4E 80 00 20 */	blr 
