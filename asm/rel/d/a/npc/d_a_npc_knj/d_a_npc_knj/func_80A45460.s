lbl_80A45460:
/* 80A45460  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A45464  7C 08 02 A6 */	mflr r0
/* 80A45468  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A4546C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A45470  7C 7F 1B 78 */	mr r31, r3
/* 80A45474  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A45478  90 01 00 08 */	stw r0, 8(r1)
/* 80A4547C  4B FF F7 51 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A45480  3C 60 80 A4 */	lis r3, __vt__11daNpc_Knj_c@ha
/* 80A45484  38 03 57 B8 */	addi r0, r3, __vt__11daNpc_Knj_c@l
/* 80A45488  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A4548C  7F E3 FB 78 */	mr r3, r31
/* 80A45490  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A45494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A45498  7C 08 03 A6 */	mtlr r0
/* 80A4549C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A454A0  4E 80 00 20 */	blr 
