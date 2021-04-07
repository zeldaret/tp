lbl_80BB5934:
/* 80BB5934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB5938  7C 08 02 A6 */	mflr r0
/* 80BB593C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB5940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB5944  7C 7F 1B 78 */	mr r31, r3
/* 80BB5948  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB5FAC@ha */
/* 80BB594C  38 63 5F AC */	addi r3, r3, l_arcName@l /* 0x80BB5FAC@l */
/* 80BB5950  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB5954  3C 80 80 BB */	lis r4, d_a_obj_bhbridge__stringBase0@ha /* 0x80BB5F84@ha */
/* 80BB5958  38 84 5F 84 */	addi r4, r4, d_a_obj_bhbridge__stringBase0@l /* 0x80BB5F84@l */
/* 80BB595C  38 84 00 18 */	addi r4, r4, 0x18
/* 80BB5960  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB5964  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB5968  3C A5 00 02 */	addis r5, r5, 2
/* 80BB596C  38 C0 00 80 */	li r6, 0x80
/* 80BB5970  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BB5974  4B 48 6A 09 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BB5978  3C 80 00 08 */	lis r4, 8
/* 80BB597C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BB5980  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BB5984  4B 45 F2 D1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BB5988  90 7F 05 EC */	stw r3, 0x5ec(r31)
/* 80BB598C  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80BB5990  30 03 FF FF */	addic r0, r3, -1
/* 80BB5994  7C 60 19 10 */	subfe r3, r0, r3
/* 80BB5998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB599C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB59A0  7C 08 03 A6 */	mtlr r0
/* 80BB59A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB59A8  4E 80 00 20 */	blr 
