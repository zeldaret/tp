lbl_8011DF68:
/* 8011DF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011DF6C  7C 08 02 A6 */	mflr r0
/* 8011DF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011DF74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011DF78  7C 7F 1B 78 */	mr r31, r3
/* 8011DF7C  38 80 00 E2 */	li r4, 0xe2
/* 8011DF80  4B FA 4E 25 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011DF84  2C 03 00 00 */	cmpwi r3, 0
/* 8011DF88  40 82 00 0C */	bne lbl_8011DF94
/* 8011DF8C  38 60 00 00 */	li r3, 0
/* 8011DF90  48 00 00 BC */	b lbl_8011E04C
lbl_8011DF94:
/* 8011DF94  7F E3 FB 78 */	mr r3, r31
/* 8011DF98  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 8011DF9C  4B FF A3 6D */	bl setTalkStartBack__9daAlink_cFP4cXyz
/* 8011DFA0  90 7F 31 98 */	stw r3, 0x3198(r31)
/* 8011DFA4  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 8011DFA8  2C 00 00 00 */	cmpwi r0, 0
/* 8011DFAC  40 82 00 20 */	bne lbl_8011DFCC
/* 8011DFB0  7F E3 FB 78 */	mr r3, r31
/* 8011DFB4  4B FF A7 21 */	bl setTradeItemAnime__9daAlink_cFv
/* 8011DFB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011DFBC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011DFC0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011DFC4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011DFC8  48 00 00 0C */	b lbl_8011DFD4
lbl_8011DFCC:
/* 8011DFCC  38 00 00 00 */	li r0, 0
/* 8011DFD0  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8011DFD4:
/* 8011DFD4  38 00 00 00 */	li r0, 0
/* 8011DFD8  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011DFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011DFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011DFE4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8011DFE8  60 00 00 10 */	ori r0, r0, 0x10
/* 8011DFEC  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8011DFF0  38 00 00 01 */	li r0, 1
/* 8011DFF4  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011DFF8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011DFFC  2C 00 00 01 */	cmpwi r0, 1
/* 8011E000  41 82 00 40 */	beq lbl_8011E040
/* 8011E004  2C 00 00 02 */	cmpwi r0, 2
/* 8011E008  40 82 00 20 */	bne lbl_8011E028
/* 8011E00C  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 8011E010  48 00 03 C9 */	bl checkLetterItem__9daAlink_cFi
/* 8011E014  2C 03 00 00 */	cmpwi r3, 0
/* 8011E018  41 82 00 28 */	beq lbl_8011E040
/* 8011E01C  38 00 00 00 */	li r0, 0
/* 8011E020  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011E024  48 00 00 1C */	b lbl_8011E040
lbl_8011E028:
/* 8011E028  88 63 4F B6 */	lbz r3, 0x4fb6(r3)
/* 8011E02C  48 00 03 AD */	bl checkLetterItem__9daAlink_cFi
/* 8011E030  2C 03 00 00 */	cmpwi r3, 0
/* 8011E034  41 82 00 0C */	beq lbl_8011E040
/* 8011E038  38 00 00 00 */	li r0, 0
/* 8011E03C  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_8011E040:
/* 8011E040  38 00 00 1E */	li r0, 0x1e
/* 8011E044  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8011E048  38 60 00 01 */	li r3, 1
lbl_8011E04C:
/* 8011E04C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011E050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011E054  7C 08 03 A6 */	mtlr r0
/* 8011E058  38 21 00 10 */	addi r1, r1, 0x10
/* 8011E05C  4E 80 00 20 */	blr 
