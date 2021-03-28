lbl_801D9F3C:
/* 801D9F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9F40  7C 08 02 A6 */	mflr r0
/* 801D9F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9F48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D9F4C  7C 7F 1B 78 */	mr r31, r3
/* 801D9F50  4B FF FF 2D */	bl isCatchInsect__14dMenu_Insect_cFUc
/* 801D9F54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9F58  41 82 00 1C */	beq lbl_801D9F74
/* 801D9F5C  7F E3 FB 78 */	mr r3, r31
/* 801D9F60  4B FF FF 75 */	bl isGiveInsect__14dMenu_Insect_cFUc
/* 801D9F64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9F68  40 82 00 0C */	bne lbl_801D9F74
/* 801D9F6C  38 60 00 01 */	li r3, 1
/* 801D9F70  48 00 00 08 */	b lbl_801D9F78
lbl_801D9F74:
/* 801D9F74  38 60 00 00 */	li r3, 0
lbl_801D9F78:
/* 801D9F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D9F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9F80  7C 08 03 A6 */	mtlr r0
/* 801D9F84  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9F88  4E 80 00 20 */	blr 
