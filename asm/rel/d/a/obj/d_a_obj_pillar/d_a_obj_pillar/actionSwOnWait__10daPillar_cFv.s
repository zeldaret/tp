lbl_80CB031C:
/* 80CB031C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0320  7C 08 02 A6 */	mflr r0
/* 80CB0324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB032C  7C 7F 1B 78 */	mr r31, r3
/* 80CB0330  88 03 07 32 */	lbz r0, 0x732(r3)
/* 80CB0334  28 00 00 00 */	cmplwi r0, 0
/* 80CB0338  41 82 00 2C */	beq lbl_80CB0364
/* 80CB033C  4B FF F8 09 */	bl checkAttacked__10daPillar_cFv
/* 80CB0340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB0344  41 82 00 10 */	beq lbl_80CB0354
/* 80CB0348  38 00 00 02 */	li r0, 2
/* 80CB034C  98 1F 07 33 */	stb r0, 0x733(r31)
/* 80CB0350  48 00 00 14 */	b lbl_80CB0364
lbl_80CB0354:
/* 80CB0354  38 00 00 01 */	li r0, 1
/* 80CB0358  98 1F 07 33 */	stb r0, 0x733(r31)
/* 80CB035C  7F E3 FB 78 */	mr r3, r31
/* 80CB0360  48 00 00 19 */	bl actionSwOn__10daPillar_cFv
lbl_80CB0364:
/* 80CB0364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB0368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB036C  7C 08 03 A6 */	mtlr r0
/* 80CB0370  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0374  4E 80 00 20 */	blr 
