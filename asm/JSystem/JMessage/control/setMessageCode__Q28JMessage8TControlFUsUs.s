lbl_802A77E8:
/* 802A77E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A77EC  7C 08 02 A6 */	mflr r0
/* 802A77F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A77F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802A77F8  48 0B A9 E1 */	bl _savegpr_28
/* 802A77FC  7C 7C 1B 78 */	mr r28, r3
/* 802A7800  7C 80 23 78 */	mr r0, r4
/* 802A7804  7C A6 2B 78 */	mr r6, r5
/* 802A7808  80 83 00 04 */	lwz r4, 4(r3)
/* 802A780C  28 04 00 00 */	cmplwi r4, 0
/* 802A7810  41 82 00 08 */	beq lbl_802A7818
/* 802A7814  48 00 00 08 */	b lbl_802A781C
lbl_802A7818:
/* 802A7818  80 9C 00 08 */	lwz r4, 8(r28)
lbl_802A781C:
/* 802A781C  7F 83 E3 78 */	mr r3, r28
/* 802A7820  7C 05 03 78 */	mr r5, r0
/* 802A7824  48 00 01 FD */	bl setMessageCode_inSequence___Q28JMessage8TControlFPCQ28JMessage10TProcessorUsUs
/* 802A7828  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A782C  40 82 00 0C */	bne lbl_802A7838
/* 802A7830  38 60 00 00 */	li r3, 0
/* 802A7834  48 00 00 A8 */	b lbl_802A78DC
lbl_802A7838:
/* 802A7838  38 60 00 00 */	li r3, 0
/* 802A783C  83 BC 00 18 */	lwz r29, 0x18(r28)
/* 802A7840  28 1D 00 00 */	cmplwi r29, 0
/* 802A7844  41 82 00 14 */	beq lbl_802A7858
/* 802A7848  80 1C 00 04 */	lwz r0, 4(r28)
/* 802A784C  28 00 00 00 */	cmplwi r0, 0
/* 802A7850  41 82 00 08 */	beq lbl_802A7858
/* 802A7854  38 60 00 01 */	li r3, 1
lbl_802A7858:
/* 802A7858  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A785C  41 82 00 7C */	beq lbl_802A78D8
/* 802A7860  83 DC 00 14 */	lwz r30, 0x14(r28)
/* 802A7864  83 FC 00 04 */	lwz r31, 4(r28)
/* 802A7868  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802A786C  90 1F 00 08 */	stw r0, 8(r31)
/* 802A7870  93 BF 00 0C */	stw r29, 0xc(r31)
/* 802A7874  38 00 00 00 */	li r0, 0
/* 802A7878  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802A787C  3C 60 80 2B */	lis r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha /* 0x802A828C@ha */
/* 802A7880  38 03 82 8C */	addi r0, r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l /* 0x802A828C@l */
/* 802A7884  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802A7888  7F E3 FB 78 */	mr r3, r31
/* 802A788C  7F A4 EB 78 */	mr r4, r29
/* 802A7890  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A7894  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A7898  7D 89 03 A6 */	mtctr r12
/* 802A789C  4E 80 04 21 */	bctrl 
/* 802A78A0  7F E3 FB 78 */	mr r3, r31
/* 802A78A4  7F C4 F3 78 */	mr r4, r30
/* 802A78A8  7F A5 EB 78 */	mr r5, r29
/* 802A78AC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A78B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802A78B4  7D 89 03 A6 */	mtctr r12
/* 802A78B8  4E 80 04 21 */	bctrl 
/* 802A78BC  7F E3 FB 78 */	mr r3, r31
/* 802A78C0  7F C4 F3 78 */	mr r4, r30
/* 802A78C4  7F A5 EB 78 */	mr r5, r29
/* 802A78C8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A78CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A78D0  7D 89 03 A6 */	mtctr r12
/* 802A78D4  4E 80 04 21 */	bctrl 
lbl_802A78D8:
/* 802A78D8  38 60 00 01 */	li r3, 1
lbl_802A78DC:
/* 802A78DC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A78E0  48 0B A9 45 */	bl _restgpr_28
/* 802A78E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A78E8  7C 08 03 A6 */	mtlr r0
/* 802A78EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A78F0  4E 80 00 20 */	blr 
