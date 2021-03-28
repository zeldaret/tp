lbl_8001F9B4:
/* 8001F9B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F9B8  7C 08 02 A6 */	mflr r0
/* 8001F9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F9C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F9C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F9C8  7C 7E 1B 78 */	mr r30, r3
/* 8001F9CC  80 6D 87 E0 */	lwz r3, mProcID__20dStage_roomControl_c(r13)
/* 8001F9D0  4B FF F2 E1 */	bl fopScnM_SearchByID__FUi
/* 8001F9D4  7C 7F 1B 78 */	mr r31, r3
/* 8001F9D8  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 8001F9DC  80 9F 00 B4 */	lwz r4, 0xb4(r31)
/* 8001F9E0  48 00 0C 6D */	bl fpcBs_Is_JustOfType__Fii
/* 8001F9E4  2C 03 00 00 */	cmpwi r3, 0
/* 8001F9E8  41 82 00 0C */	beq lbl_8001F9F4
/* 8001F9EC  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 8001F9F0  48 00 00 08 */	b lbl_8001F9F8
lbl_8001F9F4:
/* 8001F9F4  38 80 FF FF */	li r4, -1
lbl_8001F9F8:
/* 8001F9F8  38 7E 00 68 */	addi r3, r30, 0x68
/* 8001F9FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFD@ha */
/* 8001FA00  38 A5 FF FD */	addi r5, r5, 0xFFFD /* 0x0000FFFD@l */
/* 8001FA04  7C A6 2B 78 */	mr r6, r5
/* 8001FA08  48 00 38 E1 */	bl fpcPi_Change__FP22process_priority_classUiUsUs
/* 8001FA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001FA10  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001FA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001FA18  7C 08 03 A6 */	mtlr r0
/* 8001FA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001FA20  4E 80 00 20 */	blr 
