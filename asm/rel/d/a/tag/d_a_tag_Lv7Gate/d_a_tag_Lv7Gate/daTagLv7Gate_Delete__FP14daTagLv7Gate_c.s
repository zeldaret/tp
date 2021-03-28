lbl_80D51A60:
/* 80D51A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D51A64  7C 08 02 A6 */	mflr r0
/* 80D51A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D51A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D51A70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D51A74  41 82 00 40 */	beq lbl_80D51AB4
/* 80D51A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D51A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D51A80  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D51A84  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D51A88  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D51A8C  A0 84 03 FC */	lhz r4, 0x3fc(r4)
/* 80D51A90  4B 2E 2E FC */	b onEventBit__11dSv_event_cFUs
/* 80D51A94  38 7F 05 74 */	addi r3, r31, 0x574
/* 80D51A98  3C 80 80 D5 */	lis r4, l_arcName@ha
/* 80D51A9C  38 84 1B 50 */	addi r4, r4, l_arcName@l
/* 80D51AA0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D51AA4  4B 2D B5 64 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D51AA8  7F E3 FB 78 */	mr r3, r31
/* 80D51AAC  38 80 00 00 */	li r4, 0
/* 80D51AB0  4B 2C 71 DC */	b __dt__10fopAc_ac_cFv
lbl_80D51AB4:
/* 80D51AB4  38 60 00 01 */	li r3, 1
/* 80D51AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D51ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D51AC0  7C 08 03 A6 */	mtlr r0
/* 80D51AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D51AC8  4E 80 00 20 */	blr 
