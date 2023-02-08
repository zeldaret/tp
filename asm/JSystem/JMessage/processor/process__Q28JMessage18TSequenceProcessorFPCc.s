lbl_802A8418:
/* 802A8418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A841C  7C 08 02 A6 */	mflr r0
/* 802A8420  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8428  93 C1 00 08 */	stw r30, 8(r1)
/* 802A842C  7C 7E 1B 78 */	mr r30, r3
/* 802A8430  7C 9F 23 78 */	mr r31, r4
lbl_802A8434:
/* 802A8434  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802A8438  2C 00 00 03 */	cmpwi r0, 3
/* 802A843C  41 82 00 18 */	beq lbl_802A8454
/* 802A8440  40 80 00 08 */	bge lbl_802A8448
/* 802A8444  48 00 00 E0 */	b lbl_802A8524
lbl_802A8448:
/* 802A8448  2C 00 00 05 */	cmpwi r0, 5
/* 802A844C  40 80 00 D8 */	bge lbl_802A8524
/* 802A8450  48 00 00 50 */	b lbl_802A84A0
lbl_802A8454:
/* 802A8454  7F C3 F3 78 */	mr r3, r30
/* 802A8458  48 00 01 8D */	bl on_jump_isReady__Q28JMessage18TSequenceProcessorFv
/* 802A845C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A8460  40 82 00 0C */	bne lbl_802A846C
/* 802A8464  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A8468  48 00 01 24 */	b lbl_802A858C
lbl_802A846C:
/* 802A846C  38 00 00 02 */	li r0, 2
/* 802A8470  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802A8474  7F C3 F3 78 */	mr r3, r30
/* 802A8478  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 802A847C  7D 89 03 A6 */	mtctr r12
/* 802A8480  4E 80 04 21 */	bctrl 
/* 802A8484  7C 64 1B 79 */	or. r4, r3, r3
/* 802A8488  41 82 00 9C */	beq lbl_802A8524
/* 802A848C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 802A8490  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 802A8494  7F C3 F3 78 */	mr r3, r30
/* 802A8498  48 00 01 79 */	bl on_jump__Q28JMessage18TSequenceProcessorFPCvPCc
/* 802A849C  48 00 00 88 */	b lbl_802A8524
lbl_802A84A0:
/* 802A84A0  7F C3 F3 78 */	mr r3, r30
/* 802A84A4  48 00 02 31 */	bl on_branch_queryResult__Q28JMessage18TSequenceProcessorFv
/* 802A84A8  7C 64 1B 78 */	mr r4, r3
/* 802A84AC  3C 60 80 00 */	lis r3, 0x8000 /* 0x7FFFFFFF@ha */
/* 802A84B0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x7FFFFFFF@l */
/* 802A84B4  7C 04 00 40 */	cmplw r4, r0
/* 802A84B8  40 81 00 30 */	ble lbl_802A84E8
/* 802A84BC  2C 04 FF FF */	cmpwi r4, -1
/* 802A84C0  41 82 00 14 */	beq lbl_802A84D4
/* 802A84C4  40 80 00 60 */	bge lbl_802A8524
/* 802A84C8  2C 04 FF FE */	cmpwi r4, -2
/* 802A84CC  40 80 00 10 */	bge lbl_802A84DC
/* 802A84D0  48 00 00 54 */	b lbl_802A8524
lbl_802A84D4:
/* 802A84D4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A84D8  48 00 00 B4 */	b lbl_802A858C
lbl_802A84DC:
/* 802A84DC  38 00 00 02 */	li r0, 2
/* 802A84E0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802A84E4  48 00 00 40 */	b lbl_802A8524
lbl_802A84E8:
/* 802A84E8  38 00 00 02 */	li r0, 2
/* 802A84EC  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802A84F0  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 802A84F4  7C 04 00 40 */	cmplw r4, r0
/* 802A84F8  40 80 00 2C */	bge lbl_802A8524
/* 802A84FC  7F C3 F3 78 */	mr r3, r30
/* 802A8500  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 802A8504  7D 89 03 A6 */	mtctr r12
/* 802A8508  4E 80 04 21 */	bctrl 
/* 802A850C  7C 64 1B 79 */	or. r4, r3, r3
/* 802A8510  41 82 00 14 */	beq lbl_802A8524
/* 802A8514  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 802A8518  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 802A851C  7F C3 F3 78 */	mr r3, r30
/* 802A8520  48 00 01 E1 */	bl on_branch__Q28JMessage18TSequenceProcessorFPCvPCc
lbl_802A8524:
/* 802A8524  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802A8528  7C 00 F8 40 */	cmplw r0, r31
/* 802A852C  40 82 00 34 */	bne lbl_802A8560
/* 802A8530  7F C3 F3 78 */	mr r3, r30
/* 802A8534  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A8538  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802A853C  7D 89 03 A6 */	mtctr r12
/* 802A8540  4E 80 04 21 */	bctrl 
/* 802A8544  7F C3 F3 78 */	mr r3, r30
/* 802A8548  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A854C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802A8550  7D 89 03 A6 */	mtctr r12
/* 802A8554  4E 80 04 21 */	bctrl 
/* 802A8558  38 60 00 00 */	li r3, 0
/* 802A855C  48 00 00 30 */	b lbl_802A858C
lbl_802A8560:
/* 802A8560  7F C3 F3 78 */	mr r3, r30
/* 802A8564  48 00 00 41 */	bl on_isReady__Q28JMessage18TSequenceProcessorFv
/* 802A8568  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A856C  40 82 00 0C */	bne lbl_802A8578
/* 802A8570  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A8574  48 00 00 18 */	b lbl_802A858C
lbl_802A8578:
/* 802A8578  7F C3 F3 78 */	mr r3, r30
/* 802A857C  4B FF FC 71 */	bl process_character___Q28JMessage10TProcessorFv
/* 802A8580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A8584  40 82 FE B0 */	bne lbl_802A8434
/* 802A8588  38 60 00 00 */	li r3, 0
lbl_802A858C:
/* 802A858C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8590  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8598  7C 08 03 A6 */	mtlr r0
/* 802A859C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A85A0  4E 80 00 20 */	blr 
