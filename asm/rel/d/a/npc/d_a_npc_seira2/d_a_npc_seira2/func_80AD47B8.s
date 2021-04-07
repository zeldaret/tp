lbl_80AD47B8:
/* 80AD47B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD47BC  7C 08 02 A6 */	mflr r0
/* 80AD47C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD47C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD47C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD47CC  7C 7F 1B 78 */	mr r31, r3
/* 80AD47D0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AD47D4  90 01 00 08 */	stw r0, 8(r1)
/* 80AD47D8  48 00 01 45 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AD47DC  3C 60 80 AD */	lis r3, __vt__14daNpc_Seira2_c@ha /* 0x80AD5530@ha */
/* 80AD47E0  38 03 55 30 */	addi r0, r3, __vt__14daNpc_Seira2_c@l /* 0x80AD5530@l */
/* 80AD47E4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AD47E8  3B DF 0F 84 */	addi r30, r31, 0xf84
/* 80AD47EC  7F C3 F3 78 */	mr r3, r30
/* 80AD47F0  4B 5A F2 39 */	bl __ct__12dCcD_GObjInfFv
/* 80AD47F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AD47F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AD47FC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AD4800  3C 60 80 AD */	lis r3, __vt__8cM3dGAab@ha /* 0x80AD5518@ha */
/* 80AD4804  38 03 55 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AD5518@l */
/* 80AD4808  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AD480C  3C 60 80 AD */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AD5524@ha */
/* 80AD4810  38 03 55 24 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AD5524@l */
/* 80AD4814  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AD4818  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AD481C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AD4820  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AD4824  38 03 00 58 */	addi r0, r3, 0x58
/* 80AD4828  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AD482C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AD4830  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AD4834  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AD4838  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AD483C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AD4840  38 03 00 84 */	addi r0, r3, 0x84
/* 80AD4844  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AD4848  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80AD484C  3C 80 80 AD */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80AD3AA8@ha */
/* 80AD4850  38 84 3A A8 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80AD3AA8@l */
/* 80AD4854  3C A0 80 AD */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AD3A60@ha */
/* 80AD4858  38 A5 3A 60 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AD3A60@l */
/* 80AD485C  38 C0 00 08 */	li r6, 8
/* 80AD4860  38 E0 00 01 */	li r7, 1
/* 80AD4864  4B 88 D4 FD */	bl __construct_array
/* 80AD4868  7F E3 FB 78 */	mr r3, r31
/* 80AD486C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD4870  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD4874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD4878  7C 08 03 A6 */	mtlr r0
/* 80AD487C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD4880  4E 80 00 20 */	blr 
