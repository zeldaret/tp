lbl_80B6E800:
/* 80B6E800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6E804  7C 08 02 A6 */	mflr r0
/* 80B6E808  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6E80C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6E810  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B6E814  7C 7F 1B 78 */	mr r31, r3
/* 80B6E818  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B6E81C  90 01 00 08 */	stw r0, 8(r1)
/* 80B6E820  4B FF F4 2D */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B6E824  3C 60 80 B7 */	lis r3, __vt__12daNpc_Zant_c@ha /* 0x80B6EC4C@ha */
/* 80B6E828  38 03 EC 4C */	addi r0, r3, __vt__12daNpc_Zant_c@l /* 0x80B6EC4C@l */
/* 80B6E82C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B6E830  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B6E834  7F C3 F3 78 */	mr r3, r30
/* 80B6E838  4B 51 51 F1 */	bl __ct__12dCcD_GObjInfFv
/* 80B6E83C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B6E840  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B6E844  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B6E848  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B6EC34@ha */
/* 80B6E84C  38 03 EC 34 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B6EC34@l */
/* 80B6E850  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B6E854  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B6EC40@ha */
/* 80B6E858  38 03 EC 40 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B6EC40@l */
/* 80B6E85C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B6E860  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B6E864  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B6E868  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B6E86C  38 03 00 58 */	addi r0, r3, 0x58
/* 80B6E870  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B6E874  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B6E878  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B6E87C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B6E880  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B6E884  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B6E888  38 03 00 84 */	addi r0, r3, 0x84
/* 80B6E88C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B6E890  7F E3 FB 78 */	mr r3, r31
/* 80B6E894  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6E898  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B6E89C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6E8A0  7C 08 03 A6 */	mtlr r0
/* 80B6E8A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6E8A8  4E 80 00 20 */	blr 
