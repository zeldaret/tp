lbl_80008424:
/* 80008424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008428  7C 08 02 A6 */	mflr r0
/* 8000842C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80008434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80008438  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8000843C  48 04 E0 FD */	bl reset__12dDlst_list_cFv
/* 80008440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008444  7C 08 03 A6 */	mtlr r0
/* 80008448  38 21 00 10 */	addi r1, r1, 0x10
/* 8000844C  4E 80 00 20 */	blr 
