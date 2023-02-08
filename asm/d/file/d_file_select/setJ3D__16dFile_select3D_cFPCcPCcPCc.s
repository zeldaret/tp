lbl_8019065C:
/* 8019065C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80190660  7C 08 02 A6 */	mflr r0
/* 80190664  90 01 00 34 */	stw r0, 0x34(r1)
/* 80190668  39 61 00 30 */	addi r11, r1, 0x30
/* 8019066C  48 1D 1B 5D */	bl _savegpr_24
/* 80190670  7C 7E 1B 78 */	mr r30, r3
/* 80190674  7C 80 23 78 */	mr r0, r4
/* 80190678  7C BC 2B 78 */	mr r28, r5
/* 8019067C  7C DB 33 78 */	mr r27, r6
/* 80190680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80190684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80190688  83 A3 5C B8 */	lwz r29, 0x5cb8(r3)
/* 8019068C  7F A3 EB 78 */	mr r3, r29
/* 80190690  3C 80 42 4D */	lis r4, 0x424D /* 0x424D4420@ha */
/* 80190694  38 84 44 20 */	addi r4, r4, 0x4420 /* 0x424D4420@l */
/* 80190698  7C 05 03 78 */	mr r5, r0
/* 8019069C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801906A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801906A4  7D 89 03 A6 */	mtctr r12
/* 801906A8  4E 80 04 21 */	bctrl 
/* 801906AC  3C 80 51 02 */	lis r4, 0x5102 /* 0x51020010@ha */
/* 801906B0  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x51020010@l */
/* 801906B4  48 1A 40 09 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 801906B8  7C 7F 1B 78 */	mr r31, r3
/* 801906BC  3B 40 00 00 */	li r26, 0
/* 801906C0  48 00 00 F4 */	b lbl_801907B4
lbl_801906C4:
/* 801906C4  38 60 00 F4 */	li r3, 0xf4
/* 801906C8  48 13 E5 85 */	bl __nw__FUl
/* 801906CC  7C 79 1B 79 */	or. r25, r3, r3
/* 801906D0  41 82 00 B8 */	beq lbl_80190788
/* 801906D4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 801906D8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 801906DC  90 19 00 00 */	stw r0, 0(r25)
/* 801906E0  38 79 00 04 */	addi r3, r25, 4
/* 801906E4  3C 80 80 04 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x8003B2F4@ha */
/* 801906E8  38 84 B2 F4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x8003B2F4@l */
/* 801906EC  3C A0 80 04 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x8003B2B8@ha */
/* 801906F0  38 A5 B2 B8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x8003B2B8@l */
/* 801906F4  38 C0 00 08 */	li r6, 8
/* 801906F8  38 E0 00 02 */	li r7, 2
/* 801906FC  48 1D 16 65 */	bl __construct_array
/* 80190700  38 79 00 14 */	addi r3, r25, 0x14
/* 80190704  3C 80 80 04 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x8003B2A0@ha */
/* 80190708  38 84 B2 A0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x8003B2A0@l */
/* 8019070C  3C A0 80 04 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8003B264@ha */
/* 80190710  38 A5 B2 64 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8003B264@l */
/* 80190714  38 C0 00 08 */	li r6, 8
/* 80190718  38 E0 00 08 */	li r7, 8
/* 8019071C  48 1D 16 45 */	bl __construct_array
/* 80190720  38 79 00 54 */	addi r3, r25, 0x54
/* 80190724  3C 80 80 04 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8003B240@ha */
/* 80190728  38 84 B2 40 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8003B240@l */
/* 8019072C  3C A0 80 04 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x8003B1F8@ha */
/* 80190730  38 A5 B1 F8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x8003B1F8@l */
/* 80190734  38 C0 00 0C */	li r6, 0xc
/* 80190738  38 E0 00 08 */	li r7, 8
/* 8019073C  48 1D 16 25 */	bl __construct_array
/* 80190740  38 79 00 B4 */	addi r3, r25, 0xb4
/* 80190744  3C 80 80 04 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x8003B1E0@ha */
/* 80190748  38 84 B1 E0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x8003B1E0@l */
/* 8019074C  3C A0 80 04 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x8003B1A4@ha */
/* 80190750  38 A5 B1 A4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x8003B1A4@l */
/* 80190754  38 C0 00 08 */	li r6, 8
/* 80190758  38 E0 00 04 */	li r7, 4
/* 8019075C  48 1D 16 05 */	bl __construct_array
/* 80190760  38 79 00 D4 */	addi r3, r25, 0xd4
/* 80190764  3C 80 80 04 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x8003B18C@ha */
/* 80190768  38 84 B1 8C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x8003B18C@l */
/* 8019076C  3C A0 80 04 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8003B150@ha */
/* 80190770  38 A5 B1 50 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8003B150@l */
/* 80190774  38 C0 00 08 */	li r6, 8
/* 80190778  38 E0 00 04 */	li r7, 4
/* 8019077C  48 1D 15 E5 */	bl __construct_array
/* 80190780  7F 23 CB 78 */	mr r3, r25
/* 80190784  48 19 BB 9D */	bl initialize__14J3DMaterialAnmFv
lbl_80190788:
/* 80190788  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8019078C  57 58 13 BA */	rlwinm r24, r26, 2, 0xe, 0x1d
/* 80190790  7C 63 C0 2E */	lwzx r3, r3, r24
/* 80190794  81 83 00 00 */	lwz r12, 0(r3)
/* 80190798  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8019079C  7D 89 03 A6 */	mtctr r12
/* 801907A0  4E 80 04 21 */	bctrl 
/* 801907A4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801907A8  7C 63 C0 2E */	lwzx r3, r3, r24
/* 801907AC  93 23 00 3C */	stw r25, 0x3c(r3)
/* 801907B0  3B 5A 00 01 */	addi r26, r26, 1
lbl_801907B4:
/* 801907B4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 801907B8  A0 1F 00 5C */	lhz r0, 0x5c(r31)
/* 801907BC  7C 03 00 40 */	cmplw r3, r0
/* 801907C0  41 80 FF 04 */	blt lbl_801906C4
/* 801907C4  38 60 00 DC */	li r3, 0xdc
/* 801907C8  48 13 E4 85 */	bl __nw__FUl
/* 801907CC  7C 79 1B 79 */	or. r25, r3, r3
/* 801907D0  41 82 00 38 */	beq lbl_80190808
/* 801907D4  7F 38 CB 78 */	mr r24, r25
/* 801907D8  3C 60 80 3D */	lis r3, __vt__8J3DModel@ha /* 0x803CED20@ha */
/* 801907DC  38 03 ED 20 */	addi r0, r3, __vt__8J3DModel@l /* 0x803CED20@l */
/* 801907E0  90 19 00 00 */	stw r0, 0(r25)
/* 801907E4  38 78 00 88 */	addi r3, r24, 0x88
/* 801907E8  48 18 07 F1 */	bl init__15J3DVertexBufferFv
/* 801907EC  7F 03 C3 78 */	mr r3, r24
/* 801907F0  48 19 69 11 */	bl initialize__8J3DModelFv
/* 801907F4  7F 03 C3 78 */	mr r3, r24
/* 801907F8  7F E4 FB 78 */	mr r4, r31
/* 801907FC  38 A0 00 00 */	li r5, 0
/* 80190800  38 C0 00 01 */	li r6, 1
/* 80190804  48 19 69 81 */	bl entryModelData__8J3DModelFP12J3DModelDataUlUl
lbl_80190808:
/* 80190808  93 3E 00 08 */	stw r25, 8(r30)
/* 8019080C  28 1C 00 00 */	cmplwi r28, 0
/* 80190810  41 82 00 98 */	beq lbl_801908A8
/* 80190814  7F A3 EB 78 */	mr r3, r29
/* 80190818  3C 80 42 43 */	lis r4, 0x4243 /* 0x42434B20@ha */
/* 8019081C  38 84 4B 20 */	addi r4, r4, 0x4B20 /* 0x42434B20@l */
/* 80190820  7F 85 E3 78 */	mr r5, r28
/* 80190824  81 9D 00 00 */	lwz r12, 0(r29)
/* 80190828  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8019082C  7D 89 03 A6 */	mtctr r12
/* 80190830  4E 80 04 21 */	bctrl 
/* 80190834  38 80 00 00 */	li r4, 0
/* 80190838  48 1A 73 09 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 8019083C  7C 78 1B 78 */	mr r24, r3
/* 80190840  38 60 00 1C */	li r3, 0x1c
/* 80190844  48 13 E4 09 */	bl __nw__FUl
/* 80190848  7C 79 1B 79 */	or. r25, r3, r3
/* 8019084C  41 82 00 20 */	beq lbl_8019086C
/* 80190850  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 80190854  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80190858  90 19 00 00 */	stw r0, 0(r25)
/* 8019085C  38 80 00 00 */	li r4, 0
/* 80190860  48 19 7B 9D */	bl init__12J3DFrameCtrlFs
/* 80190864  38 00 00 00 */	li r0, 0
/* 80190868  90 19 00 18 */	stw r0, 0x18(r25)
lbl_8019086C:
/* 8019086C  93 3E 00 0C */	stw r25, 0xc(r30)
/* 80190870  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80190874  28 03 00 00 */	cmplwi r3, 0
/* 80190878  41 82 00 CC */	beq lbl_80190944
/* 8019087C  7F 04 C3 78 */	mr r4, r24
/* 80190880  38 A0 00 01 */	li r5, 1
/* 80190884  38 C0 00 02 */	li r6, 2
/* 80190888  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8019088C  38 E0 00 00 */	li r7, 0
/* 80190890  39 00 FF FF */	li r8, -1
/* 80190894  39 20 00 00 */	li r9, 0
/* 80190898  4B E7 CF 45 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8019089C  2C 03 00 00 */	cmpwi r3, 0
/* 801908A0  40 82 00 08 */	bne lbl_801908A8
/* 801908A4  48 00 00 A0 */	b lbl_80190944
lbl_801908A8:
/* 801908A8  28 1B 00 00 */	cmplwi r27, 0
/* 801908AC  41 82 00 98 */	beq lbl_80190944
/* 801908B0  7F A3 EB 78 */	mr r3, r29
/* 801908B4  3C 80 42 52 */	lis r4, 0x4252 /* 0x42524B20@ha */
/* 801908B8  38 84 4B 20 */	addi r4, r4, 0x4B20 /* 0x42524B20@l */
/* 801908BC  7F 65 DB 78 */	mr r5, r27
/* 801908C0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801908C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801908C8  7D 89 03 A6 */	mtctr r12
/* 801908CC  4E 80 04 21 */	bctrl 
/* 801908D0  38 80 00 00 */	li r4, 0
/* 801908D4  48 1A 72 6D */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 801908D8  7C 78 1B 78 */	mr r24, r3
/* 801908DC  7F E4 FB 78 */	mr r4, r31
/* 801908E0  48 19 AF 9D */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 801908E4  38 60 00 18 */	li r3, 0x18
/* 801908E8  48 13 E3 65 */	bl __nw__FUl
/* 801908EC  7C 79 1B 79 */	or. r25, r3, r3
/* 801908F0  41 82 00 20 */	beq lbl_80190910
/* 801908F4  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 801908F8  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 801908FC  90 19 00 00 */	stw r0, 0(r25)
/* 80190900  38 80 00 00 */	li r4, 0
/* 80190904  48 19 7A F9 */	bl init__12J3DFrameCtrlFs
/* 80190908  38 00 00 00 */	li r0, 0
/* 8019090C  90 19 00 14 */	stw r0, 0x14(r25)
lbl_80190910:
/* 80190910  93 3E 00 10 */	stw r25, 0x10(r30)
/* 80190914  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80190918  28 03 00 00 */	cmplwi r3, 0
/* 8019091C  41 82 00 28 */	beq lbl_80190944
/* 80190920  38 9F 00 58 */	addi r4, r31, 0x58
/* 80190924  7F 05 C3 78 */	mr r5, r24
/* 80190928  38 C0 FF FF */	li r6, -1
/* 8019092C  38 E0 00 02 */	li r7, 2
/* 80190930  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80190934  39 00 00 00 */	li r8, 0
/* 80190938  39 20 FF FF */	li r9, -1
/* 8019093C  4B E7 CD D1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80190940  2C 03 00 00 */	cmpwi r3, 0
lbl_80190944:
/* 80190944  39 61 00 30 */	addi r11, r1, 0x30
/* 80190948  48 1D 18 CD */	bl _restgpr_24
/* 8019094C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80190950  7C 08 03 A6 */	mtlr r0
/* 80190954  38 21 00 30 */	addi r1, r1, 0x30
/* 80190958  4E 80 00 20 */	blr 
