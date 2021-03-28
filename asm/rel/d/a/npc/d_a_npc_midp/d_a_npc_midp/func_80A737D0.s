lbl_80A737D0:
/* 80A737D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A737D4  7C 08 02 A6 */	mflr r0
/* 80A737D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A737DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A737E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A737E4  7C 7F 1B 78 */	mr r31, r3
/* 80A737E8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A737EC  90 01 00 08 */	stw r0, 8(r1)
/* 80A737F0  4B FF F4 65 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A737F4  3C 60 80 A7 */	lis r3, __vt__12daNpc_midP_c@ha
/* 80A737F8  38 03 3C 78 */	addi r0, r3, __vt__12daNpc_midP_c@l
/* 80A737FC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A73800  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80A73804  7F C3 F3 78 */	mr r3, r30
/* 80A73808  4B 61 02 20 */	b __ct__12dCcD_GObjInfFv
/* 80A7380C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A73810  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A73814  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A73818  3C 60 80 A7 */	lis r3, __vt__8cM3dGAab@ha
/* 80A7381C  38 03 3C 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A73820  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A73824  3C 60 80 A7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A73828  38 03 3C 6C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A7382C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A73830  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A73834  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A73838  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A7383C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A73840  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A73844  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A73848  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A7384C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A73850  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A73854  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A73858  38 03 00 84 */	addi r0, r3, 0x84
/* 80A7385C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A73860  7F E3 FB 78 */	mr r3, r31
/* 80A73864  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A73868  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A7386C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A73870  7C 08 03 A6 */	mtlr r0
/* 80A73874  38 21 00 20 */	addi r1, r1, 0x20
/* 80A73878  4E 80 00 20 */	blr 
