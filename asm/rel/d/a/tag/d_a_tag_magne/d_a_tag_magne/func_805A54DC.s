lbl_805A54DC:
/* 805A54DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A54E0  7C 08 02 A6 */	mflr r0
/* 805A54E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A54E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A54EC  7C 7F 1B 78 */	mr r31, r3
/* 805A54F0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A54F4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A54F8  40 82 00 1C */	bne lbl_805A5514
/* 805A54FC  28 1F 00 00 */	cmplwi r31, 0
/* 805A5500  41 82 00 08 */	beq lbl_805A5508
/* 805A5504  4B A7 36 60 */	b __ct__10fopAc_ac_cFv
lbl_805A5508:
/* 805A5508  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A550C  60 00 00 08 */	ori r0, r0, 8
/* 805A5510  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A5514:
/* 805A5514  3C 60 80 45 */	lis r3, mTagMagne__12daTagMagne_c@ha
/* 805A5518  38 63 0D BC */	addi r3, r3, mTagMagne__12daTagMagne_c@l
/* 805A551C  80 63 00 00 */	lwz r3, 0(r3)
/* 805A5520  28 03 00 00 */	cmplwi r3, 0
/* 805A5524  41 82 00 24 */	beq lbl_805A5548
/* 805A5528  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 805A552C  7C 03 07 74 */	extsb r3, r0
/* 805A5530  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A5534  7C 00 07 74 */	extsb r0, r0
/* 805A5538  7C 03 00 00 */	cmpw r3, r0
/* 805A553C  41 82 00 0C */	beq lbl_805A5548
/* 805A5540  38 60 00 00 */	li r3, 0
/* 805A5544  48 00 00 20 */	b lbl_805A5564
lbl_805A5548:
/* 805A5548  7F E3 FB 78 */	mr r3, r31
/* 805A554C  4B FF FF 4D */	bl Create__12daTagMagne_cFv
/* 805A5550  2C 03 00 00 */	cmpwi r3, 0
/* 805A5554  40 82 00 0C */	bne lbl_805A5560
/* 805A5558  38 60 00 05 */	li r3, 5
/* 805A555C  48 00 00 08 */	b lbl_805A5564
lbl_805A5560:
/* 805A5560  38 60 00 04 */	li r3, 4
lbl_805A5564:
/* 805A5564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A5568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A556C  7C 08 03 A6 */	mtlr r0
/* 805A5570  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5574  4E 80 00 20 */	blr 
