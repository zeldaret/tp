lbl_8011CCA8:
/* 8011CCA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011CCAC  7C 08 02 A6 */	mflr r0
/* 8011CCB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011CCB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011CCB8  93 C1 00 08 */	stw r30, 8(r1)
/* 8011CCBC  7C 7F 1B 78 */	mr r31, r3
/* 8011CCC0  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8011CCC4  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8011CCC8  2C 00 00 00 */	cmpwi r0, 0
/* 8011CCCC  41 82 00 5C */	beq lbl_8011CD28
/* 8011CCD0  7F C3 F3 78 */	mr r3, r30
/* 8011CCD4  48 04 17 F9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011CCD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011CCDC  41 82 00 E8 */	beq lbl_8011CDC4
/* 8011CCE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011CCE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011CCE8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011CCEC  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011CCF0  4B F2 B4 8D */	bl cutEnd__16dEvent_manager_cFi
/* 8011CCF4  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8011CCF8  2C 00 00 00 */	cmpwi r0, 0
/* 8011CCFC  40 82 00 C8 */	bne lbl_8011CDC4
/* 8011CD00  7F E3 FB 78 */	mr r3, r31
/* 8011CD04  38 80 00 19 */	li r4, 0x19
/* 8011CD08  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha
/* 8011CD0C  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l
/* 8011CD10  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8011CD14  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011CD18  4B F9 02 C9 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8011CD1C  38 00 00 01 */	li r0, 1
/* 8011CD20  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011CD24  48 00 00 A0 */	b lbl_8011CDC4
lbl_8011CD28:
/* 8011CD28  88 1F 2F 99 */	lbz r0, 0x2f99(r31)
/* 8011CD2C  28 00 00 0D */	cmplwi r0, 0xd
/* 8011CD30  41 82 00 0C */	beq lbl_8011CD3C
/* 8011CD34  38 00 00 05 */	li r0, 5
/* 8011CD38  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_8011CD3C:
/* 8011CD3C  7F C3 F3 78 */	mr r3, r30
/* 8011CD40  48 04 17 8D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011CD44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011CD48  41 82 00 58 */	beq lbl_8011CDA0
/* 8011CD4C  7F E3 FB 78 */	mr r3, r31
/* 8011CD50  38 80 00 1B */	li r4, 0x1b
/* 8011CD54  4B F9 02 2D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011CD58  38 00 00 01 */	li r0, 1
/* 8011CD5C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011CD60  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8011CD64  3C 63 00 01 */	addis r3, r3, 1
/* 8011CD68  38 03 80 00 */	addi r0, r3, -32768
/* 8011CD6C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8011CD70  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011CD74  B0 1F 2F E6 */	sth r0, 0x2fe6(r31)
/* 8011CD78  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011CD7C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011CD80  7F E3 FB 78 */	mr r3, r31
/* 8011CD84  38 80 00 00 */	li r4, 0
/* 8011CD88  38 A0 80 00 */	li r5, -32768
/* 8011CD8C  38 C0 00 00 */	li r6, 0
/* 8011CD90  4B F9 0D E9 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 8011CD94  38 00 00 30 */	li r0, 0x30
/* 8011CD98  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011CD9C  48 00 00 28 */	b lbl_8011CDC4
lbl_8011CDA0:
/* 8011CDA0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8011CDA4  C0 02 94 B0 */	lfs f0, lit_16790(r2)
/* 8011CDA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011CDAC  4C 41 13 82 */	cror 2, 1, 2
/* 8011CDB0  40 82 00 14 */	bne lbl_8011CDC4
/* 8011CDB4  38 00 00 01 */	li r0, 1
/* 8011CDB8  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 8011CDBC  38 00 00 06 */	li r0, 6
/* 8011CDC0  98 1F 2F 93 */	stb r0, 0x2f93(r31)
lbl_8011CDC4:
/* 8011CDC4  38 60 00 01 */	li r3, 1
/* 8011CDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011CDCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011CDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011CDD4  7C 08 03 A6 */	mtlr r0
/* 8011CDD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011CDDC  4E 80 00 20 */	blr 
