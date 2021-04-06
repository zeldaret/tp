lbl_80B5D588:
/* 80B5D588  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B5D58C  7C 08 02 A6 */	mflr r0
/* 80B5D590  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5D594  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B5D598  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B5D59C  7C 7F 1B 78 */	mr r31, r3
/* 80B5D5A0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B5D5A4  90 01 00 08 */	stw r0, 8(r1)
/* 80B5D5A8  4B FF F3 11 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B5D5AC  3C 60 80 B6 */	lis r3, __vt__11daNpc_ykM_c@ha /* 0x80B5EC50@ha */
/* 80B5D5B0  38 03 EC 50 */	addi r0, r3, __vt__11daNpc_ykM_c@l /* 0x80B5EC50@l */
/* 80B5D5B4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B5D5B8  3B DF 0E 58 */	addi r30, r31, 0xe58
/* 80B5D5BC  7F C3 F3 78 */	mr r3, r30
/* 80B5D5C0  4B 52 64 69 */	bl __ct__12dCcD_GObjInfFv
/* 80B5D5C4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B5D5C8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B5D5CC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B5D5D0  3C 60 80 B6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B5EC2C@ha */
/* 80B5D5D4  38 03 EC 2C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B5EC2C@l */
/* 80B5D5D8  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B5D5DC  3C 60 80 B6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B5EC38@ha */
/* 80B5D5E0  38 03 EC 38 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B5EC38@l */
/* 80B5D5E4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B5D5E8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B5D5EC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B5D5F0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B5D5F4  38 03 00 58 */	addi r0, r3, 0x58
/* 80B5D5F8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B5D5FC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B5D600  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B5D604  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B5D608  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B5D60C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B5D610  38 03 00 84 */	addi r0, r3, 0x84
/* 80B5D614  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B5D618  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B5D61C  3C 80 80 B6 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80B5C75C@ha */
/* 80B5D620  38 84 C7 5C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80B5C75C@l */
/* 80B5D624  3C A0 80 B6 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80B5C5C4@ha */
/* 80B5D628  38 A5 C5 C4 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80B5C5C4@l */
/* 80B5D62C  38 C0 01 38 */	li r6, 0x138
/* 80B5D630  38 E0 00 04 */	li r7, 4
/* 80B5D634  4B 80 47 2D */	bl __construct_array
/* 80B5D638  38 7F 14 78 */	addi r3, r31, 0x1478
/* 80B5D63C  3C 80 80 B6 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80B5C720@ha */
/* 80B5D640  38 84 C7 20 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80B5C720@l */
/* 80B5D644  3C A0 80 B6 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80B5C690@ha */
/* 80B5D648  38 A5 C6 90 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80B5C690@l */
/* 80B5D64C  38 C0 00 08 */	li r6, 8
/* 80B5D650  38 E0 00 08 */	li r7, 8
/* 80B5D654  4B 80 47 0D */	bl __construct_array
/* 80B5D658  38 7F 14 B8 */	addi r3, r31, 0x14b8
/* 80B5D65C  3C 80 80 B6 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80B5EC44@ha */
/* 80B5D660  38 04 EC 44 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80B5EC44@l */
/* 80B5D664  90 1F 14 DC */	stw r0, 0x14dc(r31)
/* 80B5D668  4B 5E 85 D9 */	bl initialize__13daNpcT_Path_cFv
/* 80B5D66C  7F E3 FB 78 */	mr r3, r31
/* 80B5D670  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B5D674  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B5D678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B5D67C  7C 08 03 A6 */	mtlr r0
/* 80B5D680  38 21 00 20 */	addi r1, r1, 0x20
/* 80B5D684  4E 80 00 20 */	blr 
