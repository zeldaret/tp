lbl_805763B0:
/* 805763B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805763B4  7C 08 02 A6 */	mflr r0
/* 805763B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805763BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805763C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805763C4  7C 7F 1B 78 */	mr r31, r3
/* 805763C8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 805763CC  90 01 00 08 */	stw r0, 8(r1)
/* 805763D0  4B FF F4 35 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 805763D4  3C 60 80 57 */	lis r3, __vt__10daNpcTkj_c@ha /* 0x805768EC@ha */
/* 805763D8  38 03 68 EC */	addi r0, r3, __vt__10daNpcTkj_c@l /* 0x805768EC@l */
/* 805763DC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 805763E0  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 805763E4  7F C3 F3 78 */	mr r3, r30
/* 805763E8  4B B0 D6 41 */	bl __ct__12dCcD_GObjInfFv
/* 805763EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805763F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805763F4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805763F8  3C 60 80 57 */	lis r3, __vt__8cM3dGAab@ha /* 0x805768D4@ha */
/* 805763FC  38 03 68 D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805768D4@l */
/* 80576400  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80576404  3C 60 80 57 */	lis r3, __vt__8cM3dGCyl@ha /* 0x805768E0@ha */
/* 80576408  38 03 68 E0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x805768E0@l */
/* 8057640C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80576410  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80576414  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80576418  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8057641C  38 03 00 58 */	addi r0, r3, 0x58
/* 80576420  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80576424  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80576428  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8057642C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80576430  38 03 00 2C */	addi r0, r3, 0x2c
/* 80576434  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80576438  38 03 00 84 */	addi r0, r3, 0x84
/* 8057643C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80576440  7F E3 FB 78 */	mr r3, r31
/* 80576444  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80576448  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057644C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576450  7C 08 03 A6 */	mtlr r0
/* 80576454  38 21 00 20 */	addi r1, r1, 0x20
/* 80576458  4E 80 00 20 */	blr 
