lbl_80312644:
/* 80312644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312648  7C 08 02 A6 */	mflr r0
/* 8031264C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312654  7C 7F 1B 78 */	mr r31, r3
/* 80312658  4B FF FF AD */	bl swapBuffer__17J3DDisplayListObjFv
/* 8031265C  48 02 B0 99 */	bl OSDisableInterrupts
/* 80312660  90 6D 90 20 */	stw r3, sInterruptFlag__17J3DDisplayListObj(r13)
/* 80312664  3C 60 80 43 */	lis r3, sGDLObj__17J3DDisplayListObj@ha
/* 80312668  38 63 4C 70 */	addi r3, r3, sGDLObj__17J3DDisplayListObj@l
/* 8031266C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80312670  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80312674  48 04 E9 25 */	bl GDInitGDLObj
/* 80312678  3C 60 80 43 */	lis r3, sGDLObj__17J3DDisplayListObj@ha
/* 8031267C  38 03 4C 70 */	addi r0, r3, sGDLObj__17J3DDisplayListObj@l
/* 80312680  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 80312684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80312688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031268C  7C 08 03 A6 */	mtlr r0
/* 80312690  38 21 00 10 */	addi r1, r1, 0x10
/* 80312694  4E 80 00 20 */	blr 
