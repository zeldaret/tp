lbl_80C14414:
/* 80C14414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C14418  7C 08 02 A6 */	mflr r0
/* 80C1441C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C14420  39 61 00 20 */	addi r11, r1, 0x20
/* 80C14424  4B 74 DD B8 */	b _savegpr_29
/* 80C14428  7C 7D 1B 78 */	mr r29, r3
/* 80C1442C  38 7D 06 48 */	addi r3, r29, 0x648
/* 80C14430  4B 3F 8F F8 */	b play__14mDoExt_baseAnmFv
/* 80C14434  7C 7E 1B 78 */	mr r30, r3
/* 80C14438  38 7D 06 B8 */	addi r3, r29, 0x6b8
/* 80C1443C  4B 3F 8F EC */	b play__14mDoExt_baseAnmFv
/* 80C14440  7C 7F 1B 78 */	mr r31, r3
/* 80C14444  38 7D 05 F8 */	addi r3, r29, 0x5f8
/* 80C14448  4B 3F 8F E0 */	b play__14mDoExt_baseAnmFv
/* 80C1444C  2C 1E 00 01 */	cmpwi r30, 1
/* 80C14450  40 82 00 1C */	bne lbl_80C1446C
/* 80C14454  2C 1F 00 01 */	cmpwi r31, 1
/* 80C14458  40 82 00 14 */	bne lbl_80C1446C
/* 80C1445C  2C 03 00 01 */	cmpwi r3, 1
/* 80C14460  40 82 00 0C */	bne lbl_80C1446C
/* 80C14464  7F A3 EB 78 */	mr r3, r29
/* 80C14468  4B FF FD 2D */	bl init_modeWait__12daGrdWater_cFv
lbl_80C1446C:
/* 80C1446C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C14470  4B 74 DD B8 */	b _restgpr_29
/* 80C14474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C14478  7C 08 03 A6 */	mtlr r0
/* 80C1447C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C14480  4E 80 00 20 */	blr 
