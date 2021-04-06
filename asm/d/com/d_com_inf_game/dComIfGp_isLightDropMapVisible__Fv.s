lbl_8002EDE0:
/* 8002EDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002EDE4  7C 08 02 A6 */	mflr r0
/* 8002EDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002EDEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002EDF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8002EDF4  3B C0 00 00 */	li r30, 0
/* 8002EDF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002EDFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002EE00  3B E3 01 14 */	addi r31, r3, 0x114
lbl_8002EE04:
/* 8002EE04  7F E3 FB 78 */	mr r3, r31
/* 8002EE08  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 8002EE0C  48 00 55 91 */	bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 8002EE10  2C 03 00 00 */	cmpwi r3, 0
/* 8002EE14  41 82 00 24 */	beq lbl_8002EE38
/* 8002EE18  7F E3 FB 78 */	mr r3, r31
/* 8002EE1C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 8002EE20  48 00 55 21 */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 8002EE24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8002EE28  28 00 00 10 */	cmplwi r0, 0x10
/* 8002EE2C  40 80 00 0C */	bge lbl_8002EE38
/* 8002EE30  38 60 00 01 */	li r3, 1
/* 8002EE34  48 00 00 14 */	b lbl_8002EE48
lbl_8002EE38:
/* 8002EE38  3B DE 00 01 */	addi r30, r30, 1
/* 8002EE3C  2C 1E 00 03 */	cmpwi r30, 3
/* 8002EE40  41 80 FF C4 */	blt lbl_8002EE04
/* 8002EE44  38 60 00 00 */	li r3, 0
lbl_8002EE48:
/* 8002EE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002EE4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002EE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002EE54  7C 08 03 A6 */	mtlr r0
/* 8002EE58  38 21 00 10 */	addi r1, r1, 0x10
/* 8002EE5C  4E 80 00 20 */	blr 
