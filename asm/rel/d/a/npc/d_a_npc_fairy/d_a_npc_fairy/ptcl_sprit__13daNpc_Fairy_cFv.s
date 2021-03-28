lbl_809B38E8:
/* 809B38E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809B38EC  7C 08 02 A6 */	mflr r0
/* 809B38F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 809B38F4  39 61 00 60 */	addi r11, r1, 0x60
/* 809B38F8  4B 9A E8 D0 */	b _savegpr_24
/* 809B38FC  7C 78 1B 78 */	mr r24, r3
/* 809B3900  3C 60 80 9C */	lis r3, lit_3916@ha
/* 809B3904  3B 63 93 78 */	addi r27, r3, lit_3916@l
/* 809B3908  C0 1B 00 00 */	lfs f0, 0(r27)
/* 809B390C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809B3910  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809B3914  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809B3918  3B 20 00 00 */	li r25, 0
/* 809B391C  3B E0 00 00 */	li r31, 0
/* 809B3920  3B C0 00 00 */	li r30, 0
/* 809B3924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B3928  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 809B392C  3C 60 80 9C */	lis r3, id@ha
/* 809B3930  3B A3 94 10 */	addi r29, r3, id@l
lbl_809B3934:
/* 809B3934  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 809B3938  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809B393C  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 809B3940  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809B3944  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 809B3948  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809B394C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809B3950  38 00 00 FF */	li r0, 0xff
/* 809B3954  90 01 00 08 */	stw r0, 8(r1)
/* 809B3958  38 80 00 00 */	li r4, 0
/* 809B395C  90 81 00 0C */	stw r4, 0xc(r1)
/* 809B3960  38 00 FF FF */	li r0, -1
/* 809B3964  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B3968  90 81 00 14 */	stw r4, 0x14(r1)
/* 809B396C  90 81 00 18 */	stw r4, 0x18(r1)
/* 809B3970  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809B3974  3B 5E 0F D0 */	addi r26, r30, 0xfd0
/* 809B3978  7C 98 D0 2E */	lwzx r4, r24, r26
/* 809B397C  38 A0 00 00 */	li r5, 0
/* 809B3980  7C DD FA 2E */	lhzx r6, r29, r31
/* 809B3984  38 E1 00 2C */	addi r7, r1, 0x2c
/* 809B3988  39 00 00 00 */	li r8, 0
/* 809B398C  39 38 0D 78 */	addi r9, r24, 0xd78
/* 809B3990  39 41 00 20 */	addi r10, r1, 0x20
/* 809B3994  C0 3B 00 00 */	lfs f1, 0(r27)
/* 809B3998  4B 69 9B 34 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809B399C  7C 78 D1 2E */	stwx r3, r24, r26
/* 809B39A0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809B39A4  38 63 02 10 */	addi r3, r3, 0x210
/* 809B39A8  7C 98 D0 2E */	lwzx r4, r24, r26
/* 809B39AC  4B 69 7F 6C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 809B39B0  28 03 00 00 */	cmplwi r3, 0
/* 809B39B4  41 82 00 1C */	beq lbl_809B39D0
/* 809B39B8  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 809B39BC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 809B39C0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809B39C4  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 809B39C8  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 809B39CC  D0 43 00 AC */	stfs f2, 0xac(r3)
lbl_809B39D0:
/* 809B39D0  3B 39 00 01 */	addi r25, r25, 1
/* 809B39D4  2C 19 00 03 */	cmpwi r25, 3
/* 809B39D8  3B FF 00 02 */	addi r31, r31, 2
/* 809B39DC  3B DE 00 04 */	addi r30, r30, 4
/* 809B39E0  41 80 FF 54 */	blt lbl_809B3934
/* 809B39E4  39 61 00 60 */	addi r11, r1, 0x60
/* 809B39E8  4B 9A E8 2C */	b _restgpr_24
/* 809B39EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809B39F0  7C 08 03 A6 */	mtlr r0
/* 809B39F4  38 21 00 60 */	addi r1, r1, 0x60
/* 809B39F8  4E 80 00 20 */	blr 
