lbl_80742600:
/* 80742600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80742604  7C 08 02 A6 */	mflr r0
/* 80742608  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074260C  7C 68 1B 78 */	mr r8, r3
/* 80742610  7C 87 23 78 */	mr r7, r4
/* 80742614  7C A6 2B 78 */	mr r6, r5
/* 80742618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074261C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80742620  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80742624  38 80 00 00 */	li r4, 0
/* 80742628  90 81 00 08 */	stw r4, 8(r1)
/* 8074262C  38 00 FF FF */	li r0, -1
/* 80742630  90 01 00 0C */	stw r0, 0xc(r1)
/* 80742634  90 81 00 10 */	stw r4, 0x10(r1)
/* 80742638  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074263C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80742640  38 80 00 00 */	li r4, 0
/* 80742644  7C E5 3B 78 */	mr r5, r7
/* 80742648  38 E8 01 0C */	addi r7, r8, 0x10c
/* 8074264C  39 08 04 E4 */	addi r8, r8, 0x4e4
/* 80742650  39 20 00 00 */	li r9, 0
/* 80742654  39 40 00 FF */	li r10, 0xff
/* 80742658  3D 60 80 75 */	lis r11, lit_3912@ha /* 0x8074BF44@ha */
/* 8074265C  C0 2B BF 44 */	lfs f1, lit_3912@l(r11)  /* 0x8074BF44@l */
/* 80742660  4B 90 A4 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80742664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80742668  7C 08 03 A6 */	mtlr r0
/* 8074266C  38 21 00 20 */	addi r1, r1, 0x20
/* 80742670  4E 80 00 20 */	blr 
