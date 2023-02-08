lbl_809D5E20:
/* 809D5E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D5E24  7C 08 02 A6 */	mflr r0
/* 809D5E28  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D5E2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D5E30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809D5E34  7C 7F 1B 78 */	mr r31, r3
/* 809D5E38  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809D5E3C  90 01 00 08 */	stw r0, 8(r1)
/* 809D5E40  48 00 01 F1 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 809D5E44  3C 60 80 9D */	lis r3, __vt__11daNpc_grM_c@ha /* 0x809D7210@ha */
/* 809D5E48  38 03 72 10 */	addi r0, r3, __vt__11daNpc_grM_c@l /* 0x809D7210@l */
/* 809D5E4C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809D5E50  3B DF 0F 80 */	addi r30, r31, 0xf80
/* 809D5E54  7F C3 F3 78 */	mr r3, r30
/* 809D5E58  4B 6A DB D1 */	bl __ct__12dCcD_GObjInfFv
/* 809D5E5C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809D5E60  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809D5E64  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809D5E68  3C 60 80 9D */	lis r3, __vt__8cM3dGAab@ha /* 0x809D71F8@ha */
/* 809D5E6C  38 03 71 F8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809D71F8@l */
/* 809D5E70  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809D5E74  3C 60 80 9D */	lis r3, __vt__8cM3dGCyl@ha /* 0x809D7204@ha */
/* 809D5E78  38 03 72 04 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809D7204@l */
/* 809D5E7C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809D5E80  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809D5E84  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809D5E88  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809D5E8C  38 03 00 58 */	addi r0, r3, 0x58
/* 809D5E90  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809D5E94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809D5E98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809D5E9C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809D5EA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 809D5EA4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809D5EA8  38 03 00 84 */	addi r0, r3, 0x84
/* 809D5EAC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809D5EB0  7F E3 FB 78 */	mr r3, r31
/* 809D5EB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D5EB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809D5EBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D5EC0  7C 08 03 A6 */	mtlr r0
/* 809D5EC4  38 21 00 20 */	addi r1, r1, 0x20
/* 809D5EC8  4E 80 00 20 */	blr 
