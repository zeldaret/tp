lbl_80CF761C:
/* 80CF761C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7620  7C 08 02 A6 */	mflr r0
/* 80CF7624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF762C  7C 7F 1B 78 */	mr r31, r3
/* 80CF7630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF7634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF7638  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF763C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CF7640  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF7644  7C 05 07 74 */	extsb r5, r0
/* 80CF7648  4B 33 DC 68 */	b offSwitch__10dSv_info_cFii
/* 80CF764C  38 00 00 00 */	li r0, 0
/* 80CF7650  98 1F 0A E1 */	stb r0, 0xae1(r31)
/* 80CF7654  98 1F 0A E0 */	stb r0, 0xae0(r31)
/* 80CF7658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF765C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7660  7C 08 03 A6 */	mtlr r0
/* 80CF7664  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7668  4E 80 00 20 */	blr 
