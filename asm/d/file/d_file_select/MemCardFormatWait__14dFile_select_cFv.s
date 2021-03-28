lbl_8018F304:
/* 8018F304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F308  7C 08 02 A6 */	mflr r0
/* 8018F30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F314  7C 7F 1B 78 */	mr r31, r3
/* 8018F318  A8 83 03 AC */	lha r4, 0x3ac(r3)
/* 8018F31C  2C 04 00 00 */	cmpwi r4, 0
/* 8018F320  41 82 00 10 */	beq lbl_8018F330
/* 8018F324  38 04 FF FF */	addi r0, r4, -1
/* 8018F328  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018F32C  48 00 00 34 */	b lbl_8018F360
lbl_8018F330:
/* 8018F330  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 8018F334  2C 00 00 02 */	cmpwi r0, 2
/* 8018F338  40 82 00 10 */	bne lbl_8018F348
/* 8018F33C  38 80 00 0B */	li r4, 0xb
/* 8018F340  48 00 09 25 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018F344  48 00 00 14 */	b lbl_8018F358
lbl_8018F348:
/* 8018F348  2C 00 00 01 */	cmpwi r0, 1
/* 8018F34C  40 82 00 0C */	bne lbl_8018F358
/* 8018F350  38 80 00 0C */	li r4, 0xc
/* 8018F354  48 00 09 11 */	bl errorTxtSet__14dFile_select_cFUs
lbl_8018F358:
/* 8018F358  38 00 00 0C */	li r0, 0xc
/* 8018F35C  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018F360:
/* 8018F360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F368  7C 08 03 A6 */	mtlr r0
/* 8018F36C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F370  4E 80 00 20 */	blr 
