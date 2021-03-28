lbl_800C0630:
/* 800C0630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0634  7C 08 02 A6 */	mflr r0
/* 800C0638  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C063C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C0640  3B E0 00 00 */	li r31, 0
/* 800C0644  4B FF FD A5 */	bl checkRoomOnly__9daAlink_cFv
/* 800C0648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C064C  40 82 00 10 */	bne lbl_800C065C
/* 800C0650  4B FF FD 09 */	bl checkCastleTown__9daAlink_cFv
/* 800C0654  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0658  41 82 00 08 */	beq lbl_800C0660
lbl_800C065C:
/* 800C065C  3B E0 00 01 */	li r31, 1
lbl_800C0660:
/* 800C0660  7F E3 FB 78 */	mr r3, r31
/* 800C0664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C066C  7C 08 03 A6 */	mtlr r0
/* 800C0670  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0674  4E 80 00 20 */	blr 
