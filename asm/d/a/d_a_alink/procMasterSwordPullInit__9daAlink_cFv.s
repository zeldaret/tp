lbl_8011ED18:
/* 8011ED18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011ED1C  7C 08 02 A6 */	mflr r0
/* 8011ED20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011ED24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011ED28  7C 7F 1B 78 */	mr r31, r3
/* 8011ED2C  38 80 00 E9 */	li r4, 0xe9
/* 8011ED30  4B FA 40 75 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011ED34  2C 03 00 00 */	cmpwi r3, 0
/* 8011ED38  40 82 00 0C */	bne lbl_8011ED44
/* 8011ED3C  38 60 00 00 */	li r3, 0
/* 8011ED40  48 00 00 38 */	b lbl_8011ED78
lbl_8011ED44:
/* 8011ED44  7F E3 FB 78 */	mr r3, r31
/* 8011ED48  38 80 01 91 */	li r4, 0x191
/* 8011ED4C  4B F8 E2 35 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011ED50  7F E3 FB 78 */	mr r3, r31
/* 8011ED54  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100A4@ha */
/* 8011ED58  38 84 00 A4 */	addi r4, r4, 0x00A4 /* 0x000100A4@l */
/* 8011ED5C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011ED60  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011ED64  7D 89 03 A6 */	mtctr r12
/* 8011ED68  4E 80 04 21 */	bctrl 
/* 8011ED6C  38 00 00 00 */	li r0, 0
/* 8011ED70  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011ED74  38 60 00 01 */	li r3, 1
lbl_8011ED78:
/* 8011ED78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011ED7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011ED80  7C 08 03 A6 */	mtlr r0
/* 8011ED84  38 21 00 10 */	addi r1, r1, 0x10
/* 8011ED88  4E 80 00 20 */	blr 
