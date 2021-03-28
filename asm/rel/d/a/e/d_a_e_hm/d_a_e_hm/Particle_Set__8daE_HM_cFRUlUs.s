lbl_806E0DB0:
/* 806E0DB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E0DB4  7C 08 02 A6 */	mflr r0
/* 806E0DB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E0DBC  39 61 00 30 */	addi r11, r1, 0x30
/* 806E0DC0  4B C8 14 1C */	b _savegpr_29
/* 806E0DC4  7C 7D 1B 78 */	mr r29, r3
/* 806E0DC8  7C 9E 23 78 */	mr r30, r4
/* 806E0DCC  7C A6 2B 78 */	mr r6, r5
/* 806E0DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E0DD4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806E0DD8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806E0DDC  38 00 00 FF */	li r0, 0xff
/* 806E0DE0  90 01 00 08 */	stw r0, 8(r1)
/* 806E0DE4  38 80 00 00 */	li r4, 0
/* 806E0DE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 806E0DEC  38 00 FF FF */	li r0, -1
/* 806E0DF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0DF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E0DF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E0DFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806E0E00  80 9E 00 00 */	lwz r4, 0(r30)
/* 806E0E04  38 A0 00 00 */	li r5, 0
/* 806E0E08  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 806E0E0C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806E0E10  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 806E0E14  39 5D 05 E8 */	addi r10, r29, 0x5e8
/* 806E0E18  3D 60 80 6E */	lis r11, lit_3793@ha
/* 806E0E1C  C0 2B 59 28 */	lfs f1, lit_3793@l(r11)
/* 806E0E20  4B 96 C6 AC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E0E24  90 7E 00 00 */	stw r3, 0(r30)
/* 806E0E28  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806E0E2C  38 63 02 10 */	addi r3, r3, 0x210
/* 806E0E30  80 9E 00 00 */	lwz r4, 0(r30)
/* 806E0E34  4B 96 AA E4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806E0E38  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E0E3C  41 82 00 38 */	beq lbl_806E0E74
/* 806E0E40  80 7D 06 18 */	lwz r3, 0x618(r29)
/* 806E0E44  80 63 00 04 */	lwz r3, 4(r3)
/* 806E0E48  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E0E4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E0E50  38 63 00 C0 */	addi r3, r3, 0xc0
/* 806E0E54  38 9F 00 68 */	addi r4, r31, 0x68
/* 806E0E58  38 BF 00 98 */	addi r5, r31, 0x98
/* 806E0E5C  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 806E0E60  4B B9 F9 A8 */	b func_80280808
/* 806E0E64  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806E0E68  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806E0E6C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 806E0E70  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_806E0E74:
/* 806E0E74  39 61 00 30 */	addi r11, r1, 0x30
/* 806E0E78  4B C8 13 B0 */	b _restgpr_29
/* 806E0E7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E0E80  7C 08 03 A6 */	mtlr r0
/* 806E0E84  38 21 00 30 */	addi r1, r1, 0x30
/* 806E0E88  4E 80 00 20 */	blr 
