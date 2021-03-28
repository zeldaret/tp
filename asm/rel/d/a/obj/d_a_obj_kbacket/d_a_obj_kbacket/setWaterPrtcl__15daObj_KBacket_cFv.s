lbl_80587A70:
/* 80587A70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80587A74  7C 08 02 A6 */	mflr r0
/* 80587A78  90 01 00 64 */	stw r0, 0x64(r1)
/* 80587A7C  39 61 00 60 */	addi r11, r1, 0x60
/* 80587A80  4B DD A7 48 */	b _savegpr_24
/* 80587A84  7C 7F 1B 78 */	mr r31, r3
/* 80587A88  3C 60 80 58 */	lis r3, lit_4666@ha
/* 80587A8C  C0 03 7E 6C */	lfs f0, lit_4666@l(r3)
/* 80587A90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80587A94  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80587A98  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80587A9C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80587AA0  C0 3F 0A 04 */	lfs f1, 0xa04(r31)
/* 80587AA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80587AA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80587AAC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80587AB0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80587AB4  3B 00 00 00 */	li r24, 0
/* 80587AB8  3B C0 00 00 */	li r30, 0
/* 80587ABC  3B A0 00 00 */	li r29, 0
/* 80587AC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80587AC4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80587AC8  3C 60 80 58 */	lis r3, emttrId@ha
/* 80587ACC  3B 63 7E F0 */	addi r27, r3, emttrId@l
/* 80587AD0  3C 60 80 58 */	lis r3, lit_4469@ha
/* 80587AD4  3B 83 7E 0C */	addi r28, r3, lit_4469@l
lbl_80587AD8:
/* 80587AD8  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80587ADC  38 00 00 FF */	li r0, 0xff
/* 80587AE0  90 01 00 08 */	stw r0, 8(r1)
/* 80587AE4  38 80 00 00 */	li r4, 0
/* 80587AE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80587AEC  38 00 FF FF */	li r0, -1
/* 80587AF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80587AF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80587AF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80587AFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80587B00  3B 3D 0A 24 */	addi r25, r29, 0xa24
/* 80587B04  7C 9F C8 2E */	lwzx r4, r31, r25
/* 80587B08  38 A0 00 00 */	li r5, 0
/* 80587B0C  7C DB F2 2E */	lhzx r6, r27, r30
/* 80587B10  38 E1 00 20 */	addi r7, r1, 0x20
/* 80587B14  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80587B18  39 20 00 00 */	li r9, 0
/* 80587B1C  39 41 00 2C */	addi r10, r1, 0x2c
/* 80587B20  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80587B24  4B AC 59 A8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80587B28  7C 7F C9 2E */	stwx r3, r31, r25
/* 80587B2C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80587B30  38 63 02 10 */	addi r3, r3, 0x210
/* 80587B34  7C 9F C8 2E */	lwzx r4, r31, r25
/* 80587B38  4B AC 3D 7C */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80587B3C  3B 18 00 01 */	addi r24, r24, 1
/* 80587B40  2C 18 00 04 */	cmpwi r24, 4
/* 80587B44  3B DE 00 02 */	addi r30, r30, 2
/* 80587B48  3B BD 00 04 */	addi r29, r29, 4
/* 80587B4C  41 80 FF 8C */	blt lbl_80587AD8
/* 80587B50  39 61 00 60 */	addi r11, r1, 0x60
/* 80587B54  4B DD A6 C0 */	b _restgpr_24
/* 80587B58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80587B5C  7C 08 03 A6 */	mtlr r0
/* 80587B60  38 21 00 60 */	addi r1, r1, 0x60
/* 80587B64  4E 80 00 20 */	blr 
