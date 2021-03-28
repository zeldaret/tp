lbl_8025611C:
/* 8025611C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80256120  7C 08 02 A6 */	mflr r0
/* 80256124  90 01 00 24 */	stw r0, 0x24(r1)
/* 80256128  39 61 00 20 */	addi r11, r1, 0x20
/* 8025612C  48 10 C0 A5 */	bl _savegpr_26
/* 80256130  7C 7A 1B 78 */	mr r26, r3
/* 80256134  3B 80 00 01 */	li r28, 1
/* 80256138  3B 60 00 00 */	li r27, 0
/* 8025613C  3B E0 00 00 */	li r31, 0
/* 80256140  3B C0 00 00 */	li r30, 0
/* 80256144  3C 60 80 3A */	lis r3, l_preLoad_dylKeyTbl@ha
/* 80256148  3B A3 9F E0 */	addi r29, r3, l_preLoad_dylKeyTbl@l
lbl_8025614C:
/* 8025614C  80 1A 01 FC */	lwz r0, 0x1fc(r26)
/* 80256150  7C 60 F2 14 */	add r3, r0, r30
/* 80256154  7C 9D FA AE */	lhax r4, r29, r31
/* 80256158  4B DC 26 F5 */	bl Link__7cDylPhsFP30request_of_phase_process_classs
/* 8025615C  2C 03 00 04 */	cmpwi r3, 4
/* 80256160  41 82 00 08 */	beq lbl_80256168
/* 80256164  3B 80 00 00 */	li r28, 0
lbl_80256168:
/* 80256168  3B 7B 00 01 */	addi r27, r27, 1
/* 8025616C  2C 1B 00 0E */	cmpwi r27, 0xe
/* 80256170  3B FF 00 02 */	addi r31, r31, 2
/* 80256174  3B DE 00 08 */	addi r30, r30, 8
/* 80256178  41 80 FF D4 */	blt lbl_8025614C
/* 8025617C  7F 83 E3 78 */	mr r3, r28
/* 80256180  39 61 00 20 */	addi r11, r1, 0x20
/* 80256184  48 10 C0 99 */	bl _restgpr_26
/* 80256188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025618C  7C 08 03 A6 */	mtlr r0
/* 80256190  38 21 00 20 */	addi r1, r1, 0x20
/* 80256194  4E 80 00 20 */	blr 
