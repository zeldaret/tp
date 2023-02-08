lbl_80D4BE2C:
/* 80D4BE2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D4BE30  7C 08 02 A6 */	mflr r0
/* 80D4BE34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D4BE38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D4BE3C  7C 7F 1B 78 */	mr r31, r3
/* 80D4BE40  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80D4BE44  90 01 00 08 */	stw r0, 8(r1)
/* 80D4BE48  4B FF F4 6D */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80D4BE4C  3C 60 80 D5 */	lis r3, __vt__8daPeru_c@ha /* 0x80D4C714@ha */
/* 80D4BE50  38 03 C7 14 */	addi r0, r3, __vt__8daPeru_c@l /* 0x80D4C714@l */
/* 80D4BE54  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80D4BE58  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 80D4BE5C  3C 80 80 D5 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80D4B278@ha */
/* 80D4BE60  38 84 B2 78 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80D4B278@l */
/* 80D4BE64  3C A0 80 D5 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80D4B008@ha */
/* 80D4BE68  38 A5 B0 08 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80D4B008@l */
/* 80D4BE6C  38 C0 00 08 */	li r6, 8
/* 80D4BE70  38 E0 00 03 */	li r7, 3
/* 80D4BE74  4B 61 5E ED */	bl __construct_array
/* 80D4BE78  38 7F 0E 88 */	addi r3, r31, 0xe88
/* 80D4BE7C  3C 80 80 D5 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80D4B164@ha */
/* 80D4BE80  38 84 B1 64 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80D4B164@l */
/* 80D4BE84  3C A0 80 D5 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80D4B050@ha */
/* 80D4BE88  38 A5 B0 50 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80D4B050@l */
/* 80D4BE8C  38 C0 01 3C */	li r6, 0x13c
/* 80D4BE90  38 E0 00 02 */	li r7, 2
/* 80D4BE94  4B 61 5E CD */	bl __construct_array
/* 80D4BE98  38 7F 11 00 */	addi r3, r31, 0x1100
/* 80D4BE9C  3C 80 80 D5 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80D4C708@ha */
/* 80D4BEA0  38 04 C7 08 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80D4C708@l */
/* 80D4BEA4  90 1F 11 24 */	stw r0, 0x1124(r31)
/* 80D4BEA8  4B 3F 9D 99 */	bl initialize__13daNpcT_Path_cFv
/* 80D4BEAC  7F E3 FB 78 */	mr r3, r31
/* 80D4BEB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D4BEB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D4BEB8  7C 08 03 A6 */	mtlr r0
/* 80D4BEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D4BEC0  4E 80 00 20 */	blr 
