lbl_80C33958:
/* 80C33958  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C3395C  7C 08 02 A6 */	mflr r0
/* 80C33960  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C33964  39 61 00 60 */	addi r11, r1, 0x60
/* 80C33968  4B 72 E8 61 */	bl _savegpr_24
/* 80C3396C  7C 78 1B 78 */	mr r24, r3
/* 80C33970  88 03 0B 9F */	lbz r0, 0xb9f(r3)
/* 80C33974  28 00 00 00 */	cmplwi r0, 0
/* 80C33978  40 82 00 C8 */	bne lbl_80C33A40
/* 80C3397C  3C 60 80 C3 */	lis r3, lit_4531@ha /* 0x80C33D20@ha */
/* 80C33980  3B 63 3D 20 */	addi r27, r3, lit_4531@l /* 0x80C33D20@l */
/* 80C33984  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80C33988  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3398C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C33990  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C33994  C0 58 04 D8 */	lfs f2, 0x4d8(r24)
/* 80C33998  C0 38 0B 58 */	lfs f1, 0xb58(r24)
/* 80C3399C  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80C339A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C339A4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C339A8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80C339AC  3B 20 00 00 */	li r25, 0
/* 80C339B0  3B E0 00 00 */	li r31, 0
/* 80C339B4  3B C0 00 00 */	li r30, 0
/* 80C339B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C339BC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C339C0  3C 60 80 C3 */	lis r3, emttrId@ha /* 0x80C33E1C@ha */
/* 80C339C4  3B A3 3E 1C */	addi r29, r3, emttrId@l /* 0x80C33E1C@l */
lbl_80C339C8:
/* 80C339C8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C339CC  38 00 00 FF */	li r0, 0xff
/* 80C339D0  90 01 00 08 */	stw r0, 8(r1)
/* 80C339D4  38 80 00 00 */	li r4, 0
/* 80C339D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C339DC  38 00 FF FF */	li r0, -1
/* 80C339E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C339E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C339E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C339EC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C339F0  3B 5E 0B 7C */	addi r26, r30, 0xb7c
/* 80C339F4  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80C339F8  38 A0 00 00 */	li r5, 0
/* 80C339FC  7C DD FA 2E */	lhzx r6, r29, r31
/* 80C33A00  38 E1 00 20 */	addi r7, r1, 0x20
/* 80C33A04  39 18 01 0C */	addi r8, r24, 0x10c
/* 80C33A08  39 20 00 00 */	li r9, 0
/* 80C33A0C  39 41 00 2C */	addi r10, r1, 0x2c
/* 80C33A10  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80C33A14  4B 41 9A B9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C33A18  7C 78 D1 2E */	stwx r3, r24, r26
/* 80C33A1C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C33A20  38 63 02 10 */	addi r3, r3, 0x210
/* 80C33A24  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80C33A28  4B 41 7E 8D */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80C33A2C  3B 39 00 01 */	addi r25, r25, 1
/* 80C33A30  2C 19 00 04 */	cmpwi r25, 4
/* 80C33A34  3B FF 00 02 */	addi r31, r31, 2
/* 80C33A38  3B DE 00 04 */	addi r30, r30, 4
/* 80C33A3C  41 80 FF 8C */	blt lbl_80C339C8
lbl_80C33A40:
/* 80C33A40  39 61 00 60 */	addi r11, r1, 0x60
/* 80C33A44  4B 72 E7 D1 */	bl _restgpr_24
/* 80C33A48  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C33A4C  7C 08 03 A6 */	mtlr r0
/* 80C33A50  38 21 00 60 */	addi r1, r1, 0x60
/* 80C33A54  4E 80 00 20 */	blr 
