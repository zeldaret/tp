lbl_80AB1E94:
/* 80AB1E94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB1E98  7C 08 02 A6 */	mflr r0
/* 80AB1E9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB1EA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AB1EA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AB1EA8  7C 7F 1B 78 */	mr r31, r3
/* 80AB1EAC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AB1EB0  90 01 00 08 */	stw r0, 8(r1)
/* 80AB1EB4  4B FF F4 21 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AB1EB8  3C 60 80 AB */	lis r3, __vt__13daNpc_Pouya_c@ha /* 0x80AB2C14@ha */
/* 80AB1EBC  38 03 2C 14 */	addi r0, r3, __vt__13daNpc_Pouya_c@l /* 0x80AB2C14@l */
/* 80AB1EC0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AB1EC4  3B DF 0E 48 */	addi r30, r31, 0xe48
/* 80AB1EC8  7F C3 F3 78 */	mr r3, r30
/* 80AB1ECC  4B 5D 1B 5D */	bl __ct__12dCcD_GObjInfFv
/* 80AB1ED0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AB1ED4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AB1ED8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AB1EDC  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha /* 0x80AB2BF0@ha */
/* 80AB1EE0  38 03 2B F0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AB2BF0@l */
/* 80AB1EE4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AB1EE8  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AB2BFC@ha */
/* 80AB1EEC  38 03 2B FC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AB2BFC@l */
/* 80AB1EF0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB1EF4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AB1EF8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AB1EFC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AB1F00  38 03 00 58 */	addi r0, r3, 0x58
/* 80AB1F04  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB1F08  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AB1F0C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AB1F10  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AB1F14  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AB1F18  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AB1F1C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AB1F20  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB1F24  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80AB1F28  3C 80 80 AB */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80AB2C08@ha */
/* 80AB1F2C  38 04 2C 08 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80AB2C08@l */
/* 80AB1F30  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 80AB1F34  4B 69 3D 0D */	bl initialize__13daNpcT_Path_cFv
/* 80AB1F38  7F E3 FB 78 */	mr r3, r31
/* 80AB1F3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AB1F40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AB1F44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB1F48  7C 08 03 A6 */	mtlr r0
/* 80AB1F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB1F50  4E 80 00 20 */	blr 
