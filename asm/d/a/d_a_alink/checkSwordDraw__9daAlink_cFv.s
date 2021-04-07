lbl_800CB480:
/* 800CB480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CB484  7C 08 02 A6 */	mflr r0
/* 800CB488  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CB48C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CB490  93 C1 00 08 */	stw r30, 8(r1)
/* 800CB494  3B E0 00 00 */	li r31, 0
/* 800CB498  7F E5 FB 78 */	mr r5, r31
/* 800CB49C  7F E6 FB 78 */	mr r6, r31
/* 800CB4A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CB4A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CB4A8  88 04 00 14 */	lbz r0, 0x14(r4)
/* 800CB4AC  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB4B0  41 82 00 14 */	beq lbl_800CB4C4
/* 800CB4B4  88 03 2F D6 */	lbz r0, 0x2fd6(r3)
/* 800CB4B8  28 00 00 00 */	cmplwi r0, 0
/* 800CB4BC  40 82 00 08 */	bne lbl_800CB4C4
/* 800CB4C0  38 C0 00 01 */	li r6, 1
lbl_800CB4C4:
/* 800CB4C4  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 800CB4C8  41 82 00 14 */	beq lbl_800CB4DC
/* 800CB4CC  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800CB4D0  74 00 02 08 */	andis. r0, r0, 0x208
/* 800CB4D4  40 82 00 08 */	bne lbl_800CB4DC
/* 800CB4D8  38 A0 00 01 */	li r5, 1
lbl_800CB4DC:
/* 800CB4DC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800CB4E0  41 82 00 40 */	beq lbl_800CB520
/* 800CB4E4  3B C0 00 01 */	li r30, 1
/* 800CB4E8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800CB4EC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CB4F0  41 82 00 24 */	beq lbl_800CB514
/* 800CB4F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CB4F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CB4FC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800CB500  38 80 0C 08 */	li r4, 0xc08
/* 800CB504  4B F6 94 B9 */	bl isEventBit__11dSv_event_cCFUs
/* 800CB508  2C 03 00 00 */	cmpwi r3, 0
/* 800CB50C  41 82 00 08 */	beq lbl_800CB514
/* 800CB510  3B C0 00 00 */	li r30, 0
lbl_800CB514:
/* 800CB514  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800CB518  41 82 00 08 */	beq lbl_800CB520
/* 800CB51C  3B E0 00 01 */	li r31, 1
lbl_800CB520:
/* 800CB520  7F E3 FB 78 */	mr r3, r31
/* 800CB524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CB528  83 C1 00 08 */	lwz r30, 8(r1)
/* 800CB52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CB530  7C 08 03 A6 */	mtlr r0
/* 800CB534  38 21 00 10 */	addi r1, r1, 0x10
/* 800CB538  4E 80 00 20 */	blr 
