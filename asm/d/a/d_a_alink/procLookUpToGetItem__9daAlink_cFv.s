lbl_8011CB20:
/* 8011CB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011CB24  7C 08 02 A6 */	mflr r0
/* 8011CB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011CB2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011CB30  7C 7F 1B 78 */	mr r31, r3
/* 8011CB34  88 03 2F 99 */	lbz r0, 0x2f99(r3)
/* 8011CB38  28 00 00 0C */	cmplwi r0, 0xc
/* 8011CB3C  41 82 00 0C */	beq lbl_8011CB48
/* 8011CB40  38 00 00 04 */	li r0, 4
/* 8011CB44  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_8011CB48:
/* 8011CB48  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011CB4C  2C 00 00 00 */	cmpwi r0, 0
/* 8011CB50  40 82 00 4C */	bne lbl_8011CB9C
/* 8011CB54  38 7F 20 18 */	addi r3, r31, 0x2018
/* 8011CB58  48 04 19 75 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011CB5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011CB60  41 82 00 3C */	beq lbl_8011CB9C
/* 8011CB64  38 00 00 01 */	li r0, 1
/* 8011CB68  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011CB6C  7F E3 FB 78 */	mr r3, r31
/* 8011CB70  38 80 00 D3 */	li r4, 0xd3
/* 8011CB74  4B F9 04 0D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011CB78  7F E3 FB 78 */	mr r3, r31
/* 8011CB7C  38 80 01 33 */	li r4, 0x133
/* 8011CB80  38 A0 00 00 */	li r5, 0
/* 8011CB84  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011CB88  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011CB8C  4B F9 29 25 */	bl setFaceBck__9daAlink_cFUsiUs
/* 8011CB90  38 00 00 0C */	li r0, 0xc
/* 8011CB94  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011CB98  48 00 00 24 */	b lbl_8011CBBC
lbl_8011CB9C:
/* 8011CB9C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011CBA0  2C 00 00 00 */	cmpwi r0, 0
/* 8011CBA4  41 82 00 18 */	beq lbl_8011CBBC
/* 8011CBA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011CBAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011CBB0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011CBB4  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011CBB8  4B F2 B5 C5 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011CBBC:
/* 8011CBBC  38 60 00 01 */	li r3, 1
/* 8011CBC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011CBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011CBC8  7C 08 03 A6 */	mtlr r0
/* 8011CBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8011CBD0  4E 80 00 20 */	blr 
