lbl_809DB4B4:
/* 809DB4B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809DB4B8  7C 08 02 A6 */	mflr r0
/* 809DB4BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809DB4C0  39 61 00 30 */	addi r11, r1, 0x30
/* 809DB4C4  4B 98 6D 15 */	bl _savegpr_28
/* 809DB4C8  7C 7F 1B 78 */	mr r31, r3
/* 809DB4CC  80 83 0D D4 */	lwz r4, 0xdd4(r3)
/* 809DB4D0  80 03 0D D8 */	lwz r0, 0xdd8(r3)
/* 809DB4D4  90 81 00 08 */	stw r4, 8(r1)
/* 809DB4D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809DB4DC  80 03 0D DC */	lwz r0, 0xddc(r3)
/* 809DB4E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809DB4E4  3B 80 00 0A */	li r28, 0xa
/* 809DB4E8  48 00 19 91 */	bl selectAction__11daNpc_grO_cFv
/* 809DB4EC  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 809DB4F0  28 00 00 00 */	cmplwi r0, 0
/* 809DB4F4  40 82 00 20 */	bne lbl_809DB514
/* 809DB4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DB4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DB500  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809DB504  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809DB508  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809DB50C  41 82 00 08 */	beq lbl_809DB514
/* 809DB510  3B 80 00 00 */	li r28, 0
lbl_809DB514:
/* 809DB514  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809DB518  38 81 00 08 */	addi r4, r1, 8
/* 809DB51C  4B 98 6B 2D */	bl __ptmf_cmpr
/* 809DB520  2C 03 00 00 */	cmpwi r3, 0
/* 809DB524  41 82 00 2C */	beq lbl_809DB550
/* 809DB528  3B A0 00 03 */	li r29, 3
/* 809DB52C  3B C0 00 18 */	li r30, 0x18
/* 809DB530  48 00 00 18 */	b lbl_809DB548
lbl_809DB534:
/* 809DB534  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809DB538  7C 7F 1A 14 */	add r3, r31, r3
/* 809DB53C  4B 77 51 75 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809DB540  3B BD 00 01 */	addi r29, r29, 1
/* 809DB544  3B DE 00 08 */	addi r30, r30, 8
lbl_809DB548:
/* 809DB548  2C 1D 00 03 */	cmpwi r29, 3
/* 809DB54C  41 80 FF E8 */	blt lbl_809DB534
lbl_809DB550:
/* 809DB550  38 00 00 00 */	li r0, 0
/* 809DB554  90 1F 0E 0C */	stw r0, 0xe0c(r31)
/* 809DB558  90 1F 0E 10 */	stw r0, 0xe10(r31)
/* 809DB55C  3C 60 80 9E */	lis r3, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DB560  38 A3 EF 7C */	addi r5, r3, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DB564  AB A5 00 48 */	lha r29, 0x48(r5)
/* 809DB568  AB C5 00 4A */	lha r30, 0x4a(r5)
/* 809DB56C  7F E3 FB 78 */	mr r3, r31
/* 809DB570  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 809DB574  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 809DB578  4B 77 8D 01 */	bl getDistTableIdx__8daNpcF_cFii
/* 809DB57C  98 7F 05 44 */	stb r3, 0x544(r31)
/* 809DB580  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 809DB584  98 1F 05 45 */	stb r0, 0x545(r31)
/* 809DB588  7F E3 FB 78 */	mr r3, r31
/* 809DB58C  7F A4 07 34 */	extsh r4, r29
/* 809DB590  7F C5 07 34 */	extsh r5, r30
/* 809DB594  4B 77 8C E5 */	bl getDistTableIdx__8daNpcF_cFii
/* 809DB598  98 7F 05 47 */	stb r3, 0x547(r31)
/* 809DB59C  93 9F 05 5C */	stw r28, 0x55c(r31)
/* 809DB5A0  3C 60 80 9E */	lis r3, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DB5A4  38 83 EF 7C */	addi r4, r3, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DB5A8  C0 04 00 08 */	lfs f0, 8(r4)
/* 809DB5AC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 809DB5B0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 809DB5B4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 809DB5B8  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809DB5BC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809DB5C0  4B 69 A9 81 */	bl SetWallR__12dBgS_AcchCirFf
/* 809DB5C4  3C 60 80 9E */	lis r3, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DB5C8  38 63 EF 7C */	addi r3, r3, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DB5CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809DB5D0  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 809DB5D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 809DB5D8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 809DB5DC  39 61 00 30 */	addi r11, r1, 0x30
/* 809DB5E0  4B 98 6C 45 */	bl _restgpr_28
/* 809DB5E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809DB5E8  7C 08 03 A6 */	mtlr r0
/* 809DB5EC  38 21 00 30 */	addi r1, r1, 0x30
/* 809DB5F0  4E 80 00 20 */	blr 
