lbl_80B6BADC:
/* 80B6BADC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6BAE0  7C 08 02 A6 */	mflr r0
/* 80B6BAE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6BAE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6BAEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B6BAF0  7C 7F 1B 78 */	mr r31, r3
/* 80B6BAF4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B6BAF8  90 01 00 08 */	stw r0, 8(r1)
/* 80B6BAFC  4B FF F4 65 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B6BB00  3C 60 80 B7 */	lis r3, __vt__12daNpc_zanB_c@ha /* 0x80B6BFCC@ha */
/* 80B6BB04  38 03 BF CC */	addi r0, r3, __vt__12daNpc_zanB_c@l /* 0x80B6BFCC@l */
/* 80B6BB08  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B6BB0C  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B6BB10  7F C3 F3 78 */	mr r3, r30
/* 80B6BB14  4B 51 7F 15 */	bl __ct__12dCcD_GObjInfFv
/* 80B6BB18  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B6BB1C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B6BB20  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B6BB24  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B6BFB4@ha */
/* 80B6BB28  38 03 BF B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B6BFB4@l */
/* 80B6BB2C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B6BB30  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B6BFC0@ha */
/* 80B6BB34  38 03 BF C0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B6BFC0@l */
/* 80B6BB38  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B6BB3C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B6BB40  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B6BB44  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B6BB48  38 03 00 58 */	addi r0, r3, 0x58
/* 80B6BB4C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B6BB50  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B6BB54  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B6BB58  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B6BB5C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B6BB60  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B6BB64  38 03 00 84 */	addi r0, r3, 0x84
/* 80B6BB68  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B6BB6C  7F E3 FB 78 */	mr r3, r31
/* 80B6BB70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6BB74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B6BB78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6BB7C  7C 08 03 A6 */	mtlr r0
/* 80B6BB80  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6BB84  4E 80 00 20 */	blr 
