lbl_80849260:
/* 80849260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80849264  7C 08 02 A6 */	mflr r0
/* 80849268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084926C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80849270  7C 7F 1B 78 */	mr r31, r3
/* 80849274  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80849438@ha */
/* 80849278  38 63 94 38 */	addi r3, r3, l_arcName@l /* 0x80849438@l */
/* 8084927C  80 63 00 00 */	lwz r3, 0(r3)
/* 80849280  3C 80 80 85 */	lis r4, d_a_izumi_gate__stringBase0@ha /* 0x80849408@ha */
/* 80849284  38 84 94 08 */	addi r4, r4, d_a_izumi_gate__stringBase0@l /* 0x80849408@l */
/* 80849288  38 84 00 1C */	addi r4, r4, 0x1c
/* 8084928C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80849290  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80849294  3C A5 00 02 */	addis r5, r5, 2
/* 80849298  38 C0 00 80 */	li r6, 0x80
/* 8084929C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808492A0  4B 7F 30 DD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 808492A4  3C 80 00 08 */	lis r4, 8
/* 808492A8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 808492AC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 808492B0  4B 7C B9 A5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 808492B4  90 7F 05 A0 */	stw r3, 0x5a0(r31)
/* 808492B8  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 808492BC  30 03 FF FF */	addic r0, r3, -1
/* 808492C0  7C 60 19 10 */	subfe r3, r0, r3
/* 808492C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808492C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808492CC  7C 08 03 A6 */	mtlr r0
/* 808492D0  38 21 00 10 */	addi r1, r1, 0x10
/* 808492D4  4E 80 00 20 */	blr 
