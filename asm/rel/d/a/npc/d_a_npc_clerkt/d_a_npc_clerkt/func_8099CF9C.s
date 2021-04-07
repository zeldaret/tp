lbl_8099CF9C:
/* 8099CF9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099CFA0  7C 08 02 A6 */	mflr r0
/* 8099CFA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099CFA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099CFAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8099CFB0  7C 7F 1B 78 */	mr r31, r3
/* 8099CFB4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8099CFB8  90 01 00 08 */	stw r0, 8(r1)
/* 8099CFBC  48 00 01 45 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 8099CFC0  3C 60 80 9A */	lis r3, __vt__13daNpcClerkT_c@ha /* 0x8099D56C@ha */
/* 8099CFC4  38 03 D5 6C */	addi r0, r3, __vt__13daNpcClerkT_c@l /* 0x8099D56C@l */
/* 8099CFC8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 8099CFCC  3B DF 0F 80 */	addi r30, r31, 0xf80
/* 8099CFD0  7F C3 F3 78 */	mr r3, r30
/* 8099CFD4  4B 6E 6A 55 */	bl __ct__12dCcD_GObjInfFv
/* 8099CFD8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8099CFDC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8099CFE0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8099CFE4  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha /* 0x8099D554@ha */
/* 8099CFE8  38 03 D5 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8099D554@l */
/* 8099CFEC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8099CFF0  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha /* 0x8099D560@ha */
/* 8099CFF4  38 03 D5 60 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8099D560@l */
/* 8099CFF8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8099CFFC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8099D000  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8099D004  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8099D008  38 03 00 58 */	addi r0, r3, 0x58
/* 8099D00C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8099D010  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8099D014  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8099D018  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8099D01C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8099D020  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8099D024  38 03 00 84 */	addi r0, r3, 0x84
/* 8099D028  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8099D02C  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 8099D030  3C 80 80 9A */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x8099C31C@ha */
/* 8099D034  38 84 C3 1C */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x8099C31C@l */
/* 8099D038  3C A0 80 9A */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x8099C2D4@ha */
/* 8099D03C  38 A5 C2 D4 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x8099C2D4@l */
/* 8099D040  38 C0 00 08 */	li r6, 8
/* 8099D044  38 E0 00 01 */	li r7, 1
/* 8099D048  4B 9C 4D 19 */	bl __construct_array
/* 8099D04C  7F E3 FB 78 */	mr r3, r31
/* 8099D050  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099D054  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8099D058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099D05C  7C 08 03 A6 */	mtlr r0
/* 8099D060  38 21 00 20 */	addi r1, r1, 0x20
/* 8099D064  4E 80 00 20 */	blr 
