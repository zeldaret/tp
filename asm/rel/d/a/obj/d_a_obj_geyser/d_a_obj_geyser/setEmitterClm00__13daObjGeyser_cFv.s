lbl_80BF8AD8:
/* 80BF8AD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF8ADC  7C 08 02 A6 */	mflr r0
/* 80BF8AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF8AE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BF8AE8  7C 7F 1B 78 */	mr r31, r3
/* 80BF8AEC  C0 43 04 F4 */	lfs f2, 0x4f4(r3)
/* 80BF8AF0  C0 23 04 F0 */	lfs f1, 0x4f0(r3)
/* 80BF8AF4  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BF8AF8  D0 03 07 88 */	stfs f0, 0x788(r3)
/* 80BF8AFC  D0 23 07 8C */	stfs f1, 0x78c(r3)
/* 80BF8B00  D0 43 07 90 */	stfs f2, 0x790(r3)
/* 80BF8B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF8B08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF8B0C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BF8B10  38 80 00 00 */	li r4, 0
/* 80BF8B14  90 81 00 08 */	stw r4, 8(r1)
/* 80BF8B18  38 00 FF FF */	li r0, -1
/* 80BF8B1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF8B20  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BF8B24  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BF8B28  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BF8B2C  38 80 00 00 */	li r4, 0
/* 80BF8B30  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083E5@ha */
/* 80BF8B34  38 A5 83 E5 */	addi r5, r5, 0x83E5 /* 0x000083E5@l */
/* 80BF8B38  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BF8B3C  38 E0 00 00 */	li r7, 0
/* 80BF8B40  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80BF8B44  39 3F 07 88 */	addi r9, r31, 0x788
/* 80BF8B48  39 40 00 FF */	li r10, 0xff
/* 80BF8B4C  3D 60 80 C0 */	lis r11, lit_3760@ha
/* 80BF8B50  C0 2B 90 10 */	lfs f1, lit_3760@l(r11)
/* 80BF8B54  4B 45 3F 3C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BF8B58  90 7F 07 6C */	stw r3, 0x76c(r31)
/* 80BF8B5C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BF8B60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF8B64  7C 08 03 A6 */	mtlr r0
/* 80BF8B68  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF8B6C  4E 80 00 20 */	blr 
