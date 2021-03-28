lbl_8011D304:
/* 8011D304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D308  7C 08 02 A6 */	mflr r0
/* 8011D30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D314  7C 7F 1B 78 */	mr r31, r3
/* 8011D318  38 80 01 5D */	li r4, 0x15d
/* 8011D31C  4B FA 5A 89 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011D320  2C 03 00 00 */	cmpwi r3, 0
/* 8011D324  40 82 00 0C */	bne lbl_8011D330
/* 8011D328  38 60 00 01 */	li r3, 1
/* 8011D32C  48 00 00 8C */	b lbl_8011D3B8
lbl_8011D330:
/* 8011D330  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D334  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D338  41 82 00 10 */	beq lbl_8011D348
/* 8011D33C  38 00 00 01 */	li r0, 1
/* 8011D340  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011D344  48 00 00 70 */	b lbl_8011D3B4
lbl_8011D348:
/* 8011D348  7F E3 FB 78 */	mr r3, r31
/* 8011D34C  38 80 00 D2 */	li r4, 0xd2
/* 8011D350  4B F8 FF F1 */	bl setUpperAnimeBase__9daAlink_cFUs
/* 8011D354  38 00 00 02 */	li r0, 2
/* 8011D358  98 1F 20 4C */	stb r0, 0x204c(r31)
/* 8011D35C  38 00 00 2D */	li r0, 0x2d
/* 8011D360  B0 1F 20 52 */	sth r0, 0x2052(r31)
/* 8011D364  7F E3 FB 78 */	mr r3, r31
/* 8011D368  38 80 00 76 */	li r4, 0x76
/* 8011D36C  4B F9 27 3D */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8011D370  7F E3 FB 78 */	mr r3, r31
/* 8011D374  38 80 01 28 */	li r4, 0x128
/* 8011D378  38 A0 00 01 */	li r5, 1
/* 8011D37C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8011D380  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8011D384  4B F9 21 2D */	bl setFaceBck__9daAlink_cFUsiUs
/* 8011D388  38 00 00 00 */	li r0, 0
/* 8011D38C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011D390  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 8011D394  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8011D398  38 00 00 04 */	li r0, 4
/* 8011D39C  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 8011D3A0  38 00 00 0A */	li r0, 0xa
/* 8011D3A4  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 8011D3A8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D3AC  64 00 10 10 */	oris r0, r0, 0x1010
/* 8011D3B0  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_8011D3B4:
/* 8011D3B4  38 60 00 01 */	li r3, 1
lbl_8011D3B8:
/* 8011D3B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D3C0  7C 08 03 A6 */	mtlr r0
/* 8011D3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D3C8  4E 80 00 20 */	blr 
