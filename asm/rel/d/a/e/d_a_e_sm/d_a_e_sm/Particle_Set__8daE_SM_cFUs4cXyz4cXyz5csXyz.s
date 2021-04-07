lbl_807928A4:
/* 807928A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807928A8  7C 08 02 A6 */	mflr r0
/* 807928AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807928B0  7C 6B 1B 78 */	mr r11, r3
/* 807928B4  7C 8A 23 78 */	mr r10, r4
/* 807928B8  7C A9 2B 78 */	mr r9, r5
/* 807928BC  7C E8 3B 78 */	mr r8, r7
/* 807928C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807928C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807928C8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807928CC  38 80 00 00 */	li r4, 0
/* 807928D0  90 81 00 08 */	stw r4, 8(r1)
/* 807928D4  38 00 FF FF */	li r0, -1
/* 807928D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807928DC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807928E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807928E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807928E8  38 80 00 00 */	li r4, 0
/* 807928EC  7D 45 53 78 */	mr r5, r10
/* 807928F0  38 EB 01 0C */	addi r7, r11, 0x10c
/* 807928F4  39 40 00 FF */	li r10, 0xff
/* 807928F8  3D 60 80 7A */	lis r11, lit_3922@ha /* 0x807985E8@ha */
/* 807928FC  C0 2B 85 E8 */	lfs f1, lit_3922@l(r11)  /* 0x807985E8@l */
/* 80792900  4B 8B A1 91 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80792904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80792908  7C 08 03 A6 */	mtlr r0
/* 8079290C  38 21 00 20 */	addi r1, r1, 0x20
/* 80792910  4E 80 00 20 */	blr 
