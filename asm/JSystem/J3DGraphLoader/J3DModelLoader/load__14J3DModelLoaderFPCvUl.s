lbl_803347E0:
/* 803347E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803347E4  7C 08 02 A6 */	mflr r0
/* 803347E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803347EC  39 61 00 30 */	addi r11, r1, 0x30
/* 803347F0  48 02 D9 DD */	bl _savegpr_25
/* 803347F4  7C 7B 1B 78 */	mr r27, r3
/* 803347F8  7C 99 23 78 */	mr r25, r4
/* 803347FC  7C BA 2B 78 */	mr r26, r5
/* 80334800  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap(r13)
/* 80334804  4B F9 9F 81 */	bl getTotalFreeSize__7JKRHeapFv
/* 80334808  38 60 00 E4 */	li r3, 0xe4
/* 8033480C  4B F9 A4 41 */	bl __nw__FUl
/* 80334810  7C 60 1B 79 */	or. r0, r3, r3
/* 80334814  41 82 00 0C */	beq lbl_80334820
/* 80334818  4B FF 15 89 */	bl __ct__12J3DModelDataFv
/* 8033481C  7C 60 1B 78 */	mr r0, r3
lbl_80334820:
/* 80334820  90 1B 00 04 */	stw r0, 4(r27)
/* 80334824  80 7B 00 04 */	lwz r3, 4(r27)
/* 80334828  4B FF 15 61 */	bl clear__12J3DModelDataFv
/* 8033482C  80 7B 00 04 */	lwz r3, 4(r27)
/* 80334830  93 23 00 04 */	stw r25, 4(r3)
/* 80334834  38 00 00 00 */	li r0, 0
/* 80334838  80 7B 00 04 */	lwz r3, 4(r27)
/* 8033483C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80334840  80 7B 00 04 */	lwz r3, 4(r27)
/* 80334844  38 03 00 58 */	addi r0, r3, 0x58
/* 80334848  90 1B 00 08 */	stw r0, 8(r27)
/* 8033484C  3B B9 00 20 */	addi r29, r25, 0x20
/* 80334850  3B 80 00 00 */	li r28, 0
/* 80334854  7F 5E D3 78 */	mr r30, r26
/* 80334858  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415432@ha */
/* 8033485C  3B E3 54 32 */	addi r31, r3, 0x5432 /* 0x4D415432@l */
/* 80334860  83 59 00 0C */	lwz r26, 0xc(r25)
/* 80334864  48 00 01 88 */	b lbl_803349EC
lbl_80334868:
/* 80334868  80 9D 00 00 */	lwz r4, 0(r29)
/* 8033486C  7C 04 F8 00 */	cmpw r4, r31
/* 80334870  41 82 01 1C */	beq lbl_8033498C
/* 80334874  40 80 00 54 */	bge lbl_803348C8
/* 80334878  3C 60 49 4E */	lis r3, 0x494E /* 0x494E4631@ha */
/* 8033487C  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x494E4631@l */
/* 80334880  7C 04 00 00 */	cmpw r4, r0
/* 80334884  41 82 00 94 */	beq lbl_80334918
/* 80334888  40 80 00 2C */	bge lbl_803348B4
/* 8033488C  3C 60 45 56 */	lis r3, 0x4556 /* 0x45565031@ha */
/* 80334890  38 03 50 31 */	addi r0, r3, 0x5031 /* 0x45565031@l */
/* 80334894  7C 04 00 00 */	cmpw r4, r0
/* 80334898  41 82 00 A4 */	beq lbl_8033493C
/* 8033489C  40 80 01 34 */	bge lbl_803349D0
/* 803348A0  3C 60 44 52 */	lis r3, 0x4452 /* 0x44525731@ha */
/* 803348A4  38 03 57 31 */	addi r0, r3, 0x5731 /* 0x44525731@l */
/* 803348A8  7C 04 00 00 */	cmpw r4, r0
/* 803348AC  41 82 00 A0 */	beq lbl_8033494C
/* 803348B0  48 00 01 20 */	b lbl_803349D0
lbl_803348B4:
/* 803348B4  3C 60 4A 4E */	lis r3, 0x4A4E /* 0x4A4E5431@ha */
/* 803348B8  38 03 54 31 */	addi r0, r3, 0x5431 /* 0x4A4E5431@l */
/* 803348BC  7C 04 00 00 */	cmpw r4, r0
/* 803348C0  41 82 00 9C */	beq lbl_8033495C
/* 803348C4  48 00 01 0C */	b lbl_803349D0
lbl_803348C8:
/* 803348C8  3C 60 54 45 */	lis r3, 0x5445 /* 0x54455831@ha */
/* 803348CC  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x54455831@l */
/* 803348D0  7C 04 00 00 */	cmpw r4, r0
/* 803348D4  41 82 00 EC */	beq lbl_803349C0
/* 803348D8  40 80 00 2C */	bge lbl_80334904
/* 803348DC  3C 60 53 48 */	lis r3, 0x5348 /* 0x53485031@ha */
/* 803348E0  38 03 50 31 */	addi r0, r3, 0x5031 /* 0x53485031@l */
/* 803348E4  7C 04 00 00 */	cmpw r4, r0
/* 803348E8  41 82 00 C4 */	beq lbl_803349AC
/* 803348EC  40 80 00 E4 */	bge lbl_803349D0
/* 803348F0  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415434@ha */
/* 803348F4  38 03 54 34 */	addi r0, r3, 0x5434 /* 0x4D415434@l */
/* 803348F8  7C 04 00 00 */	cmpw r4, r0
/* 803348FC  40 80 00 D4 */	bge lbl_803349D0
/* 80334900  48 00 00 6C */	b lbl_8033496C
lbl_80334904:
/* 80334904  3C 60 56 54 */	lis r3, 0x5654 /* 0x56545831@ha */
/* 80334908  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x56545831@l */
/* 8033490C  7C 04 00 00 */	cmpw r4, r0
/* 80334910  41 82 00 1C */	beq lbl_8033492C
/* 80334914  48 00 00 BC */	b lbl_803349D0
lbl_80334918:
/* 80334918  7F 63 DB 78 */	mr r3, r27
/* 8033491C  7F A4 EB 78 */	mr r4, r29
/* 80334920  7F C5 F3 78 */	mr r5, r30
/* 80334924  48 00 07 25 */	bl readInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
/* 80334928  48 00 00 B8 */	b lbl_803349E0
lbl_8033492C:
/* 8033492C  7F 63 DB 78 */	mr r3, r27
/* 80334930  7F A4 EB 78 */	mr r4, r29
/* 80334934  48 00 08 9D */	bl readVertex__14J3DModelLoaderFPC14J3DVertexBlock
/* 80334938  48 00 00 A8 */	b lbl_803349E0
lbl_8033493C:
/* 8033493C  7F 63 DB 78 */	mr r3, r27
/* 80334940  7F A4 EB 78 */	mr r4, r29
/* 80334944  48 00 0A AD */	bl readEnvelop__14J3DModelLoaderFPC16J3DEnvelopeBlock
/* 80334948  48 00 00 98 */	b lbl_803349E0
lbl_8033494C:
/* 8033494C  7F 63 DB 78 */	mr r3, r27
/* 80334950  7F A4 EB 78 */	mr r4, r29
/* 80334954  48 00 0B 2D */	bl readDraw__14J3DModelLoaderFPC12J3DDrawBlock
/* 80334958  48 00 00 88 */	b lbl_803349E0
lbl_8033495C:
/* 8033495C  7F 63 DB 78 */	mr r3, r27
/* 80334960  7F A4 EB 78 */	mr r4, r29
/* 80334964  48 00 0B CD */	bl readJoint__14J3DModelLoaderFPC13J3DJointBlock
/* 80334968  48 00 00 78 */	b lbl_803349E0
lbl_8033496C:
/* 8033496C  7F 63 DB 78 */	mr r3, r27
/* 80334970  7F A4 EB 78 */	mr r4, r29
/* 80334974  7F C5 F3 78 */	mr r5, r30
/* 80334978  81 9B 00 00 */	lwz r12, 0(r27)
/* 8033497C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80334980  7D 89 03 A6 */	mtctr r12
/* 80334984  4E 80 04 21 */	bctrl 
/* 80334988  48 00 00 58 */	b lbl_803349E0
lbl_8033498C:
/* 8033498C  7F 63 DB 78 */	mr r3, r27
/* 80334990  7F A4 EB 78 */	mr r4, r29
/* 80334994  7F C5 F3 78 */	mr r5, r30
/* 80334998  81 9B 00 00 */	lwz r12, 0(r27)
/* 8033499C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 803349A0  7D 89 03 A6 */	mtctr r12
/* 803349A4  4E 80 04 21 */	bctrl 
/* 803349A8  48 00 00 38 */	b lbl_803349E0
lbl_803349AC:
/* 803349AC  7F 63 DB 78 */	mr r3, r27
/* 803349B0  7F A4 EB 78 */	mr r4, r29
/* 803349B4  7F C5 F3 78 */	mr r5, r30
/* 803349B8  48 00 11 3D */	bl readShape__14J3DModelLoaderFPC13J3DShapeBlockUl
/* 803349BC  48 00 00 24 */	b lbl_803349E0
lbl_803349C0:
/* 803349C0  7F 63 DB 78 */	mr r3, r27
/* 803349C4  7F A4 EB 78 */	mr r4, r29
/* 803349C8  48 00 12 51 */	bl readTexture__14J3DModelLoaderFPC15J3DTextureBlock
/* 803349CC  48 00 00 14 */	b lbl_803349E0
lbl_803349D0:
/* 803349D0  3C 60 80 3A */	lis r3, J3DModelLoader__stringBase0@ha /* 0x803A20B0@ha */
/* 803349D4  38 63 20 B0 */	addi r3, r3, J3DModelLoader__stringBase0@l /* 0x803A20B0@l */
/* 803349D8  4C C6 31 82 */	crclr 6
/* 803349DC  4B CD 20 E1 */	bl OSReport
lbl_803349E0:
/* 803349E0  80 1D 00 04 */	lwz r0, 4(r29)
/* 803349E4  7F BD 02 14 */	add r29, r29, r0
/* 803349E8  3B 9C 00 01 */	addi r28, r28, 1
lbl_803349EC:
/* 803349EC  7C 1C D0 40 */	cmplw r28, r26
/* 803349F0  41 80 FE 78 */	blt lbl_80334868
/* 803349F4  80 7B 00 04 */	lwz r3, 4(r27)
/* 803349F8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803349FC  90 01 00 08 */	stw r0, 8(r1)
/* 80334A00  83 5B 00 04 */	lwz r26, 4(r27)
/* 80334A04  38 7A 00 10 */	addi r3, r26, 0x10
/* 80334A08  38 80 00 00 */	li r4, 0
/* 80334A0C  38 A1 00 08 */	addi r5, r1, 8
/* 80334A10  38 DA 00 58 */	addi r6, r26, 0x58
/* 80334A14  38 FA 00 78 */	addi r7, r26, 0x78
/* 80334A18  4B FF 10 85 */	bl makeHierarchy__12J3DJointTreeFP8J3DJointPPC17J3DModelHierarchyP16J3DMaterialTableP13J3DShapeTable
/* 80334A1C  38 7A 00 78 */	addi r3, r26, 0x78
/* 80334A20  38 9A 00 44 */	addi r4, r26, 0x44
/* 80334A24  38 BA 00 88 */	addi r5, r26, 0x88
/* 80334A28  4B FF 0E E9 */	bl initShapeNodes__13J3DShapeTableFP14J3DDrawMtxDataP13J3DVertexData
/* 80334A2C  80 7B 00 04 */	lwz r3, 4(r27)
/* 80334A30  38 63 00 78 */	addi r3, r3, 0x78
/* 80334A34  4B FF 0F 49 */	bl sortVcdVatCmd__13J3DShapeTableFv
/* 80334A38  80 7B 00 04 */	lwz r3, 4(r27)
/* 80334A3C  38 63 00 10 */	addi r3, r3, 0x10
/* 80334A40  4B FF 11 C1 */	bl findImportantMtxIndex__12J3DJointTreeFv
/* 80334A44  7F 63 DB 78 */	mr r3, r27
/* 80334A48  81 9B 00 00 */	lwz r12, 0(r27)
/* 80334A4C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80334A50  7D 89 03 A6 */	mtctr r12
/* 80334A54  4E 80 04 21 */	bctrl 
/* 80334A58  80 7B 00 04 */	lwz r3, 4(r27)
/* 80334A5C  80 03 00 08 */	lwz r0, 8(r3)
/* 80334A60  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80334A64  41 82 00 3C */	beq lbl_80334AA0
/* 80334A68  38 A0 00 00 */	li r5, 0
/* 80334A6C  48 00 00 20 */	b lbl_80334A8C
lbl_80334A70:
/* 80334A70  80 64 00 80 */	lwz r3, 0x80(r4)
/* 80334A74  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80334A78  7C 63 00 2E */	lwzx r3, r3, r0
/* 80334A7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80334A80  60 00 02 00 */	ori r0, r0, 0x200
/* 80334A84  90 03 00 0C */	stw r0, 0xc(r3)
/* 80334A88  38 A5 00 01 */	addi r5, r5, 1
lbl_80334A8C:
/* 80334A8C  80 9B 00 04 */	lwz r4, 4(r27)
/* 80334A90  A0 64 00 7C */	lhz r3, 0x7c(r4)
/* 80334A94  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80334A98  7C 00 18 40 */	cmplw r0, r3
/* 80334A9C  41 80 FF D4 */	blt lbl_80334A70
lbl_80334AA0:
/* 80334AA0  80 7B 00 04 */	lwz r3, 4(r27)
/* 80334AA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80334AA8  48 02 D7 71 */	bl _restgpr_25
/* 80334AAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334AB0  7C 08 03 A6 */	mtlr r0
/* 80334AB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80334AB8  4E 80 00 20 */	blr 
