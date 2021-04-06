lbl_80B77DD8:
/* 80B77DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B77DDC  7C 08 02 A6 */	mflr r0
/* 80B77DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B77DE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B77DE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B77DEC  7C 7F 1B 78 */	mr r31, r3
/* 80B77DF0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B77DF4  90 01 00 08 */	stw r0, 8(r1)
/* 80B77DF8  4B FF F4 69 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B77DFC  3C 60 80 B8 */	lis r3, __vt__13daNpc_Zelda_c@ha /* 0x80B7832C@ha */
/* 80B77E00  38 03 83 2C */	addi r0, r3, __vt__13daNpc_Zelda_c@l /* 0x80B7832C@l */
/* 80B77E04  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B77E08  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B77E0C  7F C3 F3 78 */	mr r3, r30
/* 80B77E10  4B 50 BC 19 */	bl __ct__12dCcD_GObjInfFv
/* 80B77E14  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B77E18  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B77E1C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B77E20  3C 60 80 B8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B78314@ha */
/* 80B77E24  38 03 83 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B78314@l */
/* 80B77E28  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B77E2C  3C 60 80 B8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B78320@ha */
/* 80B77E30  38 03 83 20 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B78320@l */
/* 80B77E34  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B77E38  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B77E3C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B77E40  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B77E44  38 03 00 58 */	addi r0, r3, 0x58
/* 80B77E48  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B77E4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B77E50  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B77E54  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B77E58  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B77E5C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B77E60  38 03 00 84 */	addi r0, r3, 0x84
/* 80B77E64  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B77E68  7F E3 FB 78 */	mr r3, r31
/* 80B77E6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B77E70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B77E74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B77E78  7C 08 03 A6 */	mtlr r0
/* 80B77E7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B77E80  4E 80 00 20 */	blr 
