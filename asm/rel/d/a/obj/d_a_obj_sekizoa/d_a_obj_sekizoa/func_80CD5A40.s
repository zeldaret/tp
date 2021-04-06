lbl_80CD5A40:
/* 80CD5A40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CD5A44  7C 08 02 A6 */	mflr r0
/* 80CD5A48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD5A4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CD5A50  4B 68 C7 85 */	bl _savegpr_27
/* 80CD5A54  7C 7F 1B 78 */	mr r31, r3
/* 80CD5A58  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80CD5A5C  90 01 00 08 */	stw r0, 8(r1)
/* 80CD5A60  4B FF F3 45 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80CD5A64  3C 60 80 CD */	lis r3, __vt__15daObj_Sekizoa_c@ha /* 0x80CD6808@ha */
/* 80CD5A68  38 03 68 08 */	addi r0, r3, __vt__15daObj_Sekizoa_c@l /* 0x80CD6808@l */
/* 80CD5A6C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80CD5A70  3B 7F 0E 50 */	addi r27, r31, 0xe50
/* 80CD5A74  7F 63 DB 78 */	mr r3, r27
/* 80CD5A78  4B 3A DF B1 */	bl __ct__12dCcD_GObjInfFv
/* 80CD5A7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CD5A80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CD5A84  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80CD5A88  3C 60 80 CD */	lis r3, __vt__8cM3dGAab@ha /* 0x80CD67E4@ha */
/* 80CD5A8C  38 03 67 E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CD67E4@l */
/* 80CD5A90  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80CD5A94  3C 60 80 CD */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CD67F0@ha */
/* 80CD5A98  38 03 67 F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CD67F0@l */
/* 80CD5A9C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80CD5AA0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CD5AA4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CD5AA8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80CD5AAC  3B C3 00 58 */	addi r30, r3, 0x58
/* 80CD5AB0  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80CD5AB4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CD5AB8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CD5ABC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80CD5AC0  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80CD5AC4  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80CD5AC8  3B 83 00 84 */	addi r28, r3, 0x84
/* 80CD5ACC  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80CD5AD0  3B 7F 0F 8C */	addi r27, r31, 0xf8c
/* 80CD5AD4  7F 63 DB 78 */	mr r3, r27
/* 80CD5AD8  4B 3A DF 51 */	bl __ct__12dCcD_GObjInfFv
/* 80CD5ADC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CD5AE0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CD5AE4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80CD5AE8  3C 60 80 CD */	lis r3, __vt__8cM3dGAab@ha /* 0x80CD67E4@ha */
/* 80CD5AEC  38 03 67 E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CD67E4@l */
/* 80CD5AF0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80CD5AF4  3C 60 80 CD */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CD67F0@ha */
/* 80CD5AF8  38 03 67 F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CD67F0@l */
/* 80CD5AFC  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80CD5B00  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CD5B04  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CD5B08  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80CD5B0C  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80CD5B10  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CD5B14  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CD5B18  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80CD5B1C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80CD5B20  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80CD5B24  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80CD5B28  3C 80 80 CD */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80CD4CD8@ha */
/* 80CD5B2C  38 84 4C D8 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80CD4CD8@l */
/* 80CD5B30  3C A0 80 CD */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80CD4C48@ha */
/* 80CD5B34  38 A5 4C 48 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80CD4C48@l */
/* 80CD5B38  38 C0 00 08 */	li r6, 8
/* 80CD5B3C  38 E0 00 08 */	li r7, 8
/* 80CD5B40  4B 68 C2 21 */	bl __construct_array
/* 80CD5B44  38 7F 11 24 */	addi r3, r31, 0x1124
/* 80CD5B48  3C 80 80 CD */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80CD67FC@ha */
/* 80CD5B4C  38 04 67 FC */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80CD67FC@l */
/* 80CD5B50  90 1F 11 48 */	stw r0, 0x1148(r31)
/* 80CD5B54  4B 47 00 ED */	bl initialize__13daNpcT_Path_cFv
/* 80CD5B58  7F E3 FB 78 */	mr r3, r31
/* 80CD5B5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CD5B60  4B 68 C6 C1 */	bl _restgpr_27
/* 80CD5B64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD5B68  7C 08 03 A6 */	mtlr r0
/* 80CD5B6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CD5B70  4E 80 00 20 */	blr 
