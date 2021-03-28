lbl_80A000A8:
/* 80A000A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A000AC  7C 08 02 A6 */	mflr r0
/* 80A000B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A000B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A000B8  4B 96 21 1C */	b _savegpr_27
/* 80A000BC  7C 7F 1B 78 */	mr r31, r3
/* 80A000C0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80A000C4  90 01 00 08 */	stw r0, 8(r1)
/* 80A000C8  4B FF F2 ED */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80A000CC  3C 60 80 A0 */	lis r3, __vt__13daNpc_Hanjo_c@ha
/* 80A000D0  38 03 11 AC */	addi r0, r3, __vt__13daNpc_Hanjo_c@l
/* 80A000D4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A000D8  3B 7F 0E 4C */	addi r27, r31, 0xe4c
/* 80A000DC  7F 63 DB 78 */	mr r3, r27
/* 80A000E0  4B 68 39 48 */	b __ct__12dCcD_GObjInfFv
/* 80A000E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A000E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A000EC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A000F0  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha
/* 80A000F4  38 03 11 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A000F8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80A000FC  3C 60 80 A0 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A00100  38 03 11 94 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A00104  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80A00108  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A0010C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A00110  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80A00114  3B C3 00 58 */	addi r30, r3, 0x58
/* 80A00118  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80A0011C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A00120  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A00124  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80A00128  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80A0012C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80A00130  3B 83 00 84 */	addi r28, r3, 0x84
/* 80A00134  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80A00138  3B 7F 0F 88 */	addi r27, r31, 0xf88
/* 80A0013C  7F 63 DB 78 */	mr r3, r27
/* 80A00140  4B 68 38 E8 */	b __ct__12dCcD_GObjInfFv
/* 80A00144  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A00148  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A0014C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A00150  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha
/* 80A00154  38 03 11 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A00158  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80A0015C  3C 60 80 A0 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A00160  38 03 11 94 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A00164  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80A00168  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A0016C  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80A00170  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A00174  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80A00178  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A0017C  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80A00180  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80A00184  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80A00188  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80A0018C  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80A00190  3C 80 80 A0 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha
/* 80A00194  38 84 F2 E8 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l
/* 80A00198  3C A0 80 A0 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80A0019C  38 A5 F2 58 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l
/* 80A001A0  38 C0 00 08 */	li r6, 8
/* 80A001A4  38 E0 00 04 */	li r7, 4
/* 80A001A8  4B 96 1B B8 */	b __construct_array
/* 80A001AC  38 7F 10 E8 */	addi r3, r31, 0x10e8
/* 80A001B0  3C 80 80 A0 */	lis r4, __vt__13daNpcT_Path_c@ha
/* 80A001B4  38 04 11 A0 */	addi r0, r4, __vt__13daNpcT_Path_c@l
/* 80A001B8  90 1F 11 0C */	stw r0, 0x110c(r31)
/* 80A001BC  4B 74 5A 84 */	b initialize__13daNpcT_Path_cFv
/* 80A001C0  38 7F 11 10 */	addi r3, r31, 0x1110
/* 80A001C4  3C 80 80 A0 */	lis r4, __ct__18daNpc_HanjoStone_cFv@ha
/* 80A001C8  38 84 01 FC */	addi r4, r4, __ct__18daNpc_HanjoStone_cFv@l
/* 80A001CC  3C A0 80 A0 */	lis r5, __dt__18daNpc_HanjoStone_cFv@ha
/* 80A001D0  38 A5 FF D4 */	addi r5, r5, __dt__18daNpc_HanjoStone_cFv@l
/* 80A001D4  38 C0 01 74 */	li r6, 0x174
/* 80A001D8  38 E0 00 04 */	li r7, 4
/* 80A001DC  4B 96 1B 84 */	b __construct_array
/* 80A001E0  7F E3 FB 78 */	mr r3, r31
/* 80A001E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A001E8  4B 96 20 38 */	b _restgpr_27
/* 80A001EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A001F0  7C 08 03 A6 */	mtlr r0
/* 80A001F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A001F8  4E 80 00 20 */	blr 
