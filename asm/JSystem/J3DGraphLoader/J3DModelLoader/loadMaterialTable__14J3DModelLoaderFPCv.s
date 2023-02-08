lbl_80334ABC:
/* 80334ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80334AC0  7C 08 02 A6 */	mflr r0
/* 80334AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80334AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80334ACC  48 02 D7 09 */	bl _savegpr_27
/* 80334AD0  7C 7F 1B 78 */	mr r31, r3
/* 80334AD4  7C 9E 23 78 */	mr r30, r4
/* 80334AD8  38 60 00 20 */	li r3, 0x20
/* 80334ADC  4B F9 A1 71 */	bl __nw__FUl
/* 80334AE0  7C 60 1B 79 */	or. r0, r3, r3
/* 80334AE4  41 82 00 0C */	beq lbl_80334AF0
/* 80334AE8  4B FF AA E9 */	bl __ct__16J3DMaterialTableFv
/* 80334AEC  7C 60 1B 78 */	mr r0, r3
lbl_80334AF0:
/* 80334AF0  90 1F 00 08 */	stw r0, 8(r31)
/* 80334AF4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80334AF8  4B FF AA B1 */	bl clear__16J3DMaterialTableFv
/* 80334AFC  3B 9E 00 20 */	addi r28, r30, 0x20
/* 80334B00  3B 60 00 00 */	li r27, 0
/* 80334B04  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415433@ha */
/* 80334B08  3B A3 54 33 */	addi r29, r3, 0x5433 /* 0x4D415433@l */
/* 80334B0C  83 DE 00 0C */	lwz r30, 0xc(r30)
/* 80334B10  48 00 00 A8 */	b lbl_80334BB8
lbl_80334B14:
/* 80334B14  80 9C 00 00 */	lwz r4, 0(r28)
/* 80334B18  7C 04 E8 00 */	cmpw r4, r29
/* 80334B1C  41 82 00 30 */	beq lbl_80334B4C
/* 80334B20  40 80 00 18 */	bge lbl_80334B38
/* 80334B24  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415432@ha */
/* 80334B28  38 03 54 32 */	addi r0, r3, 0x5432 /* 0x4D415432@l */
/* 80334B2C  7C 04 00 00 */	cmpw r4, r0
/* 80334B30  40 80 00 3C */	bge lbl_80334B6C
/* 80334B34  48 00 00 68 */	b lbl_80334B9C
lbl_80334B38:
/* 80334B38  3C 60 54 45 */	lis r3, 0x5445 /* 0x54455831@ha */
/* 80334B3C  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x54455831@l */
/* 80334B40  7C 04 00 00 */	cmpw r4, r0
/* 80334B44  41 82 00 48 */	beq lbl_80334B8C
/* 80334B48  48 00 00 54 */	b lbl_80334B9C
lbl_80334B4C:
/* 80334B4C  7F E3 FB 78 */	mr r3, r31
/* 80334B50  7F 84 E3 78 */	mr r4, r28
/* 80334B54  3C A0 51 10 */	lis r5, 0x5110
/* 80334B58  81 9F 00 00 */	lwz r12, 0(r31)
/* 80334B5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80334B60  7D 89 03 A6 */	mtctr r12
/* 80334B64  4E 80 04 21 */	bctrl 
/* 80334B68  48 00 00 44 */	b lbl_80334BAC
lbl_80334B6C:
/* 80334B6C  7F E3 FB 78 */	mr r3, r31
/* 80334B70  7F 84 E3 78 */	mr r4, r28
/* 80334B74  3C A0 51 10 */	lis r5, 0x5110
/* 80334B78  81 9F 00 00 */	lwz r12, 0(r31)
/* 80334B7C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80334B80  7D 89 03 A6 */	mtctr r12
/* 80334B84  4E 80 04 21 */	bctrl 
/* 80334B88  48 00 00 24 */	b lbl_80334BAC
lbl_80334B8C:
/* 80334B8C  7F E3 FB 78 */	mr r3, r31
/* 80334B90  7F 84 E3 78 */	mr r4, r28
/* 80334B94  48 00 13 C9 */	bl readTextureTable__14J3DModelLoaderFPC15J3DTextureBlock
/* 80334B98  48 00 00 14 */	b lbl_80334BAC
lbl_80334B9C:
/* 80334B9C  3C 60 80 3A */	lis r3, J3DModelLoader__stringBase0@ha /* 0x803A20B0@ha */
/* 80334BA0  38 63 20 B0 */	addi r3, r3, J3DModelLoader__stringBase0@l /* 0x803A20B0@l */
/* 80334BA4  4C C6 31 82 */	crclr 6
/* 80334BA8  4B CD 1F 15 */	bl OSReport
lbl_80334BAC:
/* 80334BAC  80 1C 00 04 */	lwz r0, 4(r28)
/* 80334BB0  7F 9C 02 14 */	add r28, r28, r0
/* 80334BB4  3B 7B 00 01 */	addi r27, r27, 1
lbl_80334BB8:
/* 80334BB8  7C 1B F0 40 */	cmplw r27, r30
/* 80334BBC  41 80 FF 58 */	blt lbl_80334B14
/* 80334BC0  80 7F 00 08 */	lwz r3, 8(r31)
/* 80334BC4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80334BC8  28 00 00 00 */	cmplwi r0, 0
/* 80334BCC  40 82 00 38 */	bne lbl_80334C04
/* 80334BD0  38 60 00 0C */	li r3, 0xc
/* 80334BD4  4B F9 A0 79 */	bl __nw__FUl
/* 80334BD8  28 03 00 00 */	cmplwi r3, 0
/* 80334BDC  41 82 00 20 */	beq lbl_80334BFC
/* 80334BE0  3C 80 80 3D */	lis r4, __vt__10J3DTexture@ha /* 0x803CF1E8@ha */
/* 80334BE4  38 04 F1 E8 */	addi r0, r4, __vt__10J3DTexture@l /* 0x803CF1E8@l */
/* 80334BE8  90 03 00 08 */	stw r0, 8(r3)
/* 80334BEC  38 00 00 00 */	li r0, 0
/* 80334BF0  B0 03 00 00 */	sth r0, 0(r3)
/* 80334BF4  B0 03 00 02 */	sth r0, 2(r3)
/* 80334BF8  90 03 00 04 */	stw r0, 4(r3)
lbl_80334BFC:
/* 80334BFC  80 9F 00 08 */	lwz r4, 8(r31)
/* 80334C00  90 64 00 14 */	stw r3, 0x14(r4)
lbl_80334C04:
/* 80334C04  80 7F 00 08 */	lwz r3, 8(r31)
/* 80334C08  39 61 00 20 */	addi r11, r1, 0x20
/* 80334C0C  48 02 D6 15 */	bl _restgpr_27
/* 80334C10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80334C14  7C 08 03 A6 */	mtlr r0
/* 80334C18  38 21 00 20 */	addi r1, r1, 0x20
/* 80334C1C  4E 80 00 20 */	blr 
