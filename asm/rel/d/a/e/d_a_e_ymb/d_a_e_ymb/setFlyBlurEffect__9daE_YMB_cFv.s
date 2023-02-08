lbl_80817CF0:
/* 80817CF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80817CF4  7C 08 02 A6 */	mflr r0
/* 80817CF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80817CFC  39 61 00 60 */	addi r11, r1, 0x60
/* 80817D00  4B B4 A4 C5 */	bl _savegpr_23
/* 80817D04  7C 7C 1B 78 */	mr r28, r3
/* 80817D08  88 03 07 17 */	lbz r0, 0x717(r3)
/* 80817D0C  28 00 00 00 */	cmplwi r0, 0
/* 80817D10  41 82 01 54 */	beq lbl_80817E64
/* 80817D14  C0 1C 06 DC */	lfs f0, 0x6dc(r28)
/* 80817D18  3C 60 80 82 */	lis r3, lit_3910@ha /* 0x808218C4@ha */
/* 80817D1C  C0 23 18 C4 */	lfs f1, lit_3910@l(r3)  /* 0x808218C4@l */
/* 80817D20  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80817D24  40 82 00 08 */	bne lbl_80817D2C
/* 80817D28  48 00 01 3C */	b lbl_80817E64
lbl_80817D2C:
/* 80817D2C  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 80817D30  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80817D34  41 82 01 30 */	beq lbl_80817E64
/* 80817D38  88 1C 07 10 */	lbz r0, 0x710(r28)
/* 80817D3C  28 00 00 00 */	cmplwi r0, 0
/* 80817D40  41 82 00 08 */	beq lbl_80817D48
/* 80817D44  48 00 01 20 */	b lbl_80817E64
lbl_80817D48:
/* 80817D48  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80817D4C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80817D50  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80817D54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80817D58  38 63 00 30 */	addi r3, r3, 0x30
/* 80817D5C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80817D60  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80817D64  4B B2 E7 4D */	bl PSMTXCopy
/* 80817D68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80817D6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80817D70  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80817D74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80817D78  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80817D7C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80817D80  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80817D84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80817D88  C0 1C 06 CC */	lfs f0, 0x6cc(r28)
/* 80817D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80817D90  41 80 00 D4 */	blt lbl_80817E64
/* 80817D94  3B A0 00 00 */	li r29, 0
/* 80817D98  3B 60 00 00 */	li r27, 0
/* 80817D9C  3B 40 00 00 */	li r26, 0
/* 80817DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80817DA4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80817DA8  3C 60 80 82 */	lis r3, w_eff_id_4677@ha /* 0x80821C90@ha */
/* 80817DAC  3A E3 1C 90 */	addi r23, r3, w_eff_id_4677@l /* 0x80821C90@l */
/* 80817DB0  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 80817DB4  3B 03 18 AC */	addi r24, r3, lit_3791@l /* 0x808218AC@l */
lbl_80817DB8:
/* 80817DB8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80817DBC  38 00 00 FF */	li r0, 0xff
/* 80817DC0  90 01 00 08 */	stw r0, 8(r1)
/* 80817DC4  38 80 00 00 */	li r4, 0
/* 80817DC8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80817DCC  38 00 FF FF */	li r0, -1
/* 80817DD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80817DD4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80817DD8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80817DDC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80817DE0  3B 3A 15 14 */	addi r25, r26, 0x1514
/* 80817DE4  7C 9C C8 2E */	lwzx r4, r28, r25
/* 80817DE8  38 A0 00 00 */	li r5, 0
/* 80817DEC  7C D7 DA 2E */	lhzx r6, r23, r27
/* 80817DF0  38 E1 00 20 */	addi r7, r1, 0x20
/* 80817DF4  39 1C 01 0C */	addi r8, r28, 0x10c
/* 80817DF8  39 20 00 00 */	li r9, 0
/* 80817DFC  39 40 00 00 */	li r10, 0
/* 80817E00  C0 38 00 00 */	lfs f1, 0(r24)
/* 80817E04  4B 83 56 C9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80817E08  7C 7C C9 2E */	stwx r3, r28, r25
/* 80817E0C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80817E10  38 63 02 10 */	addi r3, r3, 0x210
/* 80817E14  7C 9C C8 2E */	lwzx r4, r28, r25
/* 80817E18  4B 83 3B 01 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80817E1C  7C 79 1B 79 */	or. r25, r3, r3
/* 80817E20  41 82 00 30 */	beq lbl_80817E50
/* 80817E24  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80817E28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80817E2C  38 63 00 30 */	addi r3, r3, 0x30
/* 80817E30  38 99 00 68 */	addi r4, r25, 0x68
/* 80817E34  38 B9 00 98 */	addi r5, r25, 0x98
/* 80817E38  38 D9 00 A4 */	addi r6, r25, 0xa4
/* 80817E3C  4B A6 89 CD */	bl func_80280808
/* 80817E40  C0 39 00 9C */	lfs f1, 0x9c(r25)
/* 80817E44  C0 19 00 98 */	lfs f0, 0x98(r25)
/* 80817E48  D0 19 00 B0 */	stfs f0, 0xb0(r25)
/* 80817E4C  D0 39 00 B4 */	stfs f1, 0xb4(r25)
lbl_80817E50:
/* 80817E50  3B BD 00 01 */	addi r29, r29, 1
/* 80817E54  2C 1D 00 02 */	cmpwi r29, 2
/* 80817E58  3B 7B 00 02 */	addi r27, r27, 2
/* 80817E5C  3B 5A 00 04 */	addi r26, r26, 4
/* 80817E60  41 80 FF 58 */	blt lbl_80817DB8
lbl_80817E64:
/* 80817E64  39 61 00 60 */	addi r11, r1, 0x60
/* 80817E68  4B B4 A3 A9 */	bl _restgpr_23
/* 80817E6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80817E70  7C 08 03 A6 */	mtlr r0
/* 80817E74  38 21 00 60 */	addi r1, r1, 0x60
/* 80817E78  4E 80 00 20 */	blr 
