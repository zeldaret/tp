lbl_80D13548:
/* 80D13548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1354C  7C 08 02 A6 */	mflr r0
/* 80D13550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D13558  7C 7F 1B 78 */	mr r31, r3
/* 80D1355C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D13560  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D13564  40 82 00 1C */	bne lbl_80D13580
/* 80D13568  28 1F 00 00 */	cmplwi r31, 0
/* 80D1356C  41 82 00 08 */	beq lbl_80D13574
/* 80D13570  4B FF FB 29 */	bl __ct__16daObjToaruMaki_cFv
lbl_80D13574:
/* 80D13574  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D13578  60 00 00 08 */	ori r0, r0, 8
/* 80D1357C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D13580:
/* 80D13580  7F E3 FB 78 */	mr r3, r31
/* 80D13584  4B FF FD 31 */	bl create__16daObjToaruMaki_cFv
/* 80D13588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1358C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13590  7C 08 03 A6 */	mtlr r0
/* 80D13594  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13598  4E 80 00 20 */	blr 
