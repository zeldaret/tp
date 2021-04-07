lbl_807834FC:
/* 807834FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80783500  7C 08 02 A6 */	mflr r0
/* 80783504  90 01 00 34 */	stw r0, 0x34(r1)
/* 80783508  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8078350C  7C 7F 1B 78 */	mr r31, r3
/* 80783510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80783514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80783518  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8078351C  38 00 00 FF */	li r0, 0xff
/* 80783520  90 01 00 08 */	stw r0, 8(r1)
/* 80783524  38 80 00 00 */	li r4, 0
/* 80783528  90 81 00 0C */	stw r4, 0xc(r1)
/* 8078352C  38 00 FF FF */	li r0, -1
/* 80783530  90 01 00 10 */	stw r0, 0x10(r1)
/* 80783534  90 81 00 14 */	stw r4, 0x14(r1)
/* 80783538  90 81 00 18 */	stw r4, 0x18(r1)
/* 8078353C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80783540  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80783544  38 A0 00 00 */	li r5, 0
/* 80783548  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008473@ha */
/* 8078354C  38 C6 84 73 */	addi r6, r6, 0x8473 /* 0x00008473@l */
/* 80783550  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80783554  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80783558  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 8078355C  39 40 00 00 */	li r10, 0
/* 80783560  3D 60 80 78 */	lis r11, lit_3665@ha /* 0x80784D84@ha */
/* 80783564  C0 2B 4D 84 */	lfs f1, lit_3665@l(r11)  /* 0x80784D84@l */
/* 80783568  4B 8C 9F 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8078356C  90 7F 05 CC */	stw r3, 0x5cc(r31)
/* 80783570  38 00 00 02 */	li r0, 2
/* 80783574  98 1F 0B 16 */	stb r0, 0xb16(r31)
/* 80783578  80 1F 0A F8 */	lwz r0, 0xaf8(r31)
/* 8078357C  60 00 00 01 */	ori r0, r0, 1
/* 80783580  90 1F 0A F8 */	stw r0, 0xaf8(r31)
/* 80783584  7F E3 FB 78 */	mr r3, r31
/* 80783588  4B FF ED 31 */	bl Attack_Motion__8daE_SB_cFv
/* 8078358C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80783590  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80783594  7C 08 03 A6 */	mtlr r0
/* 80783598  38 21 00 30 */	addi r1, r1, 0x30
/* 8078359C  4E 80 00 20 */	blr 
