lbl_80B22434:
/* 80B22434  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B22438  7C 08 02 A6 */	mflr r0
/* 80B2243C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B22440  39 61 00 30 */	addi r11, r1, 0x30
/* 80B22444  4B 83 FD 8D */	bl _savegpr_26
/* 80B22448  7C 7C 1B 78 */	mr r28, r3
/* 80B2244C  7C 9A 23 78 */	mr r26, r4
/* 80B22450  3B E0 00 00 */	li r31, 0
/* 80B22454  3B C0 FF FF */	li r30, -1
/* 80B22458  3B A0 00 00 */	li r29, 0
/* 80B2245C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B22460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B22464  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B22468  7F 63 DB 78 */	mr r3, r27
/* 80B2246C  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B22470  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B22474  38 A5 00 A6 */	addi r5, r5, 0xa6
/* 80B22478  38 C0 00 03 */	li r6, 3
/* 80B2247C  4B 52 5C 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B22480  28 03 00 00 */	cmplwi r3, 0
/* 80B22484  41 82 00 08 */	beq lbl_80B2248C
/* 80B22488  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B2248C:
/* 80B2248C  7F 63 DB 78 */	mr r3, r27
/* 80B22490  7F 44 D3 78 */	mr r4, r26
/* 80B22494  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B22498  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B2249C  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B224A0  38 C0 00 03 */	li r6, 3
/* 80B224A4  4B 52 5C 49 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B224A8  7F 63 DB 78 */	mr r3, r27
/* 80B224AC  7F 44 D3 78 */	mr r4, r26
/* 80B224B0  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B224B4  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B224B8  38 A5 00 B0 */	addi r5, r5, 0xb0
/* 80B224BC  38 C0 00 03 */	li r6, 3
/* 80B224C0  4B 52 5C 2D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B224C4  28 03 00 00 */	cmplwi r3, 0
/* 80B224C8  41 82 00 08 */	beq lbl_80B224D0
/* 80B224CC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B224D0:
/* 80B224D0  7F 63 DB 78 */	mr r3, r27
/* 80B224D4  7F 44 D3 78 */	mr r4, r26
/* 80B224D8  4B 52 58 75 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B224DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B224E0  41 82 00 2C */	beq lbl_80B2250C
/* 80B224E4  2C 1E 00 01 */	cmpwi r30, 1
/* 80B224E8  41 82 00 24 */	beq lbl_80B2250C
/* 80B224EC  40 80 00 20 */	bge lbl_80B2250C
/* 80B224F0  2C 1E 00 00 */	cmpwi r30, 0
/* 80B224F4  40 80 00 08 */	bge lbl_80B224FC
/* 80B224F8  48 00 00 14 */	b lbl_80B2250C
lbl_80B224FC:
/* 80B224FC  7F 83 E3 78 */	mr r3, r28
/* 80B22500  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80B22504  38 A0 00 00 */	li r5, 0
/* 80B22508  4B 62 96 E9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B2250C:
/* 80B2250C  3C 60 80 B2 */	lis r3, lit_6056@ha /* 0x80B24B70@ha */
/* 80B22510  38 83 4B 70 */	addi r4, r3, lit_6056@l /* 0x80B24B70@l */
/* 80B22514  80 64 00 00 */	lwz r3, 0(r4)
/* 80B22518  80 04 00 04 */	lwz r0, 4(r4)
/* 80B2251C  90 61 00 08 */	stw r3, 8(r1)
/* 80B22520  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B22524  2C 1E 00 02 */	cmpwi r30, 2
/* 80B22528  40 80 00 D0 */	bge lbl_80B225F8
/* 80B2252C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B22530  40 80 00 08 */	bge lbl_80B22538
/* 80B22534  48 00 00 C4 */	b lbl_80B225F8
lbl_80B22538:
/* 80B22538  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B2253C  2C 00 00 01 */	cmpwi r0, 1
/* 80B22540  41 82 00 2C */	beq lbl_80B2256C
/* 80B22544  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B22548  4B 62 31 B5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B2254C  38 00 00 00 */	li r0, 0
/* 80B22550  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B22554  3C 60 80 B2 */	lis r3, lit_4159@ha /* 0x80B24AAC@ha */
/* 80B22558  C0 03 4A AC */	lfs f0, lit_4159@l(r3)  /* 0x80B24AAC@l */
/* 80B2255C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B22560  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B22564  38 00 00 01 */	li r0, 1
/* 80B22568  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B2256C:
/* 80B2256C  38 00 00 00 */	li r0, 0
/* 80B22570  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B22574  2C 1E 00 00 */	cmpwi r30, 0
/* 80B22578  40 82 00 3C */	bne lbl_80B225B4
/* 80B2257C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B22580  2C 00 00 00 */	cmpwi r0, 0
/* 80B22584  41 82 00 28 */	beq lbl_80B225AC
/* 80B22588  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B2258C  4B 62 31 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B22590  38 00 00 00 */	li r0, 0
/* 80B22594  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B22598  3C 60 80 B2 */	lis r3, lit_4159@ha /* 0x80B24AAC@ha */
/* 80B2259C  C0 03 4A AC */	lfs f0, lit_4159@l(r3)  /* 0x80B24AAC@l */
/* 80B225A0  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B225A4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B225A8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B225AC:
/* 80B225AC  38 00 00 00 */	li r0, 0
/* 80B225B0  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80B225B4:
/* 80B225B4  93 A1 00 08 */	stw r29, 8(r1)
/* 80B225B8  7F 83 E3 78 */	mr r3, r28
/* 80B225BC  38 81 00 08 */	addi r4, r1, 8
/* 80B225C0  38 A0 00 00 */	li r5, 0
/* 80B225C4  38 C0 00 00 */	li r6, 0
/* 80B225C8  38 E0 00 00 */	li r7, 0
/* 80B225CC  4B 62 96 AD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B225D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B225D4  41 82 00 24 */	beq lbl_80B225F8
/* 80B225D8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B225DC  41 82 00 0C */	beq lbl_80B225E8
/* 80B225E0  3B E0 00 01 */	li r31, 1
/* 80B225E4  48 00 00 14 */	b lbl_80B225F8
lbl_80B225E8:
/* 80B225E8  88 1C 09 9A */	lbz r0, 0x99a(r28)
/* 80B225EC  28 00 00 01 */	cmplwi r0, 1
/* 80B225F0  40 82 00 08 */	bne lbl_80B225F8
/* 80B225F4  3B E0 00 01 */	li r31, 1
lbl_80B225F8:
/* 80B225F8  7F E3 FB 78 */	mr r3, r31
/* 80B225FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B22600  4B 83 FC 1D */	bl _restgpr_26
/* 80B22604  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B22608  7C 08 03 A6 */	mtlr r0
/* 80B2260C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B22610  4E 80 00 20 */	blr 
