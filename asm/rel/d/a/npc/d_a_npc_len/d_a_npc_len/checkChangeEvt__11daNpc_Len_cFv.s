lbl_80A6546C:
/* 80A6546C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A65470  7C 08 02 A6 */	mflr r0
/* 80A65474  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A65478  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A6547C  7C 7F 1B 78 */	mr r31, r3
/* 80A65480  3C 80 80 A7 */	lis r4, lit_4644@ha
/* 80A65484  38 A4 98 20 */	addi r5, r4, lit_4644@l
/* 80A65488  80 85 00 00 */	lwz r4, 0(r5)
/* 80A6548C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A65490  90 81 00 08 */	stw r4, 8(r1)
/* 80A65494  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A65498  80 05 00 08 */	lwz r0, 8(r5)
/* 80A6549C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A654A0  38 81 00 08 */	addi r4, r1, 8
/* 80A654A4  48 00 0B 61 */	bl chkAction__11daNpc_Len_cFM11daNpc_Len_cFPCvPvPv_i
/* 80A654A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A654AC  40 82 00 A8 */	bne lbl_80A65554
/* 80A654B0  38 00 00 00 */	li r0, 0
/* 80A654B4  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A654B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A654BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A654C0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A654C4  28 04 00 01 */	cmplwi r4, 1
/* 80A654C8  41 82 00 0C */	beq lbl_80A654D4
/* 80A654CC  28 04 00 02 */	cmplwi r4, 2
/* 80A654D0  40 82 00 08 */	bne lbl_80A654D8
lbl_80A654D4:
/* 80A654D4  38 00 00 01 */	li r0, 1
lbl_80A654D8:
/* 80A654D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A654DC  41 82 00 2C */	beq lbl_80A65508
/* 80A654E0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A654E4  4B 5E 33 0C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A654E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A654EC  41 82 00 14 */	beq lbl_80A65500
/* 80A654F0  38 00 00 02 */	li r0, 2
/* 80A654F4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A654F8  7F E3 FB 78 */	mr r3, r31
/* 80A654FC  4B 6E 4D 28 */	b evtChange__8daNpcT_cFv
lbl_80A65500:
/* 80A65500  38 60 00 01 */	li r3, 1
/* 80A65504  48 00 00 54 */	b lbl_80A65558
lbl_80A65508:
/* 80A65508  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A6550C  2C 00 00 04 */	cmpwi r0, 4
/* 80A65510  41 82 00 10 */	beq lbl_80A65520
/* 80A65514  40 80 00 40 */	bge lbl_80A65554
/* 80A65518  48 00 00 3C */	b lbl_80A65554
/* 80A6551C  48 00 00 38 */	b lbl_80A65554
lbl_80A65520:
/* 80A65520  38 60 00 3A */	li r3, 0x3a
/* 80A65524  4B 6E 76 48 */	b daNpcT_chkTmpBit__FUl
/* 80A65528  2C 03 00 00 */	cmpwi r3, 0
/* 80A6552C  41 82 00 10 */	beq lbl_80A6553C
/* 80A65530  38 00 00 06 */	li r0, 6
/* 80A65534  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A65538  48 00 00 0C */	b lbl_80A65544
lbl_80A6553C:
/* 80A6553C  38 00 00 05 */	li r0, 5
/* 80A65540  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80A65544:
/* 80A65544  7F E3 FB 78 */	mr r3, r31
/* 80A65548  4B 6E 4C DC */	b evtChange__8daNpcT_cFv
/* 80A6554C  38 60 00 01 */	li r3, 1
/* 80A65550  48 00 00 08 */	b lbl_80A65558
lbl_80A65554:
/* 80A65554  38 60 00 00 */	li r3, 0
lbl_80A65558:
/* 80A65558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A6555C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A65560  7C 08 03 A6 */	mtlr r0
/* 80A65564  38 21 00 20 */	addi r1, r1, 0x20
/* 80A65568  4E 80 00 20 */	blr 
