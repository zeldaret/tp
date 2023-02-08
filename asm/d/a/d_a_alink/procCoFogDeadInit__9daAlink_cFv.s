lbl_8011CDE0:
/* 8011CDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011CDE4  7C 08 02 A6 */	mflr r0
/* 8011CDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011CDEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011CDF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8011CDF4  7C 7F 1B 78 */	mr r31, r3
/* 8011CDF8  38 80 01 51 */	li r4, 0x151
/* 8011CDFC  4B FA 5F A9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011CE00  2C 03 00 00 */	cmpwi r3, 0
/* 8011CE04  40 82 00 0C */	bne lbl_8011CE10
/* 8011CE08  38 60 00 01 */	li r3, 1
/* 8011CE0C  48 00 01 3C */	b lbl_8011CF48
lbl_8011CE10:
/* 8011CE10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011CE14  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011CE18  38 00 00 00 */	li r0, 0
/* 8011CE1C  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 8011CE20  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011CE24  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8011CE28  41 82 00 74 */	beq lbl_8011CE9C
/* 8011CE2C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011CE30  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011CE34  41 82 00 3C */	beq lbl_8011CE70
/* 8011CE38  7F E3 FB 78 */	mr r3, r31
/* 8011CE3C  38 80 00 7B */	li r4, 0x7b
/* 8011CE40  48 00 C8 39 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011CE44  7F E3 FB 78 */	mr r3, r31
/* 8011CE48  38 80 00 9C */	li r4, 0x9c
/* 8011CE4C  4B F9 2A 55 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8011CE50  7F E3 FB 78 */	mr r3, r31
/* 8011CE54  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010043@ha */
/* 8011CE58  38 84 00 43 */	addi r4, r4, 0x0043 /* 0x00010043@l */
/* 8011CE5C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011CE60  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011CE64  7D 89 03 A6 */	mtctr r12
/* 8011CE68  4E 80 04 21 */	bctrl 
/* 8011CE6C  48 00 00 80 */	b lbl_8011CEEC
lbl_8011CE70:
/* 8011CE70  7F E3 FB 78 */	mr r3, r31
/* 8011CE74  38 80 01 16 */	li r4, 0x116
/* 8011CE78  4B F9 01 09 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011CE7C  7F E3 FB 78 */	mr r3, r31
/* 8011CE80  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010016@ha */
/* 8011CE84  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x00010016@l */
/* 8011CE88  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011CE8C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011CE90  7D 89 03 A6 */	mtctr r12
/* 8011CE94  4E 80 04 21 */	bctrl 
/* 8011CE98  48 00 00 54 */	b lbl_8011CEEC
lbl_8011CE9C:
/* 8011CE9C  7F E3 FB 78 */	mr r3, r31
/* 8011CEA0  4B F9 7A 31 */	bl setJumpMode__9daAlink_cFv
/* 8011CEA4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011CEA8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011CEAC  41 82 00 24 */	beq lbl_8011CED0
/* 8011CEB0  7F E3 FB 78 */	mr r3, r31
/* 8011CEB4  38 80 00 60 */	li r4, 0x60
/* 8011CEB8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011CEBC  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlDamFall_c0@ha /* 0x8038F374@ha */
/* 8011CEC0  38 A5 F3 74 */	addi r5, r5, m__23daAlinkHIO_wlDamFall_c0@l /* 0x8038F374@l */
/* 8011CEC4  C0 45 00 3C */	lfs f2, 0x3c(r5)
/* 8011CEC8  48 00 C8 11 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8011CECC  48 00 00 20 */	b lbl_8011CEEC
lbl_8011CED0:
/* 8011CED0  7F E3 FB 78 */	mr r3, r31
/* 8011CED4  38 80 00 8C */	li r4, 0x8c
/* 8011CED8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011CEDC  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 8011CEE0  38 A5 E4 54 */	addi r5, r5, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 8011CEE4  C0 45 00 44 */	lfs f2, 0x44(r5)
/* 8011CEE8  4B F9 00 F9 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8011CEEC:
/* 8011CEEC  38 00 00 00 */	li r0, 0
/* 8011CEF0  90 1F 31 94 */	stw r0, 0x3194(r31)
/* 8011CEF4  28 1F 00 00 */	cmplwi r31, 0
/* 8011CEF8  41 82 00 0C */	beq lbl_8011CF04
/* 8011CEFC  83 DF 00 04 */	lwz r30, 4(r31)
/* 8011CF00  48 00 00 08 */	b lbl_8011CF08
lbl_8011CF04:
/* 8011CF04  3B C0 FF FF */	li r30, -1
lbl_8011CF08:
/* 8011CF08  48 06 47 39 */	bl dCam_getBody__Fv
/* 8011CF0C  38 80 00 13 */	li r4, 0x13
/* 8011CF10  7F C5 F3 78 */	mr r5, r30
/* 8011CF14  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011CF18  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011CF1C  38 C6 00 43 */	addi r6, r6, 0x43
/* 8011CF20  38 E0 00 01 */	li r7, 1
/* 8011CF24  39 1F 31 94 */	addi r8, r31, 0x3194
/* 8011CF28  39 20 00 00 */	li r9, 0
/* 8011CF2C  4C C6 31 82 */	crclr 6
/* 8011CF30  4B F6 BB 4D */	bl StartEventCamera__9dCamera_cFiie
/* 8011CF34  38 00 00 3C */	li r0, 0x3c
/* 8011CF38  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8011CF3C  38 00 00 00 */	li r0, 0
/* 8011CF40  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011CF44  38 60 00 01 */	li r3, 1
lbl_8011CF48:
/* 8011CF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011CF4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011CF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011CF54  7C 08 03 A6 */	mtlr r0
/* 8011CF58  38 21 00 10 */	addi r1, r1, 0x10
/* 8011CF5C  4E 80 00 20 */	blr 
