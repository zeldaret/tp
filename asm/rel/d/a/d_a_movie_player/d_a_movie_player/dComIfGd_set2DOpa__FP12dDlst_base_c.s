lbl_80878E04:
/* 80878E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878E08  7C 08 02 A6 */	mflr r0
/* 80878E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878E10  7C 64 1B 78 */	mr r4, r3
/* 80878E14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80878E18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80878E1C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80878E20  48 00 00 15 */	bl set2DOpa__12dDlst_list_cFP12dDlst_base_c
/* 80878E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878E28  7C 08 03 A6 */	mtlr r0
/* 80878E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80878E30  4E 80 00 20 */	blr 
