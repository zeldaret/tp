lbl_805B1F4C:
/* 805B1F4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B1F50  7C 08 02 A6 */	mflr r0
/* 805B1F54  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B1F58  39 61 00 50 */	addi r11, r1, 0x50
/* 805B1F5C  4B DB 02 6D */	bl _savegpr_24
/* 805B1F60  7C 7A 1B 78 */	mr r26, r3
/* 805B1F64  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805B1F68  3B 83 31 40 */	addi r28, r3, lit_3764@l /* 0x805B3140@l */
/* 805B1F6C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 805B1F70  80 1A 06 60 */	lwz r0, 0x660(r26)
/* 805B1F74  2C 00 00 0C */	cmpwi r0, 0xc
/* 805B1F78  40 82 00 18 */	bne lbl_805B1F90
/* 805B1F7C  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 805B1F80  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 805B1F84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805B1F88  40 81 00 08 */	ble lbl_805B1F90
/* 805B1F8C  C0 3C 00 20 */	lfs f1, 0x20(r28)
lbl_805B1F90:
/* 805B1F90  38 7A 0F 44 */	addi r3, r26, 0xf44
/* 805B1F94  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 805B1F98  C0 7C 00 64 */	lfs f3, 0x64(r28)
/* 805B1F9C  4B CB DA A1 */	bl cLib_addCalc2__FPffff
/* 805B1FA0  3B 60 00 00 */	li r27, 0
/* 805B1FA4  3B 20 00 00 */	li r25, 0
/* 805B1FA8  3B 00 00 00 */	li r24, 0
/* 805B1FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B1FB0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B1FB4  3C 60 80 5B */	lis r3, g_y_i@ha /* 0x805B326C@ha */
/* 805B1FB8  3B C3 32 6C */	addi r30, r3, g_y_i@l /* 0x805B326C@l */
lbl_805B1FBC:
/* 805B1FBC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B1FC0  38 00 00 FF */	li r0, 0xff
/* 805B1FC4  90 01 00 08 */	stw r0, 8(r1)
/* 805B1FC8  38 80 00 00 */	li r4, 0
/* 805B1FCC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B1FD0  38 00 FF FF */	li r0, -1
/* 805B1FD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B1FD8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B1FDC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B1FE0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B1FE4  3B F8 0F 30 */	addi r31, r24, 0xf30
/* 805B1FE8  7C 9A F8 2E */	lwzx r4, r26, r31
/* 805B1FEC  38 A0 00 00 */	li r5, 0
/* 805B1FF0  7C DE CA 2E */	lhzx r6, r30, r25
/* 805B1FF4  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 805B1FF8  39 00 00 00 */	li r8, 0
/* 805B1FFC  39 20 00 00 */	li r9, 0
/* 805B2000  39 40 00 00 */	li r10, 0
/* 805B2004  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 805B2008  4B A9 B4 C5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B200C  7C 7A F9 2E */	stwx r3, r26, r31
/* 805B2010  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B2014  38 63 02 10 */	addi r3, r3, 0x210
/* 805B2018  7C 9A F8 2E */	lwzx r4, r26, r31
/* 805B201C  4B A9 98 FD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B2020  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B2024  41 82 00 78 */	beq lbl_805B209C
/* 805B2028  80 7A 05 B8 */	lwz r3, 0x5b8(r26)
/* 805B202C  80 63 00 04 */	lwz r3, 4(r3)
/* 805B2030  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B2034  80 83 00 0C */	lwz r4, 0xc(r3)
/* 805B2038  3C 60 80 5B */	lis r3, g_y_ji@ha /* 0x805B3278@ha */
/* 805B203C  38 63 32 78 */	addi r3, r3, g_y_ji@l /* 0x805B3278@l */
/* 805B2040  7C 03 C0 2E */	lwzx r0, r3, r24
/* 805B2044  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805B2048  7C 64 02 14 */	add r3, r4, r0
/* 805B204C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B2050  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B2054  80 84 00 00 */	lwz r4, 0(r4)
/* 805B2058  4B D9 44 59 */	bl PSMTXCopy
/* 805B205C  C0 3A 0F 44 */	lfs f1, 0xf44(r26)
/* 805B2060  FC 40 08 90 */	fmr f2, f1
/* 805B2064  FC 60 08 90 */	fmr f3, f1
/* 805B2068  38 60 00 01 */	li r3, 1
/* 805B206C  4B CB EE 39 */	bl MtxScale__FfffUc
/* 805B2070  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B2074  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B2078  80 63 00 00 */	lwz r3, 0(r3)
/* 805B207C  38 9F 00 68 */	addi r4, r31, 0x68
/* 805B2080  38 BF 00 98 */	addi r5, r31, 0x98
/* 805B2084  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 805B2088  4B CC E7 81 */	bl func_80280808
/* 805B208C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805B2090  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805B2094  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 805B2098  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_805B209C:
/* 805B209C  3B 7B 00 01 */	addi r27, r27, 1
/* 805B20A0  2C 1B 00 05 */	cmpwi r27, 5
/* 805B20A4  3B 39 00 02 */	addi r25, r25, 2
/* 805B20A8  3B 18 00 04 */	addi r24, r24, 4
/* 805B20AC  41 80 FF 10 */	blt lbl_805B1FBC
/* 805B20B0  88 7A 0A 2C */	lbz r3, 0xa2c(r26)
/* 805B20B4  7C 60 07 75 */	extsb. r0, r3
/* 805B20B8  41 82 00 40 */	beq lbl_805B20F8
/* 805B20BC  38 03 FF FF */	addi r0, r3, -1
/* 805B20C0  98 1A 0A 2C */	stb r0, 0xa2c(r26)
/* 805B20C4  88 1A 0A 2C */	lbz r0, 0xa2c(r26)
/* 805B20C8  7C 00 07 75 */	extsb. r0, r0
/* 805B20CC  40 82 00 2C */	bne lbl_805B20F8
/* 805B20D0  80 1A 0A 30 */	lwz r0, 0xa30(r26)
/* 805B20D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B20D8  38 7A 05 BC */	addi r3, r26, 0x5bc
/* 805B20DC  38 81 00 20 */	addi r4, r1, 0x20
/* 805B20E0  38 A0 00 00 */	li r5, 0
/* 805B20E4  38 C0 FF FF */	li r6, -1
/* 805B20E8  81 9A 05 BC */	lwz r12, 0x5bc(r26)
/* 805B20EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B20F0  7D 89 03 A6 */	mtctr r12
/* 805B20F4  4E 80 04 21 */	bctrl 
lbl_805B20F8:
/* 805B20F8  39 61 00 50 */	addi r11, r1, 0x50
/* 805B20FC  4B DB 01 19 */	bl _restgpr_24
/* 805B2100  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B2104  7C 08 03 A6 */	mtlr r0
/* 805B2108  38 21 00 50 */	addi r1, r1, 0x50
/* 805B210C  4E 80 00 20 */	blr 
