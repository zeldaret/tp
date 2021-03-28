lbl_800198C4:
/* 800198C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800198C8  7C 08 02 A6 */	mflr r0
/* 800198CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800198D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800198D4  93 C1 00 08 */	stw r30, 8(r1)
/* 800198D8  7C 7E 1B 78 */	mr r30, r3
/* 800198DC  80 6D 87 E0 */	lwz r3, mProcID__20dStage_roomControl_c(r13)
/* 800198E0  48 00 53 D1 */	bl fopScnM_SearchByID__FUi
/* 800198E4  7C 7F 1B 78 */	mr r31, r3
/* 800198E8  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 800198EC  80 9F 00 B4 */	lwz r4, 0xb4(r31)
/* 800198F0  48 00 6D 5D */	bl fpcBs_Is_JustOfType__Fii
/* 800198F4  2C 03 00 00 */	cmpwi r3, 0
/* 800198F8  41 82 00 0C */	beq lbl_80019904
/* 800198FC  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80019900  48 00 00 08 */	b lbl_80019908
lbl_80019904:
/* 80019904  38 80 FF FF */	li r4, -1
lbl_80019908:
/* 80019908  38 7E 00 68 */	addi r3, r30, 0x68
/* 8001990C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFD@ha */
/* 80019910  38 A5 FF FD */	addi r5, r5, 0xFFFD /* 0x0000FFFD@l */
/* 80019914  7C A6 2B 78 */	mr r6, r5
/* 80019918  48 00 99 D1 */	bl fpcPi_Change__FP22process_priority_classUiUsUs
/* 8001991C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80019920  83 C1 00 08 */	lwz r30, 8(r1)
/* 80019924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019928  7C 08 03 A6 */	mtlr r0
/* 8001992C  38 21 00 10 */	addi r1, r1, 0x10
/* 80019930  4E 80 00 20 */	blr 
