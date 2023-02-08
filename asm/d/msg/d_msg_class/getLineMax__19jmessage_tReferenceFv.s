lbl_80228DE0:
/* 80228DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228DE4  7C 08 02 A6 */	mflr r0
/* 80228DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228DF0  7C 7F 1B 78 */	mr r31, r3
/* 80228DF4  48 00 00 79 */	bl isKanban__19jmessage_tReferenceFv
/* 80228DF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80228DFC  41 82 00 0C */	beq lbl_80228E08
/* 80228E00  38 00 00 07 */	li r0, 7
/* 80228E04  48 00 00 50 */	b lbl_80228E54
lbl_80228E08:
/* 80228E08  7F E3 FB 78 */	mr r3, r31
/* 80228E0C  48 00 01 31 */	bl isBook__19jmessage_tReferenceFv
/* 80228E10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80228E14  41 82 00 0C */	beq lbl_80228E20
/* 80228E18  38 00 00 09 */	li r0, 9
/* 80228E1C  48 00 00 38 */	b lbl_80228E54
lbl_80228E20:
/* 80228E20  7F E3 FB 78 */	mr r3, r31
/* 80228E24  48 00 01 4D */	bl isStaffRoll__19jmessage_tReferenceFv
/* 80228E28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80228E2C  41 82 00 0C */	beq lbl_80228E38
/* 80228E30  38 00 00 0A */	li r0, 0xa
/* 80228E34  48 00 00 20 */	b lbl_80228E54
lbl_80228E38:
/* 80228E38  7F E3 FB 78 */	mr r3, r31
/* 80228E3C  48 00 00 CD */	bl isSaveSeq__19jmessage_tReferenceFv
/* 80228E40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80228E44  41 82 00 0C */	beq lbl_80228E50
/* 80228E48  38 00 00 06 */	li r0, 6
/* 80228E4C  48 00 00 08 */	b lbl_80228E54
lbl_80228E50:
/* 80228E50  38 00 00 04 */	li r0, 4
lbl_80228E54:
/* 80228E54  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80228E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228E60  7C 08 03 A6 */	mtlr r0
/* 80228E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80228E68  4E 80 00 20 */	blr 
