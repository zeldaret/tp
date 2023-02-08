lbl_80CBBD68:
/* 80CBBD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBBD6C  7C 08 02 A6 */	mflr r0
/* 80CBBD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBBD74  7C 64 1B 78 */	mr r4, r3
/* 80CBBD78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBBD7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBBD80  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CBBD84  80 84 0B A4 */	lwz r4, 0xba4(r4)
/* 80CBBD88  3C A0 80 CC */	lis r5, action_table@ha /* 0x80CBC50C@ha */
/* 80CBBD8C  38 A5 C5 0C */	addi r5, r5, action_table@l /* 0x80CBC50C@l */
/* 80CBBD90  38 C0 00 04 */	li r6, 4
/* 80CBBD94  38 E0 00 00 */	li r7, 0
/* 80CBBD98  39 00 00 00 */	li r8, 0
/* 80CBBD9C  4B 38 C0 75 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CBBDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBBDA4  7C 08 03 A6 */	mtlr r0
/* 80CBBDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBBDAC  4E 80 00 20 */	blr 
