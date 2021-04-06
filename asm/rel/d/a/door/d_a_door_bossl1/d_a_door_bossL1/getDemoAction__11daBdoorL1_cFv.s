lbl_804E2B78:
/* 804E2B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2B7C  7C 08 02 A6 */	mflr r0
/* 804E2B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2B84  7C 64 1B 78 */	mr r4, r3
/* 804E2B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E2B8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E2B90  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804E2B94  80 84 05 A0 */	lwz r4, 0x5a0(r4)
/* 804E2B98  3C A0 80 4E */	lis r5, action_table@ha /* 0x804E4EE0@ha */
/* 804E2B9C  38 A5 4E E0 */	addi r5, r5, action_table@l /* 0x804E4EE0@l */
/* 804E2BA0  38 C0 00 12 */	li r6, 0x12
/* 804E2BA4  38 E0 00 00 */	li r7, 0
/* 804E2BA8  39 00 00 00 */	li r8, 0
/* 804E2BAC  4B B6 52 65 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 804E2BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2BB4  7C 08 03 A6 */	mtlr r0
/* 804E2BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2BBC  4E 80 00 20 */	blr 
