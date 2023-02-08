lbl_80B4CC38:
/* 80B4CC38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4CC3C  7C 08 02 A6 */	mflr r0
/* 80B4CC40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4CC44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B4CC48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B4CC4C  7C 7F 1B 78 */	mr r31, r3
/* 80B4CC50  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B4CC54  90 01 00 08 */	stw r0, 8(r1)
/* 80B4CC58  4B FF F4 45 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B4CC5C  3C 60 80 B5 */	lis r3, __vt__13daNpc_yamiT_c@ha /* 0x80B4D11C@ha */
/* 80B4CC60  38 03 D1 1C */	addi r0, r3, __vt__13daNpc_yamiT_c@l /* 0x80B4D11C@l */
/* 80B4CC64  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B4CC68  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B4CC6C  7F C3 F3 78 */	mr r3, r30
/* 80B4CC70  4B 53 6D B9 */	bl __ct__12dCcD_GObjInfFv
/* 80B4CC74  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B4CC78  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B4CC7C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B4CC80  3C 60 80 B5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B4D0F8@ha */
/* 80B4CC84  38 03 D0 F8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B4D0F8@l */
/* 80B4CC88  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B4CC8C  3C 60 80 B5 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B4D104@ha */
/* 80B4CC90  38 03 D1 04 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B4D104@l */
/* 80B4CC94  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B4CC98  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B4CC9C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B4CCA0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B4CCA4  38 03 00 58 */	addi r0, r3, 0x58
/* 80B4CCA8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B4CCAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B4CCB0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B4CCB4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B4CCB8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B4CCBC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B4CCC0  38 03 00 84 */	addi r0, r3, 0x84
/* 80B4CCC4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B4CCC8  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80B4CCCC  3C 80 80 B5 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80B4D110@ha */
/* 80B4CCD0  38 04 D1 10 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80B4D110@l */
/* 80B4CCD4  90 1F 0F C4 */	stw r0, 0xfc4(r31)
/* 80B4CCD8  4B 5F 8F 69 */	bl initialize__13daNpcT_Path_cFv
/* 80B4CCDC  7F E3 FB 78 */	mr r3, r31
/* 80B4CCE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B4CCE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B4CCE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4CCEC  7C 08 03 A6 */	mtlr r0
/* 80B4CCF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4CCF4  4E 80 00 20 */	blr 
