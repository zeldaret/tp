lbl_800DFBC8:
/* 800DFBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DFBCC  7C 08 02 A6 */	mflr r0
/* 800DFBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DFBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DFBD8  3B E0 00 00 */	li r31, 0
/* 800DFBDC  7F E0 FB 78 */	mr r0, r31
/* 800DFBE0  88 83 2F AA */	lbz r4, 0x2faa(r3)
/* 800DFBE4  28 04 00 01 */	cmplwi r4, 1
/* 800DFBE8  41 82 00 0C */	beq lbl_800DFBF4
/* 800DFBEC  28 04 00 02 */	cmplwi r4, 2
/* 800DFBF0  40 82 00 08 */	bne lbl_800DFBF8
lbl_800DFBF4:
/* 800DFBF4  38 00 00 01 */	li r0, 1
lbl_800DFBF8:
/* 800DFBF8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800DFBFC  41 82 00 14 */	beq lbl_800DFC10
/* 800DFC00  4B FF ED E9 */	bl checkBowAnime__9daAlink_cCFv
/* 800DFC04  2C 03 00 00 */	cmpwi r3, 0
/* 800DFC08  40 82 00 08 */	bne lbl_800DFC10
/* 800DFC0C  3B E0 00 01 */	li r31, 1
lbl_800DFC10:
/* 800DFC10  7F E3 FB 78 */	mr r3, r31
/* 800DFC14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DFC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DFC1C  7C 08 03 A6 */	mtlr r0
/* 800DFC20  38 21 00 10 */	addi r1, r1, 0x10
/* 800DFC24  4E 80 00 20 */	blr 
