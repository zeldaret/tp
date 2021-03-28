lbl_8008941C:
/* 8008941C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80089420  7C 08 02 A6 */	mflr r0
/* 80089424  90 01 00 24 */	stw r0, 0x24(r1)
/* 80089428  39 61 00 20 */	addi r11, r1, 0x20
/* 8008942C  48 2D 8D AD */	bl _savegpr_28
/* 80089430  7C 7C 1B 78 */	mr r28, r3
/* 80089434  7C 9D 23 78 */	mr r29, r4
/* 80089438  7C BE 2B 78 */	mr r30, r5
/* 8008943C  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80089440  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80089444  41 82 00 28 */	beq lbl_8008946C
/* 80089448  4B FF F7 DD */	bl searchEventArgData__9dCamera_cFPc
/* 8008944C  2C 03 FF FF */	cmpwi r3, -1
/* 80089450  40 82 00 0C */	bne lbl_8008945C
/* 80089454  7F C3 F3 78 */	mr r3, r30
/* 80089458  48 00 00 54 */	b lbl_800894AC
lbl_8008945C:
/* 8008945C  1C 03 00 18 */	mulli r0, r3, 0x18
/* 80089460  7C 7C 02 14 */	add r3, r28, r0
/* 80089464  80 63 05 28 */	lwz r3, 0x528(r3)
/* 80089468  48 00 00 44 */	b lbl_800894AC
lbl_8008946C:
/* 8008946C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80089470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80089474  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80089478  7F E3 FB 78 */	mr r3, r31
/* 8008947C  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 80089480  7F A5 EB 78 */	mr r5, r29
/* 80089484  4B FB EC C1 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80089488  2C 03 00 00 */	cmpwi r3, 0
/* 8008948C  41 82 00 1C */	beq lbl_800894A8
/* 80089490  7F E3 FB 78 */	mr r3, r31
/* 80089494  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 80089498  7F A5 EB 78 */	mr r5, r29
/* 8008949C  38 C0 00 04 */	li r6, 4
/* 800894A0  4B FB EC 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800894A4  48 00 00 08 */	b lbl_800894AC
lbl_800894A8:
/* 800894A8  7F C3 F3 78 */	mr r3, r30
lbl_800894AC:
/* 800894AC  39 61 00 20 */	addi r11, r1, 0x20
/* 800894B0  48 2D 8D 75 */	bl _restgpr_28
/* 800894B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800894B8  7C 08 03 A6 */	mtlr r0
/* 800894BC  38 21 00 20 */	addi r1, r1, 0x20
/* 800894C0  4E 80 00 20 */	blr 
