lbl_802CEBA8:
/* 802CEBA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEBAC  7C 08 02 A6 */	mflr r0
/* 802CEBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEBB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CEBB8  93 C1 00 08 */	stw r30, 8(r1)
/* 802CEBBC  7C 9E 23 79 */	or. r30, r4, r4
/* 802CEBC0  40 82 00 0C */	bne lbl_802CEBCC
/* 802CEBC4  38 60 00 00 */	li r3, 0
/* 802CEBC8  48 00 00 6C */	b lbl_802CEC34
lbl_802CEBCC:
/* 802CEBCC  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802CEBD0  28 00 00 00 */	cmplwi r0, 0
/* 802CEBD4  41 82 00 5C */	beq lbl_802CEC30
/* 802CEBD8  83 E3 00 40 */	lwz r31, 0x40(r3)
/* 802CEBDC  28 1F 00 00 */	cmplwi r31, 0
/* 802CEBE0  41 82 00 48 */	beq lbl_802CEC28
/* 802CEBE4  3B FF FF F4 */	addi r31, r31, -12
/* 802CEBE8  48 00 00 40 */	b lbl_802CEC28
lbl_802CEBEC:
/* 802CEBEC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802CEBF0  7C 03 F0 40 */	cmplw r3, r30
/* 802CEBF4  40 82 00 0C */	bne lbl_802CEC00
/* 802CEBF8  38 60 00 01 */	li r3, 1
/* 802CEBFC  48 00 00 38 */	b lbl_802CEC34
lbl_802CEC00:
/* 802CEC00  7F C4 F3 78 */	mr r4, r30
/* 802CEC04  4B FF FF A5 */	bl isSubHeap__7JKRHeapCFP7JKRHeap
/* 802CEC08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802CEC0C  41 82 00 0C */	beq lbl_802CEC18
/* 802CEC10  38 60 00 01 */	li r3, 1
/* 802CEC14  48 00 00 20 */	b lbl_802CEC34
lbl_802CEC18:
/* 802CEC18  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802CEC1C  28 1F 00 00 */	cmplwi r31, 0
/* 802CEC20  41 82 00 08 */	beq lbl_802CEC28
/* 802CEC24  3B FF FF F4 */	addi r31, r31, -12
lbl_802CEC28:
/* 802CEC28  28 1F 00 00 */	cmplwi r31, 0
/* 802CEC2C  40 82 FF C0 */	bne lbl_802CEBEC
lbl_802CEC30:
/* 802CEC30  38 60 00 00 */	li r3, 0
lbl_802CEC34:
/* 802CEC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CEC38  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CEC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEC40  7C 08 03 A6 */	mtlr r0
/* 802CEC44  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEC48  4E 80 00 20 */	blr 
