lbl_80BA0974:
/* 80BA0974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0978  7C 08 02 A6 */	mflr r0
/* 80BA097C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0984  7C 7F 1B 78 */	mr r31, r3
/* 80BA0988  3C 60 80 BA */	lis r3, l_arcName@ha
/* 80BA098C  38 63 11 E0 */	addi r3, r3, l_arcName@l
/* 80BA0990  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA0994  38 80 00 04 */	li r4, 4
/* 80BA0998  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA099C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA09A0  3C A5 00 02 */	addis r5, r5, 2
/* 80BA09A4  38 C0 00 80 */	li r6, 0x80
/* 80BA09A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA09AC  4B 49 B9 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA09B0  3C 80 00 08 */	lis r4, 8
/* 80BA09B4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BA09B8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BA09BC  4B 47 42 98 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BA09C0  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80BA09C4  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BA09C8  30 03 FF FF */	addic r0, r3, -1
/* 80BA09CC  7C 60 19 10 */	subfe r3, r0, r3
/* 80BA09D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA09D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA09D8  7C 08 03 A6 */	mtlr r0
/* 80BA09DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA09E0  4E 80 00 20 */	blr 
