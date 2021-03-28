lbl_80158CBC:
/* 80158CBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80158CC0  7C 08 02 A6 */	mflr r0
/* 80158CC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80158CC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80158CCC  48 20 95 0D */	bl _savegpr_28
/* 80158CD0  7C 7C 1B 78 */	mr r28, r3
/* 80158CD4  7C 9D 23 78 */	mr r29, r4
/* 80158CD8  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 80158CDC  28 00 00 00 */	cmplwi r0, 0
/* 80158CE0  41 82 00 34 */	beq lbl_80158D14
/* 80158CE4  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80158CE8  57 BF 10 3A */	slwi r31, r29, 2
/* 80158CEC  3C 80 80 3B */	lis r4, l_resNameTbl@ha
/* 80158CF0  3B C4 61 CC */	addi r30, r4, l_resNameTbl@l
/* 80158CF4  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158CF8  80 84 00 04 */	lwz r4, 4(r4)
/* 80158CFC  4B ED 43 0D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80158D00  38 7C 05 84 */	addi r3, r28, 0x584
/* 80158D04  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158D08  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80158D0C  4B ED 42 FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80158D10  48 00 00 30 */	b lbl_80158D40
lbl_80158D14:
/* 80158D14  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80158D18  57 BF 10 3A */	slwi r31, r29, 2
/* 80158D1C  3C 80 80 3B */	lis r4, l_resNameTbl@ha
/* 80158D20  3B C4 61 CC */	addi r30, r4, l_resNameTbl@l
/* 80158D24  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158D28  80 84 00 00 */	lwz r4, 0(r4)
/* 80158D2C  4B ED 42 DD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80158D30  38 7C 05 84 */	addi r3, r28, 0x584
/* 80158D34  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80158D38  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80158D3C  4B ED 42 CD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80158D40:
/* 80158D40  38 7C 05 74 */	addi r3, r28, 0x574
/* 80158D44  57 BE 10 3A */	slwi r30, r29, 2
/* 80158D48  3C 80 80 3B */	lis r4, l_resNameTbl@ha
/* 80158D4C  3B E4 61 CC */	addi r31, r4, l_resNameTbl@l
/* 80158D50  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80158D54  80 84 00 08 */	lwz r4, 8(r4)
/* 80158D58  4B ED 42 B1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80158D5C  38 7C 05 7C */	addi r3, r28, 0x57c
/* 80158D60  7C 9F F0 2E */	lwzx r4, r31, r30
/* 80158D64  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80158D68  4B ED 42 A1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80158D6C  38 60 00 01 */	li r3, 1
/* 80158D70  39 61 00 20 */	addi r11, r1, 0x20
/* 80158D74  48 20 94 B1 */	bl _restgpr_28
/* 80158D78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80158D7C  7C 08 03 A6 */	mtlr r0
/* 80158D80  38 21 00 20 */	addi r1, r1, 0x20
/* 80158D84  4E 80 00 20 */	blr 
