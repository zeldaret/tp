lbl_8011D268:
/* 8011D268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D26C  7C 08 02 A6 */	mflr r0
/* 8011D270  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D278  7C 7F 1B 78 */	mr r31, r3
/* 8011D27C  38 80 01 5C */	li r4, 0x15c
/* 8011D280  4B FA 5B 25 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011D284  2C 03 00 00 */	cmpwi r3, 0
/* 8011D288  40 82 00 0C */	bne lbl_8011D294
/* 8011D28C  38 60 00 01 */	li r3, 1
/* 8011D290  48 00 00 60 */	b lbl_8011D2F0
lbl_8011D294:
/* 8011D294  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D298  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D29C  40 82 00 50 */	bne lbl_8011D2EC
/* 8011D2A0  7F E3 FB 78 */	mr r3, r31
/* 8011D2A4  38 80 00 D3 */	li r4, 0xd3
/* 8011D2A8  4B F9 00 99 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 8011D2AC  7F E3 FB 78 */	mr r3, r31
/* 8011D2B0  38 80 00 77 */	li r4, 0x77
/* 8011D2B4  4B F9 27 F5 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8011D2B8  7F E3 FB 78 */	mr r3, r31
/* 8011D2BC  38 80 01 29 */	li r4, 0x129
/* 8011D2C0  38 A0 00 01 */	li r5, 1
/* 8011D2C4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011D2C8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011D2CC  4B F9 21 E5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 8011D2D0  38 00 00 04 */	li r0, 4
/* 8011D2D4  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 8011D2D8  38 00 00 0A */	li r0, 0xa
/* 8011D2DC  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 8011D2E0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D2E4  64 00 10 10 */	oris r0, r0, 0x1010
/* 8011D2E8  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_8011D2EC:
/* 8011D2EC  38 60 00 01 */	li r3, 1
lbl_8011D2F0:
/* 8011D2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D2F8  7C 08 03 A6 */	mtlr r0
/* 8011D2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D300  4E 80 00 20 */	blr 
