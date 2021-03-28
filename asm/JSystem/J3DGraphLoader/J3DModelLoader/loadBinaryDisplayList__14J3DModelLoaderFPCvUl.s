lbl_80334C20:
/* 80334C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80334C24  7C 08 02 A6 */	mflr r0
/* 80334C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80334C2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80334C30  48 02 D5 99 */	bl _savegpr_24
/* 80334C34  7C 78 1B 78 */	mr r24, r3
/* 80334C38  7C 99 23 78 */	mr r25, r4
/* 80334C3C  7C BE 2B 78 */	mr r30, r5
/* 80334C40  38 60 00 E4 */	li r3, 0xe4
/* 80334C44  4B F9 A0 09 */	bl __nw__FUl
/* 80334C48  7C 60 1B 79 */	or. r0, r3, r3
/* 80334C4C  41 82 00 0C */	beq lbl_80334C58
/* 80334C50  4B FF 11 51 */	bl __ct__12J3DModelDataFv
/* 80334C54  7C 60 1B 78 */	mr r0, r3
lbl_80334C58:
/* 80334C58  90 18 00 04 */	stw r0, 4(r24)
/* 80334C5C  80 78 00 04 */	lwz r3, 4(r24)
/* 80334C60  4B FF 11 29 */	bl clear__12J3DModelDataFv
/* 80334C64  80 78 00 04 */	lwz r3, 4(r24)
/* 80334C68  93 23 00 04 */	stw r25, 4(r3)
/* 80334C6C  38 00 00 01 */	li r0, 1
/* 80334C70  80 78 00 04 */	lwz r3, 4(r24)
/* 80334C74  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80334C78  80 78 00 04 */	lwz r3, 4(r24)
/* 80334C7C  38 03 00 58 */	addi r0, r3, 0x58
/* 80334C80  90 18 00 08 */	stw r0, 8(r24)
/* 80334C84  3B 79 00 20 */	addi r27, r25, 0x20
/* 80334C88  3B 40 00 00 */	li r26, 0
/* 80334C8C  57 DD 01 8E */	rlwinm r29, r30, 0, 6, 7
/* 80334C90  57 DC 04 A6 */	rlwinm r28, r30, 0, 0x12, 0x13
/* 80334C94  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415433@ha */
/* 80334C98  3B E3 54 33 */	addi r31, r3, 0x5433 /* 0x4D415433@l */
/* 80334C9C  83 39 00 0C */	lwz r25, 0xc(r25)
/* 80334CA0  48 00 01 B0 */	b lbl_80334E50
lbl_80334CA4:
/* 80334CA4  80 9B 00 00 */	lwz r4, 0(r27)
/* 80334CA8  7C 04 F8 00 */	cmpw r4, r31
/* 80334CAC  41 82 01 40 */	beq lbl_80334DEC
/* 80334CB0  40 80 00 54 */	bge lbl_80334D04
/* 80334CB4  3C 60 49 4E */	lis r3, 0x494E /* 0x494E4631@ha */
/* 80334CB8  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x494E4631@l */
/* 80334CBC  7C 04 00 00 */	cmpw r4, r0
/* 80334CC0  41 82 00 94 */	beq lbl_80334D54
/* 80334CC4  40 80 00 2C */	bge lbl_80334CF0
/* 80334CC8  3C 60 45 56 */	lis r3, 0x4556 /* 0x45565031@ha */
/* 80334CCC  38 03 50 31 */	addi r0, r3, 0x5031 /* 0x45565031@l */
/* 80334CD0  7C 04 00 00 */	cmpw r4, r0
/* 80334CD4  41 82 00 A4 */	beq lbl_80334D78
/* 80334CD8  40 80 01 5C */	bge lbl_80334E34
/* 80334CDC  3C 60 44 52 */	lis r3, 0x4452 /* 0x44525731@ha */
/* 80334CE0  38 03 57 31 */	addi r0, r3, 0x5731 /* 0x44525731@l */
/* 80334CE4  7C 04 00 00 */	cmpw r4, r0
/* 80334CE8  41 82 00 A0 */	beq lbl_80334D88
/* 80334CEC  48 00 01 48 */	b lbl_80334E34
lbl_80334CF0:
/* 80334CF0  3C 60 4A 4E */	lis r3, 0x4A4E /* 0x4A4E5431@ha */
/* 80334CF4  38 03 54 31 */	addi r0, r3, 0x5431 /* 0x4A4E5431@l */
/* 80334CF8  7C 04 00 00 */	cmpw r4, r0
/* 80334CFC  41 82 00 9C */	beq lbl_80334D98
/* 80334D00  48 00 01 34 */	b lbl_80334E34
lbl_80334D04:
/* 80334D04  3C 60 54 45 */	lis r3, 0x5445 /* 0x54455831@ha */
/* 80334D08  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x54455831@l */
/* 80334D0C  7C 04 00 00 */	cmpw r4, r0
/* 80334D10  41 82 00 AC */	beq lbl_80334DBC
/* 80334D14  40 80 00 2C */	bge lbl_80334D40
/* 80334D18  3C 60 53 48 */	lis r3, 0x5348 /* 0x53485031@ha */
/* 80334D1C  38 03 50 31 */	addi r0, r3, 0x5031 /* 0x53485031@l */
/* 80334D20  7C 04 00 00 */	cmpw r4, r0
/* 80334D24  41 82 00 84 */	beq lbl_80334DA8
/* 80334D28  40 80 01 0C */	bge lbl_80334E34
/* 80334D2C  3C 60 4D 44 */	lis r3, 0x4D44 /* 0x4D444C33@ha */
/* 80334D30  38 03 4C 33 */	addi r0, r3, 0x4C33 /* 0x4D444C33@l */
/* 80334D34  7C 04 00 00 */	cmpw r4, r0
/* 80334D38  41 82 00 94 */	beq lbl_80334DCC
/* 80334D3C  48 00 00 F8 */	b lbl_80334E34
lbl_80334D40:
/* 80334D40  3C 60 56 54 */	lis r3, 0x5654 /* 0x56545831@ha */
/* 80334D44  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x56545831@l */
/* 80334D48  7C 04 00 00 */	cmpw r4, r0
/* 80334D4C  41 82 00 1C */	beq lbl_80334D68
/* 80334D50  48 00 00 E4 */	b lbl_80334E34
lbl_80334D54:
/* 80334D54  7F 03 C3 78 */	mr r3, r24
/* 80334D58  7F 64 DB 78 */	mr r4, r27
/* 80334D5C  7F C5 F3 78 */	mr r5, r30
/* 80334D60  48 00 02 E9 */	bl readInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
/* 80334D64  48 00 00 E0 */	b lbl_80334E44
lbl_80334D68:
/* 80334D68  7F 03 C3 78 */	mr r3, r24
/* 80334D6C  7F 64 DB 78 */	mr r4, r27
/* 80334D70  48 00 04 61 */	bl readVertex__14J3DModelLoaderFPC14J3DVertexBlock
/* 80334D74  48 00 00 D0 */	b lbl_80334E44
lbl_80334D78:
/* 80334D78  7F 03 C3 78 */	mr r3, r24
/* 80334D7C  7F 64 DB 78 */	mr r4, r27
/* 80334D80  48 00 06 71 */	bl readEnvelop__14J3DModelLoaderFPC16J3DEnvelopeBlock
/* 80334D84  48 00 00 C0 */	b lbl_80334E44
lbl_80334D88:
/* 80334D88  7F 03 C3 78 */	mr r3, r24
/* 80334D8C  7F 64 DB 78 */	mr r4, r27
/* 80334D90  48 00 06 F1 */	bl readDraw__14J3DModelLoaderFPC12J3DDrawBlock
/* 80334D94  48 00 00 B0 */	b lbl_80334E44
lbl_80334D98:
/* 80334D98  7F 03 C3 78 */	mr r3, r24
/* 80334D9C  7F 64 DB 78 */	mr r4, r27
/* 80334DA0  48 00 07 91 */	bl readJoint__14J3DModelLoaderFPC13J3DJointBlock
/* 80334DA4  48 00 00 A0 */	b lbl_80334E44
lbl_80334DA8:
/* 80334DA8  7F 03 C3 78 */	mr r3, r24
/* 80334DAC  7F 64 DB 78 */	mr r4, r27
/* 80334DB0  7F C5 F3 78 */	mr r5, r30
/* 80334DB4  48 00 0D 41 */	bl readShape__14J3DModelLoaderFPC13J3DShapeBlockUl
/* 80334DB8  48 00 00 8C */	b lbl_80334E44
lbl_80334DBC:
/* 80334DBC  7F 03 C3 78 */	mr r3, r24
/* 80334DC0  7F 64 DB 78 */	mr r4, r27
/* 80334DC4  48 00 0E 55 */	bl readTexture__14J3DModelLoaderFPC15J3DTextureBlock
/* 80334DC8  48 00 00 7C */	b lbl_80334E44
lbl_80334DCC:
/* 80334DCC  7F 03 C3 78 */	mr r3, r24
/* 80334DD0  7F 64 DB 78 */	mr r4, r27
/* 80334DD4  7F C5 F3 78 */	mr r5, r30
/* 80334DD8  48 00 13 91 */	bl readMaterialDL__14J3DModelLoaderFPC18J3DMaterialDLBlockUl
/* 80334DDC  7F 03 C3 78 */	mr r3, r24
/* 80334DE0  7F C4 F3 78 */	mr r4, r30
/* 80334DE4  48 00 15 39 */	bl modifyMaterial__14J3DModelLoaderFUl
/* 80334DE8  48 00 00 5C */	b lbl_80334E44
lbl_80334DEC:
/* 80334DEC  3C A0 50 10 */	lis r5, 0x5010
/* 80334DF0  7C A5 EB 78 */	or r5, r5, r29
/* 80334DF4  93 78 00 10 */	stw r27, 0x10(r24)
/* 80334DF8  28 1C 00 00 */	cmplwi r28, 0
/* 80334DFC  40 82 00 20 */	bne lbl_80334E1C
/* 80334E00  7F 03 C3 78 */	mr r3, r24
/* 80334E04  7F 64 DB 78 */	mr r4, r27
/* 80334E08  81 98 00 00 */	lwz r12, 0(r24)
/* 80334E0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80334E10  7D 89 03 A6 */	mtctr r12
/* 80334E14  4E 80 04 21 */	bctrl 
/* 80334E18  48 00 00 2C */	b lbl_80334E44
lbl_80334E1C:
/* 80334E1C  28 1C 20 00 */	cmplwi r28, 0x2000
/* 80334E20  40 82 00 24 */	bne lbl_80334E44
/* 80334E24  7F 03 C3 78 */	mr r3, r24
/* 80334E28  7F 64 DB 78 */	mr r4, r27
/* 80334E2C  48 00 11 FD */	bl readPatchedMaterial__14J3DModelLoaderFPC16J3DMaterialBlockUl
/* 80334E30  48 00 00 14 */	b lbl_80334E44
lbl_80334E34:
/* 80334E34  3C 60 80 3A */	lis r3, J3DModelLoader__stringBase0@ha
/* 80334E38  38 63 20 B0 */	addi r3, r3, J3DModelLoader__stringBase0@l
/* 80334E3C  4C C6 31 82 */	crclr 6
/* 80334E40  4B CD 1C 7D */	bl OSReport
lbl_80334E44:
/* 80334E44  80 1B 00 04 */	lwz r0, 4(r27)
/* 80334E48  7F 7B 02 14 */	add r27, r27, r0
/* 80334E4C  3B 5A 00 01 */	addi r26, r26, 1
lbl_80334E50:
/* 80334E50  7C 1A C8 40 */	cmplw r26, r25
/* 80334E54  41 80 FE 50 */	blt lbl_80334CA4
/* 80334E58  80 78 00 04 */	lwz r3, 4(r24)
/* 80334E5C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80334E60  90 01 00 08 */	stw r0, 8(r1)
/* 80334E64  83 38 00 04 */	lwz r25, 4(r24)
/* 80334E68  38 79 00 10 */	addi r3, r25, 0x10
/* 80334E6C  38 80 00 00 */	li r4, 0
/* 80334E70  38 A1 00 08 */	addi r5, r1, 8
/* 80334E74  38 D9 00 58 */	addi r6, r25, 0x58
/* 80334E78  38 F9 00 78 */	addi r7, r25, 0x78
/* 80334E7C  4B FF 0C 21 */	bl makeHierarchy__12J3DJointTreeFP8J3DJointPPC17J3DModelHierarchyP16J3DMaterialTableP13J3DShapeTable
/* 80334E80  38 79 00 78 */	addi r3, r25, 0x78
/* 80334E84  38 99 00 44 */	addi r4, r25, 0x44
/* 80334E88  38 B9 00 88 */	addi r5, r25, 0x88
/* 80334E8C  4B FF 0A 85 */	bl initShapeNodes__13J3DShapeTableFP14J3DDrawMtxDataP13J3DVertexData
/* 80334E90  80 78 00 04 */	lwz r3, 4(r24)
/* 80334E94  38 63 00 78 */	addi r3, r3, 0x78
/* 80334E98  4B FF 0A E5 */	bl sortVcdVatCmd__13J3DShapeTableFv
/* 80334E9C  80 78 00 04 */	lwz r3, 4(r24)
/* 80334EA0  38 63 00 10 */	addi r3, r3, 0x10
/* 80334EA4  4B FF 0D 5D */	bl findImportantMtxIndex__12J3DJointTreeFv
/* 80334EA8  7F 03 C3 78 */	mr r3, r24
/* 80334EAC  81 98 00 00 */	lwz r12, 0(r24)
/* 80334EB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80334EB4  7D 89 03 A6 */	mtctr r12
/* 80334EB8  4E 80 04 21 */	bctrl 
/* 80334EBC  80 78 00 04 */	lwz r3, 4(r24)
/* 80334EC0  4B FF 10 09 */	bl indexToPtr__12J3DModelDataFv
/* 80334EC4  80 78 00 04 */	lwz r3, 4(r24)
/* 80334EC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80334ECC  48 02 D3 49 */	bl _restgpr_24
/* 80334ED0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80334ED4  7C 08 03 A6 */	mtlr r0
/* 80334ED8  38 21 00 30 */	addi r1, r1, 0x30
/* 80334EDC  4E 80 00 20 */	blr 
