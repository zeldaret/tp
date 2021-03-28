lbl_800CB53C:
/* 800CB53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CB540  7C 08 02 A6 */	mflr r0
/* 800CB544  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CB548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CB54C  93 C1 00 08 */	stw r30, 8(r1)
/* 800CB550  3B E0 00 00 */	li r31, 0
/* 800CB554  7F E5 FB 78 */	mr r5, r31
/* 800CB558  7F E6 FB 78 */	mr r6, r31
/* 800CB55C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800CB560  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800CB564  88 04 00 15 */	lbz r0, 0x15(r4)
/* 800CB568  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB56C  41 82 00 14 */	beq lbl_800CB580
/* 800CB570  88 03 2F D1 */	lbz r0, 0x2fd1(r3)
/* 800CB574  28 00 00 00 */	cmplwi r0, 0
/* 800CB578  40 82 00 08 */	bne lbl_800CB580
/* 800CB57C  38 C0 00 01 */	li r6, 1
lbl_800CB580:
/* 800CB580  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 800CB584  41 82 00 14 */	beq lbl_800CB598
/* 800CB588  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800CB58C  74 00 04 08 */	andis. r0, r0, 0x408
/* 800CB590  40 82 00 08 */	bne lbl_800CB598
/* 800CB594  38 A0 00 01 */	li r5, 1
lbl_800CB598:
/* 800CB598  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800CB59C  41 82 00 40 */	beq lbl_800CB5DC
/* 800CB5A0  3B C0 00 01 */	li r30, 1
/* 800CB5A4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800CB5A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CB5AC  41 82 00 24 */	beq lbl_800CB5D0
/* 800CB5B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CB5B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CB5B8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800CB5BC  38 80 0C 08 */	li r4, 0xc08
/* 800CB5C0  4B F6 93 FD */	bl isEventBit__11dSv_event_cCFUs
/* 800CB5C4  2C 03 00 00 */	cmpwi r3, 0
/* 800CB5C8  41 82 00 08 */	beq lbl_800CB5D0
/* 800CB5CC  3B C0 00 00 */	li r30, 0
lbl_800CB5D0:
/* 800CB5D0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800CB5D4  41 82 00 08 */	beq lbl_800CB5DC
/* 800CB5D8  3B E0 00 01 */	li r31, 1
lbl_800CB5DC:
/* 800CB5DC  7F E3 FB 78 */	mr r3, r31
/* 800CB5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CB5E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800CB5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CB5EC  7C 08 03 A6 */	mtlr r0
/* 800CB5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800CB5F4  4E 80 00 20 */	blr 
