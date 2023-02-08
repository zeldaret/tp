lbl_803369A0:
/* 803369A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803369A4  7C 08 02 A6 */	mflr r0
/* 803369A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803369AC  39 61 00 30 */	addi r11, r1, 0x30
/* 803369B0  48 02 B8 1D */	bl _savegpr_25
/* 803369B4  7C 79 1B 78 */	mr r25, r3
/* 803369B8  3B 84 00 20 */	addi r28, r4, 0x20
/* 803369BC  3B 60 00 00 */	li r27, 0
/* 803369C0  3B 40 00 00 */	li r26, 0
/* 803369C4  3B A0 00 20 */	li r29, 0x20
/* 803369C8  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415433@ha */
/* 803369CC  3B C3 54 33 */	addi r30, r3, 0x5433 /* 0x4D415433@l */
/* 803369D0  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 803369D4  48 00 00 94 */	b lbl_80336A68
lbl_803369D8:
/* 803369D8  80 9C 00 00 */	lwz r4, 0(r28)
/* 803369DC  7C 04 F0 00 */	cmpw r4, r30
/* 803369E0  41 82 00 30 */	beq lbl_80336A10
/* 803369E4  40 80 00 18 */	bge lbl_803369FC
/* 803369E8  3C 60 4D 41 */	lis r3, 0x4D41 /* 0x4D415432@ha */
/* 803369EC  38 03 54 32 */	addi r0, r3, 0x5432 /* 0x4D415432@l */
/* 803369F0  7C 04 00 00 */	cmpw r4, r0
/* 803369F4  40 80 00 68 */	bge lbl_80336A5C
/* 803369F8  48 00 00 54 */	b lbl_80336A4C
lbl_803369FC:
/* 803369FC  3C 60 54 45 */	lis r3, 0x5445 /* 0x54455831@ha */
/* 80336A00  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x54455831@l */
/* 80336A04  7C 04 00 00 */	cmpw r4, r0
/* 80336A08  41 82 00 2C */	beq lbl_80336A34
/* 80336A0C  48 00 00 40 */	b lbl_80336A4C
lbl_80336A10:
/* 80336A10  7F 23 CB 78 */	mr r3, r25
/* 80336A14  7F 84 E3 78 */	mr r4, r28
/* 80336A18  3C A0 51 10 */	lis r5, 0x5110
/* 80336A1C  81 99 00 00 */	lwz r12, 0(r25)
/* 80336A20  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80336A24  7D 89 03 A6 */	mtctr r12
/* 80336A28  4E 80 04 21 */	bctrl 
/* 80336A2C  7F BD 1A 14 */	add r29, r29, r3
/* 80336A30  48 00 00 2C */	b lbl_80336A5C
lbl_80336A34:
/* 80336A34  7F 23 CB 78 */	mr r3, r25
/* 80336A38  7F 84 E3 78 */	mr r4, r28
/* 80336A3C  48 00 05 B5 */	bl calcSizeTextureTable__14J3DModelLoaderFPC15J3DTextureBlock
/* 80336A40  7F BD 1A 14 */	add r29, r29, r3
/* 80336A44  3B 60 00 01 */	li r27, 1
/* 80336A48  48 00 00 14 */	b lbl_80336A5C
lbl_80336A4C:
/* 80336A4C  3C 60 80 3A */	lis r3, J3DModelLoaderCalcSize__stringBase0@ha /* 0x803A20E8@ha */
/* 80336A50  38 63 20 E8 */	addi r3, r3, J3DModelLoaderCalcSize__stringBase0@l /* 0x803A20E8@l */
/* 80336A54  4C C6 31 82 */	crclr 6
/* 80336A58  4B CD 00 65 */	bl OSReport
lbl_80336A5C:
/* 80336A5C  80 1C 00 04 */	lwz r0, 4(r28)
/* 80336A60  7F 9C 02 14 */	add r28, r28, r0
/* 80336A64  3B 5A 00 01 */	addi r26, r26, 1
lbl_80336A68:
/* 80336A68  7C 1A F8 40 */	cmplw r26, r31
/* 80336A6C  41 80 FF 6C */	blt lbl_803369D8
/* 80336A70  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80336A74  40 82 00 08 */	bne lbl_80336A7C
/* 80336A78  3B BD 00 0C */	addi r29, r29, 0xc
lbl_80336A7C:
/* 80336A7C  7F A3 EB 78 */	mr r3, r29
/* 80336A80  39 61 00 30 */	addi r11, r1, 0x30
/* 80336A84  48 02 B7 95 */	bl _restgpr_25
/* 80336A88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80336A8C  7C 08 03 A6 */	mtlr r0
/* 80336A90  38 21 00 30 */	addi r1, r1, 0x30
/* 80336A94  4E 80 00 20 */	blr 
