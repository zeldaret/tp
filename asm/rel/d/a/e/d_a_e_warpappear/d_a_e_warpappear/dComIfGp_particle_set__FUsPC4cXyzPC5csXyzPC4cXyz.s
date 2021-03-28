lbl_807D1A54:
/* 807D1A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807D1A58  7C 08 02 A6 */	mflr r0
/* 807D1A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D1A60  7C 6A 1B 78 */	mr r10, r3
/* 807D1A64  7C 87 23 78 */	mr r7, r4
/* 807D1A68  7C A8 2B 78 */	mr r8, r5
/* 807D1A6C  7C C9 33 78 */	mr r9, r6
/* 807D1A70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D1A74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D1A78  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807D1A7C  38 80 00 00 */	li r4, 0
/* 807D1A80  90 81 00 08 */	stw r4, 8(r1)
/* 807D1A84  38 00 FF FF */	li r0, -1
/* 807D1A88  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D1A8C  90 81 00 10 */	stw r4, 0x10(r1)
/* 807D1A90  90 81 00 14 */	stw r4, 0x14(r1)
/* 807D1A94  90 81 00 18 */	stw r4, 0x18(r1)
/* 807D1A98  38 80 00 00 */	li r4, 0
/* 807D1A9C  7D 45 53 78 */	mr r5, r10
/* 807D1AA0  7C E6 3B 78 */	mr r6, r7
/* 807D1AA4  38 E0 00 00 */	li r7, 0
/* 807D1AA8  39 40 00 FF */	li r10, 0xff
/* 807D1AAC  3D 60 80 7D */	lis r11, lit_3914@ha
/* 807D1AB0  C0 2B 20 B8 */	lfs f1, lit_3914@l(r11)
/* 807D1AB4  4B 87 AF DC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807D1AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807D1ABC  7C 08 03 A6 */	mtlr r0
/* 807D1AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 807D1AC4  4E 80 00 20 */	blr 
