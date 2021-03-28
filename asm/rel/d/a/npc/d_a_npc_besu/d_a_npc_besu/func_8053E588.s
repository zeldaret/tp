lbl_8053E588:
/* 8053E588  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053E58C  7C 08 02 A6 */	mflr r0
/* 8053E590  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053E594  39 61 00 30 */	addi r11, r1, 0x30
/* 8053E598  4B E2 3C 3C */	b _savegpr_27
/* 8053E59C  7C 7F 1B 78 */	mr r31, r3
/* 8053E5A0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8053E5A4  90 01 00 08 */	stw r0, 8(r1)
/* 8053E5A8  4B FF F3 09 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 8053E5AC  3C 60 80 54 */	lis r3, __vt__12daNpc_Besu_c@ha
/* 8053E5B0  38 03 FD 98 */	addi r0, r3, __vt__12daNpc_Besu_c@l
/* 8053E5B4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 8053E5B8  3B 7F 0E 4C */	addi r27, r31, 0xe4c
/* 8053E5BC  7F 63 DB 78 */	mr r3, r27
/* 8053E5C0  4B B4 54 68 */	b __ct__12dCcD_GObjInfFv
/* 8053E5C4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8053E5C8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8053E5CC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8053E5D0  3C 60 80 54 */	lis r3, __vt__8cM3dGAab@ha
/* 8053E5D4  38 03 FD 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8053E5D8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8053E5DC  3C 60 80 54 */	lis r3, __vt__8cM3dGCyl@ha
/* 8053E5E0  38 03 FD 8C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8053E5E4  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8053E5E8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8053E5EC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8053E5F0  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8053E5F4  3B C3 00 58 */	addi r30, r3, 0x58
/* 8053E5F8  93 DB 01 38 */	stw r30, 0x138(r27)
/* 8053E5FC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8053E600  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8053E604  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8053E608  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8053E60C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8053E610  3B 83 00 84 */	addi r28, r3, 0x84
/* 8053E614  93 9B 01 38 */	stw r28, 0x138(r27)
/* 8053E618  3B 7F 0F 88 */	addi r27, r31, 0xf88
/* 8053E61C  7F 63 DB 78 */	mr r3, r27
/* 8053E620  4B B4 54 08 */	b __ct__12dCcD_GObjInfFv
/* 8053E624  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8053E628  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8053E62C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8053E630  3C 60 80 54 */	lis r3, __vt__8cM3dGAab@ha
/* 8053E634  38 03 FD 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8053E638  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8053E63C  3C 60 80 54 */	lis r3, __vt__8cM3dGCyl@ha
/* 8053E640  38 03 FD 8C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8053E644  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8053E648  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8053E64C  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 8053E650  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8053E654  93 DB 01 38 */	stw r30, 0x138(r27)
/* 8053E658  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8053E65C  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 8053E660  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8053E664  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8053E668  93 9B 01 38 */	stw r28, 0x138(r27)
/* 8053E66C  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8053E670  3C 80 80 54 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 8053E674  38 84 D7 E4 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 8053E678  3C A0 80 54 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 8053E67C  38 A5 D7 9C */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 8053E680  38 C0 00 08 */	li r6, 8
/* 8053E684  38 E0 00 07 */	li r7, 7
/* 8053E688  4B E2 36 D8 */	b __construct_array
/* 8053E68C  7F E3 FB 78 */	mr r3, r31
/* 8053E690  39 61 00 30 */	addi r11, r1, 0x30
/* 8053E694  4B E2 3B 8C */	b _restgpr_27
/* 8053E698  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053E69C  7C 08 03 A6 */	mtlr r0
/* 8053E6A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8053E6A4  4E 80 00 20 */	blr 
