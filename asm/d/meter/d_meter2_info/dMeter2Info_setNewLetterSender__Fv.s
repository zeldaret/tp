lbl_8021E804:
/* 8021E804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021E808  7C 08 02 A6 */	mflr r0
/* 8021E80C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021E810  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E814  48 14 39 BD */	bl _savegpr_26
/* 8021E818  3B E0 00 00 */	li r31, 0
/* 8021E81C  3B C0 00 00 */	li r30, 0
/* 8021E820  3B A0 00 00 */	li r29, 0
/* 8021E824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E82C  3B 83 01 1C */	addi r28, r3, 0x11c
/* 8021E830  3B 63 07 F0 */	addi r27, r3, 0x7f0
lbl_8021E834:
/* 8021E834  7F 83 E3 78 */	mr r3, r28
/* 8021E838  7F C4 F3 78 */	mr r4, r30
/* 8021E83C  4B E1 5C 11 */	bl isLetterGetFlag__17dSv_letter_info_cCFi
/* 8021E840  2C 03 00 00 */	cmpwi r3, 0
/* 8021E844  40 82 00 6C */	bne lbl_8021E8B0
/* 8021E848  3C 60 80 3C */	lis r3, letter_data__12dMenu_Letter@ha /* 0x803BF81C@ha */
/* 8021E84C  38 03 F8 1C */	addi r0, r3, letter_data__12dMenu_Letter@l /* 0x803BF81C@l */
/* 8021E850  7C 60 EA 14 */	add r3, r0, r29
/* 8021E854  3B 43 00 02 */	addi r26, r3, 2
/* 8021E858  A0 03 00 02 */	lhz r0, 2(r3)
/* 8021E85C  28 00 00 00 */	cmplwi r0, 0
/* 8021E860  41 82 00 50 */	beq lbl_8021E8B0
/* 8021E864  A0 03 00 06 */	lhz r0, 6(r3)
/* 8021E868  7F 63 DB 78 */	mr r3, r27
/* 8021E86C  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8021E870  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8021E874  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8021E878  7C 84 02 2E */	lhzx r4, r4, r0
/* 8021E87C  4B E1 61 41 */	bl isEventBit__11dSv_event_cCFUs
/* 8021E880  2C 03 00 00 */	cmpwi r3, 0
/* 8021E884  41 82 00 2C */	beq lbl_8021E8B0
/* 8021E888  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8021E88C  40 82 00 10 */	bne lbl_8021E89C
/* 8021E890  A0 7A 00 00 */	lhz r3, 0(r26)
/* 8021E894  48 01 9C 31 */	bl setLetterNameID__12dMsgObject_cFUs
/* 8021E898  48 00 00 14 */	b lbl_8021E8AC
lbl_8021E89C:
/* 8021E89C  38 60 00 00 */	li r3, 0
/* 8021E8A0  48 01 9C 25 */	bl setLetterNameID__12dMsgObject_cFUs
/* 8021E8A4  38 60 00 00 */	li r3, 0
/* 8021E8A8  48 00 00 1C */	b lbl_8021E8C4
lbl_8021E8AC:
/* 8021E8AC  3B FF 00 01 */	addi r31, r31, 1
lbl_8021E8B0:
/* 8021E8B0  3B DE 00 01 */	addi r30, r30, 1
/* 8021E8B4  2C 1E 00 40 */	cmpwi r30, 0x40
/* 8021E8B8  3B BD 00 08 */	addi r29, r29, 8
/* 8021E8BC  41 80 FF 78 */	blt lbl_8021E834
/* 8021E8C0  38 60 00 00 */	li r3, 0
lbl_8021E8C4:
/* 8021E8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E8C8  48 14 39 55 */	bl _restgpr_26
/* 8021E8CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021E8D0  7C 08 03 A6 */	mtlr r0
/* 8021E8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8021E8D8  4E 80 00 20 */	blr 
