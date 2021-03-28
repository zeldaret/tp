lbl_80B24840:
/* 80B24840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B24844  7C 08 02 A6 */	mflr r0
/* 80B24848  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B2484C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B24850  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B24854  7C 7F 1B 78 */	mr r31, r3
/* 80B24858  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B2485C  90 01 00 08 */	stw r0, 8(r1)
/* 80B24860  4B FF F4 25 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80B24864  3C 60 80 B2 */	lis r3, __vt__12daNpc_Toby_c@ha
/* 80B24868  38 03 57 68 */	addi r0, r3, __vt__12daNpc_Toby_c@l
/* 80B2486C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B24870  3B DF 0E 48 */	addi r30, r31, 0xe48
/* 80B24874  7F C3 F3 78 */	mr r3, r30
/* 80B24878  4B 55 F1 B0 */	b __ct__12dCcD_GObjInfFv
/* 80B2487C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B24880  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B24884  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B24888  3C 60 80 B2 */	lis r3, __vt__8cM3dGAab@ha
/* 80B2488C  38 03 57 44 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B24890  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80B24894  3C 60 80 B2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B24898  38 03 57 50 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B2489C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B248A0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B248A4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B248A8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80B248AC  38 03 00 58 */	addi r0, r3, 0x58
/* 80B248B0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B248B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B248B8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B248BC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80B248C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B248C4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80B248C8  38 03 00 84 */	addi r0, r3, 0x84
/* 80B248CC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80B248D0  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B248D4  3C 80 80 B2 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 80B248D8  38 84 3B B8 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 80B248DC  3C A0 80 B2 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80B248E0  38 A5 3B 28 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 80B248E4  38 C0 00 08 */	li r6, 8
/* 80B248E8  38 E0 00 04 */	li r7, 4
/* 80B248EC  4B 83 D4 74 */	b __construct_array
/* 80B248F0  38 7F 0F C0 */	addi r3, r31, 0xfc0
/* 80B248F4  3C 80 80 B2 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 80B248F8  38 04 57 5C */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 80B248FC  90 1F 0F E4 */	stw r0, 0xfe4(r31)
/* 80B24900  4B 62 13 40 */	b initialize__13daNpcT_Path_cFv
/* 80B24904  7F E3 FB 78 */	mr r3, r31
/* 80B24908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B2490C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B24910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B24914  7C 08 03 A6 */	mtlr r0
/* 80B24918  38 21 00 20 */	addi r1, r1, 0x20
/* 80B2491C  4E 80 00 20 */	blr 
