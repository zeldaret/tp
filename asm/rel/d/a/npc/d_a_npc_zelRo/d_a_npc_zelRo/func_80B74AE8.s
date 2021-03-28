lbl_80B74AE8:
/* 80B74AE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B74AEC  7C 08 02 A6 */	mflr r0
/* 80B74AF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B74AF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B74AF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B74AFC  7C 7F 1B 78 */	mr r31, r3
/* 80B74B00  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B74B04  90 01 00 08 */	stw r0, 8(r1)
/* 80B74B08  4B FF F4 61 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B74B0C  3C 60 80 B7 */	lis r3, __vt__13daNpc_ZelRo_c@ha
/* 80B74B10  38 03 4F 54 */	addi r0, r3, __vt__13daNpc_ZelRo_c@l
/* 80B74B14  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B74B18  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B74B1C  7F C3 F3 78 */	mr r3, r30
/* 80B74B20  4B 50 EF 08 */	b __ct__12dCcD_GObjInfFv
/* 80B74B24  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B74B28  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B74B2C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B74B30  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha
/* 80B74B34  38 03 4F 30 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B74B38  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B74B3C  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B74B40  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B74B44  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B74B48  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B74B4C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B74B50  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B74B54  38 03 00 58 */	addi r0, r3, 0x58
/* 80B74B58  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B74B5C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B74B60  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B74B64  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B74B68  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B74B6C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B74B70  38 03 00 84 */	addi r0, r3, 0x84
/* 80B74B74  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B74B78  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B74B7C  3C 80 80 B7 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 80B74B80  38 04 4F 48 */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 80B74B84  90 1F 0F C0 */	stw r0, 0xfc0(r31)
/* 80B74B88  4B 5D 10 B8 */	b initialize__13daNpcT_Path_cFv
/* 80B74B8C  7F E3 FB 78 */	mr r3, r31
/* 80B74B90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B74B94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B74B98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B74B9C  7C 08 03 A6 */	mtlr r0
/* 80B74BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B74BA4  4E 80 00 20 */	blr 
