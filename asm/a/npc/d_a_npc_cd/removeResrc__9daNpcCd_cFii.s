lbl_80156C50:
/* 80156C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80156C54  7C 08 02 A6 */	mflr r0
/* 80156C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80156C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80156C60  48 20 B5 79 */	bl _savegpr_28
/* 80156C64  7C 7C 1B 78 */	mr r28, r3
/* 80156C68  7C 9D 23 78 */	mr r29, r4
/* 80156C6C  88 03 09 E8 */	lbz r0, 0x9e8(r3)
/* 80156C70  28 00 00 00 */	cmplwi r0, 0
/* 80156C74  41 82 00 34 */	beq lbl_80156CA8
/* 80156C78  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80156C7C  57 BF 10 3A */	slwi r31, r29, 2
/* 80156C80  3C 80 80 3B */	lis r4, l_resNameTbl@ha /* 0x803B3B8C@ha */
/* 80156C84  3B C4 3B 8C */	addi r30, r4, l_resNameTbl@l /* 0x803B3B8C@l */
/* 80156C88  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156C8C  80 84 00 04 */	lwz r4, 4(r4)
/* 80156C90  4B ED 63 79 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80156C94  38 7C 05 84 */	addi r3, r28, 0x584
/* 80156C98  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156C9C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80156CA0  4B ED 63 69 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80156CA4  48 00 00 30 */	b lbl_80156CD4
lbl_80156CA8:
/* 80156CA8  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80156CAC  57 BF 10 3A */	slwi r31, r29, 2
/* 80156CB0  3C 80 80 3B */	lis r4, l_resNameTbl@ha /* 0x803B3B8C@ha */
/* 80156CB4  3B C4 3B 8C */	addi r30, r4, l_resNameTbl@l /* 0x803B3B8C@l */
/* 80156CB8  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156CBC  80 84 00 00 */	lwz r4, 0(r4)
/* 80156CC0  4B ED 63 49 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80156CC4  38 7C 05 84 */	addi r3, r28, 0x584
/* 80156CC8  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80156CCC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80156CD0  4B ED 63 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80156CD4:
/* 80156CD4  38 7C 05 74 */	addi r3, r28, 0x574
/* 80156CD8  57 BE 10 3A */	slwi r30, r29, 2
/* 80156CDC  3C 80 80 3B */	lis r4, l_resNameTbl@ha /* 0x803B3B8C@ha */
/* 80156CE0  3B E4 3B 8C */	addi r31, r4, l_resNameTbl@l /* 0x803B3B8C@l */
/* 80156CE4  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80156CE8  80 84 00 08 */	lwz r4, 8(r4)
/* 80156CEC  4B ED 63 1D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80156CF0  38 7C 05 7C */	addi r3, r28, 0x57c
/* 80156CF4  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80156CF8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80156CFC  4B ED 63 0D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80156D00  38 60 00 01 */	li r3, 1
/* 80156D04  39 61 00 20 */	addi r11, r1, 0x20
/* 80156D08  48 20 B5 1D */	bl _restgpr_28
/* 80156D0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80156D10  7C 08 03 A6 */	mtlr r0
/* 80156D14  38 21 00 20 */	addi r1, r1, 0x20
/* 80156D18  4E 80 00 20 */	blr 
