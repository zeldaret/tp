lbl_805648A4:
/* 805648A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805648A8  7C 08 02 A6 */	mflr r0
/* 805648AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805648B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805648B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805648B8  7C 7F 1B 78 */	mr r31, r3
/* 805648BC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 805648C0  90 01 00 08 */	stw r0, 8(r1)
/* 805648C4  48 00 01 45 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 805648C8  3C 60 80 56 */	lis r3, __vt__12daNpc_Maro_c@ha
/* 805648CC  38 03 5C A4 */	addi r0, r3, __vt__12daNpc_Maro_c@l
/* 805648D0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 805648D4  3B DF 0F 80 */	addi r30, r31, 0xf80
/* 805648D8  7F C3 F3 78 */	mr r3, r30
/* 805648DC  4B B1 F1 4C */	b __ct__12dCcD_GObjInfFv
/* 805648E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805648E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805648E8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805648EC  3C 60 80 56 */	lis r3, __vt__8cM3dGAab@ha
/* 805648F0  38 03 5C 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 805648F4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 805648F8  3C 60 80 56 */	lis r3, __vt__8cM3dGCyl@ha
/* 805648FC  38 03 5C 98 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80564900  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80564904  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80564908  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8056490C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80564910  38 03 00 58 */	addi r0, r3, 0x58
/* 80564914  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80564918  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8056491C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80564920  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80564924  38 03 00 2C */	addi r0, r3, 0x2c
/* 80564928  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8056492C  38 03 00 84 */	addi r0, r3, 0x84
/* 80564930  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80564934  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80564938  3C 80 80 56 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 8056493C  38 84 38 C8 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 80564940  3C A0 80 56 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80564944  38 A5 38 80 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 80564948  38 C0 00 08 */	li r6, 8
/* 8056494C  38 E0 00 09 */	li r7, 9
/* 80564950  4B DF D4 10 */	b __construct_array
/* 80564954  7F E3 FB 78 */	mr r3, r31
/* 80564958  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056495C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80564960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80564964  7C 08 03 A6 */	mtlr r0
/* 80564968  38 21 00 20 */	addi r1, r1, 0x20
/* 8056496C  4E 80 00 20 */	blr 
