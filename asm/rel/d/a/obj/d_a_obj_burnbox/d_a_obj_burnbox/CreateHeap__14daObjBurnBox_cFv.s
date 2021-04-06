lbl_8046E8BC:
/* 8046E8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046E8C0  7C 08 02 A6 */	mflr r0
/* 8046E8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E8CC  7C 7F 1B 78 */	mr r31, r3
/* 8046E8D0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8046E8D4  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8046E8D8  3C 60 80 47 */	lis r3, l_arcName@ha /* 0x8046EED4@ha */
/* 8046E8DC  38 63 EE D4 */	addi r3, r3, l_arcName@l /* 0x8046EED4@l */
/* 8046E8E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046E8E4  3C 80 80 47 */	lis r4, l_bmd@ha /* 0x8046EE48@ha */
/* 8046E8E8  38 84 EE 48 */	addi r4, r4, l_bmd@l /* 0x8046EE48@l */
/* 8046E8EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8046E8F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046E8F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046E8F8  3C A5 00 02 */	addis r5, r5, 2
/* 8046E8FC  38 C0 00 80 */	li r6, 0x80
/* 8046E900  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8046E904  4B BC D9 E9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046E908  3C 80 00 08 */	lis r4, 8
/* 8046E90C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8046E910  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8046E914  4B BA 63 41 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8046E918  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 8046E91C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 8046E920  30 03 FF FF */	addic r0, r3, -1
/* 8046E924  7C 60 19 10 */	subfe r3, r0, r3
/* 8046E928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046E930  7C 08 03 A6 */	mtlr r0
/* 8046E934  38 21 00 10 */	addi r1, r1, 0x10
/* 8046E938  4E 80 00 20 */	blr 
