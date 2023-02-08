lbl_8021AB84:
/* 8021AB84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8021AB88  7C 08 02 A6 */	mflr r0
/* 8021AB8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8021AB90  39 61 00 40 */	addi r11, r1, 0x40
/* 8021AB94  48 14 76 35 */	bl _savegpr_24
/* 8021AB98  7C 7F 1B 78 */	mr r31, r3
/* 8021AB9C  7C BC 2B 78 */	mr r28, r5
/* 8021ABA0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8021ABA4  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8021ABA8  7C 03 00 40 */	cmplw r3, r0
/* 8021ABAC  40 81 00 08 */	ble lbl_8021ABB4
/* 8021ABB0  7C DC 33 78 */	mr r28, r6
lbl_8021ABB4:
/* 8021ABB4  38 00 FF FF */	li r0, -1
/* 8021ABB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021ABBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021ABC0  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 8021ABC4  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 8021ABC8  7C 03 00 40 */	cmplw r3, r0
/* 8021ABCC  40 82 00 3C */	bne lbl_8021AC08
/* 8021ABD0  38 00 00 1E */	li r0, 0x1e
/* 8021ABD4  98 01 00 14 */	stb r0, 0x14(r1)
/* 8021ABD8  98 01 00 15 */	stb r0, 0x15(r1)
/* 8021ABDC  98 01 00 16 */	stb r0, 0x16(r1)
/* 8021ABE0  38 00 00 00 */	li r0, 0
/* 8021ABE4  98 01 00 17 */	stb r0, 0x17(r1)
/* 8021ABE8  38 60 00 FF */	li r3, 0xff
/* 8021ABEC  98 61 00 10 */	stb r3, 0x10(r1)
/* 8021ABF0  38 00 00 C8 */	li r0, 0xc8
/* 8021ABF4  98 01 00 11 */	stb r0, 0x11(r1)
/* 8021ABF8  38 00 00 32 */	li r0, 0x32
/* 8021ABFC  98 01 00 12 */	stb r0, 0x12(r1)
/* 8021AC00  98 61 00 13 */	stb r3, 0x13(r1)
/* 8021AC04  48 00 00 68 */	b lbl_8021AC6C
lbl_8021AC08:
/* 8021AC08  28 03 00 00 */	cmplwi r3, 0
/* 8021AC0C  40 82 00 38 */	bne lbl_8021AC44
/* 8021AC10  38 00 00 1E */	li r0, 0x1e
/* 8021AC14  98 01 00 14 */	stb r0, 0x14(r1)
/* 8021AC18  98 01 00 15 */	stb r0, 0x15(r1)
/* 8021AC1C  98 01 00 16 */	stb r0, 0x16(r1)
/* 8021AC20  38 00 00 00 */	li r0, 0
/* 8021AC24  98 01 00 17 */	stb r0, 0x17(r1)
/* 8021AC28  38 00 00 B4 */	li r0, 0xb4
/* 8021AC2C  98 01 00 10 */	stb r0, 0x10(r1)
/* 8021AC30  98 01 00 11 */	stb r0, 0x11(r1)
/* 8021AC34  98 01 00 12 */	stb r0, 0x12(r1)
/* 8021AC38  38 00 00 FF */	li r0, 0xff
/* 8021AC3C  98 01 00 13 */	stb r0, 0x13(r1)
/* 8021AC40  48 00 00 2C */	b lbl_8021AC6C
lbl_8021AC44:
/* 8021AC44  38 00 00 00 */	li r0, 0
/* 8021AC48  98 01 00 14 */	stb r0, 0x14(r1)
/* 8021AC4C  98 01 00 15 */	stb r0, 0x15(r1)
/* 8021AC50  98 01 00 16 */	stb r0, 0x16(r1)
/* 8021AC54  98 01 00 17 */	stb r0, 0x17(r1)
/* 8021AC58  38 00 00 FF */	li r0, 0xff
/* 8021AC5C  98 01 00 10 */	stb r0, 0x10(r1)
/* 8021AC60  98 01 00 11 */	stb r0, 0x11(r1)
/* 8021AC64  98 01 00 12 */	stb r0, 0x12(r1)
/* 8021AC68  98 01 00 13 */	stb r0, 0x13(r1)
lbl_8021AC6C:
/* 8021AC6C  3B 00 00 00 */	li r24, 0
/* 8021AC70  3B A0 00 00 */	li r29, 0
/* 8021AC74  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8021AC78  1F C0 00 0C */	mulli r30, r0, 0xc
/* 8021AC7C  7F 3F F2 14 */	add r25, r31, r30
/* 8021AC80  83 41 00 10 */	lwz r26, 0x10(r1)
/* 8021AC84  83 61 00 14 */	lwz r27, 0x14(r1)
lbl_8021AC88:
/* 8021AC88  93 41 00 08 */	stw r26, 8(r1)
/* 8021AC8C  93 61 00 0C */	stw r27, 0xc(r1)
/* 8021AC90  38 1D 00 84 */	addi r0, r29, 0x84
/* 8021AC94  7C 79 00 2E */	lwzx r3, r25, r0
/* 8021AC98  38 81 00 0C */	addi r4, r1, 0xc
/* 8021AC9C  38 A1 00 08 */	addi r5, r1, 8
/* 8021ACA0  81 83 00 00 */	lwz r12, 0(r3)
/* 8021ACA4  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8021ACA8  7D 89 03 A6 */	mtctr r12
/* 8021ACAC  4E 80 04 21 */	bctrl 
/* 8021ACB0  3B 18 00 01 */	addi r24, r24, 1
/* 8021ACB4  2C 18 00 03 */	cmpwi r24, 3
/* 8021ACB8  3B BD 00 04 */	addi r29, r29, 4
/* 8021ACBC  41 80 FF CC */	blt lbl_8021AC88
/* 8021ACC0  57 9C 06 3E */	clrlwi r28, r28, 0x18
/* 8021ACC4  28 1C 00 64 */	cmplwi r28, 0x64
/* 8021ACC8  40 80 00 C8 */	bge lbl_8021AD90
/* 8021ACCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021ACD0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021ACD4  83 5D 5D 30 */	lwz r26, 0x5d30(r29)
/* 8021ACD8  38 00 00 0A */	li r0, 0xa
/* 8021ACDC  7C 7C 03 D6 */	divw r3, r28, r0
/* 8021ACE0  48 00 35 E9 */	bl dMeter2Info_getNumberTextureName__Fi
/* 8021ACE4  7C 65 1B 78 */	mr r5, r3
/* 8021ACE8  7F 43 D3 78 */	mr r3, r26
/* 8021ACEC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8021ACF0  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8021ACF4  81 9A 00 00 */	lwz r12, 0(r26)
/* 8021ACF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021ACFC  7D 89 03 A6 */	mtctr r12
/* 8021AD00  4E 80 04 21 */	bctrl 
/* 8021AD04  7C 64 1B 78 */	mr r4, r3
/* 8021AD08  7C 7F F2 14 */	add r3, r31, r30
/* 8021AD0C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8021AD10  38 A0 00 00 */	li r5, 0
/* 8021AD14  81 83 00 00 */	lwz r12, 0(r3)
/* 8021AD18  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021AD1C  7D 89 03 A6 */	mtctr r12
/* 8021AD20  4E 80 04 21 */	bctrl 
/* 8021AD24  83 5D 5D 30 */	lwz r26, 0x5d30(r29)
/* 8021AD28  38 60 00 0A */	li r3, 0xa
/* 8021AD2C  7C 1C 1B D6 */	divw r0, r28, r3
/* 8021AD30  7C 00 19 D6 */	mullw r0, r0, r3
/* 8021AD34  7C 60 E0 50 */	subf r3, r0, r28
/* 8021AD38  48 00 35 91 */	bl dMeter2Info_getNumberTextureName__Fi
/* 8021AD3C  7C 65 1B 78 */	mr r5, r3
/* 8021AD40  7F 43 D3 78 */	mr r3, r26
/* 8021AD44  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8021AD48  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8021AD4C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8021AD50  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021AD54  7D 89 03 A6 */	mtctr r12
/* 8021AD58  4E 80 04 21 */	bctrl 
/* 8021AD5C  7C 64 1B 78 */	mr r4, r3
/* 8021AD60  7C 7F F2 14 */	add r3, r31, r30
/* 8021AD64  80 63 00 88 */	lwz r3, 0x88(r3)
/* 8021AD68  38 A0 00 00 */	li r5, 0
/* 8021AD6C  81 83 00 00 */	lwz r12, 0(r3)
/* 8021AD70  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021AD74  7D 89 03 A6 */	mtctr r12
/* 8021AD78  4E 80 04 21 */	bctrl 
/* 8021AD7C  38 00 00 00 */	li r0, 0
/* 8021AD80  7C 7F F2 14 */	add r3, r31, r30
/* 8021AD84  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8021AD88  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8021AD8C  48 00 01 24 */	b lbl_8021AEB0
lbl_8021AD90:
/* 8021AD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021AD94  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021AD98  83 5D 5D 30 */	lwz r26, 0x5d30(r29)
/* 8021AD9C  38 00 00 64 */	li r0, 0x64
/* 8021ADA0  7C 7C 03 D6 */	divw r3, r28, r0
/* 8021ADA4  48 00 35 25 */	bl dMeter2Info_getNumberTextureName__Fi
/* 8021ADA8  7C 65 1B 78 */	mr r5, r3
/* 8021ADAC  7F 43 D3 78 */	mr r3, r26
/* 8021ADB0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8021ADB4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8021ADB8  81 9A 00 00 */	lwz r12, 0(r26)
/* 8021ADBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021ADC0  7D 89 03 A6 */	mtctr r12
/* 8021ADC4  4E 80 04 21 */	bctrl 
/* 8021ADC8  7C 64 1B 78 */	mr r4, r3
/* 8021ADCC  7C 7F F2 14 */	add r3, r31, r30
/* 8021ADD0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8021ADD4  38 A0 00 00 */	li r5, 0
/* 8021ADD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8021ADDC  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021ADE0  7D 89 03 A6 */	mtctr r12
/* 8021ADE4  4E 80 04 21 */	bctrl 
/* 8021ADE8  38 60 00 64 */	li r3, 0x64
/* 8021ADEC  7C 1C 1B D6 */	divw r0, r28, r3
/* 8021ADF0  7C 00 19 D6 */	mullw r0, r0, r3
/* 8021ADF4  7C 00 E0 50 */	subf r0, r0, r28
/* 8021ADF8  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8021ADFC  83 5D 5D 30 */	lwz r26, 0x5d30(r29)
/* 8021AE00  38 00 00 0A */	li r0, 0xa
/* 8021AE04  7C 7C 03 D6 */	divw r3, r28, r0
/* 8021AE08  48 00 34 C1 */	bl dMeter2Info_getNumberTextureName__Fi
/* 8021AE0C  7C 65 1B 78 */	mr r5, r3
/* 8021AE10  7F 43 D3 78 */	mr r3, r26
/* 8021AE14  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8021AE18  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8021AE1C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8021AE20  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021AE24  7D 89 03 A6 */	mtctr r12
/* 8021AE28  4E 80 04 21 */	bctrl 
/* 8021AE2C  7C 64 1B 78 */	mr r4, r3
/* 8021AE30  7C 7F F2 14 */	add r3, r31, r30
/* 8021AE34  80 63 00 88 */	lwz r3, 0x88(r3)
/* 8021AE38  38 A0 00 00 */	li r5, 0
/* 8021AE3C  81 83 00 00 */	lwz r12, 0(r3)
/* 8021AE40  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021AE44  7D 89 03 A6 */	mtctr r12
/* 8021AE48  4E 80 04 21 */	bctrl 
/* 8021AE4C  83 5D 5D 30 */	lwz r26, 0x5d30(r29)
/* 8021AE50  38 60 00 0A */	li r3, 0xa
/* 8021AE54  7C 1C 1B D6 */	divw r0, r28, r3
/* 8021AE58  7C 00 19 D6 */	mullw r0, r0, r3
/* 8021AE5C  7C 60 E0 50 */	subf r3, r0, r28
/* 8021AE60  48 00 34 69 */	bl dMeter2Info_getNumberTextureName__Fi
/* 8021AE64  7C 65 1B 78 */	mr r5, r3
/* 8021AE68  7F 43 D3 78 */	mr r3, r26
/* 8021AE6C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8021AE70  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8021AE74  81 9A 00 00 */	lwz r12, 0(r26)
/* 8021AE78  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021AE7C  7D 89 03 A6 */	mtctr r12
/* 8021AE80  4E 80 04 21 */	bctrl 
/* 8021AE84  7C 64 1B 78 */	mr r4, r3
/* 8021AE88  7F 3F F2 14 */	add r25, r31, r30
/* 8021AE8C  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 8021AE90  38 A0 00 00 */	li r5, 0
/* 8021AE94  81 83 00 00 */	lwz r12, 0(r3)
/* 8021AE98  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 8021AE9C  7D 89 03 A6 */	mtctr r12
/* 8021AEA0  4E 80 04 21 */	bctrl 
/* 8021AEA4  38 00 00 01 */	li r0, 1
/* 8021AEA8  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 8021AEAC  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_8021AEB0:
/* 8021AEB0  39 61 00 40 */	addi r11, r1, 0x40
/* 8021AEB4  48 14 73 61 */	bl _restgpr_24
/* 8021AEB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8021AEBC  7C 08 03 A6 */	mtlr r0
/* 8021AEC0  38 21 00 40 */	addi r1, r1, 0x40
/* 8021AEC4  4E 80 00 20 */	blr 
