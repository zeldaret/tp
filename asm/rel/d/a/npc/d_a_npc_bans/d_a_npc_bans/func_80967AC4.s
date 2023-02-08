lbl_80967AC4:
/* 80967AC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80967AC8  7C 08 02 A6 */	mflr r0
/* 80967ACC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80967AD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80967AD4  4B 9F A7 01 */	bl _savegpr_27
/* 80967AD8  7C 7F 1B 78 */	mr r31, r3
/* 80967ADC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80967AE0  90 01 00 08 */	stw r0, 8(r1)
/* 80967AE4  48 00 01 99 */	bl __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80967AE8  3C 60 80 97 */	lis r3, __vt__12daNpc_Bans_c@ha /* 0x80968770@ha */
/* 80967AEC  38 03 87 70 */	addi r0, r3, __vt__12daNpc_Bans_c@l /* 0x80968770@l */
/* 80967AF0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80967AF4  3B 7F 0F 88 */	addi r27, r31, 0xf88
/* 80967AF8  7F 63 DB 78 */	mr r3, r27
/* 80967AFC  4B 71 BF 2D */	bl __ct__12dCcD_GObjInfFv
/* 80967B00  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80967B04  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80967B08  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80967B0C  3C 60 80 97 */	lis r3, __vt__8cM3dGAab@ha /* 0x80968758@ha */
/* 80967B10  38 03 87 58 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80968758@l */
/* 80967B14  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80967B18  3C 60 80 97 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80968764@ha */
/* 80967B1C  38 03 87 64 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80968764@l */
/* 80967B20  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80967B24  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80967B28  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80967B2C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80967B30  3B C3 00 58 */	addi r30, r3, 0x58
/* 80967B34  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80967B38  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80967B3C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80967B40  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80967B44  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80967B48  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80967B4C  3B 83 00 84 */	addi r28, r3, 0x84
/* 80967B50  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80967B54  3B 7F 10 C4 */	addi r27, r31, 0x10c4
/* 80967B58  7F 63 DB 78 */	mr r3, r27
/* 80967B5C  4B 71 BE CD */	bl __ct__12dCcD_GObjInfFv
/* 80967B60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80967B64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80967B68  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80967B6C  3C 60 80 97 */	lis r3, __vt__8cM3dGAab@ha /* 0x80968758@ha */
/* 80967B70  38 03 87 58 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80968758@l */
/* 80967B74  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80967B78  3C 60 80 97 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80968764@ha */
/* 80967B7C  38 03 87 64 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80968764@l */
/* 80967B80  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80967B84  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80967B88  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80967B8C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80967B90  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80967B94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80967B98  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80967B9C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80967BA0  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80967BA4  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80967BA8  38 7F 12 04 */	addi r3, r31, 0x1204
/* 80967BAC  3C 80 80 96 */	lis r4, __ct__18daNpcT_ActorMngr_cFv@ha /* 0x80966DD0@ha */
/* 80967BB0  38 84 6D D0 */	addi r4, r4, __ct__18daNpcT_ActorMngr_cFv@l /* 0x80966DD0@l */
/* 80967BB4  3C A0 80 96 */	lis r5, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80966D88@ha */
/* 80967BB8  38 A5 6D 88 */	addi r5, r5, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80966D88@l */
/* 80967BBC  38 C0 00 08 */	li r6, 8
/* 80967BC0  38 E0 00 08 */	li r7, 8
/* 80967BC4  4B 9F A1 9D */	bl __construct_array
/* 80967BC8  7F E3 FB 78 */	mr r3, r31
/* 80967BCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80967BD0  4B 9F A6 51 */	bl _restgpr_27
/* 80967BD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80967BD8  7C 08 03 A6 */	mtlr r0
/* 80967BDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80967BE0  4E 80 00 20 */	blr 
