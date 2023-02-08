lbl_80AA148C:
/* 80AA148C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA1490  7C 08 02 A6 */	mflr r0
/* 80AA1494  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA1498  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AA149C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AA14A0  7C 7F 1B 78 */	mr r31, r3
/* 80AA14A4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AA14A8  90 01 00 08 */	stw r0, 8(r1)
/* 80AA14AC  4B FF F3 C1 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AA14B0  3C 60 80 AA */	lis r3, __vt__18daNpc_Pachi_Taro_c@ha /* 0x80AA2AB0@ha */
/* 80AA14B4  38 03 2A B0 */	addi r0, r3, __vt__18daNpc_Pachi_Taro_c@l /* 0x80AA2AB0@l */
/* 80AA14B8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AA14BC  3B DF 0E 4C */	addi r30, r31, 0xe4c
/* 80AA14C0  7F C3 F3 78 */	mr r3, r30
/* 80AA14C4  4B 5E 25 65 */	bl __ct__12dCcD_GObjInfFv
/* 80AA14C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AA14CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AA14D0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AA14D4  3C 60 80 AA */	lis r3, __vt__8cM3dGAab@ha /* 0x80AA2A98@ha */
/* 80AA14D8  38 03 2A 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AA2A98@l */
/* 80AA14DC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AA14E0  3C 60 80 AA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AA2AA4@ha */
/* 80AA14E4  38 03 2A A4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AA2AA4@l */
/* 80AA14E8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AA14EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AA14F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AA14F4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AA14F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80AA14FC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AA1500  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AA1504  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AA1508  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AA150C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AA1510  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AA1514  38 03 00 84 */	addi r0, r3, 0x84
/* 80AA1518  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AA151C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AA1520  3C 80 80 AA */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80AA07A0@ha */
/* 80AA1524  38 84 07 A0 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80AA07A0@l */
/* 80AA1528  3C A0 80 AA */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AA0758@ha */
/* 80AA152C  38 A5 07 58 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AA0758@l */
/* 80AA1530  38 C0 00 08 */	li r6, 8
/* 80AA1534  38 E0 00 06 */	li r7, 6
/* 80AA1538  4B 8C 08 29 */	bl __construct_array
/* 80AA153C  7F E3 FB 78 */	mr r3, r31
/* 80AA1540  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AA1544  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AA1548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA154C  7C 08 03 A6 */	mtlr r0
/* 80AA1550  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA1554  4E 80 00 20 */	blr 
