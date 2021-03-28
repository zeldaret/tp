lbl_805BA540:
/* 805BA540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA544  7C 08 02 A6 */	mflr r0
/* 805BA548  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA54C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BA550  7C 7F 1B 78 */	mr r31, r3
/* 805BA554  7F E5 FB 78 */	mr r5, r31
/* 805BA558  4B D8 CB 38 */	b PSVECAdd
/* 805BA55C  7F E3 FB 78 */	mr r3, r31
/* 805BA560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BA564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA568  7C 08 03 A6 */	mtlr r0
/* 805BA56C  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA570  4E 80 00 20 */	blr 
