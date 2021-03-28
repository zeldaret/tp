lbl_809BE2D0:
/* 809BE2D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BE2D4  7C 08 02 A6 */	mflr r0
/* 809BE2D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BE2DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809BE2E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809BE2E4  7C 7F 1B 78 */	mr r31, r3
/* 809BE2E8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809BE2EC  90 01 00 08 */	stw r0, 8(r1)
/* 809BE2F0  4B FF F4 59 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 809BE2F4  3C 60 80 9C */	lis r3, __vt__11daNpc_Gnd_c@ha
/* 809BE2F8  38 03 E7 70 */	addi r0, r3, __vt__11daNpc_Gnd_c@l
/* 809BE2FC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809BE300  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 809BE304  7F C3 F3 78 */	mr r3, r30
/* 809BE308  4B 6C 57 20 */	b __ct__12dCcD_GObjInfFv
/* 809BE30C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809BE310  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809BE314  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809BE318  3C 60 80 9C */	lis r3, __vt__8cM3dGAab@ha
/* 809BE31C  38 03 E7 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809BE320  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809BE324  3C 60 80 9C */	lis r3, __vt__8cM3dGCyl@ha
/* 809BE328  38 03 E7 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809BE32C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809BE330  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809BE334  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809BE338  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809BE33C  38 03 00 58 */	addi r0, r3, 0x58
/* 809BE340  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809BE344  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809BE348  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809BE34C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809BE350  38 03 00 2C */	addi r0, r3, 0x2c
/* 809BE354  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809BE358  38 03 00 84 */	addi r0, r3, 0x84
/* 809BE35C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809BE360  7F E3 FB 78 */	mr r3, r31
/* 809BE364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809BE368  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809BE36C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BE370  7C 08 03 A6 */	mtlr r0
/* 809BE374  38 21 00 20 */	addi r1, r1, 0x20
/* 809BE378  4E 80 00 20 */	blr 
