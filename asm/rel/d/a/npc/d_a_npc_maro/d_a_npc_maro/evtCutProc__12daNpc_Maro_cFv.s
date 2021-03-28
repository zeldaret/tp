lbl_8055D1F4:
/* 8055D1F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D1F8  7C 08 02 A6 */	mflr r0
/* 8055D1FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D200  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D204  4B E0 4F D8 */	b _savegpr_29
/* 8055D208  7C 7E 1B 78 */	mr r30, r3
/* 8055D20C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055D210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055D214  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8055D218  7F E3 FB 78 */	mr r3, r31
/* 8055D21C  3C 80 80 56 */	lis r4, struct_80564D58+0x0@ha
/* 8055D220  38 84 4D 58 */	addi r4, r4, struct_80564D58+0x0@l
/* 8055D224  38 84 01 0A */	addi r4, r4, 0x10a
/* 8055D228  7F C5 F3 78 */	mr r5, r30
/* 8055D22C  38 C0 FF FF */	li r6, -1
/* 8055D230  4B AE A8 EC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8055D234  7C 7D 1B 78 */	mr r29, r3
/* 8055D238  2C 1D FF FF */	cmpwi r29, -1
/* 8055D23C  41 82 00 FC */	beq lbl_8055D338
/* 8055D240  80 1E 0D AC */	lwz r0, 0xdac(r30)
/* 8055D244  2C 00 FF FF */	cmpwi r0, -1
/* 8055D248  40 82 00 8C */	bne lbl_8055D2D4
/* 8055D24C  7F E3 FB 78 */	mr r3, r31
/* 8055D250  4B AE B1 98 */	b getRunEventName__16dEvent_manager_cFv
/* 8055D254  3C 80 80 56 */	lis r4, struct_80564D58+0x0@ha
/* 8055D258  38 84 4D 58 */	addi r4, r4, struct_80564D58+0x0@l
/* 8055D25C  38 84 00 99 */	addi r4, r4, 0x99
/* 8055D260  4B E0 B7 34 */	b strcmp
/* 8055D264  2C 03 00 00 */	cmpwi r3, 0
/* 8055D268  41 82 00 64 */	beq lbl_8055D2CC
/* 8055D26C  7F E3 FB 78 */	mr r3, r31
/* 8055D270  4B AE B1 78 */	b getRunEventName__16dEvent_manager_cFv
/* 8055D274  3C 80 80 56 */	lis r4, struct_80564D58+0x0@ha
/* 8055D278  38 84 4D 58 */	addi r4, r4, struct_80564D58+0x0@l
/* 8055D27C  38 84 00 AD */	addi r4, r4, 0xad
/* 8055D280  4B E0 B7 14 */	b strcmp
/* 8055D284  2C 03 00 00 */	cmpwi r3, 0
/* 8055D288  41 82 00 44 */	beq lbl_8055D2CC
/* 8055D28C  7F E3 FB 78 */	mr r3, r31
/* 8055D290  4B AE B1 58 */	b getRunEventName__16dEvent_manager_cFv
/* 8055D294  3C 80 80 56 */	lis r4, struct_80564D58+0x0@ha
/* 8055D298  38 84 4D 58 */	addi r4, r4, struct_80564D58+0x0@l
/* 8055D29C  38 84 00 C4 */	addi r4, r4, 0xc4
/* 8055D2A0  4B E0 B6 F4 */	b strcmp
/* 8055D2A4  2C 03 00 00 */	cmpwi r3, 0
/* 8055D2A8  41 82 00 24 */	beq lbl_8055D2CC
/* 8055D2AC  7F E3 FB 78 */	mr r3, r31
/* 8055D2B0  4B AE B1 38 */	b getRunEventName__16dEvent_manager_cFv
/* 8055D2B4  3C 80 80 56 */	lis r4, struct_80564D58+0x0@ha
/* 8055D2B8  38 84 4D 58 */	addi r4, r4, struct_80564D58+0x0@l
/* 8055D2BC  38 84 00 D6 */	addi r4, r4, 0xd6
/* 8055D2C0  4B E0 B6 D4 */	b strcmp
/* 8055D2C4  2C 03 00 00 */	cmpwi r3, 0
/* 8055D2C8  40 82 00 0C */	bne lbl_8055D2D4
lbl_8055D2CC:
/* 8055D2CC  38 00 00 01 */	li r0, 1
/* 8055D2D0  98 1E 11 38 */	stb r0, 0x1138(r30)
lbl_8055D2D4:
/* 8055D2D4  93 BE 0D AC */	stw r29, 0xdac(r30)
/* 8055D2D8  7F E3 FB 78 */	mr r3, r31
/* 8055D2DC  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8055D2E0  3C A0 80 56 */	lis r5, mCutNameList__12daNpc_Maro_c@ha
/* 8055D2E4  38 A5 54 24 */	addi r5, r5, mCutNameList__12daNpc_Maro_c@l
/* 8055D2E8  38 C0 00 11 */	li r6, 0x11
/* 8055D2EC  38 E0 00 00 */	li r7, 0
/* 8055D2F0  39 00 00 00 */	li r8, 0
/* 8055D2F4  4B AE AB 1C */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8055D2F8  7C 60 1B 78 */	mr r0, r3
/* 8055D2FC  7F C3 F3 78 */	mr r3, r30
/* 8055D300  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8055D304  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8055D308  3C A0 80 56 */	lis r5, mCutList__12daNpc_Maro_c@ha
/* 8055D30C  38 05 55 28 */	addi r0, r5, mCutList__12daNpc_Maro_c@l
/* 8055D310  7D 80 32 14 */	add r12, r0, r6
/* 8055D314  4B E0 4D 70 */	b __ptmf_scall
/* 8055D318  60 00 00 00 */	nop 
/* 8055D31C  2C 03 00 00 */	cmpwi r3, 0
/* 8055D320  41 82 00 10 */	beq lbl_8055D330
/* 8055D324  7F E3 FB 78 */	mr r3, r31
/* 8055D328  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 8055D32C  4B AE AE 50 */	b cutEnd__16dEvent_manager_cFi
lbl_8055D330:
/* 8055D330  38 60 00 01 */	li r3, 1
/* 8055D334  48 00 00 1C */	b lbl_8055D350
lbl_8055D338:
/* 8055D338  88 1E 11 31 */	lbz r0, 0x1131(r30)
/* 8055D33C  28 00 00 00 */	cmplwi r0, 0
/* 8055D340  41 82 00 0C */	beq lbl_8055D34C
/* 8055D344  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8055D348  4B C3 8F C4 */	b Save__16ShopCam_action_cFv
lbl_8055D34C:
/* 8055D34C  38 60 00 00 */	li r3, 0
lbl_8055D350:
/* 8055D350  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D354  4B E0 4E D4 */	b _restgpr_29
/* 8055D358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D35C  7C 08 03 A6 */	mtlr r0
/* 8055D360  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D364  4E 80 00 20 */	blr 
