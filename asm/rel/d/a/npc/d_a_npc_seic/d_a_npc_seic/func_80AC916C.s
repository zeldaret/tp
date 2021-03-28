lbl_80AC916C:
/* 80AC916C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC9170  7C 08 02 A6 */	mflr r0
/* 80AC9174  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC9178  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC917C  7C 7F 1B 78 */	mr r31, r3
/* 80AC9180  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AC9184  90 01 00 08 */	stw r0, 8(r1)
/* 80AC9188  4B FF F7 4D */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AC918C  3C 60 80 AD */	lis r3, __vt__12daNpc_seiC_c@ha
/* 80AC9190  38 03 94 A8 */	addi r0, r3, __vt__12daNpc_seiC_c@l
/* 80AC9194  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AC9198  7F E3 FB 78 */	mr r3, r31
/* 80AC919C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC91A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC91A4  7C 08 03 A6 */	mtlr r0
/* 80AC91A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC91AC  4E 80 00 20 */	blr 
