lbl_806AB158:
/* 806AB158  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806AB15C  7C 08 02 A6 */	mflr r0
/* 806AB160  90 01 00 74 */	stw r0, 0x74(r1)
/* 806AB164  39 61 00 70 */	addi r11, r1, 0x70
/* 806AB168  4B CB 70 5C */	b _savegpr_23
/* 806AB16C  7C 7C 1B 78 */	mr r28, r3
/* 806AB170  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806AB174  38 63 D8 08 */	addi r3, r3, l_HIO@l
/* 806AB178  C0 03 00 08 */	lfs f0, 8(r3)
/* 806AB17C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AB180  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806AB184  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806AB188  38 61 00 20 */	addi r3, r1, 0x20
/* 806AB18C  38 80 00 00 */	li r4, 0
/* 806AB190  38 A0 00 00 */	li r5, 0
/* 806AB194  38 C0 00 00 */	li r6, 0
/* 806AB198  4B BB C2 5C */	b __ct__5csXyzFsss
/* 806AB19C  3B C0 00 FF */	li r30, 0xff
/* 806AB1A0  4B B0 00 E0 */	b dKy_camera_water_in_status_check__Fv
/* 806AB1A4  2C 03 00 00 */	cmpwi r3, 0
/* 806AB1A8  40 82 00 08 */	bne lbl_806AB1B0
/* 806AB1AC  3B C0 00 55 */	li r30, 0x55
lbl_806AB1B0:
/* 806AB1B0  3B A0 00 00 */	li r29, 0
/* 806AB1B4  3B 60 00 00 */	li r27, 0
/* 806AB1B8  3B 40 00 00 */	li r26, 0
/* 806AB1BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AB1C0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806AB1C4  3C 60 80 6B */	lis r3, dead_effect_name@ha
/* 806AB1C8  3A E3 D7 20 */	addi r23, r3, dead_effect_name@l
/* 806AB1CC  3C 60 80 6B */	lis r3, lit_3874@ha
/* 806AB1D0  3B 03 D5 5C */	addi r24, r3, lit_3874@l
lbl_806AB1D4:
/* 806AB1D4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AB1D8  93 C1 00 08 */	stw r30, 8(r1)
/* 806AB1DC  38 80 00 00 */	li r4, 0
/* 806AB1E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AB1E4  38 00 FF FF */	li r0, -1
/* 806AB1E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AB1EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AB1F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AB1F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AB1F8  3B 3A 0D 48 */	addi r25, r26, 0xd48
/* 806AB1FC  7C 9C C8 2E */	lwzx r4, r28, r25
/* 806AB200  38 A0 00 00 */	li r5, 0
/* 806AB204  7C D7 DA 2E */	lhzx r6, r23, r27
/* 806AB208  38 E1 00 34 */	addi r7, r1, 0x34
/* 806AB20C  39 1C 01 0C */	addi r8, r28, 0x10c
/* 806AB210  39 21 00 20 */	addi r9, r1, 0x20
/* 806AB214  39 41 00 28 */	addi r10, r1, 0x28
/* 806AB218  C0 38 00 00 */	lfs f1, 0(r24)
/* 806AB21C  4B 9A 22 B0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AB220  7C 7C C9 2E */	stwx r3, r28, r25
/* 806AB224  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AB228  38 63 02 10 */	addi r3, r3, 0x210
/* 806AB22C  7C 9C C8 2E */	lwzx r4, r28, r25
/* 806AB230  4B 9A 06 E8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806AB234  7C 79 1B 79 */	or. r25, r3, r3
/* 806AB238  41 82 00 38 */	beq lbl_806AB270
/* 806AB23C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806AB240  80 63 00 04 */	lwz r3, 4(r3)
/* 806AB244  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AB248  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AB24C  38 63 00 30 */	addi r3, r3, 0x30
/* 806AB250  38 99 00 68 */	addi r4, r25, 0x68
/* 806AB254  38 B9 00 98 */	addi r5, r25, 0x98
/* 806AB258  38 D9 00 A4 */	addi r6, r25, 0xa4
/* 806AB25C  4B BD 55 AC */	b func_80280808
/* 806AB260  C0 39 00 9C */	lfs f1, 0x9c(r25)
/* 806AB264  C0 19 00 98 */	lfs f0, 0x98(r25)
/* 806AB268  D0 19 00 B0 */	stfs f0, 0xb0(r25)
/* 806AB26C  D0 39 00 B4 */	stfs f1, 0xb4(r25)
lbl_806AB270:
/* 806AB270  3B BD 00 01 */	addi r29, r29, 1
/* 806AB274  2C 1D 00 02 */	cmpwi r29, 2
/* 806AB278  3B 7B 00 02 */	addi r27, r27, 2
/* 806AB27C  3B 5A 00 04 */	addi r26, r26, 4
/* 806AB280  41 80 FF 54 */	blt lbl_806AB1D4
/* 806AB284  39 61 00 70 */	addi r11, r1, 0x70
/* 806AB288  4B CB 6F 88 */	b _restgpr_23
/* 806AB28C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806AB290  7C 08 03 A6 */	mtlr r0
/* 806AB294  38 21 00 70 */	addi r1, r1, 0x70
/* 806AB298  4E 80 00 20 */	blr 
