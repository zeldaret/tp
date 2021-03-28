lbl_802A78F4:
/* 802A78F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A78F8  7C 08 02 A6 */	mflr r0
/* 802A78FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A7900  39 61 00 20 */	addi r11, r1, 0x20
/* 802A7904  48 0B A8 D5 */	bl _savegpr_28
/* 802A7908  7C 7C 1B 78 */	mr r28, r3
/* 802A790C  83 C3 00 04 */	lwz r30, 4(r3)
/* 802A7910  28 1E 00 00 */	cmplwi r30, 0
/* 802A7914  41 82 00 08 */	beq lbl_802A791C
/* 802A7918  48 00 00 08 */	b lbl_802A7920
lbl_802A791C:
/* 802A791C  83 DC 00 08 */	lwz r30, 8(r28)
lbl_802A7920:
/* 802A7920  7F C3 F3 78 */	mr r3, r30
/* 802A7924  48 00 03 B1 */	bl toMessageCode_messageID__Q28JMessage10TProcessorCFUlUlPb
/* 802A7928  7C 66 1B 78 */	mr r6, r3
/* 802A792C  3C 06 00 01 */	addis r0, r6, 1
/* 802A7930  28 00 FF FF */	cmplwi r0, 0xffff
/* 802A7934  40 82 00 0C */	bne lbl_802A7940
/* 802A7938  38 60 00 00 */	li r3, 0
/* 802A793C  48 00 00 CC */	b lbl_802A7A08
lbl_802A7940:
/* 802A7940  7F 83 E3 78 */	mr r3, r28
/* 802A7944  7F C4 F3 78 */	mr r4, r30
/* 802A7948  54 C5 84 3E */	srwi r5, r6, 0x10
/* 802A794C  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 802A7950  48 00 00 D1 */	bl setMessageCode_inSequence___Q28JMessage8TControlFPCQ28JMessage10TProcessorUsUs
/* 802A7954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A7958  40 82 00 0C */	bne lbl_802A7964
/* 802A795C  38 60 00 00 */	li r3, 0
/* 802A7960  48 00 00 A8 */	b lbl_802A7A08
lbl_802A7964:
/* 802A7964  38 60 00 00 */	li r3, 0
/* 802A7968  83 BC 00 18 */	lwz r29, 0x18(r28)
/* 802A796C  28 1D 00 00 */	cmplwi r29, 0
/* 802A7970  41 82 00 14 */	beq lbl_802A7984
/* 802A7974  80 1C 00 04 */	lwz r0, 4(r28)
/* 802A7978  28 00 00 00 */	cmplwi r0, 0
/* 802A797C  41 82 00 08 */	beq lbl_802A7984
/* 802A7980  38 60 00 01 */	li r3, 1
lbl_802A7984:
/* 802A7984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A7988  41 82 00 7C */	beq lbl_802A7A04
/* 802A798C  83 DC 00 14 */	lwz r30, 0x14(r28)
/* 802A7990  83 FC 00 04 */	lwz r31, 4(r28)
/* 802A7994  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802A7998  90 1F 00 08 */	stw r0, 8(r31)
/* 802A799C  93 BF 00 0C */	stw r29, 0xc(r31)
/* 802A79A0  38 00 00 00 */	li r0, 0
/* 802A79A4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802A79A8  3C 60 80 2B */	lis r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha
/* 802A79AC  38 03 82 8C */	addi r0, r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l
/* 802A79B0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802A79B4  7F E3 FB 78 */	mr r3, r31
/* 802A79B8  7F A4 EB 78 */	mr r4, r29
/* 802A79BC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A79C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A79C4  7D 89 03 A6 */	mtctr r12
/* 802A79C8  4E 80 04 21 */	bctrl 
/* 802A79CC  7F E3 FB 78 */	mr r3, r31
/* 802A79D0  7F C4 F3 78 */	mr r4, r30
/* 802A79D4  7F A5 EB 78 */	mr r5, r29
/* 802A79D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A79DC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802A79E0  7D 89 03 A6 */	mtctr r12
/* 802A79E4  4E 80 04 21 */	bctrl 
/* 802A79E8  7F E3 FB 78 */	mr r3, r31
/* 802A79EC  7F C4 F3 78 */	mr r4, r30
/* 802A79F0  7F A5 EB 78 */	mr r5, r29
/* 802A79F4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A79F8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A79FC  7D 89 03 A6 */	mtctr r12
/* 802A7A00  4E 80 04 21 */	bctrl 
lbl_802A7A04:
/* 802A7A04  38 60 00 01 */	li r3, 1
lbl_802A7A08:
/* 802A7A08  39 61 00 20 */	addi r11, r1, 0x20
/* 802A7A0C  48 0B A8 19 */	bl _restgpr_28
/* 802A7A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A7A14  7C 08 03 A6 */	mtlr r0
/* 802A7A18  38 21 00 20 */	addi r1, r1, 0x20
/* 802A7A1C  4E 80 00 20 */	blr 
