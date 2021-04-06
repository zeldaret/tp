lbl_8011F360:
/* 8011F360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011F364  7C 08 02 A6 */	mflr r0
/* 8011F368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011F36C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011F370  7C 7F 1B 78 */	mr r31, r3
/* 8011F374  38 80 00 EC */	li r4, 0xec
/* 8011F378  4B FA 2B F5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011F37C  7F E3 FB 78 */	mr r3, r31
/* 8011F380  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011F384  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8011F388  38 80 00 00 */	li r4, 0
/* 8011F38C  4B F9 C3 E5 */	bl setSpecialGravity__9daAlink_cFffi
/* 8011F390  7F E3 FB 78 */	mr r3, r31
/* 8011F394  38 80 00 19 */	li r4, 0x19
/* 8011F398  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 8011F39C  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 8011F3A0  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8011F3A4  3C A0 80 39 */	lis r5, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 8011F3A8  38 A5 D6 64 */	addi r5, r5, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 8011F3AC  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 8011F3B0  4B F8 DC 31 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8011F3B4  4B FA 0F 5D */	bl checkDungeon__9daAlink_cFv
/* 8011F3B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011F3BC  41 82 00 28 */	beq lbl_8011F3E4
/* 8011F3C0  4B FF FA 81 */	bl checkLv7DungeonShop__9daAlink_cFv
/* 8011F3C4  2C 03 00 00 */	cmpwi r3, 0
/* 8011F3C8  40 82 00 1C */	bne lbl_8011F3E4
/* 8011F3CC  7F E3 FB 78 */	mr r3, r31
/* 8011F3D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8011F3D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8011F3D8  7C 05 07 74 */	extsb r5, r0
/* 8011F3DC  38 C0 00 04 */	li r6, 4
/* 8011F3E0  4B FF 68 71 */	bl createNpcTks__9daAlink_cFP4cXyziUl
lbl_8011F3E4:
/* 8011F3E4  38 00 40 00 */	li r0, 0x4000
/* 8011F3E8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011F3EC  38 00 00 20 */	li r0, 0x20
/* 8011F3F0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011F3F4  38 00 00 00 */	li r0, 0
/* 8011F3F8  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011F3FC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8011F400  C0 02 95 50 */	lfs f0, lit_23595(r2)
/* 8011F404  EC 01 00 2A */	fadds f0, f1, f0
/* 8011F408  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8011F40C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8011F410  38 03 7F 7A */	addi r0, r3, 0x7f7a
/* 8011F414  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8011F418  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011F41C  D0 3F 04 EC */	stfs f1, 0x4ec(r31)
/* 8011F420  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 8011F424  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8011F428  D0 3F 04 F4 */	stfs f1, 0x4f4(r31)
/* 8011F42C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8011F430  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8011F434  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8011F438  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8011F43C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8011F440  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8011F444  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8011F448  38 60 00 01 */	li r3, 1
/* 8011F44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011F450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011F454  7C 08 03 A6 */	mtlr r0
/* 8011F458  38 21 00 10 */	addi r1, r1, 0x10
/* 8011F45C  4E 80 00 20 */	blr 
