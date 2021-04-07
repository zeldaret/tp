lbl_80567A90:
/* 80567A90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80567A94  7C 08 02 A6 */	mflr r0
/* 80567A98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80567A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80567AA0  4B DF A7 3D */	bl _savegpr_29
/* 80567AA4  7C 7D 1B 78 */	mr r29, r3
/* 80567AA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80567AAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80567AB0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80567AB4  7F C3 F3 78 */	mr r3, r30
/* 80567AB8  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567ABC  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567AC0  38 84 01 C5 */	addi r4, r4, 0x1c5
/* 80567AC4  7F A5 EB 78 */	mr r5, r29
/* 80567AC8  38 C0 FF FF */	li r6, -1
/* 80567ACC  4B AE 00 51 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80567AD0  7C 7F 1B 78 */	mr r31, r3
/* 80567AD4  2C 1F FF FF */	cmpwi r31, -1
/* 80567AD8  41 82 01 9C */	beq lbl_80567C74
/* 80567ADC  80 1D 0D AC */	lwz r0, 0xdac(r29)
/* 80567AE0  2C 00 FF FF */	cmpwi r0, -1
/* 80567AE4  40 82 01 2C */	bne lbl_80567C10
/* 80567AE8  7F C3 F3 78 */	mr r3, r30
/* 80567AEC  4B AE 08 FD */	bl getRunEventName__16dEvent_manager_cFv
/* 80567AF0  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567AF4  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567AF8  38 84 00 AF */	addi r4, r4, 0xaf
/* 80567AFC  4B E0 0E 99 */	bl strcmp
/* 80567B00  2C 03 00 00 */	cmpwi r3, 0
/* 80567B04  41 82 01 04 */	beq lbl_80567C08
/* 80567B08  7F C3 F3 78 */	mr r3, r30
/* 80567B0C  4B AE 08 DD */	bl getRunEventName__16dEvent_manager_cFv
/* 80567B10  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567B14  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567B18  38 84 00 C3 */	addi r4, r4, 0xc3
/* 80567B1C  4B E0 0E 79 */	bl strcmp
/* 80567B20  2C 03 00 00 */	cmpwi r3, 0
/* 80567B24  41 82 00 E4 */	beq lbl_80567C08
/* 80567B28  7F C3 F3 78 */	mr r3, r30
/* 80567B2C  4B AE 08 BD */	bl getRunEventName__16dEvent_manager_cFv
/* 80567B30  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567B34  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567B38  38 84 00 E0 */	addi r4, r4, 0xe0
/* 80567B3C  4B E0 0E 59 */	bl strcmp
/* 80567B40  2C 03 00 00 */	cmpwi r3, 0
/* 80567B44  41 82 00 C4 */	beq lbl_80567C08
/* 80567B48  7F C3 F3 78 */	mr r3, r30
/* 80567B4C  4B AE 08 9D */	bl getRunEventName__16dEvent_manager_cFv
/* 80567B50  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567B54  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567B58  38 84 00 F5 */	addi r4, r4, 0xf5
/* 80567B5C  4B E0 0E 39 */	bl strcmp
/* 80567B60  2C 03 00 00 */	cmpwi r3, 0
/* 80567B64  41 82 00 A4 */	beq lbl_80567C08
/* 80567B68  7F C3 F3 78 */	mr r3, r30
/* 80567B6C  4B AE 08 7D */	bl getRunEventName__16dEvent_manager_cFv
/* 80567B70  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567B74  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567B78  38 84 01 13 */	addi r4, r4, 0x113
/* 80567B7C  4B E0 0E 19 */	bl strcmp
/* 80567B80  2C 03 00 00 */	cmpwi r3, 0
/* 80567B84  41 82 00 84 */	beq lbl_80567C08
/* 80567B88  7F C3 F3 78 */	mr r3, r30
/* 80567B8C  4B AE 08 5D */	bl getRunEventName__16dEvent_manager_cFv
/* 80567B90  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567B94  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567B98  38 84 01 28 */	addi r4, r4, 0x128
/* 80567B9C  4B E0 0D F9 */	bl strcmp
/* 80567BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80567BA4  41 82 00 64 */	beq lbl_80567C08
/* 80567BA8  7F C3 F3 78 */	mr r3, r30
/* 80567BAC  4B AE 08 3D */	bl getRunEventName__16dEvent_manager_cFv
/* 80567BB0  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567BB4  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567BB8  38 84 01 46 */	addi r4, r4, 0x146
/* 80567BBC  4B E0 0D D9 */	bl strcmp
/* 80567BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80567BC4  41 82 00 44 */	beq lbl_80567C08
/* 80567BC8  7F C3 F3 78 */	mr r3, r30
/* 80567BCC  4B AE 08 1D */	bl getRunEventName__16dEvent_manager_cFv
/* 80567BD0  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567BD4  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567BD8  38 84 01 5B */	addi r4, r4, 0x15b
/* 80567BDC  4B E0 0D B9 */	bl strcmp
/* 80567BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80567BE4  41 82 00 24 */	beq lbl_80567C08
/* 80567BE8  7F C3 F3 78 */	mr r3, r30
/* 80567BEC  4B AE 07 FD */	bl getRunEventName__16dEvent_manager_cFv
/* 80567BF0  3C 80 80 57 */	lis r4, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 80567BF4  38 84 19 08 */	addi r4, r4, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 80567BF8  38 84 01 79 */	addi r4, r4, 0x179
/* 80567BFC  4B E0 0D 99 */	bl strcmp
/* 80567C00  2C 03 00 00 */	cmpwi r3, 0
/* 80567C04  40 82 00 0C */	bne lbl_80567C10
lbl_80567C08:
/* 80567C08  38 00 00 01 */	li r0, 1
/* 80567C0C  98 1D 11 A6 */	stb r0, 0x11a6(r29)
lbl_80567C10:
/* 80567C10  93 FD 0D AC */	stw r31, 0xdac(r29)
/* 80567C14  7F C3 F3 78 */	mr r3, r30
/* 80567C18  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80567C1C  3C A0 80 57 */	lis r5, mCutNameList__12daNpc_Taro_c@ha /* 0x80572A20@ha */
/* 80567C20  38 A5 2A 20 */	addi r5, r5, mCutNameList__12daNpc_Taro_c@l /* 0x80572A20@l */
/* 80567C24  38 C0 00 11 */	li r6, 0x11
/* 80567C28  38 E0 00 00 */	li r7, 0
/* 80567C2C  39 00 00 00 */	li r8, 0
/* 80567C30  4B AE 01 E1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80567C34  7C 60 1B 78 */	mr r0, r3
/* 80567C38  7F A3 EB 78 */	mr r3, r29
/* 80567C3C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80567C40  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80567C44  3C A0 80 57 */	lis r5, mCutList__12daNpc_Taro_c@ha /* 0x80572B24@ha */
/* 80567C48  38 05 2B 24 */	addi r0, r5, mCutList__12daNpc_Taro_c@l /* 0x80572B24@l */
/* 80567C4C  7D 80 32 14 */	add r12, r0, r6
/* 80567C50  4B DF A4 35 */	bl __ptmf_scall
/* 80567C54  60 00 00 00 */	nop 
/* 80567C58  2C 03 00 00 */	cmpwi r3, 0
/* 80567C5C  41 82 00 10 */	beq lbl_80567C6C
/* 80567C60  7F C3 F3 78 */	mr r3, r30
/* 80567C64  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80567C68  4B AE 05 15 */	bl cutEnd__16dEvent_manager_cFi
lbl_80567C6C:
/* 80567C6C  38 60 00 01 */	li r3, 1
/* 80567C70  48 00 00 08 */	b lbl_80567C78
lbl_80567C74:
/* 80567C74  38 60 00 00 */	li r3, 0
lbl_80567C78:
/* 80567C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80567C7C  4B DF A5 AD */	bl _restgpr_29
/* 80567C80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80567C84  7C 08 03 A6 */	mtlr r0
/* 80567C88  38 21 00 20 */	addi r1, r1, 0x20
/* 80567C8C  4E 80 00 20 */	blr 
