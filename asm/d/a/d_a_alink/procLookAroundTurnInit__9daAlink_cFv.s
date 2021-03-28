lbl_8011DDD4:
/* 8011DDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011DDD8  7C 08 02 A6 */	mflr r0
/* 8011DDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011DDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011DDE4  7C 7F 1B 78 */	mr r31, r3
/* 8011DDE8  38 80 00 E1 */	li r4, 0xe1
/* 8011DDEC  4B FA 4F B9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011DDF0  2C 03 00 00 */	cmpwi r3, 0
/* 8011DDF4  40 82 00 0C */	bne lbl_8011DE00
/* 8011DDF8  38 60 00 00 */	li r3, 0
/* 8011DDFC  48 00 00 C8 */	b lbl_8011DEC4
lbl_8011DE00:
/* 8011DE00  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8011DE04  D0 5F 33 98 */	stfs f2, 0x3398(r31)
/* 8011DE08  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011DE0C  2C 00 00 03 */	cmpwi r0, 3
/* 8011DE10  40 82 00 14 */	bne lbl_8011DE24
/* 8011DE14  7F E3 FB 78 */	mr r3, r31
/* 8011DE18  38 80 01 9D */	li r4, 0x19d
/* 8011DE1C  4B F8 F1 65 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011DE20  48 00 00 A0 */	b lbl_8011DEC0
lbl_8011DE24:
/* 8011DE24  2C 00 00 02 */	cmpwi r0, 2
/* 8011DE28  40 82 00 20 */	bne lbl_8011DE48
/* 8011DE2C  7F E3 FB 78 */	mr r3, r31
/* 8011DE30  38 80 01 86 */	li r4, 0x186
/* 8011DE34  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011DE38  38 A0 00 59 */	li r5, 0x59
/* 8011DE3C  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8011DE40  4B F8 F1 CD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8011DE44  48 00 00 7C */	b lbl_8011DEC0
lbl_8011DE48:
/* 8011DE48  2C 00 00 01 */	cmpwi r0, 1
/* 8011DE4C  40 82 00 68 */	bne lbl_8011DEB4
/* 8011DE50  7F E3 FB 78 */	mr r3, r31
/* 8011DE54  38 80 01 86 */	li r4, 0x186
/* 8011DE58  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011DE5C  38 A0 00 5D */	li r5, 0x5d
/* 8011DE60  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8011DE64  4B F8 F1 A9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8011DE68  7F E3 FB 78 */	mr r3, r31
/* 8011DE6C  38 80 03 DC */	li r4, 0x3dc
/* 8011DE70  38 A0 00 00 */	li r5, 0
/* 8011DE74  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011DE78  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011DE7C  4B F9 17 A1 */	bl setFaceBtp__9daAlink_cFUsiUs
/* 8011DE80  7F E3 FB 78 */	mr r3, r31
/* 8011DE84  38 80 03 40 */	li r4, 0x340
/* 8011DE88  38 A0 00 00 */	li r5, 0
/* 8011DE8C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011DE90  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011DE94  4B F9 19 3D */	bl setFaceBtk__9daAlink_cFUsiUs
/* 8011DE98  7F E3 FB 78 */	mr r3, r31
/* 8011DE9C  38 80 01 43 */	li r4, 0x143
/* 8011DEA0  38 A0 00 00 */	li r5, 0
/* 8011DEA4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011DEA8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011DEAC  4B F9 16 05 */	bl setFaceBck__9daAlink_cFUsiUs
/* 8011DEB0  48 00 00 10 */	b lbl_8011DEC0
lbl_8011DEB4:
/* 8011DEB4  7F E3 FB 78 */	mr r3, r31
/* 8011DEB8  38 80 01 86 */	li r4, 0x186
/* 8011DEBC  4B F8 F0 C5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_8011DEC0:
/* 8011DEC0  38 60 00 01 */	li r3, 1
lbl_8011DEC4:
/* 8011DEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011DEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011DECC  7C 08 03 A6 */	mtlr r0
/* 8011DED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011DED4  4E 80 00 20 */	blr 
