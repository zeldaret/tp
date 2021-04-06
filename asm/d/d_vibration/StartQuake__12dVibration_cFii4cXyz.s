lbl_8006FB10:
/* 8006FB10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006FB14  7C 08 02 A6 */	mflr r0
/* 8006FB18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006FB1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8006FB20  48 2F 26 BD */	bl _savegpr_29
/* 8006FB24  7C 7E 1B 78 */	mr r30, r3
/* 8006FB28  7C 9F 23 78 */	mr r31, r4
/* 8006FB2C  3B A0 00 00 */	li r29, 0
/* 8006FB30  54 A0 06 7D */	rlwinm. r0, r5, 0, 0x19, 0x1e
/* 8006FB34  41 82 00 58 */	beq lbl_8006FB8C
/* 8006FB38  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 8006FB3C  38 00 00 00 */	li r0, 0
/* 8006FB40  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8006FB44  90 BE 00 3C */	stw r5, 0x3c(r30)
/* 8006FB48  C0 06 00 00 */	lfs f0, 0(r6)
/* 8006FB4C  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8006FB50  C0 06 00 04 */	lfs f0, 4(r6)
/* 8006FB54  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8006FB58  C0 06 00 08 */	lfs f0, 8(r6)
/* 8006FB5C  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8006FB60  3C 60 80 38 */	lis r3, CQ_patt__12dVibration_c@ha /* 0x8037A720@ha */
/* 8006FB64  38 83 A7 20 */	addi r4, r3, CQ_patt__12dVibration_c@l /* 0x8037A720@l */
/* 8006FB68  57 E6 18 38 */	slwi r6, r31, 3
/* 8006FB6C  7C 64 32 14 */	add r3, r4, r6
/* 8006FB70  80 03 00 04 */	lwz r0, 4(r3)
/* 8006FB74  90 1E 00 30 */	stw r0, 0x30(r30)
/* 8006FB78  A0 03 00 02 */	lhz r0, 2(r3)
/* 8006FB7C  90 1E 00 34 */	stw r0, 0x34(r30)
/* 8006FB80  7C 04 32 2E */	lhzx r0, r4, r6
/* 8006FB84  90 1E 00 38 */	stw r0, 0x38(r30)
/* 8006FB88  3B A0 00 01 */	li r29, 1
lbl_8006FB8C:
/* 8006FB8C  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8006FB90  41 82 00 60 */	beq lbl_8006FBF0
/* 8006FB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006FB98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006FB9C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006FBA0  4B FC 4A A5 */	bl checkVibration__19dSv_player_config_cCFv
/* 8006FBA4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8006FBA8  28 00 00 01 */	cmplwi r0, 1
/* 8006FBAC  40 82 00 44 */	bne lbl_8006FBF0
/* 8006FBB0  93 FE 00 70 */	stw r31, 0x70(r30)
/* 8006FBB4  38 00 00 00 */	li r0, 0
/* 8006FBB8  90 1E 00 80 */	stw r0, 0x80(r30)
/* 8006FBBC  3C 60 80 38 */	lis r3, MQ_patt__12dVibration_c@ha /* 0x8037A6D0@ha */
/* 8006FBC0  38 03 A6 D0 */	addi r0, r3, MQ_patt__12dVibration_c@l /* 0x8037A6D0@l */
/* 8006FBC4  57 E4 18 38 */	slwi r4, r31, 3
/* 8006FBC8  7C 60 22 14 */	add r3, r0, r4
/* 8006FBCC  80 03 00 04 */	lwz r0, 4(r3)
/* 8006FBD0  90 1E 00 74 */	stw r0, 0x74(r30)
/* 8006FBD4  A0 03 00 02 */	lhz r0, 2(r3)
/* 8006FBD8  90 1E 00 78 */	stw r0, 0x78(r30)
/* 8006FBDC  3C 60 80 38 */	lis r3, CQ_patt__12dVibration_c@ha /* 0x8037A720@ha */
/* 8006FBE0  38 63 A7 20 */	addi r3, r3, CQ_patt__12dVibration_c@l /* 0x8037A720@l */
/* 8006FBE4  7C 03 22 2E */	lhzx r0, r3, r4
/* 8006FBE8  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 8006FBEC  3B A0 00 01 */	li r29, 1
lbl_8006FBF0:
/* 8006FBF0  7F A3 EB 78 */	mr r3, r29
/* 8006FBF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8006FBF8  48 2F 26 31 */	bl _restgpr_29
/* 8006FBFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006FC00  7C 08 03 A6 */	mtlr r0
/* 8006FC04  38 21 00 20 */	addi r1, r1, 0x20
/* 8006FC08  4E 80 00 20 */	blr 
