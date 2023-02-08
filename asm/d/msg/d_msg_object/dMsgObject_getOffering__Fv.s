lbl_80238A74:
/* 80238A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238A78  7C 08 02 A6 */	mflr r0
/* 80238A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238A84  93 C1 00 08 */	stw r30, 8(r1)
/* 80238A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80238A90  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80238A94  7F C3 F3 78 */	mr r3, r30
/* 80238A98  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F7FF@ha */
/* 80238A9C  38 84 F7 FF */	addi r4, r4, 0xF7FF /* 0x0000F7FF@l */
/* 80238AA0  4B DF BF 65 */	bl getEventReg__11dSv_event_cCFUs
/* 80238AA4  7C 7F 1B 78 */	mr r31, r3
/* 80238AA8  7F C3 F3 78 */	mr r3, r30
/* 80238AAC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F8FF@ha */
/* 80238AB0  38 84 F8 FF */	addi r4, r4, 0xF8FF /* 0x0000F8FF@l */
/* 80238AB4  4B DF BF 51 */	bl getEventReg__11dSv_event_cCFUs
/* 80238AB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80238ABC  53 E0 44 2E */	rlwimi r0, r31, 8, 0x10, 0x17
/* 80238AC0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80238AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238AC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80238ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238AD0  7C 08 03 A6 */	mtlr r0
/* 80238AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80238AD8  4E 80 00 20 */	blr 
