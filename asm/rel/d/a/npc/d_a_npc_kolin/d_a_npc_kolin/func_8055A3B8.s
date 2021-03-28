lbl_8055A3B8:
/* 8055A3B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055A3BC  7C 08 02 A6 */	mflr r0
/* 8055A3C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055A3C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055A3C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8055A3CC  7C 7F 1B 78 */	mr r31, r3
/* 8055A3D0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8055A3D4  90 01 00 08 */	stw r0, 8(r1)
/* 8055A3D8  4B FF F3 39 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 8055A3DC  3C 60 80 56 */	lis r3, __vt__13daNpc_Kolin_c@ha
/* 8055A3E0  38 03 B2 F4 */	addi r0, r3, __vt__13daNpc_Kolin_c@l
/* 8055A3E4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 8055A3E8  3B DF 0E 48 */	addi r30, r31, 0xe48
/* 8055A3EC  7F C3 F3 78 */	mr r3, r30
/* 8055A3F0  4B B2 96 38 */	b __ct__12dCcD_GObjInfFv
/* 8055A3F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8055A3F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8055A3FC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8055A400  3C 60 80 56 */	lis r3, __vt__8cM3dGAab@ha
/* 8055A404  38 03 B2 D0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8055A408  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8055A40C  3C 60 80 56 */	lis r3, __vt__8cM3dGCyl@ha
/* 8055A410  38 03 B2 DC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8055A414  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8055A418  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8055A41C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8055A420  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8055A424  38 03 00 58 */	addi r0, r3, 0x58
/* 8055A428  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8055A42C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8055A430  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8055A434  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8055A438  38 03 00 2C */	addi r0, r3, 0x2c
/* 8055A43C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8055A440  38 03 00 84 */	addi r0, r3, 0x84
/* 8055A444  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8055A448  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 8055A44C  3C 80 80 56 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 8055A450  38 84 96 44 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 8055A454  3C A0 80 56 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 8055A458  38 A5 95 B4 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 8055A45C  38 C0 00 08 */	li r6, 8
/* 8055A460  38 E0 00 05 */	li r7, 5
/* 8055A464  4B E0 78 FC */	b __construct_array
/* 8055A468  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 8055A46C  3C 80 80 56 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 8055A470  38 04 B2 E8 */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 8055A474  90 1F 0F D4 */	stw r0, 0xfd4(r31)
/* 8055A478  4B BE B7 C8 */	b initialize__13daNpcT_Path_cFv
/* 8055A47C  7F E3 FB 78 */	mr r3, r31
/* 8055A480  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055A484  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8055A488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055A48C  7C 08 03 A6 */	mtlr r0
/* 8055A490  38 21 00 20 */	addi r1, r1, 0x20
/* 8055A494  4E 80 00 20 */	blr 
