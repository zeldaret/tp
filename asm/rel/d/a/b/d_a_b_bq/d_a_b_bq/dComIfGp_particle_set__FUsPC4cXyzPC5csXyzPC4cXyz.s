lbl_805BA274:
/* 805BA274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA278  7C 08 02 A6 */	mflr r0
/* 805BA27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA280  7C 6A 1B 78 */	mr r10, r3
/* 805BA284  7C 87 23 78 */	mr r7, r4
/* 805BA288  7C A8 2B 78 */	mr r8, r5
/* 805BA28C  7C C9 33 78 */	mr r9, r6
/* 805BA290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BA294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BA298  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805BA29C  38 80 00 00 */	li r4, 0
/* 805BA2A0  90 81 00 08 */	stw r4, 8(r1)
/* 805BA2A4  38 00 FF FF */	li r0, -1
/* 805BA2A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BA2AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 805BA2B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805BA2B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805BA2B8  38 80 00 00 */	li r4, 0
/* 805BA2BC  7D 45 53 78 */	mr r5, r10
/* 805BA2C0  7C E6 3B 78 */	mr r6, r7
/* 805BA2C4  38 E0 00 00 */	li r7, 0
/* 805BA2C8  39 40 00 FF */	li r10, 0xff
/* 805BA2CC  3D 60 80 5C */	lis r11, lit_3816@ha
/* 805BA2D0  C0 2B A5 88 */	lfs f1, lit_3816@l(r11)
/* 805BA2D4  4B A9 27 BC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805BA2D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA2DC  7C 08 03 A6 */	mtlr r0
/* 805BA2E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA2E4  4E 80 00 20 */	blr 
