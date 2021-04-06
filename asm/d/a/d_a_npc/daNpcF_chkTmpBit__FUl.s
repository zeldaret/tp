lbl_801556B4:
/* 801556B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801556B8  7C 08 02 A6 */	mflr r0
/* 801556BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801556C0  7C 60 1B 78 */	mr r0, r3
/* 801556C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801556C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801556CC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 801556D0  54 00 08 3C */	slwi r0, r0, 1
/* 801556D4  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 801556D8  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 801556DC  7C 84 02 2E */	lhzx r4, r4, r0
/* 801556E0  4B ED F2 DD */	bl isEventBit__11dSv_event_cCFUs
/* 801556E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801556E8  7C 08 03 A6 */	mtlr r0
/* 801556EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801556F0  4E 80 00 20 */	blr 
