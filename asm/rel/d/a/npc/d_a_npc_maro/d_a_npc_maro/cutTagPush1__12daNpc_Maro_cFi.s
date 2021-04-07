lbl_80561614:
/* 80561614  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80561618  7C 08 02 A6 */	mflr r0
/* 8056161C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80561620  39 61 00 20 */	addi r11, r1, 0x20
/* 80561624  4B E0 0B B5 */	bl _savegpr_28
/* 80561628  7C 7E 1B 78 */	mr r30, r3
/* 8056162C  7C 9C 23 78 */	mr r28, r4
/* 80561630  3B E0 FF FF */	li r31, -1
/* 80561634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056163C  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80561640  7F A3 EB 78 */	mr r3, r29
/* 80561644  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 80561648  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8056164C  38 A5 02 1B */	addi r5, r5, 0x21b
/* 80561650  38 C0 00 03 */	li r6, 3
/* 80561654  4B AE 6A 99 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80561658  28 03 00 00 */	cmplwi r3, 0
/* 8056165C  41 82 00 08 */	beq lbl_80561664
/* 80561660  83 E3 00 00 */	lwz r31, 0(r3)
lbl_80561664:
/* 80561664  7F A3 EB 78 */	mr r3, r29
/* 80561668  7F 84 E3 78 */	mr r4, r28
/* 8056166C  4B AE 66 E1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80561670  2C 03 00 00 */	cmpwi r3, 0
/* 80561674  41 82 00 B8 */	beq lbl_8056172C
/* 80561678  2C 1F 00 01 */	cmpwi r31, 1
/* 8056167C  41 82 00 0C */	beq lbl_80561688
/* 80561680  40 80 00 AC */	bge lbl_8056172C
/* 80561684  48 00 00 A8 */	b lbl_8056172C
lbl_80561688:
/* 80561688  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8056168C  2C 00 00 09 */	cmpwi r0, 9
/* 80561690  41 82 00 28 */	beq lbl_805616B8
/* 80561694  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80561698  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8056169C  4B BE 41 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805616A0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 805616A4  38 00 00 09 */	li r0, 9
/* 805616A8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 805616AC  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 805616B0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 805616B4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_805616B8:
/* 805616B8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 805616BC  2C 00 00 00 */	cmpwi r0, 0
/* 805616C0  41 82 00 28 */	beq lbl_805616E8
/* 805616C4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 805616C8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 805616CC  4B BE 41 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805616D0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 805616D4  38 00 00 00 */	li r0, 0
/* 805616D8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 805616DC  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 805616E0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 805616E4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_805616E8:
/* 805616E8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805616EC  2C 00 00 04 */	cmpwi r0, 4
/* 805616F0  41 82 00 2C */	beq lbl_8056171C
/* 805616F4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805616F8  4B BE 40 05 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805616FC  38 00 00 00 */	li r0, 0
/* 80561700  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80561704  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80561708  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 8056170C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80561710  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80561714  38 00 00 04 */	li r0, 4
/* 80561718  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056171C:
/* 8056171C  38 00 00 00 */	li r0, 0
/* 80561720  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80561724  38 00 00 01 */	li r0, 1
/* 80561728  98 1E 11 32 */	stb r0, 0x1132(r30)
lbl_8056172C:
/* 8056172C  2C 1F 00 01 */	cmpwi r31, 1
/* 80561730  41 82 00 38 */	beq lbl_80561768
/* 80561734  40 80 00 3C */	bge lbl_80561770
/* 80561738  2C 1F 00 00 */	cmpwi r31, 0
/* 8056173C  40 80 00 08 */	bge lbl_80561744
/* 80561740  48 00 00 30 */	b lbl_80561770
lbl_80561744:
/* 80561744  7F C3 F3 78 */	mr r3, r30
/* 80561748  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8056174C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80561750  7D 89 03 A6 */	mtctr r12
/* 80561754  4E 80 04 21 */	bctrl 
/* 80561758  38 00 00 00 */	li r0, 0
/* 8056175C  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80561760  38 60 00 01 */	li r3, 1
/* 80561764  48 00 00 10 */	b lbl_80561774
lbl_80561768:
/* 80561768  38 60 00 01 */	li r3, 1
/* 8056176C  48 00 00 08 */	b lbl_80561774
lbl_80561770:
/* 80561770  38 60 00 01 */	li r3, 1
lbl_80561774:
/* 80561774  39 61 00 20 */	addi r11, r1, 0x20
/* 80561778  4B E0 0A AD */	bl _restgpr_28
/* 8056177C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80561780  7C 08 03 A6 */	mtlr r0
/* 80561784  38 21 00 20 */	addi r1, r1, 0x20
/* 80561788  4E 80 00 20 */	blr 
