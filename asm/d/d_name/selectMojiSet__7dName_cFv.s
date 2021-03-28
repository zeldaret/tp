lbl_8024F55C:
/* 8024F55C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024F560  7C 08 02 A6 */	mflr r0
/* 8024F564  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024F568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024F56C  7C 7F 1B 78 */	mr r31, r3
/* 8024F570  48 00 00 2D */	bl getMoji__7dName_cFv
/* 8024F574  7C 64 1B 78 */	mr r4, r3
/* 8024F578  7F E3 FB 78 */	mr r3, r31
/* 8024F57C  48 00 00 B9 */	bl setMoji__7dName_cFi
/* 8024F580  7F E3 FB 78 */	mr r3, r31
/* 8024F584  48 00 03 09 */	bl setNameText__7dName_cFv
/* 8024F588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024F58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024F590  7C 08 03 A6 */	mtlr r0
/* 8024F594  38 21 00 10 */	addi r1, r1, 0x10
/* 8024F598  4E 80 00 20 */	blr 
