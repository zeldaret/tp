lbl_8066FAB8:
/* 8066FAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066FABC  7C 08 02 A6 */	mflr r0
/* 8066FAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066FAC4  7C 64 1B 78 */	mr r4, r3
/* 8066FAC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066FACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066FAD0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8066FAD4  80 84 05 88 */	lwz r4, 0x588(r4)
/* 8066FAD8  3C A0 80 67 */	lis r5, action_table@ha /* 0x80670A40@ha */
/* 8066FADC  38 A5 0A 40 */	addi r5, r5, action_table@l /* 0x80670A40@l */
/* 8066FAE0  38 C0 00 0B */	li r6, 0xb
/* 8066FAE4  38 E0 00 00 */	li r7, 0
/* 8066FAE8  39 00 00 00 */	li r8, 0
/* 8066FAEC  4B 9D 83 25 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8066FAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066FAF4  7C 08 03 A6 */	mtlr r0
/* 8066FAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8066FAFC  4E 80 00 20 */	blr 
