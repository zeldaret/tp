lbl_802B545C:
/* 802B545C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B5460  7C 08 02 A6 */	mflr r0
/* 802B5464  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B5468  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B546C  7C 7F 1B 78 */	mr r31, r3
/* 802B5470  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802B5474  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802B5478  28 00 00 00 */	cmplwi r0, 0
/* 802B547C  41 82 00 DC */	beq lbl_802B5558
/* 802B5480  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B5484  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 802B5488  41 82 00 D0 */	beq lbl_802B5558
/* 802B548C  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B5490  48 00 12 A5 */	bl checkDayTime__11Z2StatusMgrFv
/* 802B5494  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B5498  41 82 00 8C */	beq lbl_802B5524
/* 802B549C  3C 00 01 00 */	lis r0, 0x100
/* 802B54A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B54A4  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B54A8  38 81 00 0C */	addi r4, r1, 0xc
/* 802B54AC  7F E5 FB 78 */	mr r5, r31
/* 802B54B0  38 C0 00 00 */	li r6, 0
/* 802B54B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802B54B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B54BC  7D 89 03 A6 */	mtctr r12
/* 802B54C0  4E 80 04 21 */	bctrl 
/* 802B54C4  7F E3 FB 78 */	mr r3, r31
/* 802B54C8  38 80 00 00 */	li r4, 0
/* 802B54CC  4B FF AA C1 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B54D0  38 80 00 00 */	li r4, 0
/* 802B54D4  98 9F 00 C4 */	stb r4, 0xc4(r31)
/* 802B54D8  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802B54DC  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802B54E0  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802B54E4  41 82 00 24 */	beq lbl_802B5508
/* 802B54E8  38 60 00 01 */	li r3, 1
/* 802B54EC  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B54F0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802B54F4  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 802B54F8  98 9F 00 C3 */	stb r4, 0xc3(r31)
/* 802B54FC  7F E3 FB 78 */	mr r3, r31
/* 802B5500  48 00 00 6D */	bl fieldRidingMute__8Z2SeqMgrFv
/* 802B5504  48 00 00 54 */	b lbl_802B5558
lbl_802B5508:
/* 802B5508  88 1F 00 D0 */	lbz r0, 0xd0(r31)
/* 802B550C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 802B5510  98 1F 00 D0 */	stb r0, 0xd0(r31)
/* 802B5514  98 9F 00 C3 */	stb r4, 0xc3(r31)
/* 802B5518  7F E3 FB 78 */	mr r3, r31
/* 802B551C  48 00 00 51 */	bl fieldRidingMute__8Z2SeqMgrFv
/* 802B5520  48 00 00 38 */	b lbl_802B5558
lbl_802B5524:
/* 802B5524  3C 60 01 00 */	lis r3, 0x0100 /* 0x01000001@ha */
/* 802B5528  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x01000001@l */
/* 802B552C  90 01 00 08 */	stw r0, 8(r1)
/* 802B5530  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B5534  38 81 00 08 */	addi r4, r1, 8
/* 802B5538  7F E5 FB 78 */	mr r5, r31
/* 802B553C  38 C0 00 00 */	li r6, 0
/* 802B5540  81 83 00 00 */	lwz r12, 0(r3)
/* 802B5544  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B5548  7D 89 03 A6 */	mtctr r12
/* 802B554C  4E 80 04 21 */	bctrl 
/* 802B5550  38 00 00 00 */	li r0, 0
/* 802B5554  98 1F 00 BC */	stb r0, 0xbc(r31)
lbl_802B5558:
/* 802B5558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B555C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B5560  7C 08 03 A6 */	mtlr r0
/* 802B5564  38 21 00 20 */	addi r1, r1, 0x20
/* 802B5568  4E 80 00 20 */	blr 
