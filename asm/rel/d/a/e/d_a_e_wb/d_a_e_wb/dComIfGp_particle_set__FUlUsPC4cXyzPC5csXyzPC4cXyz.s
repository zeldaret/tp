lbl_807E273C:
/* 807E273C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E2740  7C 08 02 A6 */	mflr r0
/* 807E2744  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E2748  7C 6C 1B 78 */	mr r12, r3
/* 807E274C  7C 8B 23 78 */	mr r11, r4
/* 807E2750  7C A8 2B 78 */	mr r8, r5
/* 807E2754  7C C9 33 78 */	mr r9, r6
/* 807E2758  7C EA 3B 78 */	mr r10, r7
/* 807E275C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E2760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E2764  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807E2768  38 00 00 FF */	li r0, 0xff
/* 807E276C  90 01 00 08 */	stw r0, 8(r1)
/* 807E2770  38 80 00 00 */	li r4, 0
/* 807E2774  90 81 00 0C */	stw r4, 0xc(r1)
/* 807E2778  38 00 FF FF */	li r0, -1
/* 807E277C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807E2780  90 81 00 14 */	stw r4, 0x14(r1)
/* 807E2784  90 81 00 18 */	stw r4, 0x18(r1)
/* 807E2788  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807E278C  7D 84 63 78 */	mr r4, r12
/* 807E2790  38 A0 00 00 */	li r5, 0
/* 807E2794  7D 66 5B 78 */	mr r6, r11
/* 807E2798  7D 07 43 78 */	mr r7, r8
/* 807E279C  39 00 00 00 */	li r8, 0
/* 807E27A0  3D 60 80 7E */	lis r11, lit_4642@ha /* 0x807E29EC@ha */
/* 807E27A4  C0 2B 29 EC */	lfs f1, lit_4642@l(r11)  /* 0x807E29EC@l */
/* 807E27A8  4B 86 AD 25 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807E27AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E27B0  7C 08 03 A6 */	mtlr r0
/* 807E27B4  38 21 00 20 */	addi r1, r1, 0x20
/* 807E27B8  4E 80 00 20 */	blr 
