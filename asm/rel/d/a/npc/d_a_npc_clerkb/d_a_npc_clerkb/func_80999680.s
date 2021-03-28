lbl_80999680:
/* 80999680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80999684  7C 08 02 A6 */	mflr r0
/* 80999688  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099968C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80999690  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80999694  7C 7F 1B 78 */	mr r31, r3
/* 80999698  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8099969C  90 01 00 08 */	stw r0, 8(r1)
/* 809996A0  48 00 01 A5 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 809996A4  3C 60 80 9A */	lis r3, __vt__14daNpc_clerkB_c@ha
/* 809996A8  38 03 9F 60 */	addi r0, r3, __vt__14daNpc_clerkB_c@l
/* 809996AC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809996B0  3B DF 0F 7C */	addi r30, r31, 0xf7c
/* 809996B4  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809996B8  38 03 9F 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809996BC  90 1F 0F 7C */	stw r0, 0xf7c(r31)
/* 809996C0  7F C3 F3 78 */	mr r3, r30
/* 809996C4  38 80 00 00 */	li r4, 0
/* 809996C8  4B 98 ED 34 */	b init__12J3DFrameCtrlFs
/* 809996CC  38 00 00 00 */	li r0, 0
/* 809996D0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809996D4  3B DF 0F 98 */	addi r30, r31, 0xf98
/* 809996D8  7F C3 F3 78 */	mr r3, r30
/* 809996DC  4B 6E A3 4C */	b __ct__12dCcD_GObjInfFv
/* 809996E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809996E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809996E8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809996EC  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha
/* 809996F0  38 03 9F 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809996F4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809996F8  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha
/* 809996FC  38 03 9F 54 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80999700  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80999704  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80999708  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8099970C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80999710  38 03 00 58 */	addi r0, r3, 0x58
/* 80999714  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80999718  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8099971C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80999720  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80999724  38 03 00 2C */	addi r0, r3, 0x2c
/* 80999728  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8099972C  38 03 00 84 */	addi r0, r3, 0x84
/* 80999730  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80999734  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 80999738  3C 80 80 9A */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 8099973C  38 84 8A 24 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 80999740  3C A0 80 9A */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80999744  38 A5 89 DC */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 80999748  38 C0 00 08 */	li r6, 8
/* 8099974C  38 E0 00 01 */	li r7, 1
/* 80999750  4B 9C 86 10 */	b __construct_array
/* 80999754  7F E3 FB 78 */	mr r3, r31
/* 80999758  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099975C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80999760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80999764  7C 08 03 A6 */	mtlr r0
/* 80999768  38 21 00 20 */	addi r1, r1, 0x20
/* 8099976C  4E 80 00 20 */	blr 
