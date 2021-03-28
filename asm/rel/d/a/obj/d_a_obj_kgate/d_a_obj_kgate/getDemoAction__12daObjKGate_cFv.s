lbl_8058A508:
/* 8058A508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A50C  7C 08 02 A6 */	mflr r0
/* 8058A510  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A514  7C 64 1B 78 */	mr r4, r3
/* 8058A518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058A51C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058A520  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8058A524  80 84 0B A8 */	lwz r4, 0xba8(r4)
/* 8058A528  3C A0 80 59 */	lis r5, action_table@ha
/* 8058A52C  38 A5 AD EC */	addi r5, r5, action_table@l
/* 8058A530  38 C0 00 04 */	li r6, 4
/* 8058A534  38 E0 00 00 */	li r7, 0
/* 8058A538  39 00 00 00 */	li r8, 0
/* 8058A53C  4B AB D8 D4 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8058A540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A544  7C 08 03 A6 */	mtlr r0
/* 8058A548  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A54C  4E 80 00 20 */	blr 
