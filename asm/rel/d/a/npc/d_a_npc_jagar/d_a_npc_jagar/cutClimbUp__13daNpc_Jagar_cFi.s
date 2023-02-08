lbl_80A16384:
/* 80A16384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A16388  7C 08 02 A6 */	mflr r0
/* 80A1638C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A16390  39 61 00 20 */	addi r11, r1, 0x20
/* 80A16394  4B 94 BE 41 */	bl _savegpr_27
/* 80A16398  7C 7D 1B 78 */	mr r29, r3
/* 80A1639C  7C 9B 23 78 */	mr r27, r4
/* 80A163A0  3B E0 00 00 */	li r31, 0
/* 80A163A4  3B C0 FF FF */	li r30, -1
/* 80A163A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A163AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A163B0  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A163B4  7F 83 E3 78 */	mr r3, r28
/* 80A163B8  3C A0 80 A2 */	lis r5, d_a_npc_jagar__stringBase0@ha /* 0x80A1A49C@ha */
/* 80A163BC  38 A5 A4 9C */	addi r5, r5, d_a_npc_jagar__stringBase0@l /* 0x80A1A49C@l */
/* 80A163C0  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80A163C4  38 C0 00 03 */	li r6, 3
/* 80A163C8  4B 63 1D 25 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A163CC  28 03 00 00 */	cmplwi r3, 0
/* 80A163D0  41 82 00 08 */	beq lbl_80A163D8
/* 80A163D4  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A163D8:
/* 80A163D8  7F 83 E3 78 */	mr r3, r28
/* 80A163DC  7F 64 DB 78 */	mr r4, r27
/* 80A163E0  4B 63 19 6D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A163E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A163E8  41 82 00 E4 */	beq lbl_80A164CC
/* 80A163EC  2C 1E 00 01 */	cmpwi r30, 1
/* 80A163F0  41 82 00 DC */	beq lbl_80A164CC
/* 80A163F4  40 80 00 D8 */	bge lbl_80A164CC
/* 80A163F8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A163FC  40 80 00 0C */	bge lbl_80A16408
/* 80A16400  48 00 00 CC */	b lbl_80A164CC
/* 80A16404  48 00 00 C8 */	b lbl_80A164CC
lbl_80A16408:
/* 80A16408  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A1640C  2C 00 00 08 */	cmpwi r0, 8
/* 80A16410  41 82 00 28 */	beq lbl_80A16438
/* 80A16414  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A16418  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A1641C  4B 72 F4 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A16420  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A16424  38 00 00 08 */	li r0, 8
/* 80A16428  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A1642C  3C 60 80 A2 */	lis r3, lit_4169@ha /* 0x80A1A3F0@ha */
/* 80A16430  C0 03 A3 F0 */	lfs f0, lit_4169@l(r3)  /* 0x80A1A3F0@l */
/* 80A16434  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A16438:
/* 80A16438  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A1643C  2C 00 00 02 */	cmpwi r0, 2
/* 80A16440  41 82 00 28 */	beq lbl_80A16468
/* 80A16444  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A16448  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A1644C  4B 72 F4 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A16450  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A16454  38 00 00 02 */	li r0, 2
/* 80A16458  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A1645C  3C 60 80 A2 */	lis r3, lit_4169@ha /* 0x80A1A3F0@ha */
/* 80A16460  C0 03 A3 F0 */	lfs f0, lit_4169@l(r3)  /* 0x80A1A3F0@l */
/* 80A16464  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A16468:
/* 80A16468  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A1646C  2C 00 00 00 */	cmpwi r0, 0
/* 80A16470  41 82 00 28 */	beq lbl_80A16498
/* 80A16474  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A16478  4B 72 F2 85 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A1647C  38 00 00 00 */	li r0, 0
/* 80A16480  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A16484  3C 60 80 A2 */	lis r3, lit_4169@ha /* 0x80A1A3F0@ha */
/* 80A16488  C0 03 A3 F0 */	lfs f0, lit_4169@l(r3)  /* 0x80A1A3F0@l */
/* 80A1648C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A16490  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A16494  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80A16498:
/* 80A16498  38 00 00 00 */	li r0, 0
/* 80A1649C  B0 1D 0C D4 */	sth r0, 0xcd4(r29)
/* 80A164A0  B0 1D 0C D6 */	sth r0, 0xcd6(r29)
/* 80A164A4  38 00 00 01 */	li r0, 1
/* 80A164A8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A164AC  98 1D 10 03 */	stb r0, 0x1003(r29)
/* 80A164B0  7F A3 EB 78 */	mr r3, r29
/* 80A164B4  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80A164B8  4B 73 45 61 */	bl setAngle__8daNpcT_cFs
/* 80A164BC  7F A3 EB 78 */	mr r3, r29
/* 80A164C0  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 80A164C4  38 A0 00 00 */	li r5, 0
/* 80A164C8  4B 73 57 29 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A164CC:
/* 80A164CC  2C 1E 00 01 */	cmpwi r30, 1
/* 80A164D0  41 82 00 58 */	beq lbl_80A16528
/* 80A164D4  40 80 00 10 */	bge lbl_80A164E4
/* 80A164D8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A164DC  40 80 00 14 */	bge lbl_80A164F0
/* 80A164E0  48 00 00 48 */	b lbl_80A16528
lbl_80A164E4:
/* 80A164E4  2C 1E 00 03 */	cmpwi r30, 3
/* 80A164E8  40 80 00 40 */	bge lbl_80A16528
/* 80A164EC  48 00 00 38 */	b lbl_80A16524
lbl_80A164F0:
/* 80A164F0  7F A3 EB 78 */	mr r3, r29
/* 80A164F4  38 80 00 00 */	li r4, 0
/* 80A164F8  38 A0 00 00 */	li r5, 0
/* 80A164FC  38 C0 00 00 */	li r6, 0
/* 80A16500  38 E0 00 00 */	li r7, 0
/* 80A16504  4B 73 57 75 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A16508  2C 03 00 00 */	cmpwi r3, 0
/* 80A1650C  41 82 00 1C */	beq lbl_80A16528
/* 80A16510  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80A16514  28 00 00 01 */	cmplwi r0, 1
/* 80A16518  40 82 00 10 */	bne lbl_80A16528
/* 80A1651C  3B E0 00 01 */	li r31, 1
/* 80A16520  48 00 00 08 */	b lbl_80A16528
lbl_80A16524:
/* 80A16524  3B E0 00 01 */	li r31, 1
lbl_80A16528:
/* 80A16528  7F E3 FB 78 */	mr r3, r31
/* 80A1652C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A16530  4B 94 BC F1 */	bl _restgpr_27
/* 80A16534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A16538  7C 08 03 A6 */	mtlr r0
/* 80A1653C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A16540  4E 80 00 20 */	blr 
