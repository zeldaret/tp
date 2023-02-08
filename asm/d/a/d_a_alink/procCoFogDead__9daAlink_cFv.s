lbl_8011CF60:
/* 8011CF60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011CF64  7C 08 02 A6 */	mflr r0
/* 8011CF68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8011CF6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011CF70  7C 7F 1B 78 */	mr r31, r3
/* 8011CF74  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 8011CF78  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8011CF7C  41 82 00 80 */	beq lbl_8011CFFC
/* 8011CF80  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011CF84  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8011CF88  41 82 00 74 */	beq lbl_8011CFFC
/* 8011CF8C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011CF90  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8011CF94  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8011CF98  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011CF9C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011CFA0  41 82 00 38 */	beq lbl_8011CFD8
/* 8011CFA4  38 80 00 7B */	li r4, 0x7b
/* 8011CFA8  48 00 C6 D1 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011CFAC  7F E3 FB 78 */	mr r3, r31
/* 8011CFB0  38 80 00 9C */	li r4, 0x9c
/* 8011CFB4  4B F9 28 ED */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8011CFB8  7F E3 FB 78 */	mr r3, r31
/* 8011CFBC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010043@ha */
/* 8011CFC0  38 84 00 43 */	addi r4, r4, 0x0043 /* 0x00010043@l */
/* 8011CFC4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011CFC8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011CFCC  7D 89 03 A6 */	mtctr r12
/* 8011CFD0  4E 80 04 21 */	bctrl 
/* 8011CFD4  48 00 00 28 */	b lbl_8011CFFC
lbl_8011CFD8:
/* 8011CFD8  38 80 01 16 */	li r4, 0x116
/* 8011CFDC  4B F8 FF A5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011CFE0  7F E3 FB 78 */	mr r3, r31
/* 8011CFE4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010016@ha */
/* 8011CFE8  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x00010016@l */
/* 8011CFEC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011CFF0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011CFF4  7D 89 03 A6 */	mtctr r12
/* 8011CFF8  4E 80 04 21 */	bctrl 
lbl_8011CFFC:
/* 8011CFFC  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8011D000  7C 60 07 35 */	extsh. r0, r3
/* 8011D004  40 81 00 10 */	ble lbl_8011D014
/* 8011D008  38 03 FF FF */	addi r0, r3, -1
/* 8011D00C  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8011D010  48 00 00 78 */	b lbl_8011D088
lbl_8011D014:
/* 8011D014  7C 60 07 35 */	extsh. r0, r3
/* 8011D018  40 82 00 70 */	bne lbl_8011D088
/* 8011D01C  4B F1 4C D5 */	bl getPlayerNo__11daTagMist_cFv
/* 8011D020  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8011D024  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011D028  38 80 00 05 */	li r4, 5
/* 8011D02C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8011D030  7C 05 07 74 */	extsb r5, r0
/* 8011D034  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 8011D038  38 E0 FF FF */	li r7, -1
/* 8011D03C  4B F0 A1 35 */	bl dStage_changeScene__FifUlScsi
/* 8011D040  2C 03 00 00 */	cmpwi r3, 0
/* 8011D044  41 82 00 44 */	beq lbl_8011D088
/* 8011D048  38 00 00 33 */	li r0, 0x33
/* 8011D04C  90 01 00 08 */	stw r0, 8(r1)
/* 8011D050  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8011D054  38 81 00 08 */	addi r4, r1, 8
/* 8011D058  38 A0 00 00 */	li r5, 0
/* 8011D05C  38 C0 00 00 */	li r6, 0
/* 8011D060  38 E0 00 00 */	li r7, 0
/* 8011D064  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011D068  FC 40 08 90 */	fmr f2, f1
/* 8011D06C  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8011D070  FC 80 18 90 */	fmr f4, f3
/* 8011D074  39 00 00 00 */	li r8, 0
/* 8011D078  48 18 E9 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8011D07C  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8011D080  38 03 FF FF */	addi r0, r3, -1
/* 8011D084  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_8011D088:
/* 8011D088  38 60 00 01 */	li r3, 1
/* 8011D08C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8011D090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011D094  7C 08 03 A6 */	mtlr r0
/* 8011D098  38 21 00 20 */	addi r1, r1, 0x20
/* 8011D09C  4E 80 00 20 */	blr 
