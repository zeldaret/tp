lbl_80ACB2AC:
/* 80ACB2AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACB2B0  7C 08 02 A6 */	mflr r0
/* 80ACB2B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACB2B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACB2BC  7C 7F 1B 78 */	mr r31, r3
/* 80ACB2C0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ACB2C4  90 01 00 08 */	stw r0, 8(r1)
/* 80ACB2C8  4B FF F7 4D */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80ACB2CC  3C 60 80 AD */	lis r3, __vt__12daNpc_seiD_c@ha /* 0x80ACB5E8@ha */
/* 80ACB2D0  38 03 B5 E8 */	addi r0, r3, __vt__12daNpc_seiD_c@l /* 0x80ACB5E8@l */
/* 80ACB2D4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80ACB2D8  7F E3 FB 78 */	mr r3, r31
/* 80ACB2DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACB2E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACB2E4  7C 08 03 A6 */	mtlr r0
/* 80ACB2E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACB2EC  4E 80 00 20 */	blr 
