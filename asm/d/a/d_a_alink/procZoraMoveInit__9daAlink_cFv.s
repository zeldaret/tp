lbl_8011DB04:
/* 8011DB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011DB08  7C 08 02 A6 */	mflr r0
/* 8011DB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011DB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011DB14  7C 7F 1B 78 */	mr r31, r3
/* 8011DB18  38 80 00 E0 */	li r4, 0xe0
/* 8011DB1C  4B FA 52 89 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011DB20  2C 03 00 00 */	cmpwi r3, 0
/* 8011DB24  40 82 00 0C */	bne lbl_8011DB30
/* 8011DB28  38 60 00 01 */	li r3, 1
/* 8011DB2C  48 00 00 5C */	b lbl_8011DB88
lbl_8011DB30:
/* 8011DB30  7F E3 FB 78 */	mr r3, r31
/* 8011DB34  38 80 00 60 */	li r4, 0x60
/* 8011DB38  4B F8 F4 49 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011DB3C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011DB40  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 8011DB44  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 8011DB48  7F E3 FB 78 */	mr r3, r31
/* 8011DB4C  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8011DB50  38 80 00 00 */	li r4, 0
/* 8011DB54  4B F9 DC 1D */	bl setSpecialGravity__9daAlink_cFffi
/* 8011DB58  7F E3 FB 78 */	mr r3, r31
/* 8011DB5C  38 80 00 00 */	li r4, 0
/* 8011DB60  38 A0 00 01 */	li r5, 1
/* 8011DB64  4B FA 37 79 */	bl deleteEquipItem__9daAlink_cFii
/* 8011DB68  38 00 13 88 */	li r0, 0x1388
/* 8011DB6C  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011DB70  38 00 00 00 */	li r0, 0
/* 8011DB74  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8011DB78  3C 60 80 42 */	lis r3, l_boarBaseAnime@ha
/* 8011DB7C  38 03 55 A4 */	addi r0, r3, l_boarBaseAnime@l
/* 8011DB80  90 1F 38 4C */	stw r0, 0x384c(r31)
/* 8011DB84  38 60 00 01 */	li r3, 1
lbl_8011DB88:
/* 8011DB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011DB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011DB90  7C 08 03 A6 */	mtlr r0
/* 8011DB94  38 21 00 10 */	addi r1, r1, 0x10
/* 8011DB98  4E 80 00 20 */	blr 
