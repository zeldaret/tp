lbl_801CE4DC:
/* 801CE4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE4E0  7C 08 02 A6 */	mflr r0
/* 801CE4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE4EC  93 C1 00 08 */	stw r30, 8(r1)
/* 801CE4F0  7C 7E 1B 78 */	mr r30, r3
/* 801CE4F4  3B E0 00 00 */	li r31, 0
/* 801CE4F8  4B E6 09 69 */	bl dComIfGp_getNowLevel__Fv
/* 801CE4FC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801CE500  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 801CE504  7C 00 18 00 */	cmpw r0, r3
/* 801CE508  40 82 00 28 */	bne lbl_801CE530
/* 801CE50C  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801CE510  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 801CE514  7C 03 00 00 */	cmpw r3, r0
/* 801CE518  40 82 00 18 */	bne lbl_801CE530
/* 801CE51C  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801CE520  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801CE524  7C 00 07 74 */	extsb r0, r0
/* 801CE528  7C 03 00 00 */	cmpw r3, r0
/* 801CE52C  41 82 00 14 */	beq lbl_801CE540
lbl_801CE530:
/* 801CE530  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 801CE534  4B E6 F2 E5 */	bl isArrival__22dMenu_Fmap_room_data_cFv
/* 801CE538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CE53C  41 82 00 08 */	beq lbl_801CE544
lbl_801CE540:
/* 801CE540  3B E0 00 01 */	li r31, 1
lbl_801CE544:
/* 801CE544  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801CE548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE54C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CE550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE554  7C 08 03 A6 */	mtlr r0
/* 801CE558  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE55C  4E 80 00 20 */	blr 
