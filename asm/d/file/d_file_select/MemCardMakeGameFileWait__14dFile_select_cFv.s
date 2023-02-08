lbl_8018F5E0:
/* 8018F5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F5E4  7C 08 02 A6 */	mflr r0
/* 8018F5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F5EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F5F0  7C 7F 1B 78 */	mr r31, r3
/* 8018F5F4  A8 83 03 AC */	lha r4, 0x3ac(r3)
/* 8018F5F8  2C 04 00 00 */	cmpwi r4, 0
/* 8018F5FC  41 82 00 10 */	beq lbl_8018F60C
/* 8018F600  38 04 FF FF */	addi r0, r4, -1
/* 8018F604  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018F608  48 00 00 34 */	b lbl_8018F63C
lbl_8018F60C:
/* 8018F60C  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 8018F610  2C 00 00 01 */	cmpwi r0, 1
/* 8018F614  40 82 00 10 */	bne lbl_8018F624
/* 8018F618  38 80 00 1C */	li r4, 0x1c
/* 8018F61C  48 00 06 49 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018F620  48 00 00 14 */	b lbl_8018F634
lbl_8018F624:
/* 8018F624  2C 00 00 02 */	cmpwi r0, 2
/* 8018F628  40 82 00 0C */	bne lbl_8018F634
/* 8018F62C  38 80 00 1A */	li r4, 0x1a
/* 8018F630  48 00 06 35 */	bl errorTxtSet__14dFile_select_cFUs
lbl_8018F634:
/* 8018F634  38 00 00 11 */	li r0, 0x11
/* 8018F638  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018F63C:
/* 8018F63C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F644  7C 08 03 A6 */	mtlr r0
/* 8018F648  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F64C  4E 80 00 20 */	blr 
