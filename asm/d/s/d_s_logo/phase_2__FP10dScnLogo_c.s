lbl_80257A70:
/* 80257A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257A74  7C 08 02 A6 */	mflr r0
/* 80257A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257A7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80257A80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80257A84  3C 63 00 02 */	addis r3, r3, 2
/* 80257A88  38 80 00 80 */	li r4, 0x80
/* 80257A8C  38 63 C2 F8 */	addi r3, r3, -15624
/* 80257A90  4B DE 49 E1 */	bl syncAllRes__14dRes_control_cFP11dRes_info_ci
/* 80257A94  20 03 00 00 */	subfic r0, r3, 0
/* 80257A98  7C 60 01 10 */	subfe r3, r0, r0
/* 80257A9C  38 00 00 04 */	li r0, 4
/* 80257AA0  7C 03 18 78 */	andc r3, r0, r3
/* 80257AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257AA8  7C 08 03 A6 */	mtlr r0
/* 80257AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80257AB0  4E 80 00 20 */	blr 
