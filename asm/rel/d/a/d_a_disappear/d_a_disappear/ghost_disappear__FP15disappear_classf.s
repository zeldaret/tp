lbl_804A9080:
/* 804A9080  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A9084  7C 08 02 A6 */	mflr r0
/* 804A9088  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A908C  39 61 00 50 */	addi r11, r1, 0x50
/* 804A9090  4B EB 91 41 */	bl _savegpr_26
/* 804A9094  7C 7A 1B 78 */	mr r26, r3
/* 804A9098  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804A909C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804A90A0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804A90A4  3B 60 00 00 */	li r27, 0
/* 804A90A8  3B E0 00 00 */	li r31, 0
/* 804A90AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A90B0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A90B4  3C 60 80 4B */	lis r3, da_name_3710@ha /* 0x804A9488@ha */
/* 804A90B8  3B A3 94 88 */	addi r29, r3, da_name_3710@l /* 0x804A9488@l */
/* 804A90BC  3C 60 80 4B */	lis r3, lit_3704@ha /* 0x804A9460@ha */
/* 804A90C0  3B C3 94 60 */	addi r30, r3, lit_3704@l /* 0x804A9460@l */
lbl_804A90C4:
/* 804A90C4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804A90C8  38 80 00 00 */	li r4, 0
/* 804A90CC  90 81 00 08 */	stw r4, 8(r1)
/* 804A90D0  38 00 FF FF */	li r0, -1
/* 804A90D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A90D8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804A90DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A90E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A90E4  38 80 00 00 */	li r4, 0
/* 804A90E8  7C BD FA 2E */	lhzx r5, r29, r31
/* 804A90EC  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 804A90F0  38 E0 00 00 */	li r7, 0
/* 804A90F4  39 00 00 00 */	li r8, 0
/* 804A90F8  39 21 00 20 */	addi r9, r1, 0x20
/* 804A90FC  39 40 00 FF */	li r10, 0xff
/* 804A9100  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804A9104  4B BA 39 8D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A9108  3B 7B 00 01 */	addi r27, r27, 1
/* 804A910C  2C 1B 00 05 */	cmpwi r27, 5
/* 804A9110  3B FF 00 02 */	addi r31, r31, 2
/* 804A9114  41 80 FF B0 */	blt lbl_804A90C4
/* 804A9118  39 61 00 50 */	addi r11, r1, 0x50
/* 804A911C  4B EB 91 01 */	bl _restgpr_26
/* 804A9120  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A9124  7C 08 03 A6 */	mtlr r0
/* 804A9128  38 21 00 50 */	addi r1, r1, 0x50
/* 804A912C  4E 80 00 20 */	blr 
