lbl_809574E8:
/* 809574E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809574EC  7C 08 02 A6 */	mflr r0
/* 809574F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809574F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809574F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809574FC  7C 7F 1B 78 */	mr r31, r3
/* 80957500  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80957504  90 01 00 08 */	stw r0, 8(r1)
/* 80957508  4B FF F3 CD */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 8095750C  3C 60 80 96 */	lis r3, __vt__11daNpc_Aru_c@ha /* 0x80958044@ha */
/* 80957510  38 03 80 44 */	addi r0, r3, __vt__11daNpc_Aru_c@l /* 0x80958044@l */
/* 80957514  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80957518  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 8095751C  7F C3 F3 78 */	mr r3, r30
/* 80957520  4B 72 C5 09 */	bl __ct__12dCcD_GObjInfFv
/* 80957524  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80957528  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8095752C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80957530  3C 60 80 96 */	lis r3, __vt__8cM3dGAab@ha /* 0x8095802C@ha */
/* 80957534  38 03 80 2C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8095802C@l */
/* 80957538  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8095753C  3C 60 80 96 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80958038@ha */
/* 80957540  38 03 80 38 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80958038@l */
/* 80957544  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80957548  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8095754C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80957550  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80957554  38 03 00 58 */	addi r0, r3, 0x58
/* 80957558  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8095755C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80957560  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80957564  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80957568  38 03 00 2C */	addi r0, r3, 0x2c
/* 8095756C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80957570  38 03 00 84 */	addi r0, r3, 0x84
/* 80957574  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80957578  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 8095757C  3C 80 80 95 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80956808@ha */
/* 80957580  38 84 68 08 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80956808@l */
/* 80957584  3C A0 80 95 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x809567C0@ha */
/* 80957588  38 A5 67 C0 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x809567C0@l */
/* 8095758C  38 C0 00 08 */	li r6, 8
/* 80957590  38 E0 00 04 */	li r7, 4
/* 80957594  4B A0 A7 CD */	bl __construct_array
/* 80957598  7F E3 FB 78 */	mr r3, r31
/* 8095759C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809575A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809575A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809575A8  7C 08 03 A6 */	mtlr r0
/* 809575AC  38 21 00 20 */	addi r1, r1, 0x20
/* 809575B0  4E 80 00 20 */	blr 
