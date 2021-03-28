lbl_8011D3CC:
/* 8011D3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D3D0  7C 08 02 A6 */	mflr r0
/* 8011D3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D3DC  7C 7F 1B 78 */	mr r31, r3
/* 8011D3E0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8011D3E4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D3E8  40 82 00 24 */	bne lbl_8011D40C
/* 8011D3EC  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 8011D3F0  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 8011D3F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8011D3F8  40 81 00 10 */	ble lbl_8011D408
/* 8011D3FC  38 00 00 01 */	li r0, 1
/* 8011D400  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011D404  48 00 00 08 */	b lbl_8011D40C
lbl_8011D408:
/* 8011D408  D0 3F 34 78 */	stfs f1, 0x3478(r31)
lbl_8011D40C:
/* 8011D40C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011D410  2C 00 00 00 */	cmpwi r0, 0
/* 8011D414  41 82 00 18 */	beq lbl_8011D42C
/* 8011D418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011D41C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011D420  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011D424  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011D428  4B F2 AD 55 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011D42C:
/* 8011D42C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D430  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D434  40 82 00 28 */	bne lbl_8011D45C
/* 8011D438  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 8011D43C  C0 02 93 20 */	lfs f0, lit_7449(r2)
/* 8011D440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011D444  4C 41 13 82 */	cror 2, 1, 2
/* 8011D448  40 82 00 14 */	bne lbl_8011D45C
/* 8011D44C  38 00 00 00 */	li r0, 0
/* 8011D450  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 8011D454  38 00 00 05 */	li r0, 5
/* 8011D458  98 1F 2F 97 */	stb r0, 0x2f97(r31)
lbl_8011D45C:
/* 8011D45C  38 60 00 01 */	li r3, 1
/* 8011D460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D468  7C 08 03 A6 */	mtlr r0
/* 8011D46C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D470  4E 80 00 20 */	blr 
