lbl_80BC9240:
/* 80BC9240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9244  7C 08 02 A6 */	mflr r0
/* 80BC9248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC924C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC9250  7C 7F 1B 78 */	mr r31, r3
/* 80BC9254  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BCA0D8@ha */
/* 80BC9258  38 63 A0 D8 */	addi r3, r3, l_arcName@l /* 0x80BCA0D8@l */
/* 80BC925C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC9260  38 80 00 04 */	li r4, 4
/* 80BC9264  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC9268  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC926C  3C A5 00 02 */	addis r5, r5, 2
/* 80BC9270  38 C0 00 80 */	li r6, 0x80
/* 80BC9274  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BC9278  4B 47 30 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC927C  3C 80 00 08 */	lis r4, 8
/* 80BC9280  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC9284  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC9288  4B 44 B9 CD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC928C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BC9290  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BC9294  30 03 FF FF */	addic r0, r3, -1
/* 80BC9298  7C 60 19 10 */	subfe r3, r0, r3
/* 80BC929C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC92A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC92A4  7C 08 03 A6 */	mtlr r0
/* 80BC92A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC92AC  4E 80 00 20 */	blr 
