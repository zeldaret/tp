lbl_80A1A194:
/* 80A1A194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1A198  7C 08 02 A6 */	mflr r0
/* 80A1A19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1A1A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1A1A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A1A1A8  7C 7F 1B 78 */	mr r31, r3
/* 80A1A1AC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A1A1B0  90 01 00 08 */	stw r0, 8(r1)
/* 80A1A1B4  4B FF F3 D1 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A1A1B8  3C 60 80 A2 */	lis r3, __vt__13daNpc_Jagar_c@ha /* 0x80A1AD08@ha */
/* 80A1A1BC  38 03 AD 08 */	addi r0, r3, __vt__13daNpc_Jagar_c@l /* 0x80A1AD08@l */
/* 80A1A1C0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A1A1C4  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80A1A1C8  7F C3 F3 78 */	mr r3, r30
/* 80A1A1CC  4B 66 98 5D */	bl __ct__12dCcD_GObjInfFv
/* 80A1A1D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A1A1D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A1A1D8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A1A1DC  3C 60 80 A2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A1ACE4@ha */
/* 80A1A1E0  38 03 AC E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A1ACE4@l */
/* 80A1A1E4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A1A1E8  3C 60 80 A2 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A1ACF0@ha */
/* 80A1A1EC  38 03 AC F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A1ACF0@l */
/* 80A1A1F0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A1A1F4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A1A1F8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A1A1FC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A1A200  38 03 00 58 */	addi r0, r3, 0x58
/* 80A1A204  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A1A208  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A1A20C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A1A210  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A1A214  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A1A218  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A1A21C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A1A220  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A1A224  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A1A228  3C 80 80 A2 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80A194B8@ha */
/* 80A1A22C  38 84 94 B8 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80A194B8@l */
/* 80A1A230  3C A0 80 A2 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A19428@ha */
/* 80A1A234  38 A5 94 28 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A19428@l */
/* 80A1A238  38 C0 00 08 */	li r6, 8
/* 80A1A23C  38 E0 00 05 */	li r7, 5
/* 80A1A240  4B 94 7B 21 */	bl __construct_array
/* 80A1A244  38 7F 0F AC */	addi r3, r31, 0xfac
/* 80A1A248  3C 80 80 A2 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80A1ACFC@ha */
/* 80A1A24C  38 04 AC FC */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80A1ACFC@l */
/* 80A1A250  90 1F 0F D0 */	stw r0, 0xfd0(r31)
/* 80A1A254  4B 72 B9 ED */	bl initialize__13daNpcT_Path_cFv
/* 80A1A258  7F E3 FB 78 */	mr r3, r31
/* 80A1A25C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1A260  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A1A264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1A268  7C 08 03 A6 */	mtlr r0
/* 80A1A26C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1A270  4E 80 00 20 */	blr 
