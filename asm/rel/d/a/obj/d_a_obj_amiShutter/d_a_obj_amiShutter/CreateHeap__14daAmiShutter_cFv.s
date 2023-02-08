lbl_80BA15E4:
/* 80BA15E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA15E8  7C 08 02 A6 */	mflr r0
/* 80BA15EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA15F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA15F4  7C 7F 1B 78 */	mr r31, r3
/* 80BA15F8  3C 60 80 BA */	lis r3, d_a_obj_amiShutter__stringBase0@ha /* 0x80BA23D4@ha */
/* 80BA15FC  38 63 23 D4 */	addi r3, r3, d_a_obj_amiShutter__stringBase0@l /* 0x80BA23D4@l */
/* 80BA1600  38 80 00 04 */	li r4, 4
/* 80BA1604  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA1608  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA160C  3C A5 00 02 */	addis r5, r5, 2
/* 80BA1610  38 C0 00 80 */	li r6, 0x80
/* 80BA1614  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA1618  4B 49 AC D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA161C  3C 80 00 08 */	lis r4, 8
/* 80BA1620  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BA1624  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BA1628  4B 47 36 2D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BA162C  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80BA1630  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80BA1634  30 03 FF FF */	addic r0, r3, -1
/* 80BA1638  7C 60 19 10 */	subfe r3, r0, r3
/* 80BA163C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1644  7C 08 03 A6 */	mtlr r0
/* 80BA1648  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA164C  4E 80 00 20 */	blr 
