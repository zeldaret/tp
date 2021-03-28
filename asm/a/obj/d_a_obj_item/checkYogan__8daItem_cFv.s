lbl_8015D410:
/* 8015D410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D414  7C 08 02 A6 */	mflr r0
/* 8015D418  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D420  7C 7F 1B 78 */	mr r31, r3
/* 8015D424  80 03 05 B8 */	lwz r0, 0x5b8(r3)
/* 8015D428  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8015D42C  41 82 00 40 */	beq lbl_8015D46C
/* 8015D430  C0 5F 07 58 */	lfs f2, 0x758(r31)
/* 8015D434  C0 22 9B A4 */	lfs f1, lit_4665(r2)
/* 8015D438  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015D43C  EC 01 00 2A */	fadds f0, f1, f0
/* 8015D440  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015D444  40 81 00 28 */	ble lbl_8015D46C
/* 8015D448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015D44C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015D450  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8015D454  38 9F 07 0C */	addi r4, r31, 0x70c
/* 8015D458  4B F1 79 F9 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8015D45C  2C 03 00 06 */	cmpwi r3, 6
/* 8015D460  40 82 00 0C */	bne lbl_8015D46C
/* 8015D464  7F E3 FB 78 */	mr r3, r31
/* 8015D468  48 00 00 19 */	bl deleteItem__8daItem_cFv
lbl_8015D46C:
/* 8015D46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D474  7C 08 03 A6 */	mtlr r0
/* 8015D478  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D47C  4E 80 00 20 */	blr 
