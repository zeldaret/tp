lbl_8055F508:
/* 8055F508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055F50C  7C 08 02 A6 */	mflr r0
/* 8055F510  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055F514  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F518  4B E0 2C BD */	bl _savegpr_27
/* 8055F51C  7C 7F 1B 78 */	mr r31, r3
/* 8055F520  7C 9B 23 78 */	mr r27, r4
/* 8055F524  3B A0 00 00 */	li r29, 0
/* 8055F528  3B 80 FF FF */	li r28, -1
/* 8055F52C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055F530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055F534  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8055F538  7F C3 F3 78 */	mr r3, r30
/* 8055F53C  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055F540  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055F544  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055F548  38 C0 00 03 */	li r6, 3
/* 8055F54C  4B AE 8B A1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055F550  28 03 00 00 */	cmplwi r3, 0
/* 8055F554  41 82 00 08 */	beq lbl_8055F55C
/* 8055F558  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055F55C:
/* 8055F55C  7F C3 F3 78 */	mr r3, r30
/* 8055F560  7F 64 DB 78 */	mr r4, r27
/* 8055F564  4B AE 87 E9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8055F568  2C 1C 00 00 */	cmpwi r28, 0
/* 8055F56C  41 82 00 08 */	beq lbl_8055F574
/* 8055F570  48 00 00 A8 */	b lbl_8055F618
lbl_8055F574:
/* 8055F574  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 8055F578  4B BE 61 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F57C  7C 7E 1B 78 */	mr r30, r3
/* 8055F580  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055F584  4B BE 61 85 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055F588  7C 63 F0 50 */	subf r3, r3, r30
/* 8055F58C  30 03 FF FF */	addic r0, r3, -1
/* 8055F590  7C 00 19 10 */	subfe r0, r0, r3
/* 8055F594  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055F598  40 82 00 10 */	bne lbl_8055F5A8
/* 8055F59C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8055F5A0  2C 00 00 02 */	cmpwi r0, 2
/* 8055F5A4  41 82 00 34 */	beq lbl_8055F5D8
lbl_8055F5A8:
/* 8055F5A8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055F5AC  4B BE 61 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055F5B0  38 00 00 00 */	li r0, 0
/* 8055F5B4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8055F5B8  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 8055F5BC  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 8055F5C0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8055F5C4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055F5C8  38 00 00 02 */	li r0, 2
/* 8055F5CC  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8055F5D0  38 00 00 01 */	li r0, 1
/* 8055F5D4  48 00 00 08 */	b lbl_8055F5DC
lbl_8055F5D8:
/* 8055F5D8  38 00 00 00 */	li r0, 0
lbl_8055F5DC:
/* 8055F5DC  2C 00 00 00 */	cmpwi r0, 0
/* 8055F5E0  41 82 00 2C */	beq lbl_8055F60C
/* 8055F5E4  7F C3 F3 78 */	mr r3, r30
/* 8055F5E8  4B AB 96 F9 */	bl fopAc_IsActor__FPv
/* 8055F5EC  2C 03 00 00 */	cmpwi r3, 0
/* 8055F5F0  41 82 00 1C */	beq lbl_8055F60C
/* 8055F5F4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8055F5F8  7F C4 F3 78 */	mr r4, r30
/* 8055F5FC  4B BE 60 E5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055F600  3C 60 80 56 */	lis r3, lit_6001@ha /* 0x80564D24@ha */
/* 8055F604  C0 03 4D 24 */	lfs f0, lit_6001@l(r3)  /* 0x80564D24@l */
/* 8055F608  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_8055F60C:
/* 8055F60C  38 00 00 00 */	li r0, 0
/* 8055F610  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8055F614  3B A0 00 01 */	li r29, 1
lbl_8055F618:
/* 8055F618  7F A3 EB 78 */	mr r3, r29
/* 8055F61C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055F620  4B E0 2C 01 */	bl _restgpr_27
/* 8055F624  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055F628  7C 08 03 A6 */	mtlr r0
/* 8055F62C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055F630  4E 80 00 20 */	blr 
