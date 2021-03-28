lbl_80238928:
/* 80238928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023892C  7C 08 02 A6 */	mflr r0
/* 80238930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238938  93 C1 00 08 */	stw r30, 8(r1)
/* 8023893C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238944  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80238948  7F C3 F3 78 */	mr r3, r30
/* 8023894C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F9FF@ha */
/* 80238950  38 84 F9 FF */	addi r4, r4, 0xF9FF /* 0x0000F9FF@l */
/* 80238954  4B DF C0 B1 */	bl getEventReg__11dSv_event_cCFUs
/* 80238958  7C 7F 1B 78 */	mr r31, r3
/* 8023895C  7F C3 F3 78 */	mr r3, r30
/* 80238960  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FAFF@ha */
/* 80238964  38 84 FA FF */	addi r4, r4, 0xFAFF /* 0x0000FAFF@l */
/* 80238968  4B DF C0 9D */	bl getEventReg__11dSv_event_cCFUs
/* 8023896C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80238970  53 E0 44 2E */	rlwimi r0, r31, 8, 0x10, 0x17
/* 80238974  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80238978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023897C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80238980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238984  7C 08 03 A6 */	mtlr r0
/* 80238988  38 21 00 10 */	addi r1, r1, 0x10
/* 8023898C  4E 80 00 20 */	blr 
