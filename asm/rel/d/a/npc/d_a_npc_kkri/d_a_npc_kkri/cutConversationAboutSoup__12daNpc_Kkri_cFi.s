lbl_80550E18:
/* 80550E18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550E1C  7C 08 02 A6 */	mflr r0
/* 80550E20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550E24  39 61 00 20 */	addi r11, r1, 0x20
/* 80550E28  4B E1 13 A9 */	bl _savegpr_26
/* 80550E2C  7C 7A 1B 78 */	mr r26, r3
/* 80550E30  7C 9B 23 78 */	mr r27, r4
/* 80550E34  3B C0 00 00 */	li r30, 0
/* 80550E38  3B A0 FF FF */	li r29, -1
/* 80550E3C  3B 80 00 00 */	li r28, 0
/* 80550E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80550E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80550E48  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80550E4C  7F E3 FB 78 */	mr r3, r31
/* 80550E50  3C A0 80 55 */	lis r5, d_a_npc_kkri__stringBase0@ha /* 0x805535A4@ha */
/* 80550E54  38 A5 35 A4 */	addi r5, r5, d_a_npc_kkri__stringBase0@l /* 0x805535A4@l */
/* 80550E58  38 A5 00 4A */	addi r5, r5, 0x4a
/* 80550E5C  38 C0 00 03 */	li r6, 3
/* 80550E60  4B AF 72 8D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80550E64  28 03 00 00 */	cmplwi r3, 0
/* 80550E68  41 82 00 08 */	beq lbl_80550E70
/* 80550E6C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80550E70:
/* 80550E70  7F E3 FB 78 */	mr r3, r31
/* 80550E74  7F 64 DB 78 */	mr r4, r27
/* 80550E78  3C A0 80 55 */	lis r5, d_a_npc_kkri__stringBase0@ha /* 0x805535A4@ha */
/* 80550E7C  38 A5 35 A4 */	addi r5, r5, d_a_npc_kkri__stringBase0@l /* 0x805535A4@l */
/* 80550E80  38 A5 00 4E */	addi r5, r5, 0x4e
/* 80550E84  38 C0 00 03 */	li r6, 3
/* 80550E88  4B AF 72 65 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80550E8C  28 03 00 00 */	cmplwi r3, 0
/* 80550E90  41 82 00 08 */	beq lbl_80550E98
/* 80550E94  83 83 00 00 */	lwz r28, 0(r3)
lbl_80550E98:
/* 80550E98  7F E3 FB 78 */	mr r3, r31
/* 80550E9C  7F 64 DB 78 */	mr r4, r27
/* 80550EA0  4B AF 6E AD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80550EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80550EA8  41 82 00 24 */	beq lbl_80550ECC
/* 80550EAC  2C 1D 00 00 */	cmpwi r29, 0
/* 80550EB0  41 82 00 08 */	beq lbl_80550EB8
/* 80550EB4  48 00 00 18 */	b lbl_80550ECC
lbl_80550EB8:
/* 80550EB8  7F 43 D3 78 */	mr r3, r26
/* 80550EBC  38 80 00 67 */	li r4, 0x67
/* 80550EC0  38 A0 00 00 */	li r5, 0
/* 80550EC4  4B BF AD 2D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80550EC8  93 9A 0D C4 */	stw r28, 0xdc4(r26)
lbl_80550ECC:
/* 80550ECC  2C 1D 00 00 */	cmpwi r29, 0
/* 80550ED0  41 82 00 08 */	beq lbl_80550ED8
/* 80550ED4  48 00 00 80 */	b lbl_80550F54
lbl_80550ED8:
/* 80550ED8  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80550EDC  2C 00 00 01 */	cmpwi r0, 1
/* 80550EE0  41 82 00 2C */	beq lbl_80550F0C
/* 80550EE4  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80550EE8  4B BF 48 15 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80550EEC  38 00 00 00 */	li r0, 0
/* 80550EF0  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80550EF4  3C 60 80 55 */	lis r3, lit_4243@ha /* 0x8055353C@ha */
/* 80550EF8  C0 03 35 3C */	lfs f0, lit_4243@l(r3)  /* 0x8055353C@l */
/* 80550EFC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80550F00  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80550F04  38 00 00 01 */	li r0, 1
/* 80550F08  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80550F0C:
/* 80550F0C  38 00 00 00 */	li r0, 0
/* 80550F10  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80550F14  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80550F18  48 00 22 B9 */	bl func_805531D0
/* 80550F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80550F20  40 82 00 34 */	bne lbl_80550F54
/* 80550F24  7F 43 D3 78 */	mr r3, r26
/* 80550F28  38 80 00 00 */	li r4, 0
/* 80550F2C  38 A0 00 00 */	li r5, 0
/* 80550F30  38 C0 00 00 */	li r6, 0
/* 80550F34  38 E0 00 00 */	li r7, 0
/* 80550F38  4B BF AD 41 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80550F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80550F40  41 82 00 14 */	beq lbl_80550F54
/* 80550F44  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80550F48  28 00 00 01 */	cmplwi r0, 1
/* 80550F4C  40 82 00 08 */	bne lbl_80550F54
/* 80550F50  3B C0 00 01 */	li r30, 1
lbl_80550F54:
/* 80550F54  7F C3 F3 78 */	mr r3, r30
/* 80550F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80550F5C  4B E1 12 C1 */	bl _restgpr_26
/* 80550F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80550F64  7C 08 03 A6 */	mtlr r0
/* 80550F68  38 21 00 20 */	addi r1, r1, 0x20
/* 80550F6C  4E 80 00 20 */	blr 
