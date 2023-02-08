lbl_80B69DAC:
/* 80B69DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B69DB0  7C 08 02 A6 */	mflr r0
/* 80B69DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B69DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B69DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B69DC0  7C 7E 1B 78 */	mr r30, r3
/* 80B69DC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B69DC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B69DCC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B69DD0  7F E3 FB 78 */	mr r3, r31
/* 80B69DD4  3C 80 80 B7 */	lis r4, d_a_npc_zanb__stringBase0@ha /* 0x80B6BDBC@ha */
/* 80B69DD8  38 84 BD BC */	addi r4, r4, d_a_npc_zanb__stringBase0@l /* 0x80B6BDBC@l */
/* 80B69DDC  38 84 00 0D */	addi r4, r4, 0xd
/* 80B69DE0  7F C5 F3 78 */	mr r5, r30
/* 80B69DE4  38 C0 FF FF */	li r6, -1
/* 80B69DE8  4B 4D DD 35 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B69DEC  2C 03 FF FF */	cmpwi r3, -1
/* 80B69DF0  41 82 00 68 */	beq lbl_80B69E58
/* 80B69DF4  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80B69DF8  7F E3 FB 78 */	mr r3, r31
/* 80B69DFC  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B69E00  3C A0 80 B7 */	lis r5, mCutNameList__12daNpc_zanB_c@ha /* 0x80B6BEA0@ha */
/* 80B69E04  38 A5 BE A0 */	addi r5, r5, mCutNameList__12daNpc_zanB_c@l /* 0x80B6BEA0@l */
/* 80B69E08  38 C0 00 01 */	li r6, 1
/* 80B69E0C  38 E0 00 00 */	li r7, 0
/* 80B69E10  39 00 00 00 */	li r8, 0
/* 80B69E14  4B 4D DF FD */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B69E18  7C 60 1B 78 */	mr r0, r3
/* 80B69E1C  7F C3 F3 78 */	mr r3, r30
/* 80B69E20  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B69E24  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B69E28  3C A0 80 B7 */	lis r5, mCutList__12daNpc_zanB_c@ha /* 0x80B6BEA4@ha */
/* 80B69E2C  38 05 BE A4 */	addi r0, r5, mCutList__12daNpc_zanB_c@l /* 0x80B6BEA4@l */
/* 80B69E30  7D 80 32 14 */	add r12, r0, r6
/* 80B69E34  4B 7F 82 51 */	bl __ptmf_scall
/* 80B69E38  60 00 00 00 */	nop 
/* 80B69E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B69E40  41 82 00 10 */	beq lbl_80B69E50
/* 80B69E44  7F E3 FB 78 */	mr r3, r31
/* 80B69E48  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80B69E4C  4B 4D E3 31 */	bl cutEnd__16dEvent_manager_cFi
lbl_80B69E50:
/* 80B69E50  38 60 00 01 */	li r3, 1
/* 80B69E54  48 00 00 08 */	b lbl_80B69E5C
lbl_80B69E58:
/* 80B69E58  38 60 00 00 */	li r3, 0
lbl_80B69E5C:
/* 80B69E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B69E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B69E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B69E68  7C 08 03 A6 */	mtlr r0
/* 80B69E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B69E70  4E 80 00 20 */	blr 
