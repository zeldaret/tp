lbl_80AACFF0:
/* 80AACFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AACFF4  7C 08 02 A6 */	mflr r0
/* 80AACFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AACFFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AAD000  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AAD004  7C 7F 1B 78 */	mr r31, r3
/* 80AAD008  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AAD00C  90 01 00 08 */	stw r0, 8(r1)
/* 80AAD010  4B FF F4 51 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AAD014  3C 60 80 AB */	lis r3, __vt__12daNpc_Post_c@ha /* 0x80AADB14@ha */
/* 80AAD018  38 03 DB 14 */	addi r0, r3, __vt__12daNpc_Post_c@l /* 0x80AADB14@l */
/* 80AAD01C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AAD020  3B DF 0E 50 */	addi r30, r31, 0xe50
/* 80AAD024  7F C3 F3 78 */	mr r3, r30
/* 80AAD028  4B 5D 6A 01 */	bl __ct__12dCcD_GObjInfFv
/* 80AAD02C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AAD030  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AAD034  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AAD038  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha /* 0x80AADAF0@ha */
/* 80AAD03C  38 03 DA F0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AADAF0@l */
/* 80AAD040  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AAD044  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AADAFC@ha */
/* 80AAD048  38 03 DA FC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AADAFC@l */
/* 80AAD04C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AAD050  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AAD054  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AAD058  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AAD05C  38 03 00 58 */	addi r0, r3, 0x58
/* 80AAD060  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AAD064  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AAD068  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AAD06C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AAD070  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AAD074  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AAD078  38 03 00 84 */	addi r0, r3, 0x84
/* 80AAD07C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AAD080  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80AAD084  3C 80 80 AB */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80AAC394@ha */
/* 80AAD088  38 84 C3 94 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80AAC394@l */
/* 80AAD08C  3C A0 80 AB */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80AAC304@ha */
/* 80AAD090  38 A5 C3 04 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80AAC304@l */
/* 80AAD094  38 C0 00 08 */	li r6, 8
/* 80AAD098  38 E0 00 04 */	li r7, 4
/* 80AAD09C  4B 8B 4C C5 */	bl __construct_array
/* 80AAD0A0  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80AAD0A4  3C 80 80 AB */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80AADB08@ha */
/* 80AAD0A8  38 04 DB 08 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80AADB08@l */
/* 80AAD0AC  90 1F 0F D4 */	stw r0, 0xfd4(r31)
/* 80AAD0B0  4B 69 8B 91 */	bl initialize__13daNpcT_Path_cFv
/* 80AAD0B4  7F E3 FB 78 */	mr r3, r31
/* 80AAD0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAD0BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AAD0C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAD0C4  7C 08 03 A6 */	mtlr r0
/* 80AAD0C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAD0CC  4E 80 00 20 */	blr 
