lbl_8011D110:
/* 8011D110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D114  7C 08 02 A6 */	mflr r0
/* 8011D118  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D11C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D120  7C 7F 1B 78 */	mr r31, r3
/* 8011D124  38 80 01 5B */	li r4, 0x15b
/* 8011D128  4B FA 5C 7D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011D12C  2C 03 00 00 */	cmpwi r3, 0
/* 8011D130  40 82 00 0C */	bne lbl_8011D13C
/* 8011D134  38 60 00 01 */	li r3, 1
/* 8011D138  48 00 00 A8 */	b lbl_8011D1E0
lbl_8011D13C:
/* 8011D13C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D140  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D144  41 82 00 10 */	beq lbl_8011D154
/* 8011D148  38 00 00 01 */	li r0, 1
/* 8011D14C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011D150  48 00 00 8C */	b lbl_8011D1DC
lbl_8011D154:
/* 8011D154  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011D158  2C 00 00 01 */	cmpwi r0, 1
/* 8011D15C  40 82 00 38 */	bne lbl_8011D194
/* 8011D160  7F E3 FB 78 */	mr r3, r31
/* 8011D164  38 80 02 4E */	li r4, 0x24e
/* 8011D168  4B F9 01 D9 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 8011D16C  7F E3 FB 78 */	mr r3, r31
/* 8011D170  38 80 01 5B */	li r4, 0x15b
/* 8011D174  38 A0 00 01 */	li r5, 1
/* 8011D178  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011D17C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011D180  4B F9 23 31 */	bl setFaceBck__9daAlink_cFUsiUs
/* 8011D184  7F E3 FB 78 */	mr r3, r31
/* 8011D188  38 80 00 8A */	li r4, 0x8a
/* 8011D18C  4B F9 29 1D */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8011D190  48 00 00 28 */	b lbl_8011D1B8
lbl_8011D194:
/* 8011D194  7F E3 FB 78 */	mr r3, r31
/* 8011D198  38 80 00 D1 */	li r4, 0xd1
/* 8011D19C  4B F9 01 A5 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 8011D1A0  7F E3 FB 78 */	mr r3, r31
/* 8011D1A4  38 80 00 D1 */	li r4, 0xd1
/* 8011D1A8  4B F9 01 99 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 8011D1AC  7F E3 FB 78 */	mr r3, r31
/* 8011D1B0  38 80 00 75 */	li r4, 0x75
/* 8011D1B4  4B F9 28 F5 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
lbl_8011D1B8:
/* 8011D1B8  38 00 00 04 */	li r0, 4
/* 8011D1BC  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 8011D1C0  38 00 00 0A */	li r0, 0xa
/* 8011D1C4  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 8011D1C8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D1CC  64 00 10 10 */	oris r0, r0, 0x1010
/* 8011D1D0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 8011D1D4  38 00 00 00 */	li r0, 0
/* 8011D1D8  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8011D1DC:
/* 8011D1DC  38 60 00 01 */	li r3, 1
lbl_8011D1E0:
/* 8011D1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D1E8  7C 08 03 A6 */	mtlr r0
/* 8011D1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D1F0  4E 80 00 20 */	blr 
