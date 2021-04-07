lbl_809AA18C:
/* 809AA18C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AA190  7C 08 02 A6 */	mflr r0
/* 809AA194  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AA198  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809AA19C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809AA1A0  7C 7F 1B 78 */	mr r31, r3
/* 809AA1A4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809AA1A8  90 01 00 08 */	stw r0, 8(r1)
/* 809AA1AC  4B FF F4 79 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 809AA1B0  3C 60 80 9B */	lis r3, __vt__11daNpc_Doc_c@ha /* 0x809AA9F4@ha */
/* 809AA1B4  38 03 A9 F4 */	addi r0, r3, __vt__11daNpc_Doc_c@l /* 0x809AA9F4@l */
/* 809AA1B8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809AA1BC  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 809AA1C0  7F C3 F3 78 */	mr r3, r30
/* 809AA1C4  4B 6D 98 65 */	bl __ct__12dCcD_GObjInfFv
/* 809AA1C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809AA1CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809AA1D0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809AA1D4  3C 60 80 9B */	lis r3, __vt__8cM3dGAab@ha /* 0x809AA9D0@ha */
/* 809AA1D8  38 03 A9 D0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809AA9D0@l */
/* 809AA1DC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809AA1E0  3C 60 80 9B */	lis r3, __vt__8cM3dGCyl@ha /* 0x809AA9DC@ha */
/* 809AA1E4  38 03 A9 DC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809AA9DC@l */
/* 809AA1E8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809AA1EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809AA1F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809AA1F4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809AA1F8  38 03 00 58 */	addi r0, r3, 0x58
/* 809AA1FC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809AA200  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809AA204  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809AA208  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809AA20C  38 03 00 2C */	addi r0, r3, 0x2c
/* 809AA210  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809AA214  38 03 00 84 */	addi r0, r3, 0x84
/* 809AA218  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809AA21C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 809AA220  3C 80 80 9B */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x809AA9E8@ha */
/* 809AA224  38 04 A9 E8 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x809AA9E8@l */
/* 809AA228  90 1F 0F A8 */	stw r0, 0xfa8(r31)
/* 809AA22C  4B 79 BA 15 */	bl initialize__13daNpcT_Path_cFv
/* 809AA230  7F E3 FB 78 */	mr r3, r31
/* 809AA234  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809AA238  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809AA23C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AA240  7C 08 03 A6 */	mtlr r0
/* 809AA244  38 21 00 20 */	addi r1, r1, 0x20
/* 809AA248  4E 80 00 20 */	blr 
