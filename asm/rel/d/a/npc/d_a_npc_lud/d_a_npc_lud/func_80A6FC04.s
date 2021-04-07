lbl_80A6FC04:
/* 80A6FC04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6FC08  7C 08 02 A6 */	mflr r0
/* 80A6FC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6FC10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A6FC14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A6FC18  7C 7F 1B 78 */	mr r31, r3
/* 80A6FC1C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A6FC20  90 01 00 08 */	stw r0, 8(r1)
/* 80A6FC24  4B FF F3 ED */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A6FC28  3C 60 80 A7 */	lis r3, __vt__11daNpc_Lud_c@ha /* 0x80A70A7C@ha */
/* 80A6FC2C  38 03 0A 7C */	addi r0, r3, __vt__11daNpc_Lud_c@l /* 0x80A70A7C@l */
/* 80A6FC30  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A6FC34  3B DF 0E 50 */	addi r30, r31, 0xe50
/* 80A6FC38  7F C3 F3 78 */	mr r3, r30
/* 80A6FC3C  4B 61 3D ED */	bl __ct__12dCcD_GObjInfFv
/* 80A6FC40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A6FC44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A6FC48  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A6FC4C  3C 60 80 A7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A70A64@ha */
/* 80A6FC50  38 03 0A 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A70A64@l */
/* 80A6FC54  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A6FC58  3C 60 80 A7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A70A70@ha */
/* 80A6FC5C  38 03 0A 70 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A70A70@l */
/* 80A6FC60  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A6FC64  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A6FC68  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A6FC6C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A6FC70  38 03 00 58 */	addi r0, r3, 0x58
/* 80A6FC74  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A6FC78  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A6FC7C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A6FC80  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A6FC84  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A6FC88  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A6FC8C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A6FC90  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A6FC94  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80A6FC98  3C 80 80 A7 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80A6EF44@ha */
/* 80A6FC9C  38 84 EF 44 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80A6EF44@l */
/* 80A6FCA0  3C A0 80 A7 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A6EEFC@ha */
/* 80A6FCA4  38 A5 EE FC */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A6EEFC@l */
/* 80A6FCA8  38 C0 00 08 */	li r6, 8
/* 80A6FCAC  38 E0 00 03 */	li r7, 3
/* 80A6FCB0  4B 8F 20 B1 */	bl __construct_array
/* 80A6FCB4  7F E3 FB 78 */	mr r3, r31
/* 80A6FCB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A6FCBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A6FCC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6FCC4  7C 08 03 A6 */	mtlr r0
/* 80A6FCC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6FCCC  4E 80 00 20 */	blr 
