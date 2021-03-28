lbl_8060251C:
/* 8060251C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80602520  7C 08 02 A6 */	mflr r0
/* 80602524  90 01 00 24 */	stw r0, 0x24(r1)
/* 80602528  7C 6A 1B 78 */	mr r10, r3
/* 8060252C  7C 87 23 78 */	mr r7, r4
/* 80602530  7C A8 2B 78 */	mr r8, r5
/* 80602534  7C C9 33 78 */	mr r9, r6
/* 80602538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060253C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80602540  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80602544  38 80 00 00 */	li r4, 0
/* 80602548  90 81 00 08 */	stw r4, 8(r1)
/* 8060254C  38 00 FF FF */	li r0, -1
/* 80602550  90 01 00 0C */	stw r0, 0xc(r1)
/* 80602554  90 81 00 10 */	stw r4, 0x10(r1)
/* 80602558  90 81 00 14 */	stw r4, 0x14(r1)
/* 8060255C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80602560  38 80 00 00 */	li r4, 0
/* 80602564  7D 45 53 78 */	mr r5, r10
/* 80602568  7C E6 3B 78 */	mr r6, r7
/* 8060256C  38 E0 00 00 */	li r7, 0
/* 80602570  39 40 00 FF */	li r10, 0xff
/* 80602574  3D 60 80 60 */	lis r11, lit_3815@ha
/* 80602578  C0 2B 26 64 */	lfs f1, lit_3815@l(r11)
/* 8060257C  4B A4 A5 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80602580  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80602584  7C 08 03 A6 */	mtlr r0
/* 80602588  38 21 00 20 */	addi r1, r1, 0x20
/* 8060258C  4E 80 00 20 */	blr 
