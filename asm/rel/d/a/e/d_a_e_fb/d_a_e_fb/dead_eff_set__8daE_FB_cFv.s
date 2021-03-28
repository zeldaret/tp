lbl_806B83F0:
/* 806B83F0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806B83F4  7C 08 02 A6 */	mflr r0
/* 806B83F8  90 01 00 74 */	stw r0, 0x74(r1)
/* 806B83FC  39 61 00 70 */	addi r11, r1, 0x70
/* 806B8400  4B CA 9D C4 */	b _savegpr_23
/* 806B8404  7C 7A 1B 78 */	mr r26, r3
/* 806B8408  C0 03 06 84 */	lfs f0, 0x684(r3)
/* 806B840C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806B8410  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B8414  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B8418  3B 60 00 00 */	li r27, 0
/* 806B841C  3B 20 00 00 */	li r25, 0
/* 806B8420  3B 00 00 00 */	li r24, 0
/* 806B8424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B8428  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 806B842C  3B 81 00 2C */	addi r28, r1, 0x2c
/* 806B8430  3C 60 80 6C */	lis r3, d_eff_id_4669@ha
/* 806B8434  3B C3 90 E0 */	addi r30, r3, d_eff_id_4669@l
/* 806B8438  3C 60 80 6C */	lis r3, lit_3751@ha
/* 806B843C  3B E3 8F A0 */	addi r31, r3, lit_3751@l
lbl_806B8440:
/* 806B8440  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806B8444  38 00 00 FF */	li r0, 0xff
/* 806B8448  90 01 00 08 */	stw r0, 8(r1)
/* 806B844C  38 80 00 00 */	li r4, 0
/* 806B8450  90 81 00 0C */	stw r4, 0xc(r1)
/* 806B8454  38 00 FF FF */	li r0, -1
/* 806B8458  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B845C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806B8460  90 81 00 18 */	stw r4, 0x18(r1)
/* 806B8464  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806B8468  7C 9C C0 2E */	lwzx r4, r28, r24
/* 806B846C  38 A0 00 00 */	li r5, 0
/* 806B8470  7C DE CA 2E */	lhzx r6, r30, r25
/* 806B8474  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 806B8478  39 00 00 00 */	li r8, 0
/* 806B847C  39 3A 04 E4 */	addi r9, r26, 0x4e4
/* 806B8480  39 41 00 20 */	addi r10, r1, 0x20
/* 806B8484  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806B8488  4B 99 50 44 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806B848C  7C 7C C1 2E */	stwx r3, r28, r24
/* 806B8490  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806B8494  38 63 02 10 */	addi r3, r3, 0x210
/* 806B8498  7C 9C C0 2E */	lwzx r4, r28, r24
/* 806B849C  4B 99 34 7C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806B84A0  7C 77 1B 79 */	or. r23, r3, r3
/* 806B84A4  41 82 00 48 */	beq lbl_806B84EC
/* 806B84A8  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806B84AC  80 63 00 04 */	lwz r3, 4(r3)
/* 806B84B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B84B4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 806B84B8  3C 60 80 6C */	lis r3, d_joint_id@ha
/* 806B84BC  38 63 90 EC */	addi r3, r3, d_joint_id@l
/* 806B84C0  7C 03 C0 2E */	lwzx r0, r3, r24
/* 806B84C4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 806B84C8  7C 64 02 14 */	add r3, r4, r0
/* 806B84CC  38 97 00 68 */	addi r4, r23, 0x68
/* 806B84D0  38 B7 00 98 */	addi r5, r23, 0x98
/* 806B84D4  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 806B84D8  4B BC 83 30 */	b func_80280808
/* 806B84DC  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 806B84E0  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 806B84E4  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 806B84E8  D0 37 00 B4 */	stfs f1, 0xb4(r23)
lbl_806B84EC:
/* 806B84EC  3B 7B 00 01 */	addi r27, r27, 1
/* 806B84F0  2C 1B 00 05 */	cmpwi r27, 5
/* 806B84F4  3B 39 00 02 */	addi r25, r25, 2
/* 806B84F8  3B 18 00 04 */	addi r24, r24, 4
/* 806B84FC  41 80 FF 44 */	blt lbl_806B8440
/* 806B8500  39 61 00 70 */	addi r11, r1, 0x70
/* 806B8504  4B CA 9D 0C */	b _restgpr_23
/* 806B8508  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806B850C  7C 08 03 A6 */	mtlr r0
/* 806B8510  38 21 00 70 */	addi r1, r1, 0x70
/* 806B8514  4E 80 00 20 */	blr 
