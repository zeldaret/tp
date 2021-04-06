lbl_80111440:
/* 80111440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80111444  7C 08 02 A6 */	mflr r0
/* 80111448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011144C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80111450  7C 7F 1B 78 */	mr r31, r3
/* 80111454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111458  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011145C  38 64 5B 54 */	addi r3, r4, 0x5b54
/* 80111460  80 84 5B 64 */	lwz r4, 0x5b64(r4)
/* 80111464  4B F6 25 29 */	bl convPId__11dAttCatch_cFUi
/* 80111468  7C 64 1B 79 */	or. r4, r3, r3
/* 8011146C  41 82 00 50 */	beq lbl_801114BC
/* 80111470  A8 64 00 08 */	lha r3, 8(r4)
/* 80111474  20 03 01 BE */	subfic r0, r3, 0x1be
/* 80111478  7C 00 00 34 */	cntlzw r0, r0
/* 8011147C  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 80111480  2C 03 01 1E */	cmpwi r3, 0x11e
/* 80111484  41 82 00 2C */	beq lbl_801114B0
/* 80111488  2C 03 01 22 */	cmpwi r3, 0x122
/* 8011148C  40 82 00 10 */	bne lbl_8011149C
/* 80111490  88 04 05 D2 */	lbz r0, 0x5d2(r4)
/* 80111494  28 00 00 04 */	cmplwi r0, 4
/* 80111498  41 82 00 18 */	beq lbl_801114B0
lbl_8011149C:
/* 8011149C  2C 05 00 00 */	cmpwi r5, 0
/* 801114A0  41 82 00 1C */	beq lbl_801114BC
/* 801114A4  88 04 05 B7 */	lbz r0, 0x5b7(r4)
/* 801114A8  28 00 00 03 */	cmplwi r0, 3
/* 801114AC  40 82 00 10 */	bne lbl_801114BC
lbl_801114B0:
/* 801114B0  7F E3 FB 78 */	mr r3, r31
/* 801114B4  4B FF E7 85 */	bl procBottleSwingInit__9daAlink_cFP10fopAc_ac_ci
/* 801114B8  48 00 01 00 */	b lbl_801115B8
lbl_801114BC:
/* 801114BC  7F E3 FB 78 */	mr r3, r31
/* 801114C0  38 80 00 B7 */	li r4, 0xb7
/* 801114C4  4B FB 18 E1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801114C8  2C 03 00 00 */	cmpwi r3, 0
/* 801114CC  40 82 00 0C */	bne lbl_801114D8
/* 801114D0  38 60 00 00 */	li r3, 0
/* 801114D4  48 00 00 E4 */	b lbl_801115B8
lbl_801114D8:
/* 801114D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801114DC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801114E0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801114E4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801114E8  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 801114EC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801114F0  41 82 00 1C */	beq lbl_8011150C
/* 801114F4  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 801114F8  38 80 00 00 */	li r4, 0
/* 801114FC  4B F9 0C E5 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 80111500  7C 60 07 34 */	extsh r0, r3
/* 80111504  2C 00 00 29 */	cmpwi r0, 0x29
/* 80111508  41 82 00 34 */	beq lbl_8011153C
lbl_8011150C:
/* 8011150C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80111510  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80111514  38 63 00 A5 */	addi r3, r3, 0xa5
/* 80111518  4B F8 C5 49 */	bl checkStageName__9daAlink_cFPCc
/* 8011151C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80111520  41 82 00 58 */	beq lbl_80111578
/* 80111524  3C 60 80 11 */	lis r3, daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv@ha /* 0x80110668@ha */
/* 80111528  38 63 06 68 */	addi r3, r3, daAlink_searchTagKtOnFire__FP10fopAc_ac_cPv@l /* 0x80110668@l */
/* 8011152C  38 80 00 00 */	li r4, 0
/* 80111530  4B F0 82 C9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80111534  28 03 00 00 */	cmplwi r3, 0
/* 80111538  41 82 00 40 */	beq lbl_80111578
lbl_8011153C:
/* 8011153C  7F E3 FB 78 */	mr r3, r31
/* 80111540  38 80 01 08 */	li r4, 0x108
/* 80111544  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 80111548  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8011154C  38 A5 00 50 */	addi r5, r5, 0x50
/* 80111550  4B F9 BB A5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80111554  3C 60 80 39 */	lis r3, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 80111558  38 63 E9 0C */	addi r3, r3, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8011155C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80111560  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 80111564  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 80111568  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 8011156C  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 80111570  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 80111574  48 00 00 38 */	b lbl_801115AC
lbl_80111578:
/* 80111578  7F E3 FB 78 */	mr r3, r31
/* 8011157C  38 80 01 0B */	li r4, 0x10b
/* 80111580  3C A0 80 39 */	lis r5, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 80111584  38 A5 E7 7C */	addi r5, r5, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 80111588  4B F9 BB 6D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8011158C  3C 60 80 39 */	lis r3, m__23daAlinkHIO_kandelaar_c0@ha /* 0x8038E77C@ha */
/* 80111590  38 63 E7 7C */	addi r3, r3, m__23daAlinkHIO_kandelaar_c0@l /* 0x8038E77C@l */
/* 80111594  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80111598  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8011159C  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 801115A0  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 801115A4  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 801115A8  D0 1F 34 80 */	stfs f0, 0x3480(r31)
lbl_801115AC:
/* 801115AC  7F E3 FB 78 */	mr r3, r31
/* 801115B0  4B FF FD 5D */	bl initKandelaarSwing__9daAlink_cFv
/* 801115B4  38 60 00 01 */	li r3, 1
lbl_801115B8:
/* 801115B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801115BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801115C0  7C 08 03 A6 */	mtlr r0
/* 801115C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801115C8  4E 80 00 20 */	blr 
