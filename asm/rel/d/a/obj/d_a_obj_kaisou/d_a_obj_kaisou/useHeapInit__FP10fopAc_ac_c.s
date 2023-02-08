lbl_80C342D4:
/* 80C342D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C342D8  7C 08 02 A6 */	mflr r0
/* 80C342DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C342E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C342E4  7C 7F 1B 78 */	mr r31, r3
/* 80C342E8  3C 60 80 C3 */	lis r3, l_arcName@ha /* 0x80C34FC0@ha */
/* 80C342EC  38 63 4F C0 */	addi r3, r3, l_arcName@l /* 0x80C34FC0@l */
/* 80C342F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C342F4  3C 80 80 C3 */	lis r4, d_a_obj_kaisou__stringBase0@ha /* 0x80C34FA0@ha */
/* 80C342F8  38 84 4F A0 */	addi r4, r4, d_a_obj_kaisou__stringBase0@l /* 0x80C34FA0@l */
/* 80C342FC  38 84 00 09 */	addi r4, r4, 9
/* 80C34300  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C34304  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C34308  3C A5 00 02 */	addis r5, r5, 2
/* 80C3430C  38 C0 00 80 */	li r6, 0x80
/* 80C34310  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C34314  4B 40 80 69 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C34318  3C 80 00 08 */	lis r4, 8
/* 80C3431C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C34320  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C34324  4B 3E 09 31 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C34328  90 7F 05 B0 */	stw r3, 0x5b0(r31)
/* 80C3432C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80C34330  30 03 FF FF */	addic r0, r3, -1
/* 80C34334  7C 60 19 10 */	subfe r3, r0, r3
/* 80C34338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3433C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C34340  7C 08 03 A6 */	mtlr r0
/* 80C34344  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34348  4E 80 00 20 */	blr 
