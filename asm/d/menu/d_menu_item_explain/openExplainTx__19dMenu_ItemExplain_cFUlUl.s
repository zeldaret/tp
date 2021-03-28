lbl_801DC738:
/* 801DC738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC73C  7C 08 02 A6 */	mflr r0
/* 801DC740  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DC748  7C 7F 1B 78 */	mr r31, r3
/* 801DC74C  38 C0 00 00 */	li r6, 0
/* 801DC750  88 03 00 E0 */	lbz r0, 0xe0(r3)
/* 801DC754  28 00 00 00 */	cmplwi r0, 0
/* 801DC758  40 82 00 3C */	bne lbl_801DC794
/* 801DC75C  38 00 00 01 */	li r0, 1
/* 801DC760  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DC764  38 00 00 FF */	li r0, 0xff
/* 801DC768  98 1F 00 E1 */	stb r0, 0xe1(r31)
/* 801DC76C  90 9F 00 CC */	stw r4, 0xcc(r31)
/* 801DC770  90 BF 00 C8 */	stw r5, 0xc8(r31)
/* 801DC774  38 00 00 00 */	li r0, 0
/* 801DC778  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 801DC77C  98 1F 00 DE */	stb r0, 0xde(r31)
/* 801DC780  98 1F 00 DF */	stb r0, 0xdf(r31)
/* 801DC784  4B FF F0 9D */	bl open_init__19dMenu_ItemExplain_cFv
/* 801DC788  7F E3 FB 78 */	mr r3, r31
/* 801DC78C  48 00 04 31 */	bl setScale__19dMenu_ItemExplain_cFv
/* 801DC790  38 C0 00 01 */	li r6, 1
lbl_801DC794:
/* 801DC794  7C C3 33 78 */	mr r3, r6
/* 801DC798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DC79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC7A0  7C 08 03 A6 */	mtlr r0
/* 801DC7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC7A8  4E 80 00 20 */	blr 
