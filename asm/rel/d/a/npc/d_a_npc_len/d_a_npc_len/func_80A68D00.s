lbl_80A68D00:
/* 80A68D00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A68D04  7C 08 02 A6 */	mflr r0
/* 80A68D08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A68D0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A68D10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A68D14  7C 7F 1B 78 */	mr r31, r3
/* 80A68D18  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A68D1C  90 01 00 08 */	stw r0, 8(r1)
/* 80A68D20  4B FF F3 DD */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A68D24  3C 60 80 A7 */	lis r3, __vt__11daNpc_Len_c@ha /* 0x80A6997C@ha */
/* 80A68D28  38 03 99 7C */	addi r0, r3, __vt__11daNpc_Len_c@l /* 0x80A6997C@l */
/* 80A68D2C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A68D30  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80A68D34  7F C3 F3 78 */	mr r3, r30
/* 80A68D38  4B 61 AC F1 */	bl __ct__12dCcD_GObjInfFv
/* 80A68D3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A68D40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A68D44  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A68D48  3C 60 80 A7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A69958@ha */
/* 80A68D4C  38 03 99 58 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A69958@l */
/* 80A68D50  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A68D54  3C 60 80 A7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A69964@ha */
/* 80A68D58  38 03 99 64 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A69964@l */
/* 80A68D5C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A68D60  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A68D64  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A68D68  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A68D6C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A68D70  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A68D74  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A68D78  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A68D7C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A68D80  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A68D84  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A68D88  38 03 00 84 */	addi r0, r3, 0x84
/* 80A68D8C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A68D90  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A68D94  3C 80 80 A7 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80A68030@ha */
/* 80A68D98  38 84 80 30 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80A68030@l */
/* 80A68D9C  3C A0 80 A6 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A67FA0@ha */
/* 80A68DA0  38 A5 7F A0 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A67FA0@l */
/* 80A68DA4  38 C0 00 08 */	li r6, 8
/* 80A68DA8  38 E0 00 04 */	li r7, 4
/* 80A68DAC  4B 8F 8F B5 */	bl __construct_array
/* 80A68DB0  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80A68DB4  3C 80 80 A7 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80A69970@ha */
/* 80A68DB8  38 04 99 70 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80A69970@l */
/* 80A68DBC  90 1F 0F C8 */	stw r0, 0xfc8(r31)
/* 80A68DC0  4B 6D CE 81 */	bl initialize__13daNpcT_Path_cFv
/* 80A68DC4  7F E3 FB 78 */	mr r3, r31
/* 80A68DC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A68DCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A68DD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A68DD4  7C 08 03 A6 */	mtlr r0
/* 80A68DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A68DDC  4E 80 00 20 */	blr 
