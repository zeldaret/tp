lbl_802493B4:
/* 802493B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802493B8  7C 08 02 A6 */	mflr r0
/* 802493BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802493C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802493C4  7C 7F 1B 78 */	mr r31, r3
/* 802493C8  3C 80 80 3C */	lis r4, __vt__16dMsgStringBase_c@ha
/* 802493CC  38 04 14 78 */	addi r0, r4, __vt__16dMsgStringBase_c@l
/* 802493D0  90 03 00 00 */	stw r0, 0(r3)
/* 802493D4  38 00 00 00 */	li r0, 0
/* 802493D8  B0 03 00 20 */	sth r0, 0x20(r3)
/* 802493DC  48 00 03 25 */	bl getResource__16dMsgStringBase_cFv
/* 802493E0  38 60 00 20 */	li r3, 0x20
/* 802493E4  48 08 58 69 */	bl __nw__FUl
/* 802493E8  7C 60 1B 79 */	or. r0, r3, r3
/* 802493EC  41 82 00 0C */	beq lbl_802493F8
/* 802493F0  48 05 FC 7D */	bl __ct__Q28JMessage18TResourceContainerFv
/* 802493F4  7C 60 1B 78 */	mr r0, r3
lbl_802493F8:
/* 802493F8  90 1F 00 04 */	stw r0, 4(r31)
/* 802493FC  38 60 00 38 */	li r3, 0x38
/* 80249400  48 08 58 4D */	bl __nw__FUl
/* 80249404  7C 60 1B 79 */	or. r0, r3, r3
/* 80249408  41 82 00 0C */	beq lbl_80249414
/* 8024940C  4B FE 67 51 */	bl __ct__24jmessage_string_tControlFv
/* 80249410  7C 60 1B 78 */	mr r0, r3
lbl_80249414:
/* 80249414  90 1F 00 08 */	stw r0, 8(r31)
/* 80249418  38 60 00 88 */	li r3, 0x88
/* 8024941C  48 08 58 31 */	bl __nw__FUl
/* 80249420  7C 60 1B 79 */	or. r0, r3, r3
/* 80249424  41 82 00 0C */	beq lbl_80249430
/* 80249428  4B FE 64 99 */	bl __ct__26jmessage_string_tReferenceFv
/* 8024942C  7C 60 1B 78 */	mr r0, r3
lbl_80249430:
/* 80249430  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80249434  38 60 00 8C */	li r3, 0x8c
/* 80249438  48 08 58 15 */	bl __nw__FUl
/* 8024943C  7C 60 1B 79 */	or. r0, r3, r3
/* 80249440  41 82 00 14 */	beq lbl_80249454
/* 80249444  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80249448  80 BF 00 08 */	lwz r5, 8(r31)
/* 8024944C  4B FE 75 BD */	bl __ct__34jmessage_string_tSequenceProcessorFPC26jmessage_string_tReferenceP24jmessage_string_tControl
/* 80249450  7C 60 1B 78 */	mr r0, r3
lbl_80249454:
/* 80249454  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80249458  38 60 05 58 */	li r3, 0x558
/* 8024945C  48 08 57 F1 */	bl __nw__FUl
/* 80249460  7C 60 1B 79 */	or. r0, r3, r3
/* 80249464  41 82 00 10 */	beq lbl_80249474
/* 80249468  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8024946C  4B FE 77 5D */	bl __ct__35jmessage_string_tRenderingProcessorFPC26jmessage_string_tReference
/* 80249470  7C 60 1B 78 */	mr r0, r3
lbl_80249474:
/* 80249474  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80249478  38 60 00 0C */	li r3, 0xc
/* 8024947C  48 08 57 D1 */	bl __nw__FUl
/* 80249480  7C 60 1B 79 */	or. r0, r3, r3
/* 80249484  41 82 00 10 */	beq lbl_80249494
/* 80249488  80 9F 00 04 */	lwz r4, 4(r31)
/* 8024948C  48 05 FC A5 */	bl __ct__Q28JMessage6TParseFPQ28JMessage18TResourceContainer
/* 80249490  7C 60 1B 78 */	mr r0, r3
lbl_80249494:
/* 80249494  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80249498  80 1F 00 04 */	lwz r0, 4(r31)
/* 8024949C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802494A0  90 03 00 04 */	stw r0, 4(r3)
/* 802494A4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 802494A8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802494AC  90 03 00 04 */	stw r0, 4(r3)
/* 802494B0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802494B4  80 7F 00 08 */	lwz r3, 8(r31)
/* 802494B8  90 03 00 08 */	stw r0, 8(r3)
/* 802494BC  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 802494C0  90 01 00 08 */	stw r0, 8(r1)
/* 802494C4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802494C8  38 81 00 08 */	addi r4, r1, 8
/* 802494CC  38 A0 00 00 */	li r5, 0
/* 802494D0  48 09 34 41 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 802494D4  80 7F 00 08 */	lwz r3, 8(r31)
/* 802494D8  48 05 E0 FD */	bl reset__Q28JMessage8TControlFv
/* 802494DC  80 7F 00 08 */	lwz r3, 8(r31)
/* 802494E0  80 83 00 04 */	lwz r4, 4(r3)
/* 802494E4  28 04 00 00 */	cmplwi r4, 0
/* 802494E8  41 82 00 0C */	beq lbl_802494F4
/* 802494EC  38 00 00 00 */	li r0, 0
/* 802494F0  90 04 00 08 */	stw r0, 8(r4)
lbl_802494F4:
/* 802494F4  80 83 00 08 */	lwz r4, 8(r3)
/* 802494F8  28 04 00 00 */	cmplwi r4, 0
/* 802494FC  41 82 00 0C */	beq lbl_80249508
/* 80249500  38 00 00 00 */	li r0, 0
/* 80249504  90 04 00 08 */	stw r0, 8(r4)
lbl_80249508:
/* 80249508  38 00 00 00 */	li r0, 0
/* 8024950C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80249510  7F E3 FB 78 */	mr r3, r31
/* 80249514  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80249518  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024951C  7C 08 03 A6 */	mtlr r0
/* 80249520  38 21 00 20 */	addi r1, r1, 0x20
/* 80249524  4E 80 00 20 */	blr 
