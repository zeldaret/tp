lbl_805743B8:
/* 805743B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805743BC  7C 08 02 A6 */	mflr r0
/* 805743C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805743C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805743C8  4B DE DE 08 */	b _savegpr_26
/* 805743CC  7C 7A 1B 78 */	mr r26, r3
/* 805743D0  3B C0 00 00 */	li r30, 0
/* 805743D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805743D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805743DC  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 805743E0  7F A3 EB 78 */	mr r3, r29
/* 805743E4  3C 80 80 57 */	lis r4, struct_8057668C+0x0@ha
/* 805743E8  38 84 66 8C */	addi r4, r4, struct_8057668C+0x0@l
/* 805743EC  38 84 00 11 */	addi r4, r4, 0x11
/* 805743F0  7F 45 D3 78 */	mr r5, r26
/* 805743F4  38 C0 FF FF */	li r6, -1
/* 805743F8  4B AD 37 24 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 805743FC  2C 03 FF FF */	cmpwi r3, -1
/* 80574400  41 82 00 80 */	beq lbl_80574480
/* 80574404  90 7A 0D AC */	stw r3, 0xdac(r26)
/* 80574408  7F A3 EB 78 */	mr r3, r29
/* 8057440C  4B AD 3F DC */	b getRunEventName__16dEvent_manager_cFv
/* 80574410  7C 7B 1B 78 */	mr r27, r3
/* 80574414  3B 80 00 00 */	li r28, 0
/* 80574418  3B E0 00 00 */	li r31, 0
/* 8057441C  3C 60 80 57 */	lis r3, mCutNameList__10daNpcTkj_c@ha
/* 80574420  3B C3 67 B0 */	addi r30, r3, mCutNameList__10daNpcTkj_c@l
lbl_80574424:
/* 80574424  7F 63 DB 78 */	mr r3, r27
/* 80574428  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8057442C  4B DF 45 68 */	b strcmp
/* 80574430  2C 03 00 00 */	cmpwi r3, 0
/* 80574434  41 82 00 14 */	beq lbl_80574448
/* 80574438  3B 9C 00 01 */	addi r28, r28, 1
/* 8057443C  2C 1C 00 02 */	cmpwi r28, 2
/* 80574440  3B FF 00 04 */	addi r31, r31, 4
/* 80574444  41 80 FF E0 */	blt lbl_80574424
lbl_80574448:
/* 80574448  7F 43 D3 78 */	mr r3, r26
/* 8057444C  80 9A 0D AC */	lwz r4, 0xdac(r26)
/* 80574450  1C DC 00 0C */	mulli r6, r28, 0xc
/* 80574454  3C A0 80 57 */	lis r5, mCutList__10daNpcTkj_c@ha
/* 80574458  38 05 67 C4 */	addi r0, r5, mCutList__10daNpcTkj_c@l
/* 8057445C  7D 80 32 14 */	add r12, r0, r6
/* 80574460  4B DE DC 24 */	b __ptmf_scall
/* 80574464  60 00 00 00 */	nop 
/* 80574468  2C 03 00 00 */	cmpwi r3, 0
/* 8057446C  41 82 00 10 */	beq lbl_8057447C
/* 80574470  7F A3 EB 78 */	mr r3, r29
/* 80574474  80 9A 0D AC */	lwz r4, 0xdac(r26)
/* 80574478  4B AD 3D 04 */	b cutEnd__16dEvent_manager_cFi
lbl_8057447C:
/* 8057447C  3B C0 00 01 */	li r30, 1
lbl_80574480:
/* 80574480  7F C3 F3 78 */	mr r3, r30
/* 80574484  39 61 00 20 */	addi r11, r1, 0x20
/* 80574488  4B DE DD 94 */	b _restgpr_26
/* 8057448C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80574490  7C 08 03 A6 */	mtlr r0
/* 80574494  38 21 00 20 */	addi r1, r1, 0x20
/* 80574498  4E 80 00 20 */	blr 
