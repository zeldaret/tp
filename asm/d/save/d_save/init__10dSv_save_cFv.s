lbl_8003501C:
/* 8003501C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80035020  7C 08 02 A6 */	mflr r0
/* 80035024  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035028  39 61 00 20 */	addi r11, r1, 0x20
/* 8003502C  48 32 D1 B1 */	bl _savegpr_29
/* 80035030  7C 7D 1B 78 */	mr r29, r3
/* 80035034  4B FF F6 71 */	bl init__12dSv_player_cFv
/* 80035038  3B C0 00 00 */	li r30, 0
/* 8003503C  3B E0 00 00 */	li r31, 0
lbl_80035040:
/* 80035040  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 80035044  7C 7D 1A 14 */	add r3, r29, r3
/* 80035048  4B FF FA 1D */	bl init__12dSv_memory_cFv
/* 8003504C  3B DE 00 01 */	addi r30, r30, 1
/* 80035050  2C 1E 00 20 */	cmpwi r30, 0x20
/* 80035054  3B FF 00 20 */	addi r31, r31, 0x20
/* 80035058  41 80 FF E8 */	blt lbl_80035040
/* 8003505C  3B C0 00 00 */	li r30, 0
/* 80035060  3B E0 00 00 */	li r31, 0
lbl_80035064:
/* 80035064  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80035068  7C 7D 1A 14 */	add r3, r29, r3
/* 8003506C  4B FF FA 19 */	bl init__13dSv_memory2_cFv
/* 80035070  3B DE 00 01 */	addi r30, r30, 1
/* 80035074  2C 1E 00 40 */	cmpwi r30, 0x40
/* 80035078  3B FF 00 08 */	addi r31, r31, 8
/* 8003507C  41 80 FF E8 */	blt lbl_80035064
/* 80035080  38 7D 07 F0 */	addi r3, r29, 0x7f0
/* 80035084  4B FF F8 D1 */	bl init__11dSv_event_cFv
/* 80035088  38 7D 09 40 */	addi r3, r29, 0x940
/* 8003508C  4B FF F9 91 */	bl init__14dSv_MiniGame_cFv
/* 80035090  39 61 00 20 */	addi r11, r1, 0x20
/* 80035094  48 32 D1 95 */	bl _restgpr_29
/* 80035098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003509C  7C 08 03 A6 */	mtlr r0
/* 800350A0  38 21 00 20 */	addi r1, r1, 0x20
/* 800350A4  4E 80 00 20 */	blr 
