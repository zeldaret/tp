lbl_80D6737C:
/* 80D6737C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67380  7C 08 02 A6 */	mflr r0
/* 80D67384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D6738C  7C 7F 1B 78 */	mr r31, r3
/* 80D67390  38 7F 05 78 */	addi r3, r31, 0x578
/* 80D67394  4B 2A 60 94 */	b play__14mDoExt_baseAnmFv
/* 80D67398  38 7F 05 94 */	addi r3, r31, 0x594
/* 80D6739C  4B 2A 60 8C */	b play__14mDoExt_baseAnmFv
/* 80D673A0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80D673A4  4B 2A 60 84 */	b play__14mDoExt_baseAnmFv
/* 80D673A8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80D673AC  4B 2A 60 7C */	b play__14mDoExt_baseAnmFv
/* 80D673B0  38 80 00 01 */	li r4, 1
/* 80D673B4  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 80D673B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D673BC  40 82 00 1C */	bne lbl_80D673D8
/* 80D673C0  3C 60 80 D6 */	lis r3, lit_4139@ha
/* 80D673C4  C0 23 7B F8 */	lfs f1, lit_4139@l(r3)
/* 80D673C8  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80D673CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D673D0  41 82 00 08 */	beq lbl_80D673D8
/* 80D673D4  38 80 00 00 */	li r4, 0
lbl_80D673D8:
/* 80D673D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D673DC  41 82 00 B8 */	beq lbl_80D67494
/* 80D673E0  38 80 00 01 */	li r4, 1
/* 80D673E4  88 1F 05 C9 */	lbz r0, 0x5c9(r31)
/* 80D673E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D673EC  40 82 00 1C */	bne lbl_80D67408
/* 80D673F0  3C 60 80 D6 */	lis r3, lit_4139@ha
/* 80D673F4  C0 23 7B F8 */	lfs f1, lit_4139@l(r3)
/* 80D673F8  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 80D673FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D67400  41 82 00 08 */	beq lbl_80D67408
/* 80D67404  38 80 00 00 */	li r4, 0
lbl_80D67408:
/* 80D67408  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D6740C  41 82 00 88 */	beq lbl_80D67494
/* 80D67410  38 80 00 01 */	li r4, 1
/* 80D67414  88 1F 05 7D */	lbz r0, 0x57d(r31)
/* 80D67418  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D6741C  40 82 00 1C */	bne lbl_80D67438
/* 80D67420  3C 60 80 D6 */	lis r3, lit_4139@ha
/* 80D67424  C0 23 7B F8 */	lfs f1, lit_4139@l(r3)
/* 80D67428  C0 1F 05 84 */	lfs f0, 0x584(r31)
/* 80D6742C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D67430  41 82 00 08 */	beq lbl_80D67438
/* 80D67434  38 80 00 00 */	li r4, 0
lbl_80D67438:
/* 80D67438  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D6743C  41 82 00 58 */	beq lbl_80D67494
/* 80D67440  38 80 00 01 */	li r4, 1
/* 80D67444  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D67448  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D6744C  40 82 00 1C */	bne lbl_80D67468
/* 80D67450  3C 60 80 D6 */	lis r3, lit_4139@ha
/* 80D67454  C0 23 7B F8 */	lfs f1, lit_4139@l(r3)
/* 80D67458  C0 1F 05 A0 */	lfs f0, 0x5a0(r31)
/* 80D6745C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D67460  41 82 00 08 */	beq lbl_80D67468
/* 80D67464  38 80 00 00 */	li r4, 0
lbl_80D67468:
/* 80D67468  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D6746C  41 82 00 28 */	beq lbl_80D67494
/* 80D67470  38 00 00 00 */	li r0, 0
/* 80D67474  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80D67478  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80D6747C  98 1F 06 04 */	stb r0, 0x604(r31)
/* 80D67480  38 00 00 01 */	li r0, 1
/* 80D67484  98 1F 05 F9 */	stb r0, 0x5f9(r31)
/* 80D67488  98 1F 05 FA */	stb r0, 0x5fa(r31)
/* 80D6748C  7F E3 FB 78 */	mr r3, r31
/* 80D67490  48 00 00 19 */	bl keyWaitInit__9daTitle_cFv
lbl_80D67494:
/* 80D67494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D67498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6749C  7C 08 03 A6 */	mtlr r0
/* 80D674A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D674A4  4E 80 00 20 */	blr 
