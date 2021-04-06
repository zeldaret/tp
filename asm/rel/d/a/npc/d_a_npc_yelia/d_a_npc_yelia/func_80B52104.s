lbl_80B52104:
/* 80B52104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B52108  7C 08 02 A6 */	mflr r0
/* 80B5210C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B52110  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B52114  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B52118  7C 7F 1B 78 */	mr r31, r3
/* 80B5211C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B52120  90 01 00 08 */	stw r0, 8(r1)
/* 80B52124  4B FF F4 19 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B52128  3C 60 80 B5 */	lis r3, __vt__13daNpc_Yelia_c@ha /* 0x80B53318@ha */
/* 80B5212C  38 03 33 18 */	addi r0, r3, __vt__13daNpc_Yelia_c@l /* 0x80B53318@l */
/* 80B52130  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B52134  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80B52138  7F C3 F3 78 */	mr r3, r30
/* 80B5213C  4B 53 18 ED */	bl __ct__12dCcD_GObjInfFv
/* 80B52140  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B52144  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B52148  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B5214C  3C 60 80 B5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B532F4@ha */
/* 80B52150  38 03 32 F4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B532F4@l */
/* 80B52154  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B52158  3C 60 80 B5 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B53300@ha */
/* 80B5215C  38 03 33 00 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B53300@l */
/* 80B52160  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B52164  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B52168  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B5216C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B52170  38 03 00 58 */	addi r0, r3, 0x58
/* 80B52174  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B52178  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B5217C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B52180  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B52184  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B52188  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B5218C  38 03 00 84 */	addi r0, r3, 0x84
/* 80B52190  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B52194  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B52198  3C 80 80 B5 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80B51470@ha */
/* 80B5219C  38 84 14 70 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80B51470@l */
/* 80B521A0  3C A0 80 B5 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80B513E0@ha */
/* 80B521A4  38 A5 13 E0 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80B513E0@l */
/* 80B521A8  38 C0 00 08 */	li r6, 8
/* 80B521AC  38 E0 00 04 */	li r7, 4
/* 80B521B0  4B 80 FB B1 */	bl __construct_array
/* 80B521B4  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80B521B8  3C 80 80 B5 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80B5330C@ha */
/* 80B521BC  38 04 33 0C */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80B5330C@l */
/* 80B521C0  90 1F 0F E0 */	stw r0, 0xfe0(r31)
/* 80B521C4  4B 5F 3A 7D */	bl initialize__13daNpcT_Path_cFv
/* 80B521C8  7F E3 FB 78 */	mr r3, r31
/* 80B521CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B521D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B521D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B521D8  7C 08 03 A6 */	mtlr r0
/* 80B521DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B521E0  4E 80 00 20 */	blr 
