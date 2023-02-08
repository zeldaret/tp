lbl_8057148C:
/* 8057148C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80571490  7C 08 02 A6 */	mflr r0
/* 80571494  90 01 00 34 */	stw r0, 0x34(r1)
/* 80571498  39 61 00 30 */	addi r11, r1, 0x30
/* 8057149C  4B DF 0D 39 */	bl _savegpr_27
/* 805714A0  7C 7F 1B 78 */	mr r31, r3
/* 805714A4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805714A8  90 01 00 08 */	stw r0, 8(r1)
/* 805714AC  4B FF F2 D9 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 805714B0  3C 60 80 57 */	lis r3, __vt__12daNpc_Taro_c@ha /* 0x80573488@ha */
/* 805714B4  38 03 34 88 */	addi r0, r3, __vt__12daNpc_Taro_c@l /* 0x80573488@l */
/* 805714B8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 805714BC  3B 7F 0E 4C */	addi r27, r31, 0xe4c
/* 805714C0  7F 63 DB 78 */	mr r3, r27
/* 805714C4  4B B1 25 65 */	bl __ct__12dCcD_GObjInfFv
/* 805714C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805714CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805714D0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805714D4  3C 60 80 57 */	lis r3, __vt__8cM3dGAab@ha /* 0x80573470@ha */
/* 805714D8  38 03 34 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80573470@l */
/* 805714DC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805714E0  3C 60 80 57 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8057347C@ha */
/* 805714E4  38 03 34 7C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8057347C@l */
/* 805714E8  90 1B 01 38 */	stw r0, 0x138(r27)
/* 805714EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 805714F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 805714F4  90 7B 01 20 */	stw r3, 0x120(r27)
/* 805714F8  3B C3 00 58 */	addi r30, r3, 0x58
/* 805714FC  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80571500  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80571504  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80571508  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8057150C  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80571510  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80571514  3B 83 00 84 */	addi r28, r3, 0x84
/* 80571518  93 9B 01 38 */	stw r28, 0x138(r27)
/* 8057151C  3B 7F 0F 88 */	addi r27, r31, 0xf88
/* 80571520  7F 63 DB 78 */	mr r3, r27
/* 80571524  4B B1 25 05 */	bl __ct__12dCcD_GObjInfFv
/* 80571528  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8057152C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80571530  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80571534  3C 60 80 57 */	lis r3, __vt__8cM3dGAab@ha /* 0x80573470@ha */
/* 80571538  38 03 34 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80573470@l */
/* 8057153C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80571540  3C 60 80 57 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8057347C@ha */
/* 80571544  38 03 34 7C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8057347C@l */
/* 80571548  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8057154C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80571550  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80571554  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80571558  93 DB 01 38 */	stw r30, 0x138(r27)
/* 8057155C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80571560  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80571564  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80571568  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8057156C  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80571570  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80571574  3C 80 80 57 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x805706B8@ha */
/* 80571578  38 84 06 B8 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x805706B8@l */
/* 8057157C  3C A0 80 57 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80570670@ha */
/* 80571580  38 A5 06 70 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80570670@l */
/* 80571584  38 C0 00 08 */	li r6, 8
/* 80571588  38 E0 00 17 */	li r7, 0x17
/* 8057158C  4B DF 07 D5 */	bl __construct_array
/* 80571590  7F E3 FB 78 */	mr r3, r31
/* 80571594  39 61 00 30 */	addi r11, r1, 0x30
/* 80571598  4B DF 0C 89 */	bl _restgpr_27
/* 8057159C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805715A0  7C 08 03 A6 */	mtlr r0
/* 805715A4  38 21 00 30 */	addi r1, r1, 0x30
/* 805715A8  4E 80 00 20 */	blr 
