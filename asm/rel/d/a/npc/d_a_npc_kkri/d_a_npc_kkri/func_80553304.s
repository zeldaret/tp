lbl_80553304:
/* 80553304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80553308  7C 08 02 A6 */	mflr r0
/* 8055330C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80553310  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80553314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80553318  7C 7F 1B 78 */	mr r31, r3
/* 8055331C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80553320  90 01 00 08 */	stw r0, 8(r1)
/* 80553324  4B FF F3 D9 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80553328  3C 60 80 55 */	lis r3, __vt__12daNpc_Kkri_c@ha
/* 8055332C  38 03 3E 08 */	addi r0, r3, __vt__12daNpc_Kkri_c@l
/* 80553330  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80553334  3B DF 0E 44 */	addi r30, r31, 0xe44
/* 80553338  7F C3 F3 78 */	mr r3, r30
/* 8055333C  4B B3 06 EC */	b __ct__12dCcD_GObjInfFv
/* 80553340  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80553344  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80553348  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8055334C  3C 60 80 55 */	lis r3, __vt__8cM3dGAab@ha
/* 80553350  38 03 3D E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80553354  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80553358  3C 60 80 55 */	lis r3, __vt__8cM3dGCyl@ha
/* 8055335C  38 03 3D F0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80553360  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80553364  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80553368  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8055336C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80553370  38 03 00 58 */	addi r0, r3, 0x58
/* 80553374  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80553378  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8055337C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80553380  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80553384  38 03 00 2C */	addi r0, r3, 0x2c
/* 80553388  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8055338C  38 03 00 84 */	addi r0, r3, 0x84
/* 80553390  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80553394  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80553398  3C 80 80 55 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 8055339C  38 84 26 30 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 805533A0  3C A0 80 55 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 805533A4  38 A5 25 A0 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 805533A8  38 C0 00 08 */	li r6, 8
/* 805533AC  38 E0 00 01 */	li r7, 1
/* 805533B0  4B E0 E9 B0 */	b __construct_array
/* 805533B4  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 805533B8  3C 80 80 55 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 805533BC  38 04 3D FC */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 805533C0  90 1F 0F C8 */	stw r0, 0xfc8(r31)
/* 805533C4  4B BF 28 7C */	b initialize__13daNpcT_Path_cFv
/* 805533C8  7F E3 FB 78 */	mr r3, r31
/* 805533CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805533D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805533D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805533D8  7C 08 03 A6 */	mtlr r0
/* 805533DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805533E0  4E 80 00 20 */	blr 
