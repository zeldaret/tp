lbl_80A63720:
/* 80A63720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A63724  7C 08 02 A6 */	mflr r0
/* 80A63728  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6372C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A63730  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A63734  7C 7F 1B 78 */	mr r31, r3
/* 80A63738  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A6373C  90 01 00 08 */	stw r0, 8(r1)
/* 80A63740  4B FF F4 8D */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A63744  3C 60 80 A6 */	lis r3, __vt__13daNpc_Kyury_c@ha
/* 80A63748  38 03 41 48 */	addi r0, r3, __vt__13daNpc_Kyury_c@l
/* 80A6374C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A63750  3B DF 0E 4C */	addi r30, r31, 0xe4c
/* 80A63754  7F C3 F3 78 */	mr r3, r30
/* 80A63758  4B 62 02 D0 */	b __ct__12dCcD_GObjInfFv
/* 80A6375C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A63760  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A63764  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A63768  3C 60 80 A6 */	lis r3, __vt__8cM3dGAab@ha
/* 80A6376C  38 03 41 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A63770  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A63774  3C 60 80 A6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A63778  38 03 41 30 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A6377C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A63780  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A63784  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A63788  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A6378C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A63790  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A63794  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A63798  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A6379C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A637A0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A637A4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A637A8  38 03 00 84 */	addi r0, r3, 0x84
/* 80A637AC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A637B0  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A637B4  3C 80 80 A6 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 80A637B8  38 84 2B 00 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 80A637BC  3C A0 80 A6 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80A637C0  38 A5 2A 70 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 80A637C4  38 C0 00 08 */	li r6, 8
/* 80A637C8  38 E0 00 01 */	li r7, 1
/* 80A637CC  4B 8F E5 94 */	b __construct_array
/* 80A637D0  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A637D4  3C 80 80 A6 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 80A637D8  38 04 41 3C */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 80A637DC  90 1F 0F B8 */	stw r0, 0xfb8(r31)
/* 80A637E0  4B 6E 24 60 */	b initialize__13daNpcT_Path_cFv
/* 80A637E4  7F E3 FB 78 */	mr r3, r31
/* 80A637E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A637EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A637F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A637F4  7C 08 03 A6 */	mtlr r0
/* 80A637F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A637FC  4E 80 00 20 */	blr 
