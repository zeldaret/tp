lbl_8045F520:
/* 8045F520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045F524  7C 08 02 A6 */	mflr r0
/* 8045F528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045F52C  7C 64 1B 78 */	mr r4, r3
/* 8045F530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045F534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045F538  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8045F53C  80 84 05 BC */	lwz r4, 0x5bc(r4)
/* 8045F540  3C A0 80 46 */	lis r5, action_table@ha /* 0x804608B4@ha */
/* 8045F544  38 A5 08 B4 */	addi r5, r5, action_table@l /* 0x804608B4@l */
/* 8045F548  38 C0 00 10 */	li r6, 0x10
/* 8045F54C  38 E0 00 00 */	li r7, 0
/* 8045F550  39 00 00 00 */	li r8, 0
/* 8045F554  4B BE 88 BD */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8045F558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045F55C  7C 08 03 A6 */	mtlr r0
/* 8045F560  38 21 00 10 */	addi r1, r1, 0x10
/* 8045F564  4E 80 00 20 */	blr 
