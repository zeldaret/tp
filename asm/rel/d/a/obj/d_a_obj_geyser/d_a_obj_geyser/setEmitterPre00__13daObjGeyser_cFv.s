lbl_80BF8914:
/* 80BF8914  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF8918  7C 08 02 A6 */	mflr r0
/* 80BF891C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF8920  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BF8924  7C 7F 1B 78 */	mr r31, r3
/* 80BF8928  C0 43 04 F4 */	lfs f2, 0x4f4(r3)
/* 80BF892C  C0 23 04 F0 */	lfs f1, 0x4f0(r3)
/* 80BF8930  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BF8934  D0 03 07 88 */	stfs f0, 0x788(r3)
/* 80BF8938  D0 23 07 8C */	stfs f1, 0x78c(r3)
/* 80BF893C  D0 43 07 90 */	stfs f2, 0x790(r3)
/* 80BF8940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF8944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF8948  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BF894C  38 80 00 00 */	li r4, 0
/* 80BF8950  90 81 00 08 */	stw r4, 8(r1)
/* 80BF8954  38 00 FF FF */	li r0, -1
/* 80BF8958  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF895C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BF8960  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BF8964  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BF8968  38 80 00 00 */	li r4, 0
/* 80BF896C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000083E8@ha */
/* 80BF8970  38 A5 83 E8 */	addi r5, r5, 0x83E8 /* 0x000083E8@l */
/* 80BF8974  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BF8978  38 E0 00 00 */	li r7, 0
/* 80BF897C  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80BF8980  39 3F 07 88 */	addi r9, r31, 0x788
/* 80BF8984  39 40 00 FF */	li r10, 0xff
/* 80BF8988  3D 60 80 C0 */	lis r11, lit_3760@ha
/* 80BF898C  C0 2B 90 10 */	lfs f1, lit_3760@l(r11)
/* 80BF8990  4B 45 41 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BF8994  90 7F 07 78 */	stw r3, 0x778(r31)
/* 80BF8998  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BF899C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF89A0  7C 08 03 A6 */	mtlr r0
/* 80BF89A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF89A8  4E 80 00 20 */	blr 
