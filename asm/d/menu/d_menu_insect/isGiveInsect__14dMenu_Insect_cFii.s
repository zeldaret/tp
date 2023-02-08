lbl_801D9E20:
/* 801D9E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9E24  7C 08 02 A6 */	mflr r0
/* 801D9E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9E2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801D9E30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801D9E34  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801D9E38  1C 05 00 06 */	mulli r0, r5, 6
/* 801D9E3C  7C 04 02 14 */	add r0, r4, r0
/* 801D9E40  54 00 10 3A */	slwi r0, r0, 2
/* 801D9E44  3C 80 80 39 */	lis r4, i_evtID@ha /* 0x80396860@ha */
/* 801D9E48  38 84 68 60 */	addi r4, r4, i_evtID@l /* 0x80396860@l */
/* 801D9E4C  7C 04 00 2E */	lwzx r0, r4, r0
/* 801D9E50  54 00 08 3C */	slwi r0, r0, 1
/* 801D9E54  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801D9E58  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801D9E5C  7C 84 02 2E */	lhzx r4, r4, r0
/* 801D9E60  4B E5 AB 5D */	bl isEventBit__11dSv_event_cCFUs
/* 801D9E64  30 03 FF FF */	addic r0, r3, -1
/* 801D9E68  7C 60 19 10 */	subfe r3, r0, r3
/* 801D9E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9E70  7C 08 03 A6 */	mtlr r0
/* 801D9E74  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9E78  4E 80 00 20 */	blr 
