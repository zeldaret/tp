lbl_80AB8CCC:
/* 80AB8CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB8CD0  7C 08 02 A6 */	mflr r0
/* 80AB8CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB8CD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AB8CDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AB8CE0  7C 7F 1B 78 */	mr r31, r3
/* 80AB8CE4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AB8CE8  90 01 00 08 */	stw r0, 8(r1)
/* 80AB8CEC  4B FF F4 B1 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AB8CF0  3C 60 80 AC */	lis r3, __vt__12daNpc_Raca_c@ha /* 0x80AB9454@ha */
/* 80AB8CF4  38 03 94 54 */	addi r0, r3, __vt__12daNpc_Raca_c@l /* 0x80AB9454@l */
/* 80AB8CF8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AB8CFC  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80AB8D00  7F C3 F3 78 */	mr r3, r30
/* 80AB8D04  4B 5C AD 25 */	bl __ct__12dCcD_GObjInfFv
/* 80AB8D08  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AB8D0C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AB8D10  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AB8D14  3C 60 80 AC */	lis r3, __vt__8cM3dGAab@ha /* 0x80AB9430@ha */
/* 80AB8D18  38 03 94 30 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AB9430@l */
/* 80AB8D1C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AB8D20  3C 60 80 AC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AB943C@ha */
/* 80AB8D24  38 03 94 3C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AB943C@l */
/* 80AB8D28  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB8D2C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AB8D30  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AB8D34  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AB8D38  38 03 00 58 */	addi r0, r3, 0x58
/* 80AB8D3C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB8D40  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AB8D44  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AB8D48  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AB8D4C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AB8D50  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AB8D54  38 03 00 84 */	addi r0, r3, 0x84
/* 80AB8D58  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB8D5C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AB8D60  3C 80 80 AC */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80AB80D0@ha */
/* 80AB8D64  38 84 80 D0 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80AB80D0@l */
/* 80AB8D68  3C A0 80 AC */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AB8040@ha */
/* 80AB8D6C  38 A5 80 40 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AB8040@l */
/* 80AB8D70  38 C0 00 08 */	li r6, 8
/* 80AB8D74  38 E0 00 01 */	li r7, 1
/* 80AB8D78  4B 8A 8F E9 */	bl __construct_array
/* 80AB8D7C  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80AB8D80  3C 80 80 AC */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80AB9448@ha */
/* 80AB8D84  38 04 94 48 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80AB9448@l */
/* 80AB8D88  90 1F 0F C8 */	stw r0, 0xfc8(r31)
/* 80AB8D8C  4B 68 CE B5 */	bl initialize__13daNpcT_Path_cFv
/* 80AB8D90  7F E3 FB 78 */	mr r3, r31
/* 80AB8D94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AB8D98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AB8D9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB8DA0  7C 08 03 A6 */	mtlr r0
/* 80AB8DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB8DA8  4E 80 00 20 */	blr 
