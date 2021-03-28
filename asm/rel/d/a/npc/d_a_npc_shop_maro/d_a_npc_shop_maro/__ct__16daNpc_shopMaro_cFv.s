lbl_80AEBF04:
/* 80AEBF04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEBF08  7C 08 02 A6 */	mflr r0
/* 80AEBF0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEBF10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AEBF14  7C 7F 1B 78 */	mr r31, r3
/* 80AEBF18  38 00 00 00 */	li r0, 0
/* 80AEBF1C  90 01 00 08 */	stw r0, 8(r1)
/* 80AEBF20  38 80 00 00 */	li r4, 0
/* 80AEBF24  38 A0 00 00 */	li r5, 0
/* 80AEBF28  38 C0 00 00 */	li r6, 0
/* 80AEBF2C  38 E0 00 00 */	li r7, 0
/* 80AEBF30  39 00 00 00 */	li r8, 0
/* 80AEBF34  39 20 00 00 */	li r9, 0
/* 80AEBF38  39 40 00 00 */	li r10, 0
/* 80AEBF3C  48 00 00 89 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AEBF40  3C 60 80 AF */	lis r3, __vt__16daNpc_shopMaro_c@ha
/* 80AEBF44  38 03 C9 DC */	addi r0, r3, __vt__16daNpc_shopMaro_c@l
/* 80AEBF48  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AEBF4C  7F E3 FB 78 */	mr r3, r31
/* 80AEBF50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AEBF54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEBF58  7C 08 03 A6 */	mtlr r0
/* 80AEBF5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEBF60  4E 80 00 20 */	blr 
