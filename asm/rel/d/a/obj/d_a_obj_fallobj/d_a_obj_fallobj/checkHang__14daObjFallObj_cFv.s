lbl_80BE4700:
/* 80BE4700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE4704  7C 08 02 A6 */	mflr r0
/* 80BE4708  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE470C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE4710  4B 77 DA C8 */	b _savegpr_28
/* 80BE4714  7C 7C 1B 78 */	mr r28, r3
/* 80BE4718  3C 80 80 BE */	lis r4, lit_3677@ha
/* 80BE471C  3B E4 4A B0 */	addi r31, r4, lit_3677@l
/* 80BE4720  3B A0 00 00 */	li r29, 0
/* 80BE4724  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BE4728  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BE472C  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80BE4730  80 04 5F 1C */	lwz r0, 0x5f1c(r4)
/* 80BE4734  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BE4738  41 82 00 4C */	beq lbl_80BE4784
/* 80BE473C  7F C4 F3 78 */	mr r4, r30
/* 80BE4740  4B 43 62 24 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BE4744  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BE4748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE474C  40 80 00 38 */	bge lbl_80BE4784
/* 80BE4750  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BE4754  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80BE4758  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BE475C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BE4760  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BE4764  40 81 00 20 */	ble lbl_80BE4784
/* 80BE4768  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BE476C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BE4770  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BE4774  40 80 00 10 */	bge lbl_80BE4784
/* 80BE4778  3B A0 00 01 */	li r29, 1
/* 80BE477C  38 00 00 01 */	li r0, 1
/* 80BE4780  98 1C 05 E4 */	stb r0, 0x5e4(r28)
lbl_80BE4784:
/* 80BE4784  7F A3 EB 78 */	mr r3, r29
/* 80BE4788  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE478C  4B 77 DA 98 */	b _restgpr_28
/* 80BE4790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE4794  7C 08 03 A6 */	mtlr r0
/* 80BE4798  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE479C  4E 80 00 20 */	blr 
