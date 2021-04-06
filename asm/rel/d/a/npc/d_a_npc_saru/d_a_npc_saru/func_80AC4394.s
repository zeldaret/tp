lbl_80AC4394:
/* 80AC4394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC4398  7C 08 02 A6 */	mflr r0
/* 80AC439C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC43A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC43A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC43A8  7C 7F 1B 78 */	mr r31, r3
/* 80AC43AC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AC43B0  90 01 00 08 */	stw r0, 8(r1)
/* 80AC43B4  4B FF F4 2D */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AC43B8  3C 60 80 AC */	lis r3, __vt__12daNpc_Saru_c@ha /* 0x80AC4F10@ha */
/* 80AC43BC  38 03 4F 10 */	addi r0, r3, __vt__12daNpc_Saru_c@l /* 0x80AC4F10@l */
/* 80AC43C0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AC43C4  3B DF 0E 4C */	addi r30, r31, 0xe4c
/* 80AC43C8  7F C3 F3 78 */	mr r3, r30
/* 80AC43CC  4B 5B F6 5D */	bl __ct__12dCcD_GObjInfFv
/* 80AC43D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AC43D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AC43D8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AC43DC  3C 60 80 AC */	lis r3, __vt__8cM3dGAab@ha /* 0x80AC4EEC@ha */
/* 80AC43E0  38 03 4E EC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AC4EEC@l */
/* 80AC43E4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AC43E8  3C 60 80 AC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AC4EF8@ha */
/* 80AC43EC  38 03 4E F8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AC4EF8@l */
/* 80AC43F0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AC43F4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AC43F8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AC43FC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AC4400  38 03 00 58 */	addi r0, r3, 0x58
/* 80AC4404  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AC4408  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AC440C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AC4410  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AC4414  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AC4418  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AC441C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AC4420  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AC4424  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AC4428  3C 80 80 AC */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80AC3714@ha */
/* 80AC442C  38 84 37 14 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80AC3714@l */
/* 80AC4430  3C A0 80 AC */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AC3684@ha */
/* 80AC4434  38 A5 36 84 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AC3684@l */
/* 80AC4438  38 C0 00 08 */	li r6, 8
/* 80AC443C  38 E0 00 01 */	li r7, 1
/* 80AC4440  4B 89 D9 21 */	bl __construct_array
/* 80AC4444  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80AC4448  3C 80 80 AC */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80AC4F04@ha */
/* 80AC444C  38 04 4F 04 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80AC4F04@l */
/* 80AC4450  90 1F 0F B8 */	stw r0, 0xfb8(r31)
/* 80AC4454  4B 68 17 ED */	bl initialize__13daNpcT_Path_cFv
/* 80AC4458  7F E3 FB 78 */	mr r3, r31
/* 80AC445C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC4460  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC4464  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC4468  7C 08 03 A6 */	mtlr r0
/* 80AC446C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC4470  4E 80 00 20 */	blr 
