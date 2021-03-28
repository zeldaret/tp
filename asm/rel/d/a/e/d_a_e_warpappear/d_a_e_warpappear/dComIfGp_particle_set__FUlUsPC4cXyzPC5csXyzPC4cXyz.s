lbl_807D1AC8:
/* 807D1AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807D1ACC  7C 08 02 A6 */	mflr r0
/* 807D1AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D1AD4  7C 6C 1B 78 */	mr r12, r3
/* 807D1AD8  7C 8B 23 78 */	mr r11, r4
/* 807D1ADC  7C A8 2B 78 */	mr r8, r5
/* 807D1AE0  7C C9 33 78 */	mr r9, r6
/* 807D1AE4  7C EA 3B 78 */	mr r10, r7
/* 807D1AE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D1AEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D1AF0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807D1AF4  38 00 00 FF */	li r0, 0xff
/* 807D1AF8  90 01 00 08 */	stw r0, 8(r1)
/* 807D1AFC  38 80 00 00 */	li r4, 0
/* 807D1B00  90 81 00 0C */	stw r4, 0xc(r1)
/* 807D1B04  38 00 FF FF */	li r0, -1
/* 807D1B08  90 01 00 10 */	stw r0, 0x10(r1)
/* 807D1B0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807D1B10  90 81 00 18 */	stw r4, 0x18(r1)
/* 807D1B14  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807D1B18  7D 84 63 78 */	mr r4, r12
/* 807D1B1C  38 A0 00 00 */	li r5, 0
/* 807D1B20  7D 66 5B 78 */	mr r6, r11
/* 807D1B24  7D 07 43 78 */	mr r7, r8
/* 807D1B28  39 00 00 00 */	li r8, 0
/* 807D1B2C  3D 60 80 7D */	lis r11, lit_3914@ha
/* 807D1B30  C0 2B 20 B8 */	lfs f1, lit_3914@l(r11)
/* 807D1B34  4B 87 B9 98 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807D1B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807D1B3C  7C 08 03 A6 */	mtlr r0
/* 807D1B40  38 21 00 20 */	addi r1, r1, 0x20
/* 807D1B44  4E 80 00 20 */	blr 
