lbl_809726D4:
/* 809726D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809726D8  7C 08 02 A6 */	mflr r0
/* 809726DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809726E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809726E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809726E8  7C 7F 1B 78 */	mr r31, r3
/* 809726EC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809726F0  90 01 00 08 */	stw r0, 8(r1)
/* 809726F4  4B FF F3 D5 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 809726F8  3C 60 80 97 */	lis r3, __vt__11daNpc_Bou_c@ha /* 0x8097336C@ha */
/* 809726FC  38 03 33 6C */	addi r0, r3, __vt__11daNpc_Bou_c@l /* 0x8097336C@l */
/* 80972700  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80972704  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80972708  7F C3 F3 78 */	mr r3, r30
/* 8097270C  4B 71 13 1D */	bl __ct__12dCcD_GObjInfFv
/* 80972710  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80972714  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80972718  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8097271C  3C 60 80 97 */	lis r3, __vt__8cM3dGAab@ha /* 0x80973348@ha */
/* 80972720  38 03 33 48 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80973348@l */
/* 80972724  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80972728  3C 60 80 97 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80973354@ha */
/* 8097272C  38 03 33 54 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80973354@l */
/* 80972730  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80972734  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80972738  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8097273C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80972740  38 03 00 58 */	addi r0, r3, 0x58
/* 80972744  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80972748  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8097274C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80972750  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80972754  38 03 00 2C */	addi r0, r3, 0x2c
/* 80972758  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8097275C  38 03 00 84 */	addi r0, r3, 0x84
/* 80972760  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80972764  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80972768  3C 80 80 97 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x809719FC@ha */
/* 8097276C  38 84 19 FC */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x809719FC@l */
/* 80972770  3C A0 80 97 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x8097196C@ha */
/* 80972774  38 A5 19 6C */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x8097196C@l */
/* 80972778  38 C0 00 08 */	li r6, 8
/* 8097277C  38 E0 00 03 */	li r7, 3
/* 80972780  4B 9E F5 E1 */	bl __construct_array
/* 80972784  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80972788  3C 80 80 97 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80973360@ha */
/* 8097278C  38 04 33 60 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80973360@l */
/* 80972790  90 1F 0F C0 */	stw r0, 0xfc0(r31)
/* 80972794  4B 7D 34 AD */	bl initialize__13daNpcT_Path_cFv
/* 80972798  7F E3 FB 78 */	mr r3, r31
/* 8097279C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809727A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809727A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809727A8  7C 08 03 A6 */	mtlr r0
/* 809727AC  38 21 00 20 */	addi r1, r1, 0x20
/* 809727B0  4E 80 00 20 */	blr 
