lbl_804D5E40:
/* 804D5E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5E44  7C 08 02 A6 */	mflr r0
/* 804D5E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5E50  7C 7F 1B 78 */	mr r31, r3
/* 804D5E54  4B FF FF BD */	bl getSwbit2__10daAndsw2_cFv
/* 804D5E58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D5E5C  28 00 00 FF */	cmplwi r0, 0xff
/* 804D5E60  41 82 00 10 */	beq lbl_804D5E70
/* 804D5E64  7F E3 FB 78 */	mr r3, r31
/* 804D5E68  4B FF FF A9 */	bl getSwbit2__10daAndsw2_cFv
/* 804D5E6C  48 00 00 30 */	b lbl_804D5E9C
lbl_804D5E70:
/* 804D5E70  7F E3 FB 78 */	mr r3, r31
/* 804D5E74  4B FF FF 91 */	bl getSwbit__10daAndsw2_cFv
/* 804D5E78  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D5E7C  28 00 00 FF */	cmplwi r0, 0xff
/* 804D5E80  41 82 00 18 */	beq lbl_804D5E98
/* 804D5E84  7F E3 FB 78 */	mr r3, r31
/* 804D5E88  4B FF FF 7D */	bl getSwbit__10daAndsw2_cFv
/* 804D5E8C  38 03 00 01 */	addi r0, r3, 1
/* 804D5E90  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804D5E94  48 00 00 08 */	b lbl_804D5E9C
lbl_804D5E98:
/* 804D5E98  38 60 00 FF */	li r3, 0xff
lbl_804D5E9C:
/* 804D5E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5EA4  7C 08 03 A6 */	mtlr r0
/* 804D5EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5EAC  4E 80 00 20 */	blr 
