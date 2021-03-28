lbl_801B5F48:
/* 801B5F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5F4C  7C 08 02 A6 */	mflr r0
/* 801B5F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5F54  7C 66 1B 78 */	mr r6, r3
/* 801B5F58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B5F5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B5F60  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801B5F64  38 83 00 AC */	addi r4, r3, 0xac
/* 801B5F68  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 801B5F6C  80 C6 00 88 */	lwz r6, 0x88(r6)
/* 801B5F70  4B EA 08 25 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801B5F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5F78  7C 08 03 A6 */	mtlr r0
/* 801B5F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5F80  4E 80 00 20 */	blr 
