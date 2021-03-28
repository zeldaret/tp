lbl_804F0D3C:
/* 804F0D3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804F0D40  7C 08 02 A6 */	mflr r0
/* 804F0D44  90 01 00 64 */	stw r0, 0x64(r1)
/* 804F0D48  39 61 00 60 */	addi r11, r1, 0x60
/* 804F0D4C  4B E7 14 78 */	b _savegpr_23
/* 804F0D50  7C 7C 1B 78 */	mr r28, r3
/* 804F0D54  80 63 05 D0 */	lwz r3, 0x5d0(r3)
/* 804F0D58  83 C3 00 04 */	lwz r30, 4(r3)
/* 804F0D5C  3C 60 80 50 */	lis r3, lit_3792@ha
/* 804F0D60  C0 03 A6 F8 */	lfs f0, lit_3792@l(r3)
/* 804F0D64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804F0D68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804F0D6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804F0D70  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804F0D74  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F0D78  38 63 00 30 */	addi r3, r3, 0x30
/* 804F0D7C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804F0D80  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804F0D84  80 84 00 00 */	lwz r4, 0(r4)
/* 804F0D88  4B E5 57 28 */	b PSMTXCopy
/* 804F0D8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 804F0D90  38 81 00 20 */	addi r4, r1, 0x20
/* 804F0D94  4B D8 01 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F0D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F0D9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804F0DA0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804F0DA4  38 00 00 FF */	li r0, 0xff
/* 804F0DA8  90 01 00 08 */	stw r0, 8(r1)
/* 804F0DAC  38 80 00 00 */	li r4, 0
/* 804F0DB0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F0DB4  38 00 FF FF */	li r0, -1
/* 804F0DB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F0DBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F0DC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F0DC4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F0DC8  80 9C 18 70 */	lwz r4, 0x1870(r28)
/* 804F0DCC  38 A0 00 00 */	li r5, 0
/* 804F0DD0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000814D@ha */
/* 804F0DD4  38 C6 81 4D */	addi r6, r6, 0x814D /* 0x0000814D@l */
/* 804F0DD8  38 E1 00 20 */	addi r7, r1, 0x20
/* 804F0DDC  39 00 00 00 */	li r8, 0
/* 804F0DE0  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 804F0DE4  39 40 00 00 */	li r10, 0
/* 804F0DE8  3D 60 80 50 */	lis r11, lit_3777@ha
/* 804F0DEC  C0 2B A6 BC */	lfs f1, lit_3777@l(r11)
/* 804F0DF0  4B B5 C6 DC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F0DF4  90 7C 18 70 */	stw r3, 0x1870(r28)
/* 804F0DF8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804F0DFC  38 00 00 FF */	li r0, 0xff
/* 804F0E00  90 01 00 08 */	stw r0, 8(r1)
/* 804F0E04  38 80 00 00 */	li r4, 0
/* 804F0E08  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F0E0C  38 00 FF FF */	li r0, -1
/* 804F0E10  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F0E14  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F0E18  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F0E1C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F0E20  80 9C 18 74 */	lwz r4, 0x1874(r28)
/* 804F0E24  38 A0 00 00 */	li r5, 0
/* 804F0E28  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000814E@ha */
/* 804F0E2C  38 C6 81 4E */	addi r6, r6, 0x814E /* 0x0000814E@l */
/* 804F0E30  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 804F0E34  39 00 00 00 */	li r8, 0
/* 804F0E38  39 20 00 00 */	li r9, 0
/* 804F0E3C  39 40 00 00 */	li r10, 0
/* 804F0E40  3D 60 80 50 */	lis r11, lit_3777@ha
/* 804F0E44  C0 2B A6 BC */	lfs f1, lit_3777@l(r11)
/* 804F0E48  4B B5 C6 84 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F0E4C  90 7C 18 74 */	stw r3, 0x1874(r28)
/* 804F0E50  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804F0E54  38 00 00 FF */	li r0, 0xff
/* 804F0E58  90 01 00 08 */	stw r0, 8(r1)
/* 804F0E5C  38 80 00 00 */	li r4, 0
/* 804F0E60  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F0E64  38 00 FF FF */	li r0, -1
/* 804F0E68  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F0E6C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F0E70  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F0E74  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F0E78  80 9C 18 78 */	lwz r4, 0x1878(r28)
/* 804F0E7C  38 A0 00 00 */	li r5, 0
/* 804F0E80  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000814F@ha */
/* 804F0E84  38 C6 81 4F */	addi r6, r6, 0x814F /* 0x0000814F@l */
/* 804F0E88  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 804F0E8C  39 00 00 00 */	li r8, 0
/* 804F0E90  39 20 00 00 */	li r9, 0
/* 804F0E94  39 40 00 00 */	li r10, 0
/* 804F0E98  3D 60 80 50 */	lis r11, lit_3777@ha
/* 804F0E9C  C0 2B A6 BC */	lfs f1, lit_3777@l(r11)
/* 804F0EA0  4B B5 C6 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F0EA4  90 7C 18 78 */	stw r3, 0x1878(r28)
/* 804F0EA8  88 1C 07 92 */	lbz r0, 0x792(r28)
/* 804F0EAC  7C 00 07 75 */	extsb. r0, r0
/* 804F0EB0  40 82 00 B8 */	bne lbl_804F0F68
/* 804F0EB4  3B A0 00 00 */	li r29, 0
/* 804F0EB8  3B 60 00 00 */	li r27, 0
/* 804F0EBC  3B 40 00 00 */	li r26, 0
/* 804F0EC0  3C 60 80 50 */	lis r3, tame_name@ha
/* 804F0EC4  3B 03 A9 DC */	addi r24, r3, tame_name@l
/* 804F0EC8  3C 60 80 50 */	lis r3, lit_3777@ha
/* 804F0ECC  3B 23 A6 BC */	addi r25, r3, lit_3777@l
lbl_804F0ED0:
/* 804F0ED0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804F0ED4  38 00 00 FF */	li r0, 0xff
/* 804F0ED8  90 01 00 08 */	stw r0, 8(r1)
/* 804F0EDC  38 80 00 00 */	li r4, 0
/* 804F0EE0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F0EE4  38 00 FF FF */	li r0, -1
/* 804F0EE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F0EEC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F0EF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F0EF4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F0EF8  3A FA 18 7C */	addi r23, r26, 0x187c
/* 804F0EFC  7C 9C B8 2E */	lwzx r4, r28, r23
/* 804F0F00  38 A0 00 00 */	li r5, 0
/* 804F0F04  7C D8 DA 2E */	lhzx r6, r24, r27
/* 804F0F08  38 E1 00 20 */	addi r7, r1, 0x20
/* 804F0F0C  39 00 00 00 */	li r8, 0
/* 804F0F10  39 20 00 00 */	li r9, 0
/* 804F0F14  39 40 00 00 */	li r10, 0
/* 804F0F18  C0 39 00 00 */	lfs f1, 0(r25)
/* 804F0F1C  4B B5 C5 B0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F0F20  7C 7C B9 2E */	stwx r3, r28, r23
/* 804F0F24  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804F0F28  38 63 02 10 */	addi r3, r3, 0x210
/* 804F0F2C  7C 9C B8 2E */	lwzx r4, r28, r23
/* 804F0F30  4B B5 A9 E8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804F0F34  7C 65 1B 79 */	or. r5, r3, r3
/* 804F0F38  41 82 00 1C */	beq lbl_804F0F54
/* 804F0F3C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804F0F40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F0F44  38 63 00 30 */	addi r3, r3, 0x30
/* 804F0F48  38 85 00 68 */	addi r4, r5, 0x68
/* 804F0F4C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804F0F50  4B D8 F8 90 */	b func_802807E0
lbl_804F0F54:
/* 804F0F54  3B BD 00 01 */	addi r29, r29, 1
/* 804F0F58  2C 1D 00 02 */	cmpwi r29, 2
/* 804F0F5C  3B 7B 00 02 */	addi r27, r27, 2
/* 804F0F60  3B 5A 00 04 */	addi r26, r26, 4
/* 804F0F64  41 80 FF 6C */	blt lbl_804F0ED0
lbl_804F0F68:
/* 804F0F68  39 61 00 60 */	addi r11, r1, 0x60
/* 804F0F6C  4B E7 12 A4 */	b _restgpr_23
/* 804F0F70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804F0F74  7C 08 03 A6 */	mtlr r0
/* 804F0F78  38 21 00 60 */	addi r1, r1, 0x60
/* 804F0F7C  4E 80 00 20 */	blr 
