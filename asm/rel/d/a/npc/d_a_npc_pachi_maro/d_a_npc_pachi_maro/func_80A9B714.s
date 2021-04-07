lbl_80A9B714:
/* 80A9B714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9B718  7C 08 02 A6 */	mflr r0
/* 80A9B71C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9B720  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9B724  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A9B728  7C 7F 1B 78 */	mr r31, r3
/* 80A9B72C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A9B730  90 01 00 08 */	stw r0, 8(r1)
/* 80A9B734  4B FF F4 19 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A9B738  3C 60 80 AA */	lis r3, __vt__18daNpc_Pachi_Maro_c@ha /* 0x80A9C0A8@ha */
/* 80A9B73C  38 03 C0 A8 */	addi r0, r3, __vt__18daNpc_Pachi_Maro_c@l /* 0x80A9C0A8@l */
/* 80A9B740  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A9B744  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80A9B748  7F C3 F3 78 */	mr r3, r30
/* 80A9B74C  4B 5E 82 DD */	bl __ct__12dCcD_GObjInfFv
/* 80A9B750  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A9B754  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A9B758  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A9B75C  3C 60 80 AA */	lis r3, __vt__8cM3dGAab@ha /* 0x80A9C090@ha */
/* 80A9B760  38 03 C0 90 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A9C090@l */
/* 80A9B764  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A9B768  3C 60 80 AA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A9C09C@ha */
/* 80A9B76C  38 03 C0 9C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A9C09C@l */
/* 80A9B770  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A9B774  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A9B778  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A9B77C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A9B780  38 03 00 58 */	addi r0, r3, 0x58
/* 80A9B784  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A9B788  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A9B78C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A9B790  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A9B794  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A9B798  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A9B79C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A9B7A0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A9B7A4  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A9B7A8  3C 80 80 AA */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80A9AA80@ha */
/* 80A9B7AC  38 84 AA 80 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80A9AA80@l */
/* 80A9B7B0  3C A0 80 AA */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A9AA38@ha */
/* 80A9B7B4  38 A5 AA 38 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A9AA38@l */
/* 80A9B7B8  38 C0 00 08 */	li r6, 8
/* 80A9B7BC  38 E0 00 02 */	li r7, 2
/* 80A9B7C0  4B 8C 65 A1 */	bl __construct_array
/* 80A9B7C4  7F E3 FB 78 */	mr r3, r31
/* 80A9B7C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9B7CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A9B7D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9B7D4  7C 08 03 A6 */	mtlr r0
/* 80A9B7D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9B7DC  4E 80 00 20 */	blr 
