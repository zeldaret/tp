lbl_80673E78:
/* 80673E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80673E7C  7C 08 02 A6 */	mflr r0
/* 80673E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80673E84  7C 64 1B 78 */	mr r4, r3
/* 80673E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80673E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80673E90  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80673E94  80 84 05 E8 */	lwz r4, 0x5e8(r4)
/* 80673E98  3C A0 80 67 */	lis r5, action_table@ha /* 0x80677A88@ha */
/* 80673E9C  38 A5 7A 88 */	addi r5, r5, action_table@l /* 0x80677A88@l */
/* 80673EA0  38 C0 00 1A */	li r6, 0x1a
/* 80673EA4  38 E0 00 00 */	li r7, 0
/* 80673EA8  39 00 00 00 */	li r8, 0
/* 80673EAC  4B 9D 3F 65 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80673EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80673EB4  7C 08 03 A6 */	mtlr r0
/* 80673EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80673EBC  4E 80 00 20 */	blr 
