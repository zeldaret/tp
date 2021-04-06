lbl_8014CA2C:
/* 8014CA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CA30  7C 08 02 A6 */	mflr r0
/* 8014CA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CA38  7C 60 1B 78 */	mr r0, r3
/* 8014CA3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014CA40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014CA44  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8014CA48  54 00 08 3C */	slwi r0, r0, 1
/* 8014CA4C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8014CA50  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8014CA54  7C 84 02 2E */	lhzx r4, r4, r0
/* 8014CA58  4B EE 7F 35 */	bl onEventBit__11dSv_event_cFUs
/* 8014CA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CA60  7C 08 03 A6 */	mtlr r0
/* 8014CA64  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CA68  4E 80 00 20 */	blr 
