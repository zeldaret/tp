lbl_80336A98:
/* 80336A98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80336A9C  7C 08 02 A6 */	mflr r0
/* 80336AA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80336AA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80336AA8  48 02 B7 19 */	bl _savegpr_22
/* 80336AAC  7C 77 1B 78 */	mr r23, r3
/* 80336AB0  7C B8 2B 78 */	mr r24, r5
/* 80336AB4  3B 44 00 20 */	addi r26, r4, 0x20
/* 80336AB8  3B 20 00 00 */	li r25, 0
/* 80336ABC  7F 1C C3 78 */	mr r28, r24
/* 80336AC0  54 BE 01 8E */	rlwinm r30, r5, 0, 6, 7
/* 80336AC4  54 BD 04 A6 */	rlwinm r29, r5, 0, 0x12, 0x13
/* 80336AC8  3B 60 00 E4 */	li r27, 0xe4
/* 80336ACC  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415433@ha */
/* 80336AD0  3B E3 54 33 */	addi r31, r3, 0x5433 /* 0x4D415433@l */
/* 80336AD4  82 C4 00 0C */	lwz r22, 0xc(r4)
/* 80336AD8  48 00 01 DC */	b lbl_80336CB4
lbl_80336ADC:
/* 80336ADC  80 1A 00 00 */	lwz r0, 0(r26)
/* 80336AE0  7C 00 F8 00 */	cmpw r0, r31
/* 80336AE4  41 82 01 2C */	beq lbl_80336C10
/* 80336AE8  40 80 00 68 */	bge lbl_80336B50
/* 80336AEC  3C 60 49 4E */	lis r3, 0x494E /* 0x494E4631@ha */
/* 80336AF0  38 63 46 31 */	addi r3, r3, 0x4631 /* 0x494E4631@l */
/* 80336AF4  7C 00 18 00 */	cmpw r0, r3
/* 80336AF8  41 82 00 A8 */	beq lbl_80336BA0
/* 80336AFC  40 80 00 2C */	bge lbl_80336B28
/* 80336B00  3C 60 45 56 */	lis r3, 0x4556 /* 0x45565031@ha */
/* 80336B04  38 63 50 31 */	addi r3, r3, 0x5031 /* 0x45565031@l */
/* 80336B08  7C 00 18 00 */	cmpw r0, r3
/* 80336B0C  41 82 01 64 */	beq lbl_80336C70
/* 80336B10  40 80 01 88 */	bge lbl_80336C98
/* 80336B14  3C 60 44 52 */	lis r3, 0x4452 /* 0x44525731@ha */
/* 80336B18  38 63 57 31 */	addi r3, r3, 0x5731 /* 0x44525731@l */
/* 80336B1C  7C 00 18 00 */	cmpw r0, r3
/* 80336B20  41 82 01 64 */	beq lbl_80336C84
/* 80336B24  48 00 01 74 */	b lbl_80336C98
lbl_80336B28:
/* 80336B28  3C 60 4A 4E */	lis r3, 0x4A4E /* 0x4A4E5431@ha */
/* 80336B2C  38 63 54 31 */	addi r3, r3, 0x5431 /* 0x4A4E5431@l */
/* 80336B30  7C 00 18 00 */	cmpw r0, r3
/* 80336B34  41 82 00 84 */	beq lbl_80336BB8
/* 80336B38  41 80 01 60 */	blt lbl_80336C98
/* 80336B3C  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415432@ha */
/* 80336B40  38 63 54 32 */	addi r3, r3, 0x5432 /* 0x4D415432@l */
/* 80336B44  7C 00 18 00 */	cmpw r0, r3
/* 80336B48  40 80 01 60 */	bge lbl_80336CA8
/* 80336B4C  48 00 01 4C */	b lbl_80336C98
lbl_80336B50:
/* 80336B50  3C 60 54 45 */	lis r3, 0x5445 /* 0x54455831@ha */
/* 80336B54  38 63 58 31 */	addi r3, r3, 0x5831 /* 0x54455831@l */
/* 80336B58  7C 00 18 00 */	cmpw r0, r3
/* 80336B5C  41 82 00 88 */	beq lbl_80336BE4
/* 80336B60  40 80 00 2C */	bge lbl_80336B8C
/* 80336B64  3C 60 53 48 */	lis r3, 0x5348 /* 0x53485031@ha */
/* 80336B68  38 63 50 31 */	addi r3, r3, 0x5031 /* 0x53485031@l */
/* 80336B6C  7C 00 18 00 */	cmpw r0, r3
/* 80336B70  41 82 00 5C */	beq lbl_80336BCC
/* 80336B74  40 80 01 24 */	bge lbl_80336C98
/* 80336B78  3C 60 4D 44 */	lis r3, 0x4D44 /* 0x4D444C33@ha */
/* 80336B7C  38 63 4C 33 */	addi r3, r3, 0x4C33 /* 0x4D444C33@l */
/* 80336B80  7C 00 18 00 */	cmpw r0, r3
/* 80336B84  41 82 00 74 */	beq lbl_80336BF8
/* 80336B88  48 00 01 10 */	b lbl_80336C98
lbl_80336B8C:
/* 80336B8C  3C 60 56 54 */	lis r3, 0x5654 /* 0x56545831@ha */
/* 80336B90  38 63 58 31 */	addi r3, r3, 0x5831 /* 0x56545831@l */
/* 80336B94  7C 00 18 00 */	cmpw r0, r3
/* 80336B98  41 82 01 10 */	beq lbl_80336CA8
/* 80336B9C  48 00 00 FC */	b lbl_80336C98
lbl_80336BA0:
/* 80336BA0  7E E3 BB 78 */	mr r3, r23
/* 80336BA4  7F 44 D3 78 */	mr r4, r26
/* 80336BA8  7F 85 E3 78 */	mr r5, r28
/* 80336BAC  48 00 01 2D */	bl calcSizeInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
/* 80336BB0  7F 7B 1A 14 */	add r27, r27, r3
/* 80336BB4  48 00 00 F4 */	b lbl_80336CA8
lbl_80336BB8:
/* 80336BB8  7E E3 BB 78 */	mr r3, r23
/* 80336BBC  7F 44 D3 78 */	mr r4, r26
/* 80336BC0  48 00 01 A5 */	bl calcSizeJoint__14J3DModelLoaderFPC13J3DJointBlock
/* 80336BC4  7F 7B 1A 14 */	add r27, r27, r3
/* 80336BC8  48 00 00 E0 */	b lbl_80336CA8
lbl_80336BCC:
/* 80336BCC  7E E3 BB 78 */	mr r3, r23
/* 80336BD0  7F 44 D3 78 */	mr r4, r26
/* 80336BD4  7F 85 E3 78 */	mr r5, r28
/* 80336BD8  48 00 02 C9 */	bl calcSizeShape__14J3DModelLoaderFPC13J3DShapeBlockUl
/* 80336BDC  7F 7B 1A 14 */	add r27, r27, r3
/* 80336BE0  48 00 00 C8 */	b lbl_80336CA8
lbl_80336BE4:
/* 80336BE4  7E E3 BB 78 */	mr r3, r23
/* 80336BE8  7F 44 D3 78 */	mr r4, r26
/* 80336BEC  48 00 03 59 */	bl calcSizeTexture__14J3DModelLoaderFPC15J3DTextureBlock
/* 80336BF0  7F 7B 1A 14 */	add r27, r27, r3
/* 80336BF4  48 00 00 B4 */	b lbl_80336CA8
lbl_80336BF8:
/* 80336BF8  7E E3 BB 78 */	mr r3, r23
/* 80336BFC  7F 44 D3 78 */	mr r4, r26
/* 80336C00  7F 05 C3 78 */	mr r5, r24
/* 80336C04  48 00 04 9D */	bl calcSizeMaterialDL__14J3DModelLoaderFPC18J3DMaterialDLBlockUl
/* 80336C08  7F 7B 1A 14 */	add r27, r27, r3
/* 80336C0C  48 00 00 9C */	b lbl_80336CA8
lbl_80336C10:
/* 80336C10  3C A0 50 10 */	lis r5, 0x5010
/* 80336C14  7C A5 F3 78 */	or r5, r5, r30
/* 80336C18  93 57 00 10 */	stw r26, 0x10(r23)
/* 80336C1C  28 1D 00 00 */	cmplwi r29, 0
/* 80336C20  40 82 00 2C */	bne lbl_80336C4C
/* 80336C24  38 00 00 01 */	li r0, 1
/* 80336C28  98 17 00 18 */	stb r0, 0x18(r23)
/* 80336C2C  7E E3 BB 78 */	mr r3, r23
/* 80336C30  7F 44 D3 78 */	mr r4, r26
/* 80336C34  81 97 00 00 */	lwz r12, 0(r23)
/* 80336C38  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80336C3C  7D 89 03 A6 */	mtctr r12
/* 80336C40  4E 80 04 21 */	bctrl 
/* 80336C44  7F 7B 1A 14 */	add r27, r27, r3
/* 80336C48  48 00 00 60 */	b lbl_80336CA8
lbl_80336C4C:
/* 80336C4C  28 1D 20 00 */	cmplwi r29, 0x2000
/* 80336C50  40 82 00 58 */	bne lbl_80336CA8
/* 80336C54  38 00 00 01 */	li r0, 1
/* 80336C58  98 17 00 18 */	stb r0, 0x18(r23)
/* 80336C5C  7E E3 BB 78 */	mr r3, r23
/* 80336C60  7F 44 D3 78 */	mr r4, r26
/* 80336C64  48 00 03 AD */	bl calcSizePatchedMaterial__14J3DModelLoaderFPC16J3DMaterialBlockUl
/* 80336C68  7F 7B 1A 14 */	add r27, r27, r3
/* 80336C6C  48 00 00 3C */	b lbl_80336CA8
lbl_80336C70:
/* 80336C70  7E E3 BB 78 */	mr r3, r23
/* 80336C74  7F 44 D3 78 */	mr r4, r26
/* 80336C78  48 00 01 19 */	bl calcSizeEnvelope__14J3DModelLoaderFPC16J3DEnvelopeBlock
/* 80336C7C  7F 7B 1A 14 */	add r27, r27, r3
/* 80336C80  48 00 00 28 */	b lbl_80336CA8
lbl_80336C84:
/* 80336C84  7E E3 BB 78 */	mr r3, r23
/* 80336C88  7F 44 D3 78 */	mr r4, r26
/* 80336C8C  48 00 01 15 */	bl calcSizeDraw__14J3DModelLoaderFPC12J3DDrawBlock
/* 80336C90  7F 7B 1A 14 */	add r27, r27, r3
/* 80336C94  48 00 00 14 */	b lbl_80336CA8
lbl_80336C98:
/* 80336C98  3C 60 80 3A */	lis r3, J3DModelLoaderCalcSize__stringBase0@ha
/* 80336C9C  38 63 20 E8 */	addi r3, r3, J3DModelLoaderCalcSize__stringBase0@l
/* 80336CA0  4C C6 31 82 */	crclr 6
/* 80336CA4  4B CC FE 19 */	bl OSReport
lbl_80336CA8:
/* 80336CA8  80 1A 00 04 */	lwz r0, 4(r26)
/* 80336CAC  7F 5A 02 14 */	add r26, r26, r0
/* 80336CB0  3B 39 00 01 */	addi r25, r25, 1
lbl_80336CB4:
/* 80336CB4  7C 19 B0 40 */	cmplw r25, r22
/* 80336CB8  41 80 FE 24 */	blt lbl_80336ADC
/* 80336CBC  7F 63 DB 78 */	mr r3, r27
/* 80336CC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80336CC4  48 02 B5 49 */	bl _restgpr_22
/* 80336CC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80336CCC  7C 08 03 A6 */	mtlr r0
/* 80336CD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80336CD4  4E 80 00 20 */	blr 
