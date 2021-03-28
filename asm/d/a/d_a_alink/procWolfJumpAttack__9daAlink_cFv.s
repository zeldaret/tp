lbl_8013A4F8:
/* 8013A4F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013A4FC  7C 08 02 A6 */	mflr r0
/* 8013A500  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013A504  39 61 00 30 */	addi r11, r1, 0x30
/* 8013A508  48 22 7C D5 */	bl _savegpr_29
/* 8013A50C  7C 7D 1B 78 */	mr r29, r3
/* 8013A510  3C 60 80 39 */	lis r3, lit_3757@ha
/* 8013A514  3B E3 D6 58 */	addi r31, r3, lit_3757@l
/* 8013A518  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 8013A51C  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 8013A520  2C 00 00 00 */	cmpwi r0, 0
/* 8013A524  41 82 00 24 */	beq lbl_8013A548
/* 8013A528  C0 1D 33 98 */	lfs f0, 0x3398(r29)
/* 8013A52C  38 9F 1F 5C */	addi r4, r31, 0x1f5c
/* 8013A530  C0 24 00 5C */	lfs f1, 0x5c(r4)
/* 8013A534  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8013A538  40 81 00 10 */	ble lbl_8013A548
/* 8013A53C  38 7D 33 98 */	addi r3, r29, 0x3398
/* 8013A540  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8013A544  48 13 61 FD */	bl cLib_chaseF__FPfff
lbl_8013A548:
/* 8013A548  38 7D 10 F0 */	addi r3, r29, 0x10f0
/* 8013A54C  4B F4 9D 75 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8013A550  28 03 00 00 */	cmplwi r3, 0
/* 8013A554  41 82 00 3C */	beq lbl_8013A590
/* 8013A558  38 80 00 01 */	li r4, 1
/* 8013A55C  90 9D 31 98 */	stw r4, 0x3198(r29)
/* 8013A560  A8 1D 30 10 */	lha r0, 0x3010(r29)
/* 8013A564  2C 00 00 00 */	cmpwi r0, 0
/* 8013A568  41 82 00 28 */	beq lbl_8013A590
/* 8013A56C  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 8013A570  2C 00 00 00 */	cmpwi r0, 0
/* 8013A574  40 82 00 1C */	bne lbl_8013A590
/* 8013A578  C0 3D 33 98 */	lfs f1, 0x3398(r29)
/* 8013A57C  38 7F 1F 5C */	addi r3, r31, 0x1f5c
/* 8013A580  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8013A584  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013A588  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8013A58C  B0 9D 30 0E */	sth r4, 0x300e(r29)
lbl_8013A590:
/* 8013A590  7F A3 EB 78 */	mr r3, r29
/* 8013A594  80 9D 32 CC */	lwz r4, 0x32cc(r29)
/* 8013A598  4B FE FC 91 */	bl checkWolfAttackReverse__9daAlink_cFi
/* 8013A59C  2C 03 00 00 */	cmpwi r3, 0
/* 8013A5A0  41 82 00 0C */	beq lbl_8013A5AC
/* 8013A5A4  38 60 00 01 */	li r3, 1
/* 8013A5A8  48 00 02 2C */	b lbl_8013A7D4
lbl_8013A5AC:
/* 8013A5AC  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 8013A5B0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013A5B4  41 82 00 20 */	beq lbl_8013A5D4
/* 8013A5B8  7F A3 EB 78 */	mr r3, r29
/* 8013A5BC  38 80 00 00 */	li r4, 0
/* 8013A5C0  4B FE F2 BD */	bl checkWolfLandAction__9daAlink_cFi
/* 8013A5C4  2C 03 00 00 */	cmpwi r3, 0
/* 8013A5C8  41 82 00 0C */	beq lbl_8013A5D4
/* 8013A5CC  38 60 00 01 */	li r3, 1
/* 8013A5D0  48 00 02 04 */	b lbl_8013A7D4
lbl_8013A5D4:
/* 8013A5D4  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 8013A5D8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013A5DC  41 82 00 4C */	beq lbl_8013A628
/* 8013A5E0  7F A3 EB 78 */	mr r3, r29
/* 8013A5E4  4B F7 B9 89 */	bl checkSlideAction__9daAlink_cFv
/* 8013A5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8013A5EC  41 82 00 3C */	beq lbl_8013A628
/* 8013A5F0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013A5F4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8013A5F8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013A5FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8013A600  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8013A604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013A608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013A60C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013A610  38 80 00 01 */	li r4, 1
/* 8013A614  38 A0 00 0F */	li r5, 0xf
/* 8013A618  38 C1 00 14 */	addi r6, r1, 0x14
/* 8013A61C  4B F3 54 09 */	bl StartShock__12dVibration_cFii4cXyz
/* 8013A620  38 60 00 01 */	li r3, 1
/* 8013A624  48 00 01 B0 */	b lbl_8013A7D4
lbl_8013A628:
/* 8013A628  38 00 00 01 */	li r0, 1
/* 8013A62C  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 8013A630  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 8013A634  2C 00 00 01 */	cmpwi r0, 1
/* 8013A638  41 82 00 10 */	beq lbl_8013A648
/* 8013A63C  38 7F 21 4C */	addi r3, r31, 0x214c
/* 8013A640  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8013A644  B0 1D 30 7E */	sth r0, 0x307e(r29)
lbl_8013A648:
/* 8013A648  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 8013A64C  2C 00 00 00 */	cmpwi r0, 0
/* 8013A650  41 82 00 1C */	beq lbl_8013A66C
/* 8013A654  7F A3 EB 78 */	mr r3, r29
/* 8013A658  4B F7 C3 D9 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8013A65C  2C 03 00 00 */	cmpwi r3, 0
/* 8013A660  41 82 00 0C */	beq lbl_8013A66C
/* 8013A664  38 60 00 01 */	li r3, 1
/* 8013A668  48 00 01 6C */	b lbl_8013A7D4
lbl_8013A66C:
/* 8013A66C  38 00 00 07 */	li r0, 7
/* 8013A670  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 8013A674  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 8013A678  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013A67C  41 82 00 A8 */	beq lbl_8013A724
/* 8013A680  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013A684  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013A688  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013A68C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013A690  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8013A694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013A698  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013A69C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013A6A0  38 80 00 01 */	li r4, 1
/* 8013A6A4  38 A0 00 0F */	li r5, 0xf
/* 8013A6A8  38 C1 00 08 */	addi r6, r1, 8
/* 8013A6AC  4B F3 53 79 */	bl StartShock__12dVibration_cFii4cXyz
/* 8013A6B0  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8013A6B4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8013A6B8  41 82 00 14 */	beq lbl_8013A6CC
/* 8013A6BC  7F A3 EB 78 */	mr r3, r29
/* 8013A6C0  38 80 00 04 */	li r4, 4
/* 8013A6C4  48 00 24 85 */	bl procWolfEnemyThrowInit__9daAlink_cFi
/* 8013A6C8  48 00 00 54 */	b lbl_8013A71C
lbl_8013A6CC:
/* 8013A6CC  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 8013A6D0  2C 00 00 00 */	cmpwi r0, 0
/* 8013A6D4  40 82 00 18 */	bne lbl_8013A6EC
/* 8013A6D8  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 8013A6DC  2C 00 00 02 */	cmpwi r0, 2
/* 8013A6E0  41 82 00 0C */	beq lbl_8013A6EC
/* 8013A6E4  2C 00 00 03 */	cmpwi r0, 3
/* 8013A6E8  40 82 00 28 */	bne lbl_8013A710
lbl_8013A6EC:
/* 8013A6EC  7F A3 EB 78 */	mr r3, r29
/* 8013A6F0  80 9D 31 98 */	lwz r4, 0x3198(r29)
/* 8013A6F4  38 A0 00 01 */	li r5, 1
/* 8013A6F8  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 8013A6FC  20 00 00 02 */	subfic r0, r0, 2
/* 8013A700  7C 00 00 34 */	cntlzw r0, r0
/* 8013A704  54 06 DE 3E */	rlwinm r6, r0, 0x1b, 0x18, 0x1f
/* 8013A708  48 00 01 F5 */	bl procWolfJumpAttackSlideLandInit__9daAlink_cFiii
/* 8013A70C  48 00 00 10 */	b lbl_8013A71C
lbl_8013A710:
/* 8013A710  7F A3 EB 78 */	mr r3, r29
/* 8013A714  38 80 00 00 */	li r4, 0
/* 8013A718  48 00 05 2D */	bl procWolfJumpAttackNormalLandInit__9daAlink_cFi
lbl_8013A71C:
/* 8013A71C  38 60 00 01 */	li r3, 1
/* 8013A720  48 00 00 B4 */	b lbl_8013A7D4
lbl_8013A724:
/* 8013A724  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8013A728  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8013A72C  41 82 00 10 */	beq lbl_8013A73C
/* 8013A730  7F A3 EB 78 */	mr r3, r29
/* 8013A734  48 00 25 C1 */	bl procWolfEnemyHangBiteInit__9daAlink_cFv
/* 8013A738  48 00 00 9C */	b lbl_8013A7D4
lbl_8013A73C:
/* 8013A73C  7F C3 F3 78 */	mr r3, r30
/* 8013A740  48 02 3D 8D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013A744  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013A748  41 82 00 50 */	beq lbl_8013A798
/* 8013A74C  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 8013A750  2C 00 00 00 */	cmpwi r0, 0
/* 8013A754  40 82 00 34 */	bne lbl_8013A788
/* 8013A758  38 00 00 01 */	li r0, 1
/* 8013A75C  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8013A760  7F A3 EB 78 */	mr r3, r29
/* 8013A764  38 80 00 51 */	li r4, 0x51
/* 8013A768  38 BF 1F 20 */	addi r5, r31, 0x1f20
/* 8013A76C  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 8013A770  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 8013A774  4B FE EF 65 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8013A778  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 8013A77C  60 00 00 02 */	ori r0, r0, 2
/* 8013A780  90 1D 05 80 */	stw r0, 0x580(r29)
/* 8013A784  48 00 00 4C */	b lbl_8013A7D0
lbl_8013A788:
/* 8013A788  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 8013A78C  60 00 00 02 */	ori r0, r0, 2
/* 8013A790  90 1D 05 80 */	stw r0, 0x580(r29)
/* 8013A794  48 00 00 3C */	b lbl_8013A7D0
lbl_8013A798:
/* 8013A798  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 8013A79C  60 00 00 02 */	ori r0, r0, 2
/* 8013A7A0  90 1D 05 80 */	stw r0, 0x580(r29)
/* 8013A7A4  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8013A7A8  C0 3D 34 FC */	lfs f1, 0x34fc(r29)
/* 8013A7AC  38 BF 21 4C */	addi r5, r31, 0x214c
/* 8013A7B0  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8013A7B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013A7B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8013A7BC  40 80 00 14 */	bge lbl_8013A7D0
/* 8013A7C0  7F A3 EB 78 */	mr r3, r29
/* 8013A7C4  38 80 00 02 */	li r4, 2
/* 8013A7C8  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8013A7CC  4B FF 46 05 */	bl procWolfFallInit__9daAlink_cFif
lbl_8013A7D0:
/* 8013A7D0  38 60 00 01 */	li r3, 1
lbl_8013A7D4:
/* 8013A7D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8013A7D8  48 22 7A 51 */	bl _restgpr_29
/* 8013A7DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013A7E0  7C 08 03 A6 */	mtlr r0
/* 8013A7E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8013A7E8  4E 80 00 20 */	blr 
