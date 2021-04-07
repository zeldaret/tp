lbl_801B7504:
/* 801B7504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B7508  7C 08 02 A6 */	mflr r0
/* 801B750C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B7510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B7514  4B FF FF 21 */	bl getCrystalNum__17dMenu_Collect3D_cFv
/* 801B7518  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B751C  40 82 00 10 */	bne lbl_801B752C
/* 801B7520  4B FF FF 7D */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B7524  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B7528  41 82 00 70 */	beq lbl_801B7598
lbl_801B752C:
/* 801B752C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B7530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B7534  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801B7538  7F E3 FB 78 */	mr r3, r31
/* 801B753C  38 80 0C 01 */	li r4, 0xc01
/* 801B7540  4B E7 D4 7D */	bl isEventBit__11dSv_event_cCFUs
/* 801B7544  2C 03 00 00 */	cmpwi r3, 0
/* 801B7548  41 82 00 20 */	beq lbl_801B7568
/* 801B754C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B7550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B7554  38 63 01 00 */	addi r3, r3, 0x100
/* 801B7558  38 80 00 00 */	li r4, 0
/* 801B755C  4B E7 CD 35 */	bl isCollectMirror__20dSv_player_collect_cCFUc
/* 801B7560  2C 03 00 00 */	cmpwi r3, 0
/* 801B7564  41 82 00 34 */	beq lbl_801B7598
lbl_801B7568:
/* 801B7568  7F E3 FB 78 */	mr r3, r31
/* 801B756C  38 80 2B 08 */	li r4, 0x2b08
/* 801B7570  4B E7 D4 4D */	bl isEventBit__11dSv_event_cCFUs
/* 801B7574  2C 03 00 00 */	cmpwi r3, 0
/* 801B7578  41 82 00 28 */	beq lbl_801B75A0
/* 801B757C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B7580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B7584  38 63 01 00 */	addi r3, r3, 0x100
/* 801B7588  38 80 00 03 */	li r4, 3
/* 801B758C  4B E7 CC C1 */	bl isCollectCrystal__20dSv_player_collect_cCFUc
/* 801B7590  2C 03 00 00 */	cmpwi r3, 0
/* 801B7594  40 82 00 0C */	bne lbl_801B75A0
lbl_801B7598:
/* 801B7598  38 60 00 00 */	li r3, 0
/* 801B759C  48 00 00 38 */	b lbl_801B75D4
lbl_801B75A0:
/* 801B75A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B75A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B75A8  38 63 01 00 */	addi r3, r3, 0x100
/* 801B75AC  38 80 00 03 */	li r4, 3
/* 801B75B0  4B E7 CC 9D */	bl isCollectCrystal__20dSv_player_collect_cCFUc
/* 801B75B4  2C 03 00 00 */	cmpwi r3, 0
/* 801B75B8  40 82 00 10 */	bne lbl_801B75C8
/* 801B75BC  4B FF FE E1 */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B75C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B75C4  40 82 00 0C */	bne lbl_801B75D0
lbl_801B75C8:
/* 801B75C8  38 60 00 01 */	li r3, 1
/* 801B75CC  48 00 00 08 */	b lbl_801B75D4
lbl_801B75D0:
/* 801B75D0  38 60 00 02 */	li r3, 2
lbl_801B75D4:
/* 801B75D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B75D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B75DC  7C 08 03 A6 */	mtlr r0
/* 801B75E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B75E4  4E 80 00 20 */	blr 
