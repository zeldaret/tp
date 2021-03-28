lbl_801B6A30:
/* 801B6A30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B6A34  7C 08 02 A6 */	mflr r0
/* 801B6A38  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B6A3C  39 61 00 30 */	addi r11, r1, 0x30
/* 801B6A40  48 1A B7 89 */	bl _savegpr_24
/* 801B6A44  7C 7E 1B 78 */	mr r30, r3
/* 801B6A48  7C 80 23 78 */	mr r0, r4
/* 801B6A4C  7C BC 2B 78 */	mr r28, r5
/* 801B6A50  7C DB 33 78 */	mr r27, r6
/* 801B6A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B6A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B6A5C  83 A3 5C B8 */	lwz r29, 0x5cb8(r3)
/* 801B6A60  7F A3 EB 78 */	mr r3, r29
/* 801B6A64  3C 80 42 4D */	lis r4, 0x424D /* 0x424D4420@ha */
/* 801B6A68  38 84 44 20 */	addi r4, r4, 0x4420 /* 0x424D4420@l */
/* 801B6A6C  7C 05 03 78 */	mr r5, r0
/* 801B6A70  81 9D 00 00 */	lwz r12, 0(r29)
/* 801B6A74  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B6A78  7D 89 03 A6 */	mtctr r12
/* 801B6A7C  4E 80 04 21 */	bctrl 
/* 801B6A80  3C 80 51 02 */	lis r4, 0x5102 /* 0x51020010@ha */
/* 801B6A84  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x51020010@l */
/* 801B6A88  48 17 DC 35 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 801B6A8C  7C 7F 1B 78 */	mr r31, r3
/* 801B6A90  3B 40 00 00 */	li r26, 0
/* 801B6A94  48 00 00 F4 */	b lbl_801B6B88
lbl_801B6A98:
/* 801B6A98  38 60 00 F4 */	li r3, 0xf4
/* 801B6A9C  48 11 81 B1 */	bl __nw__FUl
/* 801B6AA0  7C 79 1B 79 */	or. r25, r3, r3
/* 801B6AA4  41 82 00 B8 */	beq lbl_801B6B5C
/* 801B6AA8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 801B6AAC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 801B6AB0  90 19 00 00 */	stw r0, 0(r25)
/* 801B6AB4  38 79 00 04 */	addi r3, r25, 4
/* 801B6AB8  3C 80 80 04 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 801B6ABC  38 84 B2 F4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 801B6AC0  3C A0 80 04 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 801B6AC4  38 A5 B2 B8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 801B6AC8  38 C0 00 08 */	li r6, 8
/* 801B6ACC  38 E0 00 02 */	li r7, 2
/* 801B6AD0  48 1A B2 91 */	bl __construct_array
/* 801B6AD4  38 79 00 14 */	addi r3, r25, 0x14
/* 801B6AD8  3C 80 80 04 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 801B6ADC  38 84 B2 A0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 801B6AE0  3C A0 80 04 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 801B6AE4  38 A5 B2 64 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 801B6AE8  38 C0 00 08 */	li r6, 8
/* 801B6AEC  38 E0 00 08 */	li r7, 8
/* 801B6AF0  48 1A B2 71 */	bl __construct_array
/* 801B6AF4  38 79 00 54 */	addi r3, r25, 0x54
/* 801B6AF8  3C 80 80 04 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 801B6AFC  38 84 B2 40 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 801B6B00  3C A0 80 04 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 801B6B04  38 A5 B1 F8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 801B6B08  38 C0 00 0C */	li r6, 0xc
/* 801B6B0C  38 E0 00 08 */	li r7, 8
/* 801B6B10  48 1A B2 51 */	bl __construct_array
/* 801B6B14  38 79 00 B4 */	addi r3, r25, 0xb4
/* 801B6B18  3C 80 80 04 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 801B6B1C  38 84 B1 E0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 801B6B20  3C A0 80 04 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 801B6B24  38 A5 B1 A4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 801B6B28  38 C0 00 08 */	li r6, 8
/* 801B6B2C  38 E0 00 04 */	li r7, 4
/* 801B6B30  48 1A B2 31 */	bl __construct_array
/* 801B6B34  38 79 00 D4 */	addi r3, r25, 0xd4
/* 801B6B38  3C 80 80 04 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 801B6B3C  38 84 B1 8C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 801B6B40  3C A0 80 04 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 801B6B44  38 A5 B1 50 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 801B6B48  38 C0 00 08 */	li r6, 8
/* 801B6B4C  38 E0 00 04 */	li r7, 4
/* 801B6B50  48 1A B2 11 */	bl __construct_array
/* 801B6B54  7F 23 CB 78 */	mr r3, r25
/* 801B6B58  48 17 57 C9 */	bl initialize__14J3DMaterialAnmFv
lbl_801B6B5C:
/* 801B6B5C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801B6B60  57 58 13 BA */	rlwinm r24, r26, 2, 0xe, 0x1d
/* 801B6B64  7C 63 C0 2E */	lwzx r3, r3, r24
/* 801B6B68  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6B6C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B6B70  7D 89 03 A6 */	mtctr r12
/* 801B6B74  4E 80 04 21 */	bctrl 
/* 801B6B78  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801B6B7C  7C 63 C0 2E */	lwzx r3, r3, r24
/* 801B6B80  93 23 00 3C */	stw r25, 0x3c(r3)
/* 801B6B84  3B 5A 00 01 */	addi r26, r26, 1
lbl_801B6B88:
/* 801B6B88  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 801B6B8C  A0 1F 00 5C */	lhz r0, 0x5c(r31)
/* 801B6B90  7C 03 00 40 */	cmplw r3, r0
/* 801B6B94  41 80 FF 04 */	blt lbl_801B6A98
/* 801B6B98  38 60 00 DC */	li r3, 0xdc
/* 801B6B9C  48 11 80 B1 */	bl __nw__FUl
/* 801B6BA0  7C 79 1B 79 */	or. r25, r3, r3
/* 801B6BA4  41 82 00 38 */	beq lbl_801B6BDC
/* 801B6BA8  7F 38 CB 78 */	mr r24, r25
/* 801B6BAC  3C 60 80 3D */	lis r3, __vt__8J3DModel@ha
/* 801B6BB0  38 03 ED 20 */	addi r0, r3, __vt__8J3DModel@l
/* 801B6BB4  90 19 00 00 */	stw r0, 0(r25)
/* 801B6BB8  38 78 00 88 */	addi r3, r24, 0x88
/* 801B6BBC  48 15 A4 1D */	bl init__15J3DVertexBufferFv
/* 801B6BC0  7F 03 C3 78 */	mr r3, r24
/* 801B6BC4  48 17 05 3D */	bl initialize__8J3DModelFv
/* 801B6BC8  7F 03 C3 78 */	mr r3, r24
/* 801B6BCC  7F E4 FB 78 */	mr r4, r31
/* 801B6BD0  38 A0 00 00 */	li r5, 0
/* 801B6BD4  38 C0 00 01 */	li r6, 1
/* 801B6BD8  48 17 05 AD */	bl entryModelData__8J3DModelFP12J3DModelDataUlUl
lbl_801B6BDC:
/* 801B6BDC  93 3E 00 18 */	stw r25, 0x18(r30)
/* 801B6BE0  28 1C 00 00 */	cmplwi r28, 0
/* 801B6BE4  41 82 00 98 */	beq lbl_801B6C7C
/* 801B6BE8  7F A3 EB 78 */	mr r3, r29
/* 801B6BEC  3C 80 42 43 */	lis r4, 0x4243 /* 0x42434B20@ha */
/* 801B6BF0  38 84 4B 20 */	addi r4, r4, 0x4B20 /* 0x42434B20@l */
/* 801B6BF4  7F 85 E3 78 */	mr r5, r28
/* 801B6BF8  81 9D 00 00 */	lwz r12, 0(r29)
/* 801B6BFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B6C00  7D 89 03 A6 */	mtctr r12
/* 801B6C04  4E 80 04 21 */	bctrl 
/* 801B6C08  38 80 00 00 */	li r4, 0
/* 801B6C0C  48 18 0F 35 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 801B6C10  7C 78 1B 78 */	mr r24, r3
/* 801B6C14  38 60 00 1C */	li r3, 0x1c
/* 801B6C18  48 11 80 35 */	bl __nw__FUl
/* 801B6C1C  7C 79 1B 79 */	or. r25, r3, r3
/* 801B6C20  41 82 00 20 */	beq lbl_801B6C40
/* 801B6C24  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 801B6C28  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 801B6C2C  90 19 00 00 */	stw r0, 0(r25)
/* 801B6C30  38 80 00 00 */	li r4, 0
/* 801B6C34  48 17 17 C9 */	bl init__12J3DFrameCtrlFs
/* 801B6C38  38 00 00 00 */	li r0, 0
/* 801B6C3C  90 19 00 18 */	stw r0, 0x18(r25)
lbl_801B6C40:
/* 801B6C40  93 3E 00 1C */	stw r25, 0x1c(r30)
/* 801B6C44  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801B6C48  28 03 00 00 */	cmplwi r3, 0
/* 801B6C4C  41 82 00 CC */	beq lbl_801B6D18
/* 801B6C50  7F 04 C3 78 */	mr r4, r24
/* 801B6C54  38 A0 00 01 */	li r5, 1
/* 801B6C58  38 C0 00 02 */	li r6, 2
/* 801B6C5C  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B6C60  38 E0 00 00 */	li r7, 0
/* 801B6C64  39 00 FF FF */	li r8, -1
/* 801B6C68  39 20 00 00 */	li r9, 0
/* 801B6C6C  4B E5 6B 71 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 801B6C70  2C 03 00 00 */	cmpwi r3, 0
/* 801B6C74  40 82 00 08 */	bne lbl_801B6C7C
/* 801B6C78  48 00 00 A0 */	b lbl_801B6D18
lbl_801B6C7C:
/* 801B6C7C  28 1B 00 00 */	cmplwi r27, 0
/* 801B6C80  41 82 00 98 */	beq lbl_801B6D18
/* 801B6C84  7F A3 EB 78 */	mr r3, r29
/* 801B6C88  3C 80 42 52 */	lis r4, 0x4252 /* 0x42524B20@ha */
/* 801B6C8C  38 84 4B 20 */	addi r4, r4, 0x4B20 /* 0x42524B20@l */
/* 801B6C90  7F 65 DB 78 */	mr r5, r27
/* 801B6C94  81 9D 00 00 */	lwz r12, 0(r29)
/* 801B6C98  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B6C9C  7D 89 03 A6 */	mtctr r12
/* 801B6CA0  4E 80 04 21 */	bctrl 
/* 801B6CA4  38 80 00 00 */	li r4, 0
/* 801B6CA8  48 18 0E 99 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 801B6CAC  7C 78 1B 78 */	mr r24, r3
/* 801B6CB0  7F E4 FB 78 */	mr r4, r31
/* 801B6CB4  48 17 4B C9 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 801B6CB8  38 60 00 18 */	li r3, 0x18
/* 801B6CBC  48 11 7F 91 */	bl __nw__FUl
/* 801B6CC0  7C 79 1B 79 */	or. r25, r3, r3
/* 801B6CC4  41 82 00 20 */	beq lbl_801B6CE4
/* 801B6CC8  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 801B6CCC  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 801B6CD0  90 19 00 00 */	stw r0, 0(r25)
/* 801B6CD4  38 80 00 00 */	li r4, 0
/* 801B6CD8  48 17 17 25 */	bl init__12J3DFrameCtrlFs
/* 801B6CDC  38 00 00 00 */	li r0, 0
/* 801B6CE0  90 19 00 14 */	stw r0, 0x14(r25)
lbl_801B6CE4:
/* 801B6CE4  93 3E 00 20 */	stw r25, 0x20(r30)
/* 801B6CE8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B6CEC  28 03 00 00 */	cmplwi r3, 0
/* 801B6CF0  41 82 00 28 */	beq lbl_801B6D18
/* 801B6CF4  38 9F 00 58 */	addi r4, r31, 0x58
/* 801B6CF8  7F 05 C3 78 */	mr r5, r24
/* 801B6CFC  38 C0 FF FF */	li r6, -1
/* 801B6D00  38 E0 00 02 */	li r7, 2
/* 801B6D04  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B6D08  39 00 00 00 */	li r8, 0
/* 801B6D0C  39 20 FF FF */	li r9, -1
/* 801B6D10  4B E5 69 FD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 801B6D14  2C 03 00 00 */	cmpwi r3, 0
lbl_801B6D18:
/* 801B6D18  39 61 00 30 */	addi r11, r1, 0x30
/* 801B6D1C  48 1A B4 F9 */	bl _restgpr_24
/* 801B6D20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B6D24  7C 08 03 A6 */	mtlr r0
/* 801B6D28  38 21 00 30 */	addi r1, r1, 0x30
/* 801B6D2C  4E 80 00 20 */	blr 
