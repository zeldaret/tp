lbl_80CC8A30:
/* 80CC8A30  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CC8A34  7C 08 02 A6 */	mflr r0
/* 80CC8A38  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CC8A3C  39 61 00 70 */	addi r11, r1, 0x70
/* 80CC8A40  4B 69 97 84 */	b _savegpr_23
/* 80CC8A44  7C BD 2B 78 */	mr r29, r5
/* 80CC8A48  7C DE 33 78 */	mr r30, r6
/* 80CC8A4C  7C FF 3B 78 */	mr r31, r7
/* 80CC8A50  88 03 06 17 */	lbz r0, 0x617(r3)
/* 80CC8A54  54 00 10 3A */	slwi r0, r0, 2
/* 80CC8A58  7C A3 02 14 */	add r5, r3, r0
/* 80CC8A5C  80 A5 05 E4 */	lwz r5, 0x5e4(r5)
/* 80CC8A60  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 80CC8A64  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80CC8A68  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80CC8A6C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80CC8A70  7F 05 02 15 */	add. r24, r5, r0
/* 80CC8A74  41 82 00 D4 */	beq lbl_80CC8B48
/* 80CC8A78  C0 58 00 2C */	lfs f2, 0x2c(r24)
/* 80CC8A7C  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CC8A80  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 80CC8A84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CC8A88  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CC8A8C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80CC8A90  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80CC8A94  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CC8A98  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80CC8A9C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80CC8AA0  3C 60 80 CD */	lis r3, lit_4114@ha
/* 80CC8AA4  3B 23 91 B8 */	addi r25, r3, lit_4114@l
/* 80CC8AA8  C0 19 00 00 */	lfs f0, 0(r25)
/* 80CC8AAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CC8AB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CC8AB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CC8AB8  3A E0 00 00 */	li r23, 0
/* 80CC8ABC  3B 80 00 00 */	li r28, 0
/* 80CC8AC0  3B 60 00 00 */	li r27, 0
/* 80CC8AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC8AC8  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80CC8ACC  48 00 00 74 */	b lbl_80CC8B40
lbl_80CC8AD0:
/* 80CC8AD0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80CC8AD4  38 80 00 00 */	li r4, 0
/* 80CC8AD8  90 81 00 08 */	stw r4, 8(r1)
/* 80CC8ADC  38 00 FF FF */	li r0, -1
/* 80CC8AE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CC8AE4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CC8AE8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CC8AEC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CC8AF0  38 80 00 00 */	li r4, 0
/* 80CC8AF4  7C BE DA 2E */	lhzx r5, r30, r27
/* 80CC8AF8  38 C1 00 34 */	addi r6, r1, 0x34
/* 80CC8AFC  38 E0 00 00 */	li r7, 0
/* 80CC8B00  39 01 00 20 */	addi r8, r1, 0x20
/* 80CC8B04  39 21 00 28 */	addi r9, r1, 0x28
/* 80CC8B08  39 40 00 FF */	li r10, 0xff
/* 80CC8B0C  C0 39 00 00 */	lfs f1, 0(r25)
/* 80CC8B10  4B 38 3F 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CC8B14  7C 7F E1 2E */	stwx r3, r31, r28
/* 80CC8B18  7C BF E0 2E */	lwzx r5, r31, r28
/* 80CC8B1C  28 05 00 00 */	cmplwi r5, 0
/* 80CC8B20  41 82 00 14 */	beq lbl_80CC8B34
/* 80CC8B24  7F 03 C3 78 */	mr r3, r24
/* 80CC8B28  38 85 00 68 */	addi r4, r5, 0x68
/* 80CC8B2C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80CC8B30  4B 5B 7C B0 */	b func_802807E0
lbl_80CC8B34:
/* 80CC8B34  3A F7 00 01 */	addi r23, r23, 1
/* 80CC8B38  3B 9C 00 04 */	addi r28, r28, 4
/* 80CC8B3C  3B 7B 00 02 */	addi r27, r27, 2
lbl_80CC8B40:
/* 80CC8B40  7C 17 E8 00 */	cmpw r23, r29
/* 80CC8B44  41 80 FF 8C */	blt lbl_80CC8AD0
lbl_80CC8B48:
/* 80CC8B48  39 61 00 70 */	addi r11, r1, 0x70
/* 80CC8B4C  4B 69 96 C4 */	b _restgpr_23
/* 80CC8B50  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CC8B54  7C 08 03 A6 */	mtlr r0
/* 80CC8B58  38 21 00 70 */	addi r1, r1, 0x70
/* 80CC8B5C  4E 80 00 20 */	blr 
