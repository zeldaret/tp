lbl_80CB7D98:
/* 80CB7D98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CB7D9C  7C 08 02 A6 */	mflr r0
/* 80CB7DA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CB7DA4  39 61 00 60 */	addi r11, r1, 0x60
/* 80CB7DA8  4B 6A A4 20 */	b _savegpr_24
/* 80CB7DAC  7C 7F 1B 78 */	mr r31, r3
/* 80CB7DB0  3C 60 80 CC */	lis r3, lit_5106@ha
/* 80CB7DB4  C0 23 84 58 */	lfs f1, lit_5106@l(r3)
/* 80CB7DB8  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80CB7DBC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB7DC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CB7DC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CB7DC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CB7DCC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80CB7DD0  C0 3F 0B 64 */	lfs f1, 0xb64(r31)
/* 80CB7DD4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CB7DD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CB7DDC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CB7DE0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80CB7DE4  3B 00 00 00 */	li r24, 0
/* 80CB7DE8  3B C0 00 00 */	li r30, 0
/* 80CB7DEC  3B A0 00 00 */	li r29, 0
/* 80CB7DF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB7DF4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80CB7DF8  3C 60 80 CC */	lis r3, emttrId@ha
/* 80CB7DFC  3B 63 84 E0 */	addi r27, r3, emttrId@l
/* 80CB7E00  3C 60 80 CC */	lis r3, lit_4860@ha
/* 80CB7E04  3B 83 83 DC */	addi r28, r3, lit_4860@l
lbl_80CB7E08:
/* 80CB7E08  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CB7E0C  38 00 00 FF */	li r0, 0xff
/* 80CB7E10  90 01 00 08 */	stw r0, 8(r1)
/* 80CB7E14  38 80 00 00 */	li r4, 0
/* 80CB7E18  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB7E1C  38 00 FF FF */	li r0, -1
/* 80CB7E20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB7E24  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB7E28  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB7E2C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB7E30  3B 3D 0B 88 */	addi r25, r29, 0xb88
/* 80CB7E34  7C 9F C8 2E */	lwzx r4, r31, r25
/* 80CB7E38  38 A0 00 00 */	li r5, 0
/* 80CB7E3C  7C DB F2 2E */	lhzx r6, r27, r30
/* 80CB7E40  38 E1 00 20 */	addi r7, r1, 0x20
/* 80CB7E44  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80CB7E48  39 20 00 00 */	li r9, 0
/* 80CB7E4C  39 41 00 2C */	addi r10, r1, 0x2c
/* 80CB7E50  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80CB7E54  4B 39 56 78 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB7E58  7C 7F C9 2E */	stwx r3, r31, r25
/* 80CB7E5C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CB7E60  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB7E64  7C 9F C8 2E */	lwzx r4, r31, r25
/* 80CB7E68  4B 39 3A 4C */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CB7E6C  3B 18 00 01 */	addi r24, r24, 1
/* 80CB7E70  2C 18 00 04 */	cmpwi r24, 4
/* 80CB7E74  3B DE 00 02 */	addi r30, r30, 2
/* 80CB7E78  3B BD 00 04 */	addi r29, r29, 4
/* 80CB7E7C  41 80 FF 8C */	blt lbl_80CB7E08
/* 80CB7E80  39 61 00 60 */	addi r11, r1, 0x60
/* 80CB7E84  4B 6A A3 90 */	b _restgpr_24
/* 80CB7E88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CB7E8C  7C 08 03 A6 */	mtlr r0
/* 80CB7E90  38 21 00 60 */	addi r1, r1, 0x60
/* 80CB7E94  4E 80 00 20 */	blr 
