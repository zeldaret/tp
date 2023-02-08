lbl_80ACFB48:
/* 80ACFB48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACFB4C  7C 08 02 A6 */	mflr r0
/* 80ACFB50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACFB54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACFB58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80ACFB5C  7C 7F 1B 78 */	mr r31, r3
/* 80ACFB60  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ACFB64  90 01 00 08 */	stw r0, 8(r1)
/* 80ACFB68  48 00 01 45 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80ACFB6C  3C 60 80 AD */	lis r3, __vt__13daNpc_Seira_c@ha /* 0x80AD0A14@ha */
/* 80ACFB70  38 03 0A 14 */	addi r0, r3, __vt__13daNpc_Seira_c@l /* 0x80AD0A14@l */
/* 80ACFB74  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80ACFB78  3B DF 0F 84 */	addi r30, r31, 0xf84
/* 80ACFB7C  7F C3 F3 78 */	mr r3, r30
/* 80ACFB80  4B 5B 3E A9 */	bl __ct__12dCcD_GObjInfFv
/* 80ACFB84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80ACFB88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80ACFB8C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80ACFB90  3C 60 80 AD */	lis r3, __vt__8cM3dGAab@ha /* 0x80AD09FC@ha */
/* 80ACFB94  38 03 09 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AD09FC@l */
/* 80ACFB98  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80ACFB9C  3C 60 80 AD */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AD0A08@ha */
/* 80ACFBA0  38 03 0A 08 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AD0A08@l */
/* 80ACFBA4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80ACFBA8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80ACFBAC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80ACFBB0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80ACFBB4  38 03 00 58 */	addi r0, r3, 0x58
/* 80ACFBB8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80ACFBBC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80ACFBC0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80ACFBC4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80ACFBC8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80ACFBCC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80ACFBD0  38 03 00 84 */	addi r0, r3, 0x84
/* 80ACFBD4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80ACFBD8  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80ACFBDC  3C 80 80 AD */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80ACEE30@ha */
/* 80ACFBE0  38 84 EE 30 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80ACEE30@l */
/* 80ACFBE4  3C A0 80 AD */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80ACEDE8@ha */
/* 80ACFBE8  38 A5 ED E8 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80ACEDE8@l */
/* 80ACFBEC  38 C0 00 08 */	li r6, 8
/* 80ACFBF0  38 E0 00 03 */	li r7, 3
/* 80ACFBF4  4B 89 21 6D */	bl __construct_array
/* 80ACFBF8  7F E3 FB 78 */	mr r3, r31
/* 80ACFBFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACFC00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80ACFC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACFC08  7C 08 03 A6 */	mtlr r0
/* 80ACFC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACFC10  4E 80 00 20 */	blr 
