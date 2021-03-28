lbl_809955C8:
/* 809955C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809955CC  7C 08 02 A6 */	mflr r0
/* 809955D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809955D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809955D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809955DC  7C 7F 1B 78 */	mr r31, r3
/* 809955E0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809955E4  90 01 00 08 */	stw r0, 8(r1)
/* 809955E8  48 00 01 45 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 809955EC  3C 60 80 99 */	lis r3, __vt__14daNpc_clerkA_c@ha
/* 809955F0  38 03 5D 3C */	addi r0, r3, __vt__14daNpc_clerkA_c@l
/* 809955F4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809955F8  3B DF 0F 80 */	addi r30, r31, 0xf80
/* 809955FC  7F C3 F3 78 */	mr r3, r30
/* 80995600  4B 6E E4 28 */	b __ct__12dCcD_GObjInfFv
/* 80995604  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80995608  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8099560C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80995610  3C 60 80 99 */	lis r3, __vt__8cM3dGAab@ha
/* 80995614  38 03 5D 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80995618  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8099561C  3C 60 80 99 */	lis r3, __vt__8cM3dGCyl@ha
/* 80995620  38 03 5D 30 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80995624  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80995628  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8099562C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80995630  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80995634  38 03 00 58 */	addi r0, r3, 0x58
/* 80995638  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8099563C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80995640  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80995644  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80995648  38 03 00 2C */	addi r0, r3, 0x2c
/* 8099564C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80995650  38 03 00 84 */	addi r0, r3, 0x84
/* 80995654  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80995658  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 8099565C  3C 80 80 99 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 80995660  38 84 49 2C */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 80995664  3C A0 80 99 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80995668  38 A5 48 E4 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 8099566C  38 C0 00 08 */	li r6, 8
/* 80995670  38 E0 00 01 */	li r7, 1
/* 80995674  4B 9C C6 EC */	b __construct_array
/* 80995678  7F E3 FB 78 */	mr r3, r31
/* 8099567C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80995680  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80995684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80995688  7C 08 03 A6 */	mtlr r0
/* 8099568C  38 21 00 20 */	addi r1, r1, 0x20
/* 80995690  4E 80 00 20 */	blr 
