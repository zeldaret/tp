lbl_80192D60:
/* 80192D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192D64  7C 08 02 A6 */	mflr r0
/* 80192D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192D6C  7C 66 1B 78 */	mr r6, r3
/* 80192D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80192D74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80192D78  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80192D7C  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80192D80  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80192D84  38 C6 00 08 */	addi r6, r6, 8
/* 80192D88  4B EC 3A 0D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80192D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192D90  7C 08 03 A6 */	mtlr r0
/* 80192D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80192D98  4E 80 00 20 */	blr 
