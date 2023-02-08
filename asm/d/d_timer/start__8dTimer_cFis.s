lbl_8025D618:
/* 8025D618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D61C  7C 08 02 A6 */	mflr r0
/* 8025D620  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D628  7C 7F 1B 78 */	mr r31, r3
/* 8025D62C  7C A0 07 34 */	extsh r0, r5
/* 8025D630  2C 00 FF FF */	cmpwi r0, -1
/* 8025D634  40 82 00 74 */	bne lbl_8025D6A8
/* 8025D638  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025D63C  28 00 00 00 */	cmplwi r0, 0
/* 8025D640  40 82 00 60 */	bne lbl_8025D6A0
/* 8025D644  2C 04 00 02 */	cmpwi r4, 2
/* 8025D648  41 82 00 0C */	beq lbl_8025D654
/* 8025D64C  2C 04 00 07 */	cmpwi r4, 7
/* 8025D650  40 82 00 10 */	bne lbl_8025D660
lbl_8025D654:
/* 8025D654  7C 83 23 78 */	mr r3, r4
/* 8025D658  38 80 03 E3 */	li r4, 0x3e3
/* 8025D65C  48 00 3B 2D */	bl dTimer_createStart2D__FlUs
lbl_8025D660:
/* 8025D660  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8025D664  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8025D668  A8 03 0B E6 */	lha r0, 0xbe6(r3)
/* 8025D66C  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 8025D670  38 00 00 04 */	li r0, 4
/* 8025D674  98 1F 01 6C */	stb r0, 0x16c(r31)
/* 8025D678  4B DD 51 8D */	bl getTime__11dLib_time_cFv
/* 8025D67C  90 9F 01 14 */	stw r4, 0x114(r31)
/* 8025D680  90 7F 01 10 */	stw r3, 0x110(r31)
/* 8025D684  90 9F 01 1C */	stw r4, 0x11c(r31)
/* 8025D688  90 7F 01 18 */	stw r3, 0x118(r31)
/* 8025D68C  7F E3 FB 78 */	mr r3, r31
/* 8025D690  38 80 00 04 */	li r4, 4
/* 8025D694  48 00 01 55 */	bl stop__8dTimer_cFUc
/* 8025D698  38 00 00 02 */	li r0, 2
/* 8025D69C  98 1F 01 6C */	stb r0, 0x16c(r31)
lbl_8025D6A0:
/* 8025D6A0  38 60 00 01 */	li r3, 1
/* 8025D6A4  48 00 00 50 */	b lbl_8025D6F4
lbl_8025D6A8:
/* 8025D6A8  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025D6AC  28 00 00 00 */	cmplwi r0, 0
/* 8025D6B0  40 82 00 40 */	bne lbl_8025D6F0
/* 8025D6B4  B0 BF 01 68 */	sth r5, 0x168(r31)
/* 8025D6B8  38 00 00 01 */	li r0, 1
/* 8025D6BC  98 1F 01 6C */	stb r0, 0x16c(r31)
/* 8025D6C0  38 04 FF FD */	addi r0, r4, -3
/* 8025D6C4  28 00 00 01 */	cmplwi r0, 1
/* 8025D6C8  40 81 00 14 */	ble lbl_8025D6DC
/* 8025D6CC  2C 04 00 06 */	cmpwi r4, 6
/* 8025D6D0  41 82 00 0C */	beq lbl_8025D6DC
/* 8025D6D4  2C 04 00 05 */	cmpwi r4, 5
/* 8025D6D8  40 82 00 10 */	bne lbl_8025D6E8
lbl_8025D6DC:
/* 8025D6DC  7F E3 FB 78 */	mr r3, r31
/* 8025D6E0  38 80 00 03 */	li r4, 3
/* 8025D6E4  48 00 01 05 */	bl stop__8dTimer_cFUc
lbl_8025D6E8:
/* 8025D6E8  38 60 00 01 */	li r3, 1
/* 8025D6EC  48 00 00 08 */	b lbl_8025D6F4
lbl_8025D6F0:
/* 8025D6F0  38 60 00 00 */	li r3, 0
lbl_8025D6F4:
/* 8025D6F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D6FC  7C 08 03 A6 */	mtlr r0
/* 8025D700  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D704  4E 80 00 20 */	blr 
