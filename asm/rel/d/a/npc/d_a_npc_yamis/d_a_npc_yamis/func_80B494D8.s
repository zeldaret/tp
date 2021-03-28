lbl_80B494D8:
/* 80B494D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B494DC  7C 08 02 A6 */	mflr r0
/* 80B494E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B494E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B494E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B494EC  7C 7F 1B 78 */	mr r31, r3
/* 80B494F0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B494F4  90 01 00 08 */	stw r0, 8(r1)
/* 80B494F8  4B FF F4 45 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B494FC  3C 60 80 B5 */	lis r3, __vt__13daNpc_yamiS_c@ha
/* 80B49500  38 03 99 FC */	addi r0, r3, __vt__13daNpc_yamiS_c@l
/* 80B49504  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B49508  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B4950C  7F C3 F3 78 */	mr r3, r30
/* 80B49510  4B 53 A5 18 */	b __ct__12dCcD_GObjInfFv
/* 80B49514  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B49518  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B4951C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B49520  3C 60 80 B5 */	lis r3, __vt__8cM3dGAab@ha
/* 80B49524  38 03 99 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B49528  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B4952C  3C 60 80 B5 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B49530  38 03 99 E4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B49534  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B49538  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B4953C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B49540  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B49544  38 03 00 58 */	addi r0, r3, 0x58
/* 80B49548  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B4954C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B49550  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B49554  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B49558  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B4955C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B49560  38 03 00 84 */	addi r0, r3, 0x84
/* 80B49564  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B49568  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B4956C  3C 80 80 B5 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 80B49570  38 04 99 F0 */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 80B49574  90 1F 0F C0 */	stw r0, 0xfc0(r31)
/* 80B49578  4B 5F C6 C8 */	b initialize__13daNpcT_Path_cFv
/* 80B4957C  7F E3 FB 78 */	mr r3, r31
/* 80B49580  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B49584  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B49588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4958C  7C 08 03 A6 */	mtlr r0
/* 80B49590  38 21 00 20 */	addi r1, r1, 0x20
/* 80B49594  4E 80 00 20 */	blr 
