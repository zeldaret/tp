lbl_80A3A504:
/* 80A3A504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3A508  7C 08 02 A6 */	mflr r0
/* 80A3A50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3A510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3A514  7C 7F 1B 78 */	mr r31, r3
/* 80A3A518  A8 03 0D AC */	lha r0, 0xdac(r3)
/* 80A3A51C  B0 03 0D B2 */	sth r0, 0xdb2(r3)
/* 80A3A520  A8 03 0D AE */	lha r0, 0xdae(r3)
/* 80A3A524  B0 03 0D B4 */	sth r0, 0xdb4(r3)
/* 80A3A528  A8 03 0D B0 */	lha r0, 0xdb0(r3)
/* 80A3A52C  B0 03 0D B6 */	sth r0, 0xdb6(r3)
/* 80A3A530  38 00 00 00 */	li r0, 0
/* 80A3A534  90 03 0D D8 */	stw r0, 0xdd8(r3)
/* 80A3A538  38 7F 0E 36 */	addi r3, r31, 0xe36
/* 80A3A53C  38 80 00 00 */	li r4, 0
/* 80A3A540  38 1F 0E 3C */	addi r0, r31, 0xe3c
/* 80A3A544  7C A3 00 50 */	subf r5, r3, r0
/* 80A3A548  4B 5C 8F 10 */	b memset
/* 80A3A54C  38 00 00 00 */	li r0, 0
/* 80A3A550  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3A554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3A558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3A55C  7C 08 03 A6 */	mtlr r0
/* 80A3A560  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3A564  4E 80 00 20 */	blr 
