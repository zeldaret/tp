lbl_80B45E74:
/* 80B45E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B45E78  7C 08 02 A6 */	mflr r0
/* 80B45E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B45E80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B45E84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B45E88  7C 7F 1B 78 */	mr r31, r3
/* 80B45E8C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B45E90  90 01 00 08 */	stw r0, 8(r1)
/* 80B45E94  4B FF F4 45 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B45E98  3C 60 80 B4 */	lis r3, __vt__13daNpc_yamiD_c@ha
/* 80B45E9C  38 03 63 98 */	addi r0, r3, __vt__13daNpc_yamiD_c@l
/* 80B45EA0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B45EA4  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B45EA8  7F C3 F3 78 */	mr r3, r30
/* 80B45EAC  4B 53 DB 7C */	b __ct__12dCcD_GObjInfFv
/* 80B45EB0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B45EB4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B45EB8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B45EBC  3C 60 80 B4 */	lis r3, __vt__8cM3dGAab@ha
/* 80B45EC0  38 03 63 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B45EC4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B45EC8  3C 60 80 B4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B45ECC  38 03 63 80 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B45ED0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B45ED4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B45ED8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B45EDC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B45EE0  38 03 00 58 */	addi r0, r3, 0x58
/* 80B45EE4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B45EE8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B45EEC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B45EF0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B45EF4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B45EF8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B45EFC  38 03 00 84 */	addi r0, r3, 0x84
/* 80B45F00  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B45F04  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B45F08  3C 80 80 B4 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 80B45F0C  38 04 63 8C */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 80B45F10  90 1F 0F C0 */	stw r0, 0xfc0(r31)
/* 80B45F14  4B 5F FD 2C */	b initialize__13daNpcT_Path_cFv
/* 80B45F18  7F E3 FB 78 */	mr r3, r31
/* 80B45F1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B45F20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B45F24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B45F28  7C 08 03 A6 */	mtlr r0
/* 80B45F2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B45F30  4E 80 00 20 */	blr 
