lbl_8011BB40:
/* 8011BB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011BB44  7C 08 02 A6 */	mflr r0
/* 8011BB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011BB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011BB50  7C 7F 1B 78 */	mr r31, r3
/* 8011BB54  38 80 01 4C */	li r4, 0x14c
/* 8011BB58  4B FA 72 4D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011BB5C  2C 03 00 00 */	cmpwi r3, 0
/* 8011BB60  40 82 00 0C */	bne lbl_8011BB6C
/* 8011BB64  38 60 00 00 */	li r3, 0
/* 8011BB68  48 00 00 98 */	b lbl_8011BC00
lbl_8011BB6C:
/* 8011BB6C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011BB70  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011BB74  41 82 00 48 */	beq lbl_8011BBBC
/* 8011BB78  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011BB7C  2C 00 00 00 */	cmpwi r0, 0
/* 8011BB80  41 82 00 14 */	beq lbl_8011BB94
/* 8011BB84  7F E3 FB 78 */	mr r3, r31
/* 8011BB88  38 80 00 0A */	li r4, 0xa
/* 8011BB8C  48 00 DA ED */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011BB90  48 00 00 64 */	b lbl_8011BBF4
lbl_8011BB94:
/* 8011BB94  7F E3 FB 78 */	mr r3, r31
/* 8011BB98  38 80 00 08 */	li r4, 8
/* 8011BB9C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlPush_c0@ha /* 0x8038F124@ha */
/* 8011BBA0  38 C5 F1 24 */	addi r6, r5, m__20daAlinkHIO_wlPush_c0@l /* 0x8038F124@l */
/* 8011BBA4  C0 26 00 08 */	lfs f1, 8(r6)
/* 8011BBA8  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8011BBAC  38 A0 00 18 */	li r5, 0x18
/* 8011BBB0  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 8011BBB4  48 00 DB 51 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8011BBB8  48 00 00 3C */	b lbl_8011BBF4
lbl_8011BBBC:
/* 8011BBBC  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011BBC0  2C 00 00 00 */	cmpwi r0, 0
/* 8011BBC4  41 82 00 14 */	beq lbl_8011BBD8
/* 8011BBC8  7F E3 FB 78 */	mr r3, r31
/* 8011BBCC  38 80 00 39 */	li r4, 0x39
/* 8011BBD0  4B F9 13 B1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011BBD4  48 00 00 20 */	b lbl_8011BBF4
lbl_8011BBD8:
/* 8011BBD8  7F E3 FB 78 */	mr r3, r31
/* 8011BBDC  38 80 00 37 */	li r4, 0x37
/* 8011BBE0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_pushpull_c0@ha /* 0x8038E210@ha */
/* 8011BBE4  38 A5 E2 10 */	addi r5, r5, m__22daAlinkHIO_pushpull_c0@l /* 0x8038E210@l */
/* 8011BBE8  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 8011BBEC  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 8011BBF0  4B F9 13 F1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8011BBF4:
/* 8011BBF4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011BBF8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011BBFC  38 60 00 01 */	li r3, 1
lbl_8011BC00:
/* 8011BC00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BC08  7C 08 03 A6 */	mtlr r0
/* 8011BC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BC10  4E 80 00 20 */	blr 
