lbl_800C0520:
/* 800C0520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C0524  7C 08 02 A6 */	mflr r0
/* 800C0528  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C052C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C0530  3B E0 00 00 */	li r31, 0
/* 800C0534  4B FF FE B5 */	bl checkRoomOnly__9daAlink_cFv
/* 800C0538  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C053C  40 82 00 3C */	bne lbl_800C0578
/* 800C0540  4B FF FF 75 */	bl checkRoomSpecial__9daAlink_cFv
/* 800C0544  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0548  40 82 00 30 */	bne lbl_800C0578
/* 800C054C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C0550  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C0554  38 63 01 3C */	addi r3, r3, 0x13c
/* 800C0558  4B FD D5 09 */	bl checkStageName__9daAlink_cFPCc
/* 800C055C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0560  41 82 00 1C */	beq lbl_800C057C
/* 800C0564  38 60 00 0E */	li r3, 0xe
/* 800C0568  38 80 FF FF */	li r4, -1
/* 800C056C  4B F6 D5 F9 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 800C0570  2C 03 00 00 */	cmpwi r3, 0
/* 800C0574  40 82 00 08 */	bne lbl_800C057C
lbl_800C0578:
/* 800C0578  3B E0 00 01 */	li r31, 1
lbl_800C057C:
/* 800C057C  7F E3 FB 78 */	mr r3, r31
/* 800C0580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0588  7C 08 03 A6 */	mtlr r0
/* 800C058C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0590  4E 80 00 20 */	blr 
