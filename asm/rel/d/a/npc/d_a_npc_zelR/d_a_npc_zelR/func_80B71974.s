lbl_80B71974:
/* 80B71974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B71978  7C 08 02 A6 */	mflr r0
/* 80B7197C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B71980  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B71984  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B71988  7C 7F 1B 78 */	mr r31, r3
/* 80B7198C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B71990  90 01 00 08 */	stw r0, 8(r1)
/* 80B71994  4B FF F4 59 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B71998  3C 60 80 B7 */	lis r3, __vt__12daNpc_ZelR_c@ha
/* 80B7199C  38 03 1D D4 */	addi r0, r3, __vt__12daNpc_ZelR_c@l
/* 80B719A0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B719A4  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B719A8  7F C3 F3 78 */	mr r3, r30
/* 80B719AC  4B 51 20 7C */	b __ct__12dCcD_GObjInfFv
/* 80B719B0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B719B4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B719B8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B719BC  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha
/* 80B719C0  38 03 1D B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B719C4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B719C8  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B719CC  38 03 1D BC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B719D0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B719D4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B719D8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B719DC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B719E0  38 03 00 58 */	addi r0, r3, 0x58
/* 80B719E4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B719E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B719EC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B719F0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B719F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B719F8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B719FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80B71A00  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B71A04  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B71A08  3C 80 80 B7 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 80B71A0C  38 04 1D C8 */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 80B71A10  90 1F 0F C0 */	stw r0, 0xfc0(r31)
/* 80B71A14  4B 5D 42 2C */	b initialize__13daNpcT_Path_cFv
/* 80B71A18  7F E3 FB 78 */	mr r3, r31
/* 80B71A1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B71A20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B71A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B71A28  7C 08 03 A6 */	mtlr r0
/* 80B71A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B71A30  4E 80 00 20 */	blr 
