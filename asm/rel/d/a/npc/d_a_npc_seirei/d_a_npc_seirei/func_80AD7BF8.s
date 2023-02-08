lbl_80AD7BF8:
/* 80AD7BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD7BFC  7C 08 02 A6 */	mflr r0
/* 80AD7C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD7C04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD7C08  7C 7F 1B 78 */	mr r31, r3
/* 80AD7C0C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AD7C10  90 01 00 08 */	stw r0, 8(r1)
/* 80AD7C14  4B FF F7 19 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AD7C18  3C 60 80 AE */	lis r3, __vt__14daNpc_Seirei_c@ha /* 0x80AD801C@ha */
/* 80AD7C1C  38 03 80 1C */	addi r0, r3, __vt__14daNpc_Seirei_c@l /* 0x80AD801C@l */
/* 80AD7C20  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AD7C24  7F E3 FB 78 */	mr r3, r31
/* 80AD7C28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD7C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD7C30  7C 08 03 A6 */	mtlr r0
/* 80AD7C34  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD7C38  4E 80 00 20 */	blr 
