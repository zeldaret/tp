lbl_80192190:
/* 80192190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192194  7C 08 02 A6 */	mflr r0
/* 80192198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019219C  7C 66 1B 78 */	mr r6, r3
/* 801921A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801921A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801921A8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801921AC  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801921B0  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801921B4  38 C6 00 08 */	addi r6, r6, 8
/* 801921B8  4B EC 45 DD */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801921BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801921C0  7C 08 03 A6 */	mtlr r0
/* 801921C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801921C8  4E 80 00 20 */	blr 
