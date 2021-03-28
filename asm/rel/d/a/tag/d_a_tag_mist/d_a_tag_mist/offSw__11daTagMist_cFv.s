lbl_8048F258:
/* 8048F258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048F25C  7C 08 02 A6 */	mflr r0
/* 8048F260  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048F264  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F268  4B ED 2F 6C */	b _savegpr_27
/* 8048F26C  7C 7B 1B 78 */	mr r27, r3
/* 8048F270  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048F274  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8048F278  54 1D 86 3E */	rlwinm r29, r0, 0x10, 0x18, 0x1f
/* 8048F27C  3B 80 00 00 */	li r28, 0
/* 8048F280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048F284  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8048F288  48 00 00 1C */	b lbl_8048F2A4
lbl_8048F28C:
/* 8048F28C  7F E3 FB 78 */	mr r3, r31
/* 8048F290  7C 9E E2 14 */	add r4, r30, r28
/* 8048F294  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 8048F298  7C 05 07 74 */	extsb r5, r0
/* 8048F29C  4B BA 60 14 */	b offSwitch__10dSv_info_cFii
/* 8048F2A0  3B 9C 00 01 */	addi r28, r28, 1
lbl_8048F2A4:
/* 8048F2A4  7C 1C E8 00 */	cmpw r28, r29
/* 8048F2A8  41 80 FF E4 */	blt lbl_8048F28C
/* 8048F2AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F2B0  4B ED 2F 70 */	b _restgpr_27
/* 8048F2B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048F2B8  7C 08 03 A6 */	mtlr r0
/* 8048F2BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8048F2C0  4E 80 00 20 */	blr 
