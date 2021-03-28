lbl_80294528:
/* 80294528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029452C  7C 08 02 A6 */	mflr r0
/* 80294530  90 01 00 24 */	stw r0, 0x24(r1)
/* 80294534  39 61 00 20 */	addi r11, r1, 0x20
/* 80294538  48 0C DC A5 */	bl _savegpr_29
/* 8029453C  7C 7D 1B 78 */	mr r29, r3
/* 80294540  7C 9E 23 78 */	mr r30, r4
/* 80294544  7C BF 2B 78 */	mr r31, r5
/* 80294548  7F C3 F3 78 */	mr r3, r30
/* 8029454C  80 85 00 00 */	lwz r4, 0(r5)
/* 80294550  4B FF E3 81 */	bl readPortSelf__8JASTrackFUl
/* 80294554  7C 60 1B 78 */	mr r0, r3
/* 80294558  7F A3 EB 78 */	mr r3, r29
/* 8029455C  7F C4 F3 78 */	mr r4, r30
/* 80294560  80 BF 00 04 */	lwz r5, 4(r31)
/* 80294564  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 80294568  4B FF F8 5D */	bl writeReg__12JASSeqParserFP8JASTrackUlUl
/* 8029456C  38 60 00 00 */	li r3, 0
/* 80294570  39 61 00 20 */	addi r11, r1, 0x20
/* 80294574  48 0C DC B5 */	bl _restgpr_29
/* 80294578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029457C  7C 08 03 A6 */	mtlr r0
/* 80294580  38 21 00 20 */	addi r1, r1, 0x20
/* 80294584  4E 80 00 20 */	blr 
