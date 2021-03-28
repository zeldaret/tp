lbl_8020DF1C:
/* 8020DF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020DF20  7C 08 02 A6 */	mflr r0
/* 8020DF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020DF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020DF2C  7C 7F 1B 78 */	mr r31, r3
/* 8020DF30  80 63 00 08 */	lwz r3, 8(r3)
/* 8020DF34  4B E1 CC 21 */	bl _draw__6dMap_cFv
/* 8020DF38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020DF3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DF40  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8020DF44  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8020DF48  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 8020DF4C  7F E6 FB 78 */	mr r6, r31
/* 8020DF50  4B E4 88 45 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8020DF54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020DF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020DF5C  7C 08 03 A6 */	mtlr r0
/* 8020DF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8020DF64  4E 80 00 20 */	blr 
