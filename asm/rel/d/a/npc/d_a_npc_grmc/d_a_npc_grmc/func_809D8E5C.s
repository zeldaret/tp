lbl_809D8E5C:
/* 809D8E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D8E60  7C 08 02 A6 */	mflr r0
/* 809D8E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D8E68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D8E6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809D8E70  7C 7F 1B 78 */	mr r31, r3
/* 809D8E74  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809D8E78  90 01 00 08 */	stw r0, 8(r1)
/* 809D8E7C  48 00 01 F1 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 809D8E80  3C 60 80 9E */	lis r3, __vt__12daNpc_grMC_c@ha
/* 809D8E84  38 03 A3 78 */	addi r0, r3, __vt__12daNpc_grMC_c@l
/* 809D8E88  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809D8E8C  3B DF 0F 80 */	addi r30, r31, 0xf80
/* 809D8E90  7F C3 F3 78 */	mr r3, r30
/* 809D8E94  4B 6A AB 94 */	b __ct__12dCcD_GObjInfFv
/* 809D8E98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809D8E9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809D8EA0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809D8EA4  3C 60 80 9E */	lis r3, __vt__8cM3dGAab@ha
/* 809D8EA8  38 03 A3 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809D8EAC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809D8EB0  3C 60 80 9E */	lis r3, __vt__8cM3dGCyl@ha
/* 809D8EB4  38 03 A3 6C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809D8EB8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809D8EBC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809D8EC0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809D8EC4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809D8EC8  38 03 00 58 */	addi r0, r3, 0x58
/* 809D8ECC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809D8ED0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809D8ED4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809D8ED8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809D8EDC  38 03 00 2C */	addi r0, r3, 0x2c
/* 809D8EE0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809D8EE4  38 03 00 84 */	addi r0, r3, 0x84
/* 809D8EE8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809D8EEC  7F E3 FB 78 */	mr r3, r31
/* 809D8EF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D8EF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809D8EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D8EFC  7C 08 03 A6 */	mtlr r0
/* 809D8F00  38 21 00 20 */	addi r1, r1, 0x20
/* 809D8F04  4E 80 00 20 */	blr 
